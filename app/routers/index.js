const express = require("express");
const route = express.Router();

const usersRouter = require("./usersRouter");
const addressRouter = require("./addressRouter");
const orderRouter = require("./orderRouter");

route.use("/users", usersRouter);
route.use("/address", addressRouter);
route.use("/order", orderRouter);

module.exports = route;
