<h3 align="center">Blanja App - Backend</h3>

---

## Tentang Blanja App
Blanja App adalah web aplikasi jual beli secara online yang memudahkan penggunaanya untuk berbelanja macam- macam produk fashion dengan menawarkan banyak category fashion seperti sepatu, kemeja, celana panjang, celana pendek, dan jacket. Pengguna juga dapat melakukan pembayaran online dengan cepat, efektif dan aman.

## Komponen
- **[Express](https://expressjs.com/)**
- **[Nodemon](https://www.npmjs.com/package/nodemon)**
- **[MySQL2](https://www.npmjs.com/package/mysql2)**
- **[Cors](https://www.npmjs.com/package/cors)**
- **[Dotenv](https://www.npmjs.com/package/dotenv)**
- **[Morgan](https://www.npmjs.com/package/morgan)**
- **[Bcrypt](https://www.npmjs.com/package/bcrypt)**
- **[Ip](https://www.npmjs.com/package/ip)**
- **[JWT](https://www.npmjs.com/package/jsonwebtoken)**
- **[Multer](https://www.npmjs.com/package/multer)**
- **[Nodemailer](https://www.npmjs.com/package/nodemailer)**
- **[Joi](https://www.npmjs.com/package/joi)**

#### User Endpoint

|  METHOD  |                   API                      |  
| :------: | :-------------------------------------:    |
|  `POST`  |             /api/v1/users/                 |
|  `POST`  |        /api/v1/users/forgot-password       |
|  `POST`  |          /api/v1/users/login               |
|  `GET`   | /api/v1/users/auth/verify/:email/:token    |
|  `PUT`   | /api/v1/users/reset-password/:email/:token |
|  `GET`   |         /api/v1/users/find-one             |
|  `PUT`   |            /api/v1/users/:id               |


#### Category Endpoint

|  METHOD  |              API               | 
| :------: | :----------------------------: | 
|  `GET`   |        /api/v1/product         | 
|  `GET`   |     /api/v1/product/:id        |
|  `GET`   |  /api/v1/product/category/:id  |
|  `GET`   |    /api/v1/product/image/:id   |
|  `GET`   |    /api/v1/product/detail/:id  |
|  `GET`   |    /api/v1/product/popular     |

#### 
