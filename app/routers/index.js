const express = require("express");
const route = express.Router();

const usersRouter = require("./usersRouter");
const addressRouter = require("./addressRouter")

route.use("/users", usersRouter);
route.use("/address", addressRouter);

module.exports = route;
