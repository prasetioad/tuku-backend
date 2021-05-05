const express = require("express");
const router = express.Router();
const addressController = require("../controllers/addressController");
const auth = require("../middlewares/auth");
const multer = require("../middlewares/multer");

router
  .post("/insert", auth.verification(), addressController.insertAddress)
  .put("/update/:id", auth.verification(), addressController.updateAddress);

module.exports = router;
