-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 12:13 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

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
-- Table structure for table `access_token`
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
-- Dumping data for table `access_token`
--

INSERT INTO `access_token` (`id`, `idUser`, `accessToken`, `ipAddress`, `createdAt`, `updatedAt`) VALUES
(1, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZW1haWwiOiJkZXZlbG9wZXJib2hkYW4wQGdtYWlsLmNvbSIsInBob25lTnVtYmVyIjoiMDg3ODI3ODY1NDM3IiwiaWF0IjoxNjIwMTE3Mzc2LCJleHAiOjE2MjAyMDM3NzZ9.GjMGCs7Gk83fQWSAYxLnTVd2JocSmz0zXTV_wXR8XuU', '192.168.43.107', '2021-05-04 08:36:16', '2021-05-04 08:36:16'),
(2, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4iLCJlbWFpbCI6ImRldmVsb3BlcmJvaGRhbjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiIwODc4Mjc4NjU0MzciLCJnZW5kZXIiOiJUaWRhayBkaWRlZmluaXNpa2FuIiwiZGF0ZU9mQmlydGgiOiJOb25lIiwiaW1hZ2UiOiJpbWFnZXNcXGRlZmF1bHQucG5nIiwiaWRBZGRyZXNzIjowLCJyb2xlIjoxLCJpYXQiOjE2MjAxMTc2NzIsImV4cCI6MTYyMDIwNDA3Mn0.BNhj8b0hz4Uyu-gGn_S8bJ9XzSavxN7GYOUoFscuqVc', '192.168.43.107', '2021-05-04 08:41:12', '2021-05-04 08:41:12'),
(3, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4iLCJlbWFpbCI6ImRldmVsb3BlcmJvaGRhbjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiIwODc4Mjc4NjU0MzciLCJnZW5kZXIiOiJUaWRhayBkaWRlZmluaXNpa2FuIiwiZGF0ZU9mQmlydGgiOiJOb25lIiwiaW1hZ2UiOiJpbWFnZXNcXGRlZmF1bHQucG5nIiwiaWRBZGRyZXNzIjowLCJyb2xlIjoxLCJpYXQiOjE2MjAxMTk0NDQsImV4cCI6MTYyMDIwNTg0NH0.gk3kLz9LZBaDINrVq0X3nLlGv1HF-_55JaxPORR0u8s', '192.168.43.107', '2021-05-04 09:10:44', '2021-05-04 09:10:44'),
(4, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4iLCJlbWFpbCI6ImRldmVsb3BlcmJvaGRhbjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiIwODc4Mjc4NjU0MzciLCJnZW5kZXIiOiJUaWRhayBkaWRlZmluaXNpa2FuIiwiZGF0ZU9mQmlydGgiOiJOb25lIiwiaW1hZ2UiOiJpbWFnZXNcXGRlZmF1bHQucG5nIiwiaWRBZGRyZXNzIjowLCJyb2xlIjoxLCJpYXQiOjE2MjAxMTk3NjMsImV4cCI6MTYyMDIwNjE2M30.RVjtOeCVQP-UwiNTx3dhPkJji4CESH3dDQ1cNTCw_S8', '192.168.43.107', '2021-05-04 09:16:03', '2021-05-04 09:16:03'),
(5, 5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6IlJvYmVydCBCb2hkYW4iLCJlbWFpbCI6ImRldmVsb3BlcmJvaGRhbjBAZ21haWwuY29tIiwicGhvbmVOdW1iZXIiOiIwODc4Mjc4NjU0MzciLCJnZW5kZXIiOiJUaWRhayBkaWRlZmluaXNpa2FuIiwiZGF0ZU9mQmlydGgiOiJOb25lIiwiaW1hZ2UiOiJpbWFnZXNcXGRlZmF1bHQucG5nIiwiaWRBZGRyZXNzIjowLCJyb2xlIjoxLCJpYXQiOjE2MjAxMjM2NjEsImV4cCI6MTYyMDIxMDA2MX0.ug-p4HZMOwJFnPbYRubnPdwFGKRusO_DigCgDGSWNBk', '192.168.43.232', '2021-05-04 10:21:01', '2021-05-04 10:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `address`
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
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `idUser`, `type`, `name`, `phoneNumber`, `address`, `postalCode`, `city`, `isPrimary`, `createdAt`, `updatedAt`) VALUES
(1, 4, 'None', 'None', 'None', 'None', 'None', 'None', 0, '2021-05-04 13:26:28', '2021-05-04 13:26:46'),
(17, 4, 'home', 'herza', '08133566387', 'jalan kebenaran menuju surga', '61257', 'Surabaya', 0, '2021-05-04 16:26:39', '2021-05-04 17:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `bag`
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
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 't-shirt', '2021-05-04 18:18:41', '2021-05-04 18:18:41'),
(2, 'jacket', '2021-05-04 18:18:41', '2021-05-04 18:18:41'),
(3, 'pants', '2021-05-04 18:18:41', '2021-05-04 18:18:41'),
(4, 'shoes', '2021-05-04 18:18:41', '2021-05-04 18:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `detail_product`
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
-- Table structure for table `detail_transaction`
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
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `idProduct`, `image`, `createdAt`, `updatedAt`) VALUES
(1, 3, '/LITE%20RACER%202.0.png', '2021-05-05 21:36:50', '2021-05-05 21:36:50'),
(2, 3, '/LITE%20RACER%202.0(2).png', '2021-05-05 21:36:50', '2021-05-05 21:36:50'),
(3, 3, '/LITE%20RACER%202.0(3).png', '2021-05-05 21:36:50', '2021-05-05 21:36:50'),
(4, 3, '/LITE%20RACER%202.0(4).png', '2021-05-05 21:36:50', '2021-05-05 21:36:50'),
(5, 4, '/zx%201k%20boost.png', '2021-05-05 21:39:53', '2021-05-05 21:39:53'),
(6, 4, '/zx%201k%20boost(2).png', '2021-05-05 21:39:53', '2021-05-05 21:39:53'),
(7, 4, '/zx%201k%20boost(3).png', '2021-05-05 21:39:53', '2021-05-05 21:39:53'),
(8, 4, '/zx%201k%20boost(4).png', '2021-05-05 21:39:53', '2021-05-05 21:39:53'),
(9, 5, '/SUPERSTAR.png', '2021-05-05 21:41:31', '2021-05-05 21:41:31'),
(10, 5, '/SUPERSTAR(2).png', '2021-05-05 21:41:31', '2021-05-05 21:41:31'),
(11, 5, '/SUPERSTAR(3).png', '2021-05-05 21:41:31', '2021-05-05 21:41:31'),
(12, 5, '/SUPERSTAR(4).png', '2021-05-05 21:41:31', '2021-05-05 21:41:31'),
(13, 6, '/FULL-ZIP%20STADIUM%20HOODIE.png', '2021-05-05 21:43:02', '2021-05-05 21:43:02'),
(14, 6, '/FULL-ZIP%20STADIUM%20HOODIE(2).png', '2021-05-05 21:43:02', '2021-05-05 21:43:02'),
(15, 6, '/FULL-ZIP%20STADIUM%20HOODIE(3).png', '2021-05-05 21:43:02', '2021-05-05 21:43:02'),
(16, 6, '/FULL-ZIP%20STADIUM%20HOODIE(4).png', '2021-05-05 21:43:02', '2021-05-05 21:43:02'),
(17, 7, '/PLECKGATE%20TRACK%20JACKET.png', '2021-05-05 21:44:23', '2021-05-05 21:44:23'),
(18, 7, '/PLECKGATE%20TRACK%20JACKET(2).png', '2021-05-05 21:44:23', '2021-05-05 21:44:23'),
(19, 7, '/PLECKGATE%20TRACK%20JACKET(3).png', '2021-05-05 21:44:23', '2021-05-05 21:44:23'),
(20, 7, '/PLECKGATE%20TRACK%20JACKET(4).png', '2021-05-05 21:44:23', '2021-05-05 21:44:23'),
(21, 8, '/BALANTA%2096%20TRACK%20TOP.png', '2021-05-05 21:45:46', '2021-05-05 21:45:46'),
(22, 8, '/BALANTA%2096%20TRACK%20TOP(2).png', '2021-05-05 21:45:46', '2021-05-05 21:45:46'),
(23, 8, '/BALANTA%2096%20TRACK%20TOP(3).png', '2021-05-05 21:45:46', '2021-05-05 21:45:46'),
(24, 8, '/BALANTA%2096%20TRACK%20TOP(4).png', '2021-05-05 21:45:46', '2021-05-05 21:45:46'),
(25, 9, '/BIG%20TREFOIL%20ABSTRACT%20TRACK%20TOP.png', '2021-05-05 21:47:25', '2021-05-05 21:47:25'),
(26, 9, '/BIG%20TREFOIL%20ABSTRACT%20TRACK%20TOP(2).png', '2021-05-05 21:47:25', '2021-05-05 21:47:25'),
(27, 9, '/BIG%20TREFOIL%20ABSTRACT%20TRACK%20TOP(3).png', '2021-05-05 21:47:25', '2021-05-05 21:47:25'),
(28, 9, '/BIG%20TREFOIL%20ABSTRACT%20TRACK%20TOP(4).png', '2021-05-05 21:47:25', '2021-05-05 21:47:25'),
(29, 10, '/Nike%20Sportswear.png', '2021-05-05 21:49:16', '2021-05-05 21:49:16'),
(30, 10, '/Nike%20Sportswear(2).png', '2021-05-05 21:49:16', '2021-05-05 21:49:16'),
(31, 10, '/Nike%20Sportswear(3).png', '2021-05-05 21:49:16', '2021-05-05 21:49:16'),
(32, 10, '/Nike%20Sportswear(4).png', '2021-05-05 21:49:16', '2021-05-05 21:49:16'),
(33, 11, '/Jordan%20Jumpman%20Classics.png', '2021-05-05 21:50:48', '2021-05-05 21:50:48'),
(34, 11, '/Jordan%20Jumpman%20Classics(2).png', '2021-05-05 21:50:48', '2021-05-05 21:50:48'),
(35, 11, '/Jordan%20Jumpman%20Classics(3).png', '2021-05-05 21:50:48', '2021-05-05 21:50:48'),
(36, 11, '/Jordan%20Jumpman%20Classics(4).png', '2021-05-05 21:50:48', '2021-05-05 21:50:48'),
(37, 12, '/RUN%20LOGO%20GRAPHIC%20TEE.png', '2021-05-05 21:51:39', '2021-05-05 21:51:39'),
(38, 14, '/BADGE%20OF%20SPORT%20SHORTS.png', '2021-05-05 21:53:25', '2021-05-05 21:53:25'),
(39, 14, '/BADGE%20OF%20SPORT%20SHORTS(2).png', '2021-05-05 21:53:25', '2021-05-05 21:53:25'),
(40, 14, '/BADGE%20OF%20SPORT%20SHORTS(3).png', '2021-05-05 21:53:25', '2021-05-05 21:53:25'),
(41, 14, '/BADGE%20OF%20SPORT%20SHORTS(4).png', '2021-05-05 21:53:25', '2021-05-05 21:53:25'),
(42, 15, '/OWN%20THE%20RUN%20CELEBRATION%20SHORTS.png', '2021-05-05 21:55:01', '2021-05-05 21:55:01'),
(43, 15, '/OWN%20THE%20RUN%20CELEBRATION%20SHORTS(2).png', '2021-05-05 21:55:01', '2021-05-05 21:55:01'),
(44, 15, '/OWN%20THE%20RUN%20CELEBRATION%20SHORTS(3).png', '2021-05-05 21:55:01', '2021-05-05 21:55:01'),
(45, 15, '/OWN%20THE%20RUN%20CELEBRATION%20SHORTS(4).png', '2021-05-05 21:55:01', '2021-05-05 21:55:01'),
(54, 16, '/Nike%20Sportswear%20City%20Made.png', '2021-05-05 22:09:23', '2021-05-05 22:09:23'),
(55, 16, '/Nike%20Sportswear%20City%20Made(2).png', '2021-05-05 22:09:23', '2021-05-05 22:09:23'),
(56, 16, '/Nike%20Sportswear%20City%20Made(3).png', '2021-05-05 22:09:23', '2021-05-05 22:09:23'),
(57, 16, '/Nike%20Sportswear%20City%20Made(4).png', '2021-05-05 22:09:23', '2021-05-05 22:09:23'),
(58, 17, '/Jordan%20Dri-FIT%20Zion.png', '2021-05-05 22:10:54', '2021-05-05 22:10:54'),
(59, 17, '/Jordan%20Dri-FIT%20Zion(2).png', '2021-05-05 22:10:54', '2021-05-05 22:10:54'),
(60, 17, '/Jordan%20Dri-FIT%20Zion(3).png', '2021-05-05 22:10:54', '2021-05-05 22:10:54'),
(61, 17, '/Jordan%20Dri-FIT%20Zion(4).png', '2021-05-05 22:10:54', '2021-05-05 22:10:54'),
(62, 13, '/HEAT.RDY%20RUNNING%20TANK%20TOP.png', '2021-05-05 22:12:38', '2021-05-05 22:12:38'),
(63, 13, '/HEAT.RDY%20RUNNING%20TANK%20TOP(2).png', '2021-05-05 22:12:38', '2021-05-05 22:12:38'),
(64, 13, '/HEAT.RDY%20RUNNING%20TANK%20TOP(3).png', '2021-05-05 22:12:38', '2021-05-05 22:12:38'),
(65, 13, '/HEAT.RDY%20RUNNING%20TANK%20TOP(4).png', '2021-05-05 22:12:38', '2021-05-05 22:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `product`
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

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `idCategory`, `idStore`, `price`, `conditions`, `description`, `totalSale`, `rating`, `isPopular`, `createdAt`, `updatedAt`) VALUES
(2, 'ZX 8000 GOLF', 4, 5, 2300000, 'new', 'Lace up for tee time. These ZX 8000 Golf Shoes are part of the adidas A-ZX series, a global platform spanning a multitude of cultural touch points to showcase the diverse world of sneakers. Representing the letter G, this golf-inspired pair flash a glossy, embossed leather upper reminiscent of a golf ball. Neon accents and a functional ball marker and tee holder design make them stand out even more.', 1, 5, 0, '2021-05-05 20:56:15', '2021-05-05 21:01:16'),
(3, 'LITE RACER 2.0', 4, 5, 300000, 'new', 'Bring sport attitude into everyday life. These adidas running-inspired shoes feature a knit upper to keep you cool for school, work or play. Lightweight cushioning adds comfort during power walks and strolls in the park.', 1, 4, 0, '2021-05-05 20:59:41', '2021-05-05 21:07:27'),
(4, 'ZX 1K BOOST', 4, 5, 1600000, 'new', 'In a constantly evolving world, keeping up is just part of the routine. Stay on top of it in these airy knit mesh adidas shoes. The ZX series has merged technology with culture since the \'80s. Today a combination of Boost and EVA cushioning keeps you comfortable as you charge through the day.', 1, 4, 1, '2021-05-05 21:02:11', '2021-05-05 21:02:11'),
(5, 'SUPERSTAR', 4, 5, 1600000, 'new', 'Originally made for basketball courts in the \'70s. Celebrated by hip hop royalty in the \'80s. The adidas Superstar shoe is now a lifestyle staple for streetwear enthusiasts. The world-famous shell toe feature remains, providing style and protection. Just like it did on the B-ball courts back in the day. Now, whether at a festival or walking in the street you can enjoy yourself without the fear of being stepped on. The serrated 3-Stripes detail and adidas Superstar box logo adds OG authenticity to your look.', 1, 4, 1, '2021-05-05 21:07:09', '2021-05-05 21:07:09'),
(6, 'FULL-ZIP STADIUM HOODIE', 2, 5, 1000000, 'new', 'Take a moment to let it all sink in. You gave it your all. You pushed through, mentally and physically. As you sit on that locker room bench lacing up your shoes, still feeling the energy vibrating through your body, remember that you\'re the one who got yourself there. Then zip into this adidas hoodie and go celebrate that. The soft fabric and snug ribbed details reward tired muscles with comfort. You deserve it.', 1, 1, 1, '2021-05-05 21:07:09', '2021-05-05 21:07:09'),
(7, 'PLECKGATE TRACK JACKET', 2, 5, 2800000, 'new', 'Terracewear meets dance hall hardwood. Inspired by the Northern Soul movement that hit England during the 1970s, this adidas track jacket takes a silhouette made famous in the stands and infuses it with carefree attitude. A stand-up collar and a bonded zip bring tailored style to your casual look.', 1, 4, 1, '2021-05-05 21:07:09', '2021-05-05 21:07:09'),
(8, 'BALANTA 96 TRACK TOP', 2, 5, 750000, 'new', 'Pay homage to the spirit of sport. Zip into this track jacket and honour the connection and unity found in shared experience. Wins and losses. The beauty of the game. This lightweight layer blends the striking club colours of Morocco and the Netherlands into an archival design, for a look that keeps your look right on pitch.', 1, 4, 1, '2021-05-05 21:07:09', '2021-05-05 21:07:09'),
(9, 'BIG TREFOIL ABSTRACT TRACK TOP', 2, 5, 900000, 'new', 'You\'re drawn to that quality that never goes out of style. A little edgy, a bit unexpected in its originality. Like the signature adidas track jacket. The classic look of sports heritage has been defined by adidas for decades. Others might build on the 3-Stripes foundation, but can anyone else really compete with an icon?', 1, 4, 1, '2021-05-05 21:07:09', '2021-05-05 21:07:09'),
(10, 'Nike Sportswear', 1, 5, 399000, 'new', 'Sushi and sneaker connoisseurs behold: The Nike Sportswear T-Shirt sets you up with soft, cotton fabric and a Nike graphic on the chest for total shoeshi fantasy.', 1, 4, 1, '2021-05-05 21:11:27', '2021-05-05 21:11:27'),
(11, 'Jordan Jumpman Classics', 1, 5, 399000, 'new', 'Ready for take-off. The Jordan Jumpman Classics T-Shirt riffs on an iconic Michael Jordan image with a fresh, bold-letter graphic.', 1, 4, 1, '2021-05-05 21:11:27', '2021-05-05 21:11:27'),
(12, 'RUN LOGO GRAPHIC TEE', 1, 5, 299000, 'new', 'Always one run away from a good mood. Slip on this adidas running t-shirt, and let the endorphins multiply. Not only does it keep you dry with moisture-absorbing AEROREADY, but it\'s also made with the planet in mind. A tee you\'ll feel good wearing for more reasons than one. This product is made with Primegreen, a series of high-performance recycled materials.', 1, 4, 1, '2021-05-05 21:11:27', '2021-05-05 21:11:27'),
(13, 'RUNNING TANK TOP', 1, 5, 550000, 'new', 'No matter how high the temperature rises, you\'re ready. Slip on this light and breathable adidas tank top, knowing HEAT.RDY will manage moisture and keep air flowing with every stride you take. And knowing the recycled content is helping to end plastic waste. This product is made with Primegreen, a series of high-performance recycled materials.', 1, 4, 1, '2021-05-05 21:11:27', '2021-05-05 21:11:27'),
(14, 'BADGE OF SPORT SHORTS', 3, 5, 450000, 'new', 'Whether you\'re headed to the gym or out with your crew, pull on these casual shorts. They\'re made of soft cotton-blend French terry in an easy-to-wear fit that\'s not too loose or too tight. The drawcord-adjustable elastic waist lets you personalise the fit.', 1, 4, 1, '2021-05-05 21:14:54', '2021-05-05 21:14:54'),
(15, 'OWN THE RUN CELEBRATION SHORTS', 3, 5, 450000, 'new', 'Every run has its share of triumphs and defeats. When you stay comfortable in these running shorts, it\'s easier to appreciate the process. AEROREADY wicks moisture, and the cut gives you free movement through your stride. Graphic panels add a heavy dose of adidas pride.', 1, 4, 1, '2021-05-05 21:14:54', '2021-05-05 21:14:54'),
(16, 'Nike Sportswear City Made', 3, 5, 1249000, 'new', 'The Nike Air Woven Trousers update a style staple with Ripstop fabric and reinforced panels. A tapered leg design and utility details provide a clean, tactical look.', 1, 4, 1, '2021-05-05 21:14:54', '2021-05-05 21:14:54'),
(17, 'Jordan Dri-FIT Zion', 3, 5, 1429000, 'new', 'Zion likes versatile clothing that he can wear while hanging with family and friends—and then go and hoop in.The Jordan Dri-FIT Zion Trousers tick all boxes, with smooth, sweat-wicking fleece and a design that\'s fit for moving on and off the court.', 1, 4, 1, '2021-05-05 21:14:54', '2021-05-05 21:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `store`
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
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `idUser`, `name`, `description`, `image`, `createdAt`, `updatedAt`) VALUES
(5, 5, 'Hype Beast Style', 'Our business is built on trust, and every item we sell is guaranteed authentic.', '', '2021-05-05 20:54:29', '2021-05-05 20:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
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
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phoneNumber`, `gender`, `dateOfBirth`, `image`, `active`, `role`, `createdAt`, `updatedAt`) VALUES
(4, 'Chaerul Marwan', 'chaerulmarwan20@gmail.com', '$2b$10$9CXwtrDVIZ9NTzHZ7R25KuWBqkMpFErwnxPRQFyXemA/q9.6ECZJm', '081224685502', 'Tidak didefinisikan', 'None', 'images\\default.png', 1, 2, '2021-05-04 08:27:01', '2021-05-04 13:27:13'),
(5, 'Robert Bohdan Caniaga', 'developerbohdan0@gmail.com', '$2b$10$QaDRg.qYoiKeuqpGcChTYOPNpa7WjafYIEAO.F65sWHK3HyDdQUtK', '087827865437', 'Laki-laki', '10 Agustus 2006', 'images\\1620123984596-gambar.jpg', 1, 1, '2021-05-04 08:32:03', '2021-05-04 13:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
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
-- Indexes for table `access_token`
--
ALTER TABLE `access_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `bag`
--
ALTER TABLE `bag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_product`
--
ALTER TABLE `detail_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indexes for table `detail_transaction`
--
ALTER TABLE `detail_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTransaction` (`idTransaction`,`idProduct`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategory` (`idCategory`,`idStore`),
  ADD KEY `idStore` (`idStore`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_token`
--
ALTER TABLE `access_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bag`
--
ALTER TABLE `bag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_product`
--
ALTER TABLE `detail_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_transaction`
--
ALTER TABLE `detail_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bag`
--
ALTER TABLE `bag`
  ADD CONSTRAINT `bag_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bag_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_product`
--
ALTER TABLE `detail_product`
  ADD CONSTRAINT `detail_product_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_transaction`
--
ALTER TABLE `detail_transaction`
  ADD CONSTRAINT `detail_transaction_ibfk_1` FOREIGN KEY (`idTransaction`) REFERENCES `transaction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaction_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`idStore`) REFERENCES `store` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`idCategory`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
