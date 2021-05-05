const helper = require("../helpers/printHelper");
const orderModel = require("../models/orderModel")

exports.getAllOrder = (req, res) => {
    const idUser = req.auth.id
    const { page, perPage, sortBy, orderBy } = req.query

    orderModel
        .getAllOrder(idUser, page, perPage, sortBy, orderBy)
}