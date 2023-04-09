-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2023 at 12:55 AM
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
('1', 'TV(Samsung - 55” Class 7 Series LED 4K UHD Smart Tizen TV)', '', 'Improve your viewing experience with this 55-inch Samsung smart TV. The variety of applications offer easy access to content on popular streaming services, and the intuitive interface makes finding your favorite shows simple. Boasting native 4K resolution and advanced HDR technology, this Samsung smart TV enriches your movie nights with stunningly detailed visuals and lifelike colors.', 380),
('2', 'TV(Insignia - 58” Class F30 Series LED 4K UHD Smart Fire TV)\r\n', '', 'Take in every moment with breathtaking 4K Ultra HD on this 58-inch screen. It’s equipped with DTS Studio Sound to create realistic and immersive audio. Access live over-the-air channels and streaming—and control it all with your voice. Ask Alexa to launch apps, search for titles and more. Experience the affordable, yet high-performing Insignia NS-58F301NA22 58\" Class F30 Series LED 4K UHD Smart Fire TV.\r\n', 280),
('3', 'Computer(PowerSpec G439 Gaming PC)\r\n', '', 'Intel Core i7 12th Gen 12700KF 2.7GHz Processor\r\n\r\nMicrosoft Windows 10 Pro\r\n\r\nNVIDIA GeForce RTX 3070 Ti 8GB GDDR6X\r\n', 1600),
('4', 'Computer(PowerSpec G441 Gaming PC)', '', 'Intel Core i7 13th Gen 13700KF 3.4GHz Processor\r\n\r\nMicrosoft Windows 11 Pro\r\n\r\nNVIDIA GeForce RTX 3070 Ti 8GB GDDR6X\r\n', 1800),
('5', 'Camera(Canon - EOS Rebel T7 DSLR Video Two Lens Kit with EF-S 18-55mm and EF 75-300mm Lenses)\r\n', '', 'Take stunning pictures with vibrant colors using this EOS Rebel T7 camera. The built-in Wi-Fi makes printing and sharing pictures quick and easy, and the auto-focus system creates crisp images at a moment\'s notice. This EOS Rebel T7 camera takes Full HD video, allowing experiences to be captured with quality.', 600),
('6', 'Camera(Canon - Ivy CLIQ+2 Instant Film Camera - Iridescent White)', '', 'Easily shoot, print, edit, and stick photos, with the IVY CLIQ+2. Capture every moment with the Canon IVY CLIQ+2 — an easy to use Instant Camera Printer that is portable so you can take it with you! Instantly shoot and print 2”x3” photos and place them almost anywhere thanks to a peel and stick backing. You can take the perfect selfies with a Large Selfie Mirror and 8 LED Ring Light. Plus, you can connect your mobile device to the Canon Mini Print App1 to print photos from your camera roll and add filters, effects, emojis and more!', 120);

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
