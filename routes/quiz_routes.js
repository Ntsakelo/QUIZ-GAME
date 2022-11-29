import express from "express";
// import bodyParser from "body-parser";
// import session from "express-session";
// import pgPromise from "pg-promise";
// import WaitersRoutes from "./routes/waitersRoutes.js";

const app = express();

const PORT = process.env.PORT || 4007;

app.get("/", (req, res) => res.send("Hello!"));

app.listen(PORT, () => console.log(`App started : ${PORT}`));
