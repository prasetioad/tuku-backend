const connection = require("../configs/dbConfig");

exports.findStore = (userID) => {
  return new Promise((resolve, reject) => {
    connection.query(
      "SELECT * FROM store WHERE idUser = ?",
      userID,
      (err, result) => {
        if (!err) {
          resolve(result);
        } else {
          reject(new Error("Internal server error"));
        }
      }
    );
  });
};

exports.myProduct = (storeID, sortBy, order, queryPage, queryPerPage) => {
  return new Promise((resolve, reject) => {
    connection.query(
      "SELECT COUNT(*) AS totalData FROM product WHERE idStore = ?",
      storeID,
      (err, result) => {
        let totalData, page, perPage, totalPage;
        if (err) {
          reject(new Error("Internal server error"));
        } else {
          totalData = result[0].totalData;
          page = queryPage ? parseInt(queryPage) : 1;
          perPage = queryPerPage ? parseInt(queryPerPage) : 5;
          totalPage = Math.ceil(totalData / perPage);
        }
        const firstData = perPage * page - perPage;
        connection.query(
          `SELECT * FROM product WHERE idStore = ? ORDER BY ${sortBy} ${order} LIMIT ?,?`,
          [storeID, firstData, perPage],
          (err, result) => {
            if (!err) {
              resolve([totalData, totalPage, result, page, perPage]);
            } else {
              reject(new Error("Internal server error"));
            }
          }
        );
      }
    );
  });
};

exports.insertProduct = (data) => {
  return new Promise((resolve, reject) => {
    connection.query(`INSERT INTO product SET ?`, data, (err, result) => {
      if (!err) {
        resolve(result);
      } else {
        reject(new Error("Internal server error"));
      }
    });
  });
};

exports.findProduct = (idStore, title) => {
  return new Promise((resolve, reject) => {
    connection.query(
      `SELECT COUNT(*) AS totalProduct FROM product WHERE idStore = ? AND title = ?`,
      [idStore, title],
      (err, result) => {
        if (!err) {
          resolve(result);
        } else {
          reject(new Error("Internal server error"));
        }
      }
    );
  });
};

exports.updateStore = (id, dataStore) => {
  return new Promise((resolve, reject) => {
    connection.query(
      `UPDATE store SET ? WHERE id = ?`,
      [dataStore, id],
      (err, result) => {
        if (!err) {
          connection.query(
            `SELECT * FROM store WHERE id = ?`,
            id,
            (err, result) => {
              if (!err) {
                resolve(result);
              } else {
                reject(new Error("Internal server error"));
              }
            }
          );
        } else {
          reject(new Error("Internal server error"));
        }
      }
    );
  });
};
