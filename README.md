<h1 align="center">Backend - Tuku</h1>
<p align="center">
  <a href="https://tukupedia.netlify.app/" target="_blank"><img src="./images/Tuku.png"  width="400" alt="Tuku" border="0" /></a>
</p>

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Built With](#built-with)
- [Prerequisites](#prerequisites)
- [Endpoint](#endpoint)
- [Installation](#installation)
- [Related Project](#related-project)

## Introduction

Tuku is an online buying and selling web application that makes it easy to use to shop for various fashion products by offering many fashion categories such as shoes, shirts, trousers, shorts, and jackets. Users can also make online payments quickly, effectively and safely.

## Features

- JWT authentication

- Nodemailer for email verification

- Upload image using multer

- Form validation using joi

- CRUD for all tables required in the application

## Built With

- [ExpressJs](https://expressjs.com/)
- [MySQL](https://www.mysql.com/)
- [JWT](https://jwt.io/)
- [Nodemailer](https://nodemailer.com/)
- [Moment](https://momentjs.com/)
- [Joi](https://www.npmjs.com/package/joi)
- [Bcrypt](https://www.npmjs.com/package/bcrypt)
- [Multer](https://www.npmjs.com/package/multer)
- [Morgan](https://www.npmjs.com/package/morgan)
- [Cors](https://www.npmjs.com/package/cors)
- [Dotenv](https://www.npmjs.com/package/dotenv)
- [Ip](https://www.npmjs.com/package/ip)

## Prerequisites

- [NodeJs](https://nodejs.org/en/download/)
- [XAMPP](https://www.apachefriends.org/index.html)

## Endpoint

- User

| METHOD |              API              |
| :----: | :---------------------------: |
| `GET`  |    /api/v1/users/find-one     |
| `POST` |         /api/v1/users         |
| `GET`  |   /api/v1/users/auth/verify   |
| `POST` |      /api/v1/users/login      |
| `POST` | /api/v1/users/forgot-password |
| `PUT`  | /api/v1/users/reset-password  |
| `PUT`  |       /api/v1/users/:id       |

- Category

| METHOD |       API        |
| :----: | :--------------: |
| `GET`  | /api/v1/category |

- Product

|  METHOD  |              API              |
| :------: | :---------------------------: |
|  `GET`   |        /api/v1/product        |
|  `GET`   |      /api/v1/product/:id      |
|  `GET`   | /api/v1/product/category/:id  |
|  `GET`   |   /api/v1/product/image/:id   |
|  `GET`   |  /api/v1/product/detail/:id   |
|  `GET`   |    /api/v1/product/popular    |
| `DELETE` |      /api/v1/product/:id      |
|  `PUT`   |      /api/v1/product/:id      |
|  `PUT`   | /api/v1/product/unarchive/:id |

- Address

|  METHOD  |           API            |
| :------: | :----------------------: |
|  `GET`   |     /api/v1/address      |
|  `GET`   | /api/v1/address/find-one |
|  `POST`  |     /api/v1/address      |
|  `PUT`   |   /api/v1/address/:id    |
| `DELETE` |   /api/v1/address/:id    |

- Cart

|  METHOD  |        API         |
| :------: | :----------------: |
|  `GET`   |    /api/v1/cart    |
|  `GET`   | /api/v1/cart/count |
|  `POST`  |    /api/v1/cart    |
|  `PUT`   |  /api/v1/cart/:id  |
| `DELETE` |    /api/v1/cart    |

- Store/Brand

| METHOD |              API              |
| :----: | :---------------------------: |
| `GET`  |         /api/v1/store         |
| `GET`  |     /api/v1/store/product     |
| `GET`  |  /api/v1/store/product/sold   |
| `GET`  | /api/v1/store/product/archive |
| `POST` |         /api/v1/store         |
| `PUT`  |         /api/v1/store         |
| `GET`  |      /api/v1/store/order      |
| `GET`  |    /api/v1/store/order/:id    |

- Order

|  METHOD  |        API        |
| :------: | :---------------: |
|  `GET`   |   /api/v1/order   |
|  `GET`   | /api/v1/order/:id |
|  `POST`  |   /api/v1/order   |
| `DELETE` | /api/v1/order/:id |

## Installation

1. Open your terminal or command prompt. Then, clone the repository `git clone https://github.com/chaerulmarwan20/tuku-backend`
2. Create database named `tuku-apps` and import `tuku-apps.sql` from this repository
3. Go to directory `cd tuku-backend`
4. Install all required packages `npm install`
5. Create a new file named `.env`, add it's content from `.env.example`
6. Run server `npm run dev` or `npm start`

## Related Project

- :white_check_mark: [`Frontend Tuku`](https://github.com/chaerulmarwan20/tuku-frontend)
- :rocket: [`Production`](https://tukupedia.netlify.app/)
