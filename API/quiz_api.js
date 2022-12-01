export default function (QuizData) {
  async function user(req, res, next) {
    try {
      let player = req.body.player;

      req.session.user = player;
      await QuizData.storeUser(player);
      res.json({
        status: "success",
      });
    } catch (err) {
      next(err);
    }
  }
  async function description(req, res, next) {
    try {
      let imageName = req.params.image;
      let results = await QuizData.getDescription(imageName);
      res.json({
        status: "success",
        data: results,
      });
    } catch (err) {
      next(err);
    }
  }
  async function playQuiz(req, res, next) {
    try {
      let image = req.params.image;
      let username = req.session.user;
      let level = 1;
      let result = await QuizData.getUserLevel(username);
      if (result.score >= 100) {
        level = 2;
      }
      let results = await QuizData.getImageQuestions(image, level);
      res.json({
        status: "success",
        data: results,
      });
    } catch (err) {
      next(err);
    }
  }
  async function submit(req, res, next) {
    try {
      let answer1 = req.body.answer1;
      let answer2 = req.body.answer2;
      let answer3 = req.body.answer3;
      let answer4 = req.body.answer;
      let image = req.params.image;
      let username = req.session.user;

      let results = submitQuiz(
        answer1,
        answer2,
        answer3,
        answer4,
        username,
        image
      );
      res.json({
        status: "success",
        data: results,
      });
    } catch (err) {
      next(err);
    }
  }
  return {
    user,
    description,
    playQuiz,
    submit,
  };
}
