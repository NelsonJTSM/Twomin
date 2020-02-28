import express from "express";

// Controllers
import * as homeController from "./controllers/home";

const app = express();

// Configurations for express.
app.set("port", process.env.PORT || 3334);

app.get("/helloworld", homeController.helloWorld);

export default app;