
const addressModel = require("../models/addressModel");
const helper = require("../helpers/printHelper");

exports.insertAddress = (req, res) => {
    const idUser = 4 //req.auth.id

    const { type, address, postalCode, city, name, phoneNumber } = req.body

    const data = {
        idUser,
        type,
        address,
        postalCode,
        city,
        name,
        phoneNumber
    }

    addressModel
        .insertAddress(data)
        .then((result) => {
            helper.printSuccess(res, 200, `address for ${result[0].name} successfully inserted`, result);
        })
        .catch((err) => {
            helper.printError(res, 500, err.message);
        })
};

exports.updateAddress = (req, res) => {
    const idAddress = req.params.id

    const { type, address, postalCode, city, name, phoneNumber } = req.body

    addressModel
        .updateAddress(idAddress, type, address, postalCode, city, name, phoneNumber)
        .then((result) => {
            helper.printSuccess(res, 200, `address for ${name} successfully updated`, result);
        })
        .catch((err) => {
            helper.printError(res, 500, err.message);
        })
};