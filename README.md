<h3 align="center">Tuku App - Backend</h3>

---

## Tentang Tuku App

Tuku App adalah web aplikasi jual beli secara online yang memudahkan penggunaanya untuk berbelanja macam- macam produk fashion dengan menawarkan banyak category fashion seperti sepatu, kemeja, celana panjang, celana pendek, dan jacket. Pengguna juga dapat melakukan pembayaran online dengan cepat, efektif dan aman.

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

| METHOD |                    API                     |
| :----: | :----------------------------------------: |
| `POST` |               /api/v1/users/               |
| `POST` |       /api/v1/users/forgot-password        |
| `POST` |            /api/v1/users/login             |
| `GET`  |  /api/v1/users/auth/verify/:email/:token   |
| `PUT`  | /api/v1/users/reset-password/:email/:token |
| `GET`  |           /api/v1/users/find-one           |
| `PUT`  |             /api/v1/users/:id              |

#### Category Endpoint

| METHOD |       API        |
| :----: | :--------------: |
| `GET`  | /api/v1/category |

#### Product Endpoint

| METHOD |             API              |
| :----: | :--------------------------: |
| `GET`  |       /api/v1/product        |
| `GET`  |     /api/v1/product/:id      |
| `GET`  | /api/v1/product/category/:id |
| `GET`  |  /api/v1/product/image/:id   |
| `GET`  |  /api/v1/product/detail/:id  |
| `GET`  |   /api/v1/product/popular    |

#### Address Endpoint

| METHOD |           API            |
| :----: | :----------------------: |
| `POST` |     /api/v1/address      |
| `PUT`  |   /api/v1/address/:id    |
| `GET`  | /api/v1/address/find-one |
| `GET`  |     /api/v1/address/     |

#### Cart Endpoint

| METHOD |        API         |
| :----: | :----------------: |
| `GET`  |   /api/v1/cart/    |
| `GET`  | /api/v1/cart/count |
| `POST` |   /api/v1/cart/    |
| `DEL`  |   /api/v1/cart/    |
| `PUT`  |  /api/v1/cart/:id  |
| `POST` |   /api/v1/order/   |
| `DEL`  | /api/v1/order/:id  |
| `GET`  |   /api/v1/order/   |
| `GET`  | /api/v1/order/:id  |

#### Store/Brand Endpoint

| METHOD |               API               |
| :----: | :-----------------------------: |
| `GET`  |         /api/v1/store/          |
| `GET`  |       /api/v1/cart/count        |
| `GET`  | /api/v1/store/product?keyword=z |
| `GET`  |       /api/v1/store/order       |
| `GET`  |     /api/v1/store/order/:id     |
| `GET`  |   /api/v1/store/product/sold    |
| `GET`  |  /api/v1/store/product/archive  |
| `PUT`  |         /api/v1/store/          |
| `POST` |         /api/v1/store/          |

#### How to Run

1. Clone the repository `git clone https://github.com/chaerulmarwan20/tuku-backend`
2. Create database named `tuku` and import `tuku-aps.sql` from this repository
3. Go to directory `cd tuku-backend`
4. Install all required dependencies `npm install`
5. Create a new file named `.env`, add it's content from `.env.example`
6. Run server `npm run dev'

#### VISIT PROJECT

- :white_check_mark: [Frontend](https://github.com/ErwinSaputraSulistio/Tuku-FE)
- :rocket: [Website]()
