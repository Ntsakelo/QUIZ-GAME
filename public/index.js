document.addEventListener("DOMContentLoaded", function () {
  const typeName = document.querySelector(".typeName");
  const description = document.querySelector(".description_paragraph");
  const showDescription = document.querySelector(".show_description");
  const startBtn = document.querySelector(".start_quiz");
  const nextBtn = document.querySelector(".the_game");
  const questionTemplate = document.querySelector(".questionTemplate");
  const questionDisplay = document.querySelector(".multiple_choice");
  const submitBtn = document.querySelector(".submit_quiz");

  typeName.innerHTML = "";
  description.innerHTML = "";
  showDescription.addEventListener("click", function () {
    if (typeName.innerHTML !== "") {
      let type = typeName.innerHTML;
      axios.get(`/api/quiz/image/${type}`).then((results) => {
        let response = results.data;
        let data = response.data;
        description.innerHTML = data.image_description;
      });
    }
  });
  nextBtn.addEventListener("click", function () {
    const playerName = document.querySelector(".the_game_player");
    let player = playerName.value;

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
    // axios
    //   .post("/api/quiz/results", {
    //     answer1,
    //     answer2,
    //     answer3,
    //     answer4,
    //     username,
    //     image,
    //   })
    //   .then((results) => {
    //     let response = results.data;
    //     let data = response.data;
    //     console.log(data);
    //   });
  });
});
