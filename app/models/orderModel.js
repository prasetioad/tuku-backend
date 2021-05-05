const connection = require("../configs/dbConfig");

exports.getAllOrder = (idUser, queryPage, queryPerPage, sortBy, orderBy) => {
    return new Promise((resolve, reject) => {
        connection.query("SELECT COUNT(*) AS totalData FROM transaction WHERE idUser = ? ", idUser,
            (err, resultCount) => {
                let totalData, page, perPage, totalPage;
                if (err) {
                    reject(new Error(err));
                } else {
                    totalData = resultCount[0].totalData;
                    page = queryPage ? parseInt(queryPage) : 1;
                    perPage = queryPerPage ? parseInt(queryPerPage) : 5;
                    totalPage = Math.ceil(totalData / perPage);
                }
                const firstData = perPage * page - perPage;
                connection.query(`SELECT * FROM transaction WHERE idUser = ? ORDER BY ${sortBy} ${orderBy} LIMIT ?, ?`,
                    [idUser, firstData, perPage],
                    (err, result) => {
                        if (!err) {
                            resolve([totalData, totalPage, result, page, perPage]);
                        } else {
                            reject(new Error(err));
                        }
                    })
            })
    })
}