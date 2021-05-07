const express = require("express");
const router = express.Router();
const cartController = require("../controllers/cartController");
const auth = require("../middlewares/auth");

router
  .get("/", auth.verification(), cartController.findAll)
  .post("/", auth.verification(), cartController.create)
  .put("/:id", auth.verification(), cartController.update)
  .delete("/", auth.verification(), cartController.delete);

module.exports = router;
