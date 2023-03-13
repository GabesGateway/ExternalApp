-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 13, 2023 at 03:28 PM
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
-- Structure for view `users`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`GabesGateway_External`@`%` SQL SECURITY DEFINER VIEW `users`  AS SELECT `useraccount`.`userID` AS `userID`, `useraccount`.`Orders` AS `Orders`, `useraccount`.`Name` AS `Name`, `useraccount`.`ShippingAddress` AS `ShippingAddress` FROM `useraccount``useraccount`  ;

--
-- VIEW `users`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
