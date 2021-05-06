-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Bulan Mei 2021 pada 07.02
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tuku-apps`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `access_token`
--

CREATE TABLE `access_token` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `ipAddress` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `access_token`
--

INSERT INTO `access_token` (`id`, `idUser`, `accessToken`, `ipAddress`, `createdAt`, `updatedAt`) VALUES
(1, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZW1haWwiOiJkZXZlbG9wZXJib2hkYW4wQGdtYWlsLmNvbSIsInBob25lTnVtYmVyIjoiMDg3ODI3ODY1NDM3IiwiaWF0IjoxNjIwMTE3Mzc2LCJleHAiOjE2MjAyMDM3NzZ9.GjMGCs7Gk83fQWSAYxLnTVd2JocSmz0zXTV_wXR8XuU', '192.168.43.107', '2021-05-04 08:36:16', '2021-05-04 08:36:16'),
(2, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4iLCJlbWFpbCI6ImRldmVsb3BlcmJvaGRhbjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiIwODc4Mjc4NjU0MzciLCJnZW5kZXIiOiJUaWRhayBkaWRlZmluaXNpa2FuIiwiZGF0ZU9mQmlydGgiOiJOb25lIiwiaW1hZ2UiOiJpbWFnZXNcXGRlZmF1bHQucG5nIiwiaWRBZGRyZXNzIjowLCJyb2xlIjoxLCJpYXQiOjE2MjAxMTc2NzIsImV4cCI6MTYyMDIwNDA3Mn0.BNhj8b0hz4Uyu-gGn_S8bJ9XzSavxN7GYOUoFscuqVc', '192.168.43.107', '2021-05-04 08:41:12', '2021-05-04 08:41:12'),
(3, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4iLCJlbWFpbCI6ImRldmVsb3BlcmJvaGRhbjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiIwODc4Mjc4NjU0MzciLCJnZW5kZXIiOiJUaWRhayBkaWRlZmluaXNpa2FuIiwiZGF0ZU9mQmlydGgiOiJOb25lIiwiaW1hZ2UiOiJpbWFnZXNcXGRlZmF1bHQucG5nIiwiaWRBZGRyZXNzIjowLCJyb2xlIjoxLCJpYXQiOjE2MjAxMTk0NDQsImV4cCI6MTYyMDIwNTg0NH0.gk3kLz9LZBaDINrVq0X3nLlGv1HF-_55JaxPORR0u8s', '192.168.43.107', '2021-05-04 09:10:44', '2021-05-04 09:10:44'),
(4, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4iLCJlbWFpbCI6ImRldmVsb3BlcmJvaGRhbjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiIwODc4Mjc4NjU0MzciLCJnZW5kZXIiOiJUaWRhayBkaWRlZmluaXNpa2FuIiwiZGF0ZU9mQmlydGgiOiJOb25lIiwiaW1hZ2UiOiJpbWFnZXNcXGRlZmF1bHQucG5nIiwiaWRBZGRyZXNzIjowLCJyb2xlIjoxLCJpYXQiOjE2MjAxMTk3NjMsImV4cCI6MTYyMDIwNjE2M30.RVjtOeCVQP-UwiNTx3dhPkJji4CESH3dDQ1cNTCw_S8', '192.168.43.107', '2021-05-04 09:16:03', '2021-05-04 09:16:03'),
(5, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4iLCJlbWFpbCI6ImRldmVsb3BlcmJvaGRhbjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiIwODc4Mjc4NjU0MzciLCJnZW5kZXIiOiJUaWRhayBkaWRlZmluaXNpa2FuIiwiZGF0ZU9mQmlydGgiOiJOb25lIiwiaW1hZ2UiOiJpbWFnZXNcXGRlZmF1bHQucG5nIiwiaWRBZGRyZXNzIjowLCJyb2xlIjoxLCJpYXQiOjE2MjAxMjM2NjEsImV4cCI6MTYyMDIxMDA2MX0.ug-p4HZMOwJFnPbYRubnPdwFGKRusO_DigCgDGSWNBk', '192.168.43.232', '2021-05-04 10:21:01', '2021-05-04 10:21:01'),
(6, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4gQ2FuaWFnYSIsImVtYWlsIjoiZGV2ZWxvcGVyYm9oZGFuMEBnbWFpbC5jb20iLCJwaG9uZU51bWJlciI6IjA4NzgyNzg2NTQzNyIsImdlbmRlciI6Ikxha2ktbGFraSIsImRhdGVPZkJpcnRoIjoiMTAgQWd1c3R1cyAyMDA2IiwiaW1hZ2UiOiJpbWFnZXNcXDE2MjAxMjM5ODQ1OTYtZ2FtYmFyLmpwZyIsInJvbGUiOjEsImlhdCI6MTYyMDE4OTg0NCwiZXhwIjoxNjIwMjc2MjQ0fQ.L7ppW9rnr4-7GIyCZpkwkzerADTWKm-USAqTWDBPiro', '192.168.43.107', '2021-05-05 04:44:04', '2021-05-05 04:44:04'),
(7, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4gQ2FuaWFnYSIsImVtYWlsIjoiZGV2ZWxvcGVyYm9oZGFuMEBnbWFpbC5jb20iLCJwaG9uZU51bWJlciI6IjA4NzgyNzg2NTQzNyIsImdlbmRlciI6Ikxha2ktbGFraSIsImRhdGVPZkJpcnRoIjoiMTAgQWd1c3R1cyAyMDA2IiwiaW1hZ2UiOiJpbWFnZXNcXDE2MjAxMjM5ODQ1OTYtZ2FtYmFyLmpwZyIsInJvbGUiOjEsImlhdCI6MTYyMDE4OTg1NywiZXhwIjoxNjIwMjc2MjU3fQ.-JCptoaBJjJePqVcusQUNz1YLE6GP_ggFiAFYs-x4fY', '192.168.43.107', '2021-05-05 04:44:17', '2021-05-05 04:44:17'),
(8, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4gQ2FuaWFnYSIsImVtYWlsIjoiZGV2ZWxvcGVyYm9oZGFuMEBnbWFpbC5jb20iLCJwaG9uZU51bWJlciI6IjA4NzgyNzg2NTQzNyIsImdlbmRlciI6Ikxha2ktbGFraSIsImRhdGVPZkJpcnRoIjoiMTAgQWd1c3R1cyAyMDA2IiwiaW1hZ2UiOiJpbWFnZXNcXDE2MjAxMjM5ODQ1OTYtZ2FtYmFyLmpwZyIsInJvbGUiOjEsImlhdCI6MTYyMDE4OTk5NywiZXhwIjoxNjIwMjc2Mzk3fQ.DG91KqFuHMTwQXCnquWsOCuoyOFH-P2uG4giMTcmBco', '192.168.43.107', '2021-05-05 04:46:37', '2021-05-05 04:46:37'),
(9, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4gQ2FuaWFnYSIsImVtYWlsIjoiZGV2ZWxvcGVyYm9oZGFuMEBnbWFpbC5jb20iLCJwaG9uZU51bWJlciI6IjA4NzgyNzg2NTQzNyIsImdlbmRlciI6Ikxha2ktbGFraSIsImRhdGVPZkJpcnRoIjoiMTAgQWd1c3R1cyAyMDA2IiwiaW1hZ2UiOiJpbWFnZXNcXDE2MjAxMjM5ODQ1OTYtZ2FtYmFyLmpwZyIsInJvbGUiOjEsImlhdCI6MTYyMDE4OTk5OCwiZXhwIjoxNjIwMjc2Mzk4fQ.GgkItBjwrAqpZp0yr5JeMnjJFtDQZQc1QQDHtEbZ9So', '192.168.43.107', '2021-05-05 04:46:38', '2021-05-05 04:46:38'),
(10, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4gQ2FuaWFnYSIsImVtYWlsIjoiZGV2ZWxvcGVyYm9oZGFuMEBnbWFpbC5jb20iLCJwaG9uZU51bWJlciI6IjA4NzgyNzg2NTQzNyIsImdlbmRlciI6Ikxha2ktbGFraSIsImRhdGVPZkJpcnRoIjoiMTAgQWd1c3R1cyAyMDA2IiwiaW1hZ2UiOiJpbWFnZXNcXDE2MjAxMjM5ODQ1OTYtZ2FtYmFyLmpwZyIsInJvbGUiOjEsImlhdCI6MTYyMDE5MDAyMCwiZXhwIjoxNjIwMjc2NDIwfQ.mSL_eWmocNPoTsbNc2bQc8rbMvZfYWztFEifj_yKYgo', '192.168.43.107', '2021-05-05 04:47:00', '2021-05-05 04:47:00'),
(11, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4gQ2FuaWFnYSIsImVtYWlsIjoiZGV2ZWxvcGVyYm9oZGFuMEBnbWFpbC5jb20iLCJwaG9uZU51bWJlciI6IjA4NzgyNzg2NTQzNyIsImdlbmRlciI6Ikxha2ktbGFraSIsImRhdGVPZkJpcnRoIjoiMTAgQWd1c3R1cyAyMDA2IiwiaW1hZ2UiOiJpbWFnZXNcXDE2MjAxMjM5ODQ1OTYtZ2FtYmFyLmpwZyIsInJvbGUiOjEsImlhdCI6MTYyMDE5MDA2MCwiZXhwIjoxNjIwMjc2NDYwfQ.HOWK1BAAvleztEwr5Meezc1tJfdVt6STvVBOFr_8IcI', '192.168.43.107', '2021-05-05 04:47:40', '2021-05-05 04:47:40'),
(12, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4gQ2FuaWFnYSIsImVtYWlsIjoiZGV2ZWxvcGVyYm9oZGFuMEBnbWFpbC5jb20iLCJwaG9uZU51bWJlciI6IjA4NzgyNzg2NTQzNyIsImdlbmRlciI6Ikxha2ktbGFraSIsImRhdGVPZkJpcnRoIjoiMTAgQWd1c3R1cyAyMDA2IiwiaW1hZ2UiOiJpbWFnZXNcXDE2MjAxMjM5ODQ1OTYtZ2FtYmFyLmpwZyIsInJvbGUiOjEsImlhdCI6MTYyMDE5MDA3MywiZXhwIjoxNjIwMjc2NDczfQ.q7lSn4yGX1SnbjaU-r_qYyx5ODabWgk12AQrBpQAFws', '192.168.43.107', '2021-05-05 04:47:53', '2021-05-05 04:47:53'),
(13, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4gQ2FuaWFnYSIsImVtYWlsIjoiZGV2ZWxvcGVyYm9oZGFuMEBnbWFpbC5jb20iLCJwaG9uZU51bWJlciI6IjA4NzgyNzg2NTQzNyIsImdlbmRlciI6Ikxha2ktbGFraSIsImRhdGVPZkJpcnRoIjoiMTAgQWd1c3R1cyAyMDA2IiwiaW1hZ2UiOiJpbWFnZXNcXDE2MjAxMjM5ODQ1OTYtZ2FtYmFyLmpwZyIsInJvbGUiOjEsImlhdCI6MTYyMDE5MDA4NSwiZXhwIjoxNjIwMjc2NDg1fQ.PmdoC74KUaChp_TkbyWxbh8c9aNTLUEAWzrxJ1sJ1DQ', '192.168.43.107', '2021-05-05 04:48:05', '2021-05-05 04:48:05'),
(14, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4gQ2FuaWFnYSIsImVtYWlsIjoiZGV2ZWxvcGVyYm9oZGFuMEBnbWFpbC5jb20iLCJwaG9uZU51bWJlciI6IjA4NzgyNzg2NTQzNyIsImdlbmRlciI6Ikxha2ktbGFraSIsImRhdGVPZkJpcnRoIjoiMTAgQWd1c3R1cyAyMDA2IiwiaW1hZ2UiOiJpbWFnZXNcXDE2MjAxMjM5ODQ1OTYtZ2FtYmFyLmpwZyIsInJvbGUiOjEsImlhdCI6MTYyMDE5MDExMiwiZXhwIjoxNjIwMjc2NTEyfQ.9UmIE4KVZmbRlQhIlHYQbIt-5jcow3G01J5HaFF1tU4', '192.168.43.107', '2021-05-05 04:48:32', '2021-05-05 04:48:32'),
(15, 4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwibmFtZSI6IkNoYWVydWwgTWFyd2FuIiwiZW1haWwiOiJjaGFlcnVsbWFyd2FuMjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiIwODEyMjQ2ODU1MDIiLCJnZW5kZXIiOiJUaWRhayBkaWRlZmluaXNpa2FuIiwiZGF0ZU9mQmlydGgiOiJOb25lIiwiaW1hZ2UiOiJpbWFnZXNcXGRlZmF1bHQucG5nIiwicm9sZSI6MiwiaWF0IjoxNjIwMTkwMTQ0LCJleHAiOjE2MjAyNzY1NDR9.snTnIp5VFb9wmsBilNinXHAY1rizeIyLwyyB98fRGvE', '192.168.43.107', '2021-05-05 04:49:04', '2021-05-05 04:49:04'),
(16, 9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OSwibmFtZSI6IkNoYWVydWwgTWFyd2FuIiwiZW1haWwiOiJjaGFlcnVsbWFyd2FuMjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiJOb25lIiwiZ2VuZGVyIjoiVGlkYWsgZGlkZWZpbmlzaWthbiIsImRhdGVPZkJpcnRoIjoiTm9uZSIsImltYWdlIjoiaW1hZ2VzXFxkZWZhdWx0LnBuZyIsInJvbGUiOjIsImlhdCI6MTYyMDE5MDg3MCwiZXhwIjoxNjIwMjc3MjcwfQ.XRHwn9ReJYLQl-xs-mnTcpqAVLPax-6xELd9TcI5d8Y', '192.168.43.107', '2021-05-05 05:01:10', '2021-05-05 05:01:10'),
(17, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywibmFtZSI6IlJvYmVydCBCb2hkYW4iLCJlbWFpbCI6ImRldmVsb3BlcmJvaGRhbjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiIwODc4Mjc4NjU0MzkiLCJnZW5kZXIiOiJUaWRhayBkaWRlZmluaXNpa2FuIiwiZGF0ZU9mQmlydGgiOiJOb25lIiwiaW1hZ2UiOiJpbWFnZXNcXGRlZmF1bHQucG5nIiwicm9sZSI6MSwiaWF0IjoxNjIwMTkwODg3LCJleHAiOjE2MjAyNzcyODd9.1SX8OpWSRduRTs6qv45tGh-l_ea3rXBq1-x-nC0HgyM', '192.168.43.107', '2021-05-05 05:01:27', '2021-05-05 05:01:27'),
(18, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywibmFtZSI6IlJvYmVydCBCb2hkYW4iLCJlbWFpbCI6ImRldmVsb3BlcmJvaGRhbjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiIwODc4Mjc4NjU0MzkiLCJnZW5kZXIiOiJUaWRhayBkaWRlZmluaXNpa2FuIiwiZGF0ZU9mQmlydGgiOiJOb25lIiwiaW1hZ2UiOiJpbWFnZXNcXGRlZmF1bHQucG5nIiwicm9sZSI6MSwiaWF0IjoxNjIwMjIwMTQwLCJleHAiOjE2MjAzMDY1NDB9.VPKcPRt6A7ijJxmcijJdESrnHvHHE8igAeQp8WNCbLU', '192.168.43.107', '2021-05-05 13:09:00', '2021-05-05 13:09:00'),
(19, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywibmFtZSI6IlJvYmVydCBCb2hkYW4iLCJlbWFpbCI6ImRldmVsb3BlcmJvaGRhbjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiIwODc4Mjc4NjU0MzkiLCJnZW5kZXIiOiJUaWRhayBkaWRlZmluaXNpa2FuIiwiZGF0ZU9mQmlydGgiOiJOb25lIiwiaW1hZ2UiOiJpbWFnZXNcXGRlZmF1bHQucG5nIiwicm9sZSI6MSwiaWF0IjoxNjIwMjIwMjAyLCJleHAiOjE2MjAzMDY2MDJ9.3P-AkNpFnyz3bj4o96WZlOfcNBzwkJLxH92SVr6Uq8A', '192.168.43.107', '2021-05-05 13:10:02', '2021-05-05 13:10:02'),
(20, 7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywibmFtZSI6IlJvYmVydCBCb2hkYW4iLCJlbWFpbCI6ImRldmVsb3BlcmJvaGRhbjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiIwODc4Mjc4NjU0MzkiLCJnZW5kZXIiOiJUaWRhayBkaWRlZmluaXNpa2FuIiwiZGF0ZU9mQmlydGgiOiJOb25lIiwiaW1hZ2UiOiJpbWFnZXNcXGRlZmF1bHQucG5nIiwicm9sZSI6MSwiaWF0IjoxNjIwMjIwMzcxLCJleHAiOjE2MjAzMDY3NzF9.bNbzrZhs9ncIj9e8ua5QXDTdWlPXv7GEuVLF0C94k-g', '192.168.43.107', '2021-05-05 13:12:51', '2021-05-05 13:12:51'),
(21, 9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OSwibmFtZSI6IkNoYWVydWwgTWFyd2FuIiwiZW1haWwiOiJjaGFlcnVsbWFyd2FuMjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiJOb25lIiwiZ2VuZGVyIjoiVGlkYWsgZGlkZWZpbmlzaWthbiIsImRhdGVPZkJpcnRoIjoiTm9uZSIsImltYWdlIjoiaW1hZ2VzXFxkZWZhdWx0LnBuZyIsInJvbGUiOjIsImlhdCI6MTYyMDIyMDQwMywiZXhwIjoxNjIwMzA2ODAzfQ.u9w13_mKQnaW8NcaTO0CL651rHez3DIFOZ6VsMJ2EPI', '192.168.43.107', '2021-05-05 13:13:23', '2021-05-05 13:13:23'),
(22, 12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTIsIm5hbWUiOiJCb2hkYW4gR2FudGVuZyIsImVtYWlsIjoiZGV2ZWxvcGVyYm9oZGFuMEBnbWFpbC5jb20iLCJwaG9uZU51bWJlciI6IjA4MjM0NTY3NTg5MCIsImdlbmRlciI6IlRpZGFrIGRpZGVmaW5pc2lrYW4iLCJkYXRlT2ZCaXJ0aCI6Ik5vbmUiLCJpbWFnZSI6ImltYWdlc1xcZGVmYXVsdC5wbmciLCJyb2xlIjoxLCJpYXQiOjE2MjAyMjI1NDgsImV4cCI6MTYyMDMwODk0OH0.JX1TB_X5Qzfd5_JuKTIkQyZ5Uii0NlP_rjILnPeAVAM', '192.168.43.107', '2021-05-05 13:49:08', '2021-05-05 13:49:08'),
(23, 11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTEsIm5hbWUiOiJDaGFlcnVsIE1hcndhbiIsImVtYWlsIjoiY2hhZXJ1bG1hcndhbjIwQGdtYWlsLmNvbSIsInBob25lTnVtYmVyIjoiTm9uZSIsImdlbmRlciI6IlRpZGFrIGRpZGVmaW5pc2lrYW4iLCJkYXRlT2ZCaXJ0aCI6Ik5vbmUiLCJpbWFnZSI6ImltYWdlc1xcZGVmYXVsdC5wbmciLCJyb2xlIjoyLCJpYXQiOjE2MjAyMjI1NzAsImV4cCI6MTYyMDMwODk3MH0.ZRSY3KfbzrTiRaYm7nO0J9va7owB14iBFekZe-3Y8UM', '192.168.43.107', '2021-05-05 13:49:30', '2021-05-05 13:49:30'),
(24, 11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTEsIm5hbWUiOiJDaGFlcnVsIE1hcndhbiIsImVtYWlsIjoiY2hhZXJ1bG1hcndhbjIwQGdtYWlsLmNvbSIsInBob25lTnVtYmVyIjoiTm9uZSIsImdlbmRlciI6IlRpZGFrIGRpZGVmaW5pc2lrYW4iLCJkYXRlT2ZCaXJ0aCI6Ik5vbmUiLCJpbWFnZSI6ImltYWdlc1xcZGVmYXVsdC5wbmciLCJyb2xlIjoyLCJpYXQiOjE2MjAyMjQyMDcsImV4cCI6MTYyMDMxMDYwN30.eSmmRD6mRieZBE6qW2lUCiRXTXRQMR_aVriCPVMGGSw', '192.168.43.107', '2021-05-05 14:16:47', '2021-05-05 14:16:47'),
(25, 12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTIsIm5hbWUiOiJCb2hkYW4gR2FudGVuZyIsImVtYWlsIjoiZGV2ZWxvcGVyYm9oZGFuMEBnbWFpbC5jb20iLCJwaG9uZU51bWJlciI6IjA4MjM0NTY3NTg5MCIsImdlbmRlciI6IlRpZGFrIGRpZGVmaW5pc2lrYW4iLCJkYXRlT2ZCaXJ0aCI6Ik5vbmUiLCJpbWFnZSI6ImltYWdlc1xcZGVmYXVsdC5wbmciLCJyb2xlIjoxLCJpYXQiOjE2MjAyNzIzNzgsImV4cCI6MTYyMDM1ODc3OH0.n3VZvFksffyJ7rkgfurGXpgY-3ZjGI6Q3vWbQ8pG8Kk', '192.168.43.107', '2021-05-06 03:39:38', '2021-05-06 03:39:38'),
(26, 12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTIsIm5hbWUiOiJCb2hkYW4gR2FudGVuZyIsImVtYWlsIjoiZGV2ZWxvcGVyYm9oZGFuMEBnbWFpbC5jb20iLCJwaG9uZU51bWJlciI6IjA4MjM0NTY3NTg5MCIsImdlbmRlciI6IlRpZGFrIGRpZGVmaW5pc2lrYW4iLCJkYXRlT2ZCaXJ0aCI6Ik5vbmUiLCJpbWFnZSI6ImltYWdlc1xcZGVmYXVsdC5wbmciLCJyb2xlIjoxLCJpYXQiOjE2MjAyNzM2NTksImV4cCI6MTYyMDM2MDA1OX0.7QVsUjezJpYF8sym10iYb4ze8yW1gh_HxPKFvPJHPBk', '192.168.43.232', '2021-05-06 04:00:59', '2021-05-06 04:00:59'),
(27, 11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTEsIm5hbWUiOiJDaGFlcnVsIE1hcndhbiIsImVtYWlsIjoiY2hhZXJ1bG1hcndhbjIwQGdtYWlsLmNvbSIsInBob25lTnVtYmVyIjoiTm9uZSIsImdlbmRlciI6IlRpZGFrIGRpZGVmaW5pc2lrYW4iLCJkYXRlT2ZCaXJ0aCI6Ik5vbmUiLCJpbWFnZSI6ImltYWdlc1xcZGVmYXVsdC5wbmciLCJyb2xlIjoyLCJpYXQiOjE2MjAyNzcxOTksImV4cCI6MTYyMDM2MzU5OX0.M6kANh1Q9MrGCbZQ1t2ouIMm7ghezFkO_3zTL8-jqBk', '192.168.43.232', '2021-05-06 04:59:59', '2021-05-06 04:59:59'),
(28, 12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTIsIm5hbWUiOiJCb2hkYW4gR2FudGVuZyIsImVtYWlsIjoiZGV2ZWxvcGVyYm9oZGFuMEBnbWFpbC5jb20iLCJwaG9uZU51bWJlciI6IjA4MjM0NTY3NTg5MCIsImdlbmRlciI6IlRpZGFrIGRpZGVmaW5pc2lrYW4iLCJkYXRlT2ZCaXJ0aCI6Ik5vbmUiLCJpbWFnZSI6ImltYWdlc1xcZGVmYXVsdC5wbmciLCJyb2xlIjoxLCJpYXQiOjE2MjAyNzcyNDQsImV4cCI6MTYyMDM2MzY0NH0.butMvxIYOZ6_kKd1_2CkV-uCyqVUuXJZayaTqHGgjbw', '192.168.43.232', '2021-05-06 05:00:44', '2021-05-06 05:00:44'),
(29, 11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTEsIm5hbWUiOiJDaGFlcnVsIE1hcndhbiIsImVtYWlsIjoiY2hhZXJ1bG1hcndhbjIwQGdtYWlsLmNvbSIsInBob25lTnVtYmVyIjoiTm9uZSIsImdlbmRlciI6IlRpZGFrIGRpZGVmaW5pc2lrYW4iLCJkYXRlT2ZCaXJ0aCI6Ik5vbmUiLCJpbWFnZSI6ImltYWdlc1xcZGVmYXVsdC5wbmciLCJyb2xlIjoyLCJpYXQiOjE2MjAyNzcyNzYsImV4cCI6MTYyMDM2MzY3Nn0.mXy9cmSIIVOAiJODQUKlkWW2l1Ki40ydeHYayYNm5po', '192.168.43.232', '2021-05-06 05:01:16', '2021-05-06 05:01:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `postalCode` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `isPrimary` tinyint(1) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `address`
--

INSERT INTO `address` (`id`, `idUser`, `type`, `name`, `phoneNumber`, `address`, `postalCode`, `city`, `isPrimary`, `createdAt`, `updatedAt`) VALUES
(6, 12, 'Rumah', 'Raka', '085321098239', 'Jln. Suka-Suka', '302617', 'Bandung', 0, '2021-05-06 04:06:56', '2021-05-06 04:43:17'),
(11, 12, 'Rumah', 'Raka', '085321098239', 'Jln. Suka-Suka', '302617', 'Bandung', 0, '2021-05-06 04:33:53', '2021-05-06 04:43:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bag`
--

