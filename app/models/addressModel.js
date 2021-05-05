const connection = require("../configs/dbConfig");


exports.insertAddress = (data) => {
    return new Promise((resolve, reject) => {
        connection.query("INSERT INTO address SET ?", data,
            (err, resultInsert) => {
                if (!err) {
                    connection.query("SELECT name FROM users WHERE id = ?", data.idUser,
                        (err, result) => {
                            if (!err) {
                                resolve(result)
                            } else {
                                reject(new Error(err));
                            }
                        })
                } else {
                    reject(new Error(err));
                }
            })
    })
};

exports.updateAddress = (idAddress, type, address, postalCode, city, name, phoneNumber) => {
    return new Promise((resolve, reject) => {
        connection.query("SELECT * FROM address where id = ?", idAddress,
            (err, result) => {
                if (!err) {
                    connection.query("UPDATE address SET type = ?, address = ?, postalCode = ?, city = ?, name = ?, phoneNumber = ? WHERE id = ? ",
                        [type, address, postalCode, city, name, phoneNumber, idAddress],
                        (err, resultUpdate) => {
                            if (!err) {
                                resolve(resultUpdate);
                            } else {
                                reject(new Error(err));
                            }
                        })
                } else {
                    reject(new Error(err));
                }
            })
    })
};