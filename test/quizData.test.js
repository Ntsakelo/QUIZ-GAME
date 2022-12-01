import assert from "assert";
import QuizData from "../database.js";
import pgPromise from "pg-promise";

const pgp = pgPromise();
const connectionString =
  process.env.DATABASE_URL ||
  "postgresql://coder:pg123@localhost:5432/quiz_test";

const db = pgp({ connectionString });

describe("test the waiters database function", function () {
  beforeEach(async function () {
    try {
      await db.none("delete from users");
      await db.none("delete from answers");
    } catch (err) {
      console.log(err);
    }
  });
  it("should be able to get the image description", async function () {
    try {
      const quizData = QuizData(db);
      let description = await quizData.getDescription("Muriwo");
      assert.equal(
        "Green leafy vegetables are commonly served with any Sub-Saharan\r\n" +
          "African meal. They are known as muriwo in Zimbabwe, morogo in\r\n" +
          "Botswana, and sukuma wiki in Kenya.\r\n" +
          "Muriwo is an extremely nutrient-rich vegetable. It packs high amounts\r\n" +
          "of carotenoids, vitamin C, vitamin K, folic acid, iron, and calcium.",
        description.image_description
      );
    } catch (err) {
      console.log(err);
    }
  });
  it("should return all the questions and options for the image", async function () {
    try {
      const quizData = QuizData(db);
      let questions = await quizData.getImageQuestions("Tomato", 1);

      assert.equal(4, questions.length);
    } catch (err) {
      console.log(err);
    }
  });
  it("should be able to check for correct and incorrect answers", async function () {
    try {
      const quizData = QuizData(db);
      let results = await quizData.submitQuiz(
        "water",
        "Botswana",
        "true",
        "vitamin c",
        "Ntsakelo",
        "Orange"
      );
      console.log(results);
    } catch (err) {
      console.log(err);
    }
  });
  after(function () {
    db.$pool.end;
  });
});
