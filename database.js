export default function QuizData(db) {
  async function storeUser(firstname) {
    try {
      await db.none("insert into users(first_name,score) values($1,0)", [
        firstname,
      ]);
    } catch (err) {
      console.log(err);
    }
  }
  async function getDescription(imageName) {
    try {
      let results = await db.oneOrNone(
        "select image_description from images where image_name = $1",
        [imageName]
      );
      return results;
    } catch (err) {
      console.log(err);
    }
  }
  async function getUserLevel(username) {
    try {
      let result = await db.oneOrNone(
        "select score from users where first_name = $1",
        [username]
      );
      return result;
    } catch (err) {
      console.log(err);
    }
  }
  async function getImageQuestions(imageName, level) {
    try {
      let imageId = await db.oneOrNone(
        "select id from images where image_name = $1",
        [imageName]
      );
      let results = await db.manyOrNone(
        "select id,question from quiz where image_id = $1 and level = $2",
        [imageId.id, level]
      );
      let itemList = [];
      let set = 1;
      for (let i = 0; i < results.length; i++) {
        let optArr = [];
        let quizObj = {};
        let options = await db.manyOrNone(
          "select option from options where question_id = $1",
          [results[i].id]
        );
        options.forEach((item) => {
          optArr.push(item.option);
        });
        quizObj["question"] = results[i].question;
        quizObj["options"] = optArr;
        quizObj["set"] = set;
        set++;
        itemList.push(quizObj);
      }
      return itemList;
    } catch (err) {
      console.log(err);
    }
  }
  async function submitQuiz(
    answer1,
    answer2,
    answer3,
    answer4,
    username,
    image
  ) {
    try {
      let responseLst = [answer1, answer2, answer3, answer4];
      let stateList = [];
      let score = 0;
      let result = await db.oneOrNone(
        "select id from images where image_name =$1",
        [image]
      );
      for (let i = 0; i < responseLst.length; i++) {
        let stateObj = {};
        let item = responseLst[i];
        let results = await db.oneOrNone(
          "select quiz.id,question,option,status,score from options join quiz on options.question_id = quiz.id where option = $1 and image_id = $2",
          [item, result.id]
        );

        score += results.score;
        await db.none(
          "update table users set score = score + $1 where first_name = $2",
          [score, username]
        );
        if (stateObj[`question${results.id}`] === undefined) {
          stateObj[`question${results.id}`] = results.question;
          stateObj["option"] = responseLst[i];
          stateObj["state"] = results.status;
        }
        stateList.push(stateObj);
      }
      return stateList;
    } catch (err) {
      console.log(err);
    }
  }
  return {
    storeUser,
    getDescription,
    getUserLevel,
    getImageQuestions,
    submitQuiz,
  };
}
