const express = require("express");
const router = express.Router();
const orderController = require("../controllers/orderController");
const auth = require("../middlewares/auth");

router.get("/all-order", auth.verification(), orderController.getAllOrder);

module.exports = router;
