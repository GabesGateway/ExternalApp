-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2023 at 10:29 PM
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` varchar(100) NOT NULL,
  `productType` text NOT NULL,
  `imageLink` varchar(100) NOT NULL,
  `productDescription` text NOT NULL,
  `productPrice` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `productType`, `imageLink`, `productDescription`, `productPrice`) VALUES
('1', 'TV(Samsung - 55” Class 7 Series LED 4K UHD Smart Tizen TV)', '', 'Improve your viewing experience with this 55-inch Samsung smart TV. The variety of applications offer easy access to content on popular streaming services, and the intuitive interface makes finding your favorite shows simple.', 380),
('10', 'Computer(Crucial 64GB (2 x 32GB) DDR4-3200 PC4-25600 CL22 Dual Channel Desktop Memory Kit CT2K32G4DFD832A - Green)', '', 'DDR4-3200 PC4-25600\r\n\r\nCAS Latency 22, Timings 22-22-22\r\n\r\n1.20 Volts\r\n', 155),
('11', 'Computer(Logitech G G502 X Plus)', '', 'Wireless RGB Gaming Mouse', 160),
('12', 'Computer(Redragon K643 Wireless 90% RGB Backlist Hot-Swappable Mechanical Gaming Keyboard)', '', 'Keyboard Design: Gaming\r\n\r\nKeyboard Color: White\r\n\r\nBacklit Keyboard: RGB Illuminated\r\n\r\nSwitch Type: Red\r\n', 65),
('13', 'Camera(Canon - EF 50mm f/1.8 STM Standard Lens - Black)', '', 'Canon EF 50mm f/1.8 STM Standard Lens: Capture important moments in your life with this standard lens, which works with your compatible Canon DSLR EF-mount camera.', 126),
('14', 'Camera(Nikon - AF-S NIKKOR 50mm f/1.8G Standard Lens - Black)', '', 'Nikon AF-S NIKKOR 50mm f/1.8G Standard Lens: A perfect everyday lens for any photographer, the AF-S NIKKOR 50mm f/1.8G offers fast autofocusing combined with an integrated lens coating to deliver clear and crisp images.', 220),
('15', 'Camera(Fujifilm - Instax Mini 12 Instant Film Camera)', '', 'Fully loaded with easy-to-use modes and controls, the super-playful Instax Mini 12 instant camera is bursting with joy, creativity and color.', 80),
('2', 'TV(Insignia - 58” Class F30 Series LED 4K UHD Smart Fire TV)\r\n', '', 'Take in every moment with breathtaking 4K Ultra HD on this 58-inch screen. It’s equipped with DTS Studio Sound to create realistic and immersive audio. Access live over-the-air channels and streaming—and control it all with your voice. \r\n', 280),
('3', 'Computer(PowerSpec G439 Gaming PC)\r\n', '', 'Intel Core i7 12th Gen 12700KF 2.7GHz Processor\r\n\r\nMicrosoft Windows 10 Pro\r\n\r\nNVIDIA GeForce RTX 3070 Ti 8GB GDDR6X\r\n', 1600),
('4', 'Computer(PowerSpec G441 Gaming PC)', '', 'Intel Core i7 13th Gen 13700KF 3.4GHz Processor\r\n\r\nMicrosoft Windows 11 Pro\r\n\r\nNVIDIA GeForce RTX 3070 Ti 8GB GDDR6X\r\n', 1800),
('5', 'Camera(Canon - EOS Rebel T7 DSLR Video Two Lens Kit with EF-S 18-55mm and EF 75-300mm Lenses)\r\n', '', 'Take stunning pictures with vibrant colors using this EOS Rebel T7 camera. The built-in Wi-Fi makes printing and sharing pictures quick and easy, and the auto-focus system creates crisp images at a moment\'s notice. ', 600),
('6', 'Camera(Canon - Ivy CLIQ+2 Instant Film Camera - Iridescent White)', '', 'Easily shoot, print, edit, and stick photos, with the IVY CLIQ+2. Capture every moment with the Canon IVY CLIQ+2 — an easy to use Instant Camera Printer that is portable so you can take it with you! Instantly shoot and print 2”x3” photos and place them almost anywhere thanks to a peel and stick backing. ', 120),
('7', 'TV(Hisense - 75” Class U6H Series Quantum ULED 4K UHD Smart Google TV)', '', 'Hisense continues its tradition of bringing affordable televisions with the latest technologies to the masses in the U6H series. In 2021, the U6G series made Quantum Dot Wide Color Gamut more accessible to the masses. In 2022, the U6H series expands on picture quality and audio upgrades and makes the transition to the Google TV operating system.', 700),
('8', 'TV(Samsung - 65” Class 7 Series LED 4K UHD Smart Tizen TV)', '', 'Get enhanced smart capabilities with the TU7000 . Crystal Processor 4K automatically upscales your favorite movies, TV shows and sports events to 4K. Smart TV powered by Tizen lets you find content and navigate streaming services easily.', 480),
('9', 'TV(LG - 65” Class UQ75 Series LED 4K UHD Smart webOS Tv)', '', 'Dive into a world of free content, thanks to over 300+ free LG Channels¹ and personalized recommendations for everyone you share the remote with.', 470);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
