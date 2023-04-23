-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 03, 2023 at 07:14 PM
-- Server version: 8.0.30
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gabesgateway_external`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CartID` varchar(50) NOT NULL,
  `userID` varchar(50) NOT NULL,
  `ItemName` varchar(50) NOT NULL,
  `NoOfItems` int NOT NULL,
  `ProductPrice` int NOT NULL,
  `Subtotal` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CartID`, `userID`, `ItemName`, `NoOfItems`, `ProductPrice`, `Subtotal`) VALUES
('cart123', 'dt123', 'Desktop', 1, 200, 200),
('cart321', 'gh321', 'Laptop', 3, 200, 240),
('cart456', 'kl456', 'Flash Drive', 7, 50, 55),
('cart654', 'qa789', 'Keyboard', 6, 40, 45),
('cart789', 'vn654', 'Nintendo Switch', 3, 300, 350);

-- --------------------------------------------------------

--
-- Stand-in structure for view `invent`
-- (See below for the actual view)
--
CREATE TABLE `invent` (
`ProductID` varchar(50)
,`ProductDescr` varchar(50)
,`WareHouseLoc` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ProductID` varchar(50) NOT NULL,
  `ProductDescr` varchar(50) NOT NULL,
  `WareHouseLoc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ProductID`, `ProductDescr`, `WareHouseLoc`) VALUES
('s123', '32W Lighting Charger', 'Phoenix'),
('s321', '50in Samsung Smart TV', 'Dallas'),
('s456', '1TB External Drive', 'Los Angeles'),
('s654', '100in Long LED Strip', 'New York'),
('s789', '256GB Apple MacBook ', 'Chicago');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` varchar(100) NOT NULL,
  `productType` text NOT NULL,
  `imageLink` varchar(100) NOT NULL,
  `productDescription` text NOT NULL,
  `productPrice` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `useraccount`
--

CREATE TABLE `useraccount` (
  `userID` varchar(50) NOT NULL,
  `Orders` varchar(50) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `ShippingAddress` varchar(50) NOT NULL,
  `Password` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `useraccount`
--

INSERT INTO `useraccount` (`userID`, `Orders`, `Name`, `ShippingAddress`, `Password`) VALUES
('dt123', '7', 'Jack Frost', '111 N Kipling St.', NULL),
('gh321', '8', 'John Kobe', '435 E Gabe St.', NULL),
('kl456', '4', 'Bone Jackson', '890 S Front St.', NULL),
('qa789', '9', 'Dame Loop', '716 E Jump St.', NULL),
('vn654', '1', 'Pops James', '190 W Go St.', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `users`
-- (See below for the actual view)
--
CREATE TABLE `users` (
`userID` varchar(50)
,`Orders` varchar(50)
,`Name` varchar(40)
,`ShippingAddress` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `invent`
--
DROP TABLE IF EXISTS `invent`;

CREATE ALGORITHM=UNDEFINED DEFINER=`GabesGateway_External`@`%` SQL SECURITY DEFINER VIEW `invent`  AS SELECT `inventory`.`ProductID` AS `ProductID`, `inventory`.`ProductDescr` AS `ProductDescr`, `inventory`.`WareHouseLoc` AS `WareHouseLoc` FROM `inventory``inventory`  ;

-- --------------------------------------------------------

--
-- Structure for view `users`
--
DROP TABLE IF EXISTS `users`;

CREATE ALGORITHM=UNDEFINED DEFINER=`GabesGateway_External`@`%` SQL SECURITY DEFINER VIEW `users`  AS SELECT `useraccount`.`userID` AS `userID`, `useraccount`.`Orders` AS `Orders`, `useraccount`.`Name` AS `Name`, `useraccount`.`ShippingAddress` AS `ShippingAddress` FROM `useraccount``useraccount`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CartID`),
  ADD KEY `cart_FK_1` (`userID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `useraccount`
--
ALTER TABLE `useraccount`
  ADD PRIMARY KEY (`userID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_FK_1` FOREIGN KEY (`userID`) REFERENCES `useraccount` (`userID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
