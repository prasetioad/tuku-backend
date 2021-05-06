const express = require("express");
const route = express.Router();

const usersRouter = require("./usersRouter");
const addressRouter = require("./addressRouter");
const orderRouter = require("./orderRouter");
const categoryRouter = require("./categoryRouter");

route.use("/users", usersRouter);
route.use("/address", addressRouter);
route.use("/order", orderRouter);
route.use("/category", categoryRouter);

module.exports = route;
