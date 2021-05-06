const storeModel = require("../models/storeModel")
const helper = require("../helpers/printHelper");

exports.findStore = (req, res) => {
    const userID = 17 //req.auth.id
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
    const userID = 5 //req.auth.id
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
    const userID = 4 //req.auth.id
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
exports.updateStore = (req, res) => {
    let image;
    if (!req.file) {
        image = "images\\default.png";
    } else {
        image = req.file.path;
    }
    const idUser = 4 //req.auth.id
    const { name, email, phoneNumber, description } = req.body
    
}