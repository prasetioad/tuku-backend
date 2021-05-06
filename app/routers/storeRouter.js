const express = require("express");
const router = express.Router();
const storeController = require("../controllers/storeController");
const auth = require("../middlewares/auth");
const multer = require("../middlewares/multer");

router.get("/find-store", auth.verification(), storeController.findStore);
router.get("/myproduct", auth.verification(), storeController.myProduct);
router.post("/insert-product", auth.verification(), storeController.insertProduct); //kurang multiple upload image
router.put("/update-store", auth.verification(), multer.uploadImage.single("image"), storeController.updateStore);

module.exports = router;