const storeModel = require("../models/storeModel")
const usersModel = require("../models/usersModel")
const helper = require("../helpers/printHelper");
const validation = require("../helpers/validation")
const fs = require("fs");
const path = require("path");

exports.findStore = (req, res) => {
    const userID = req.auth.id
    storeModel
        .findStore(userID)
        .then((result) => {
            helper.printSuccess(res, 200, "Find one store successfull", result);
        })
        .catch((err) => {
            helper.printError(res, 500, err.message);
        })
}
exports.myProduct = async (req, res) => {
    const userID = req.auth.id
    const { sortBy, orderBy, page, perPage } = req.query


    const result = await storeModel.findStore(userID)
    const { id } = result[0]
    storeModel
        .myProduct(id, sortBy, orderBy, page, perPage)
        .then(([totalData, totalPage, result, page, perPage]) => {
            helper.printPaginate(
                res,
                200,
                "Find all address successfully",
                totalData,
                totalPage,
                result,
                page,
                perPage
            );
        })
        .catch((err) => {
            helper.printError(res, 500, err.message);
        })

}
exports.insertProduct = async (req, res) => {
    const userID = req.auth.id
    const { title, price, conditions, description, idCategory } = req.body

    const resultStore = await storeModel.findStore(userID)
    if (resultStore < 1) {
        helper.printError(res, 400, "Store not found");
        return;
    }
    const idStore = resultStore[0].id
    const data = {
        idCategory,
        idStore,
        title,
        price,
        conditions,
        description,
        totalSale: 0,
        rating: 0,
        isPopular: 0
    }
    const resultProduct = await storeModel.findProduct(idStore, title)
    if (resultProduct[0].totalProduct > 1) {
        helper.printError(res, 400, "this product already exist, please input another product / new product name");
        return;
    }

    storeModel
        .insertProduct(data)
        .then((result) => {
            helper.printSuccess(res, 200, "insert product successfull", result);
        })
        .catch((err) => {
            helper.printError(res, 500, err.message);
        })
}
exports.updateStore = async (req, res) => {
    const validate = validation.validationUpdateStore(req.body)
    
    if (validate.error) {
        helper.printError(res, 400, validate.error.details[0].message);
        return;
    }
    
    const id = 5 //req.auth.id;

    const { storeName, email, phoneNumber, description } = req.body;

    const dataStore = {
        name: storeName,
        description
    }
    const dataUser = {
        email,
        phoneNumber
    };

    usersModel
        .findUser(id, "update")
        .then((result) => {
            return usersModel.updateUsers(id, dataUser);
        })
        .then((result) => {
            delete result[0].password;
            delete result[0].active;
            delete result[0].createdAt;
            delete result[0].updatedAt;

            let image;
            if (!req.file) {
                image = result[0].image;
            } else {
                const oldImage = result[0].image;
                if (oldImage !== "images\\default.png") {
                    removeImage(oldImage);
                }
                image = req.file.path;
            }
            dataStore.image = image;
            storeModel
                .updateStore(id, dataStore)
                .then((result) => {
                    helper.printSuccess(res, 200, "update store successfull", result);
                })
                .catch((err) => {
                    helper.printError(res, 500, err.message);
                })
            //   helper.printSuccess(res, 200, "Users has been updated", result);
        })
        .catch((err) => {
            if (err.message === "Internal server error") {
                helper.printError(res, 500, err.message);
            }
            helper.printError(res, 400, err.message);
        });

}
const removeImage = (filePath) => {
    filePath = path.join(__dirname, "../..", filePath);
    fs.unlink(filePath, (err) => new Error(err));
  };