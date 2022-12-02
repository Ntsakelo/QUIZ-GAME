document.addEventListener("DOMContentLoaded", function () {
  const typeName = document.querySelector(".typeName");
  const description = document.querySelector(".description_paragraph");
  const showDescription = document.querySelector(".show_description");
  const startBtn = document.querySelector(".start_quiz");
  const nextBtn = document.querySelector(".the_game");
  const questionTemplate = document.querySelector(".questionTemplate");
  const questionDisplay = document.querySelector(".multiple_choice");
  const submitBtn = document.querySelector(".submit_quiz");
  const resultsTemplate = document.querySelector(".resultsTemplate");
  const resultsDisplay = document.querySelector(".feedback_choice");
  const myScore = document.querySelector(".score_text");
  const quizContinueBtn = document.querySelector(".continue_quiz");
  const newImgBtn = document.querySelector(".new_image");
  typeName.innerHTML = "Carrot";
  description.innerHTML = "";
  let user = "";
  showDescription.addEventListener("click", function () {
    if (typeName.innerHTML !== "") {
      let type = typeName.innerHTML;
      axios.get(`/api/quiz/image/${typeName.innerHTML}`).then((results) => {
        let response = results.data;
        let data = response.data;
        description.innerHTML = data.image_description;
      });
    }
  });
  nextBtn.addEventListener("click", function () {
    const playerName = document.querySelector(".the_game_player");
    let player = playerName.value;
    user = player;
    axios.post("/api/quiz/user", { player }).then(function () {
      return;
    });
  });
  startBtn.addEventListener("click", function () {
    axios.get(`/api/quiz/play/image/${typeName.innerHTML}`).then((results) => {
      let response = results.data;
      let data = response.data;

      let template = Handlebars.compile(questionTemplate.innerHTML);
      questionDisplay.innerHTML = template({
        questions: data,
      });
      const option = document.querySelectorAll(".option");

      let set = 0;
      for (let i = 0; i < option.length; i++) {
        if (i % 4 === 0) {
          set++;
        }
        option[i].setAttribute("name", `${set}`);
      }
    });
  });
  submitBtn.addEventListener("click", function () {
    let image = typeName.innerHTML;

    const answers = document.querySelectorAll(".option");
    let responseList = [];
    for (let i = 0; i < answers.length; i++) {
      let answer = answers[i];
      if (answer.checked) {
        responseList.push(answer.value);
      }
    }
    let answer1 = responseList[0];
    let answer2 = responseList[1];
    let answer3 = responseList[2];
    let answer4 = responseList[3];

    axios
      .post("/api/quiz/results", {
        answer1,
        answer2,
        answer3,
        answer4,
        user,
        image,
      })
      .then((results) => {
        let response = results.data;
        let data = response.data;
        let score = 0;
        console.log(data);
        data.forEach((item) => {
          score += item.score;
        });
        template = Handlebars.compile(resultsTemplate.innerHTML);
        resultsDisplay.innerHTML = template({
          feedback: data,
        });
        myScore.innerHTML = `Score : ${score}%`;
      });
  });
  quizContinueBtn.addEventListener("click", function () {
    axios.get(`/api/quiz/play/image/${typeName.innerHTML}`).then((results) => {
      let response = results.data;
      let data = response.data;

      let template = Handlebars.compile(questionTemplate.innerHTML);
      questionDisplay.innerHTML = template({
        questions: data,
      });
      const option = document.querySelectorAll(".option");
      option.forEach((item) => {
        if (item.checked) {
          item.checked = false;
        }
      });
      let set = 0;
      for (let i = 0; i < option.length; i++) {
        if (i % 4 === 0) {
          set++;
        }
        option[i].setAttribute("name", `${set}`);
      }
    });
  });
  newImgBtn.addEventListener("click", function () {
    typeName.innerHTML = "";
    description.innerHTML = "";
    if (typeName.innerHTML !== "") {
      let type = typeName.innerHTML;
      axios.get(`/api/quiz/image/${typeName.innerHTML}`).then((results) => {
        let response = results.data;
        let data = response.data;
        description.innerHTML = data.image_description;
      });
    }
  });
});