CREATE TABLE `bag` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `store` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `color` varchar(50) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `color`, `createdAt`, `updatedAt`) VALUES
(1, 'T-Shirt', 'images\\t-shirt.png', '#CC0B04', '2021-05-06 03:51:20', '2021-05-06 03:51:20'),
(2, 'Shorts', 'images\\shorts.png', '#1C3391', '2021-05-06 03:51:20', '2021-05-06 03:51:20'),
(3, 'Jacket', 'images\\jacket.png', '#F67B02', '2021-05-06 03:51:52', '2021-05-06 03:52:23'),
(4, 'Pants', 'images\\pants.png', '#E31F51', '2021-05-06 03:51:52', '2021-05-06 03:51:52'),
(5, 'Shoes', 'images\\shoes.png', '#57CD9E', '2021-05-06 03:52:13', '2021-05-06 03:52:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_product`
--

CREATE TABLE `detail_product` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `size` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaction`
--

CREATE TABLE `detail_transaction` (
  `id` int(11) NOT NULL,
  `idTransaction` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `idCategory` int(11) NOT NULL,
  `idStore` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `conditions` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `totalSale` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `isPopular` tinyint(1) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `store`
--

INSERT INTO `store` (`id`, `idUser`, `name`, `description`, `image`, `createdAt`, `updatedAt`) VALUES
(7, 12, 'Bohdan Shop', 'None', 'images\\default_store.jpg', '2021-05-05 13:47:22', '2021-05-05 13:47:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `address` text NOT NULL,
  `total` int(11) NOT NULL,
  `status` enum('PENDING','SUCCESS') NOT NULL,
  `payment` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dateOfBirth` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `role` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phoneNumber`, `gender`, `dateOfBirth`, `image`, `active`, `role`, `createdAt`, `updatedAt`) VALUES
(11, 'Chaerul Marwan', 'chaerulmarwan20@gmail.com', '$2b$10$FztsZ39UQa/CteVwMOG48.QNnI8FRRaJiNSlgXJeVJsqJ6EWrrOrC', 'None', 'Tidak didefinisikan', 'None', 'images\\default.png', 1, 2, '2021-05-05 13:46:17', '2021-05-05 14:16:39'),
(12, 'Bohdan Ganteng', 'developerbohdan0@gmail.com', '$2b$10$PV0BZOpagK6LZ9XowtEZR.d2DF9HwrX/YQqCSdfd7H7uaHQgp9jZy', '082345675890', 'Tidak didefinisikan', 'None', 'images\\default.png', 1, 1, '2021-05-05 13:47:22', '2021-05-05 13:48:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `access_token`
--
ALTER TABLE `access_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indeks untuk tabel `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indeks untuk tabel `bag`
--
ALTER TABLE `bag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idUser` (`idUser`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_product`
--
ALTER TABLE `detail_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indeks untuk tabel `detail_transaction`
--
ALTER TABLE `detail_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTransaction` (`idTransaction`,`idProduct`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategory` (`idCategory`,`idStore`),
  ADD KEY `idStore` (`idStore`);

--
-- Indeks untuk tabel `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `access_token`
--
ALTER TABLE `access_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `bag`
--
ALTER TABLE `bag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `detail_product`
--
ALTER TABLE `detail_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `detail_transaction`
--
ALTER TABLE `detail_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `bag`
--
ALTER TABLE `bag`
  ADD CONSTRAINT `bag_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bag_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_product`
--
ALTER TABLE `detail_product`
  ADD CONSTRAINT `detail_product_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_transaction`
--
ALTER TABLE `detail_transaction`
  ADD CONSTRAINT `detail_transaction_ibfk_1` FOREIGN KEY (`idTransaction`) REFERENCES `transaction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaction_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`idStore`) REFERENCES `store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`idCategory`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
