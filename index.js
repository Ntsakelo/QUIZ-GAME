import express from "express";

import bodyParser from "body-parser";
import session from "express-session";

import pgPromise from "pg-promise";
import QuizAPI from "./API/quiz_api.js";
import QuizData from "./database.js";

const pgp = pgPromise();

const DATABASE_URL =
  process.env.DATABASE_URL || "postgresql://coder:pg123@localhost:5432/quiz";
// const DATABASE_URL =
//   process.env.DATABASE_URL || "postgresql://coder:pg123@localhost:5432/quiz";
const config = {
  connectionString: DATABASE_URL,
};
const db = pgp(config);

const app = express();

app.use(
  session({
    secret: "<add a secret string here>",
    resave: false,
    saveUninitialized: true,
  })
);

app.use(bodyParser.urlencoded({ extended: false }));

app.use(bodyParser.json());

app.use(express.static("public"));

const quizData = QuizData(db);
const quizApi = QuizAPI(quizData);

app.post("/api/quiz/user", quizApi.user);
app.get("/api/quiz/image/:image", quizApi.description);
app.get("/api/quiz/play/image/:image", quizApi.playQuiz);
app.post("/api/quiz/results", quizApi.submit);

const PORT = process.env.PORT || 4007;
app.listen(PORT, () => console.log(`App started : ${PORT}`));
