-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 20, 2023 at 06:19 PM
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
('16', 'Phone(Iphone 13 Pro)', '', ' Sleek phone\r\n\r\n available in 6 colors \r\n pink,starlight,Blue,red,midnight,green\r\n\r\n\r\n size options 128GB, 256GB, and 512GB\r\n\r\n\r\n wireless network 4G,4G LTE,5G\r\n', 547),
('17', 'Phone(Samsung S22)', '', 'Variety of all colors\r\n\r\n256 GB, 128 GB, 512 GB\r\n\r\nMetal glass\r\n\r\nGlass screen protector\r\n\r\n', 640),
('18', 'Phone(BlackBerry)', '', '3G Data capable and 4G data capable\r\n\r\nMusic player\r\n\r\n2G,3G,4G \r\n\r\nWi-Fi Capable\r\n', 397),
('19', 'Phone(Motorola edge)', '', 'sharp photos \r\n\r\nultra fast\r\n', 178),
('2', 'TV(Insignia - 58” Class F30 Series LED 4K UHD Smart Fire TV)\r\n', '', 'Take in every moment with breathtaking 4K Ultra HD on this 58-inch screen. It’s equipped with DTS Studio Sound to create realistic and immersive audio. Access live over-the-air channels and streaming—and control it all with your voice. \r\n', 280),
('20', 'Phone(Galaxy 23 Ultra)', '', '256 GB\r\n\r\nhigh camera resolution\r\n\r\nNight mode ', 270),
('21', 'Audio(Amazon - Echo Dot (3rd Gen))\r\n', '', 'Echo Dot is a voice-controlled Smart Speaker with Alexa, perfect for any room. Just ask for music, news, information, and more.', 40),
('22', 'Audio(Bowers & Wilkins - Formation Duo 6-1/2\" Powered Wireless 2-Way Bookshelf Speakers)', '', 'Enjoy impressive sounds with these Bowers and Wilkins Formation Duo speakers. Patented carbon-domed, tweeter-on-top technology provides crystal clear highs, while innovative Continuum cone drivers ensure powerful bass reproduction.', 5000),
('23', 'Audio(Garmin - Tread Audio Box with LED Controller)', '', 'Roam the unknown with the Tread audio box with LED controller. Designed for off-road power sport vehicles, this stereo delivers premium quality audio you can take on any adventure. Blast music from audio sources that include AM/FM radio, AUX and BLUETOOTH technology. ', 600),
('24', 'Audio(Sonos - Beam (Gen 2) - Black)', '', 'Effortlessly enrich your entertainment experience with the latest generation of Beam, now with Dolby Atmos. Enjoy panoramic sound for shows, movies and games when the TV is on, and stream music radio and more when it\'s off.', 499),
('25', 'Audio(Harman Kardon - HK Citation 100 Google Voice Speaker - Gray)', '', 'HK Citation 100 Google Voice Speaker', 350),
('26', 'Gaming(Sony - PlayStation 5 - DualSense Wireless Controller - White)', '', 'Discover a deeper, highly immersive gaming experience that brings the action to life in the palms of your hands. The DualSense wireless controller offers immersive haptic feedback, dynamic adaptive triggers, and a built-in microphone, all integrated into an iconic comfortable design.', 70),
('27', 'Gaming(Logitech - G923 Racing Wheel and Pedals for Xbox Series X|S, Xbox One and PC)', '', 'Logitech G923 is a high-performance racing wheel that revolutionizes the e-racing experience. Re-engineered to support a game-changing feedback system, G923 features TRUEFORCE, next-generation force feedback that dials into game physics to deliver higher fidelity realism.', 400),
('28', 'Gaming(AC Adapter for Nintendo Switch - Black)', '', 'Play on with this versatile Nintendo Switch power adapter. Made specifically for your Nintendo Switch game system, this adapter works with any 120V outlet and plugs into your device via an integrated USB Type-C connector.', 30),
('29', 'Gaming(Meta - Quest Pro)', '', 'Meta Quest Pro is a virtual reality system that unlocks new perspectives into how we work, create, and collaborate, so you can go beyond what was previously possible. A completely reimagined headset is slimmer and more well-balanced for long-lasting comfort.', 1000),
('3', 'Computer(PowerSpec G439 Gaming PC)\r\n', '', 'Intel Core i7 12th Gen 12700KF 2.7GHz Processor\r\n\r\nMicrosoft Windows 10 Pro\r\n\r\nNVIDIA GeForce RTX 3070 Ti 8GB GDDR6X\r\n', 1600),
('30', 'Gaming(G733 LIGHTSPEED Wireless DTS Headphone:X v2.0 Over-the-Ear Gaming Headset)', '', 'Meet G733, a gaming headset designed to suit your style. Embrace total wireless with 2.4 GHZ LIGHTSPEED wireless, featuring up to 33 ft of range and up to 29 hours of battery life.', 150),
('31', 'Movies/Music(JBL - Party Box Encore Essential Portable Wireless Party Speaker - Black)', '', 'The portable JBL PartyBox Encore Essential speaker gives you 6 hours of non-stop fun. With an easy grab-and-go handle and splash proof design, you can always take the party with you.', 300),
('32', 'Movies/Music(Sony - UBP-X700/M Streaming 4K Ultra HD Blu-ray player with HDMI cable - Black)', '', 'Front row, center stage. This 4K Ultra HD Blu-ray player delivers the impeccable clarity of 4K and stunning detail of High Dynamic Range. Get the best seat in the house and lose yourself in incredible picture quality and advanced surround sound.', 260),
('33', 'Movies/Music(Fender - Frontman 20G RMS Power Electric Guitar Amplifier - Black)', '', 'The Frontman 20G brings together familiar Fender cosmetics and “best-in-class” sound quality at a great price point that fits every player’s budget. The 20G features a simple intuitive design that anyone, from beginners to pros, will immediately understand.', 130),
('34', 'Movies/Music(Sony - DVD Player - Black)', '', 'Experience excellent picture quality and solid sound in a compact design. This versatile DVD player features fast/slow playback so you don\'t miss a word. You can even listen to your favoriteCDs or tracks from your MP3 player.', 35),
('35', 'Movies/Music(Zoom - LiveTrak L-8 Podcast Digital Mixer/Recorder)', '', 'Capture high-quality audio with this Zoom LiveTrak digital mixer and recorder. The six microphone inputs and four headphone outputs enable efficient recording of podcasts, interviews and music sessions, and the six onboard sound pads let you play ads, background music and fun sound effects. ', 450),
('36', 'Security/Wifi(Ring - Indoor 1080p Wi-Fi Security Camera)', '', 'Bring protection inside with the mini marvel that packs a powerful punch. Ring Indoor Cam is your solution to quickly check what’s happening at home right from your phone or tablet.', 60),
('37', 'Security/Wifi(Google - Nest Smart Programmable Wifi Thermostat)', '', 'Meet the Nest Thermostat, the helpful thermostat with a cozy price. It can turn itself down to save energy when you leave the house. You can control it from anywhere with the Google Home app - whether you\'re on an errand or in bed.', 130),
('38', 'Security/Wifi(Google - Nest Wifi Pro 6e AXE5400 Mesh Router)', '', 'Nest Wifi Pro gives you super fast, reliable Wi-Fi 6E coverage for your entire home.₁ It automatically adjusts your network’s performance to keep things running smoothly.', 200),
('39', 'Security/Wifi(Arlo - Ultra 2 Add-on Camera Indoor/Outdoor Wireless 4K Security System)', '', 'Cutting edge protection, picture perfect. Zoom in to see and record video in 4K with HDR for a clearer, undistorted picture, day or night. Spend less time recharging with 6 months of battery life¹. With free local storage, remotely access your locally stored videos from the included Arlo SmartHub. ', 300),
('4', 'Computer(PowerSpec G441 Gaming PC)', '', 'Intel Core i7 13th Gen 13700KF 3.4GHz Processor\r\n\r\nMicrosoft Windows 11 Pro\r\n\r\nNVIDIA GeForce RTX 3070 Ti 8GB GDDR6X\r\n', 1800),
('40', 'Security/Wifi(Ring - Floodlight Cam Plus Outdoor Wired 1080p Surveillance Camera)', '', 'Provide an effective home security measure with this white Ring Floodlight Cam Wired Plus surveillance camera. The two-way talk function allows simple communication, while advanced motion detection technology lets you set up custom motion monitoring zones.', 200),
('41', 'Office(HP OfficeJet Pro 8034e Wireless Color All-in-One Printer with 1 Full Year Instant Ink)', '', 'Fast color print, copy, scan, fax, 2-sided prints, mobile/wireless printing\r\n\r\nPro quality color for forms, reports, brochures and presentations\r\n\r\nIncludes 1 full year subscription for Instant Ink delivery service with HP+ activation.\r\n', 260),
('42', 'Office(HP ScanJet Enterprise Flow 7000 s3 (L2757A#BGJ))', '', '80-sheet automatic document feeder for increased efficiency\r\n\r\nFast scanning speeds of up to 75 ppm\r\n\r\nHigh output quality of 600 dpi\r\n', 999),
('43', 'Office(Casio DJ120D Desk Calculator with Check & Correct Function)', '', 'Check and correct function offers up to 150 steps\r\n\r\nLarge 12-digit display\r\n\r\nReview and auto review function\r\n\r\n', 20),
('44', 'Office(Fellowes 79Ci Powershred 79Ci 100% Jam Proof Cross-Cut Shredder)\r\n', '', '100% Jam Proof System\r\n\r\nSilentShred offers ultra-quiet shredder performance\r\n\r\nEnergy Savings System provides optimal energy efficiency\r\n', 205),
('45', 'Office(Brother® P-touch PT-D610BT Business Professional Connected Label Maker With Bluetooth)', '', '17 Fonts\r\n\r\nTape\r\n\r\nLCD Screen\r\n', 124),
('46', 'Toys(Vantop - Snaptain SP350 Drone with Remote Controller - Blue)\r\n', '', 'Start your drone hobby with our SP350 beginner drone, perfectly suited for indoor environments.Start your drone hobby with our SP350 beginner drone, perfectly suited for indoor environments.', 40),
('47', 'Toys(WowWee - HydraQuad)', '', 'HydraQuad is the first-ever 3-in-1 hybrid stunt drone to conquer water, ground, and air! From WowWee, HydraQuad is engineered with a unique, lightweight and aerodynamic design to put you in the pilot seat with single button stunts! ', 9),
('48', 'Toys(Vantop - Snaptain SP7100S Drone with Remote Controller - Black)', '', 'Our most advanced drone, the SP7100S, includes a 4K camera for capturing clear images from various angles.', 300),
('49', 'Toys(DJI - Mini 3 Pro and Remote Control with Built-in Screen - Gray)', '', 'The mini-sized, mega-capable DJI Mini 3 Pro is just as powerful as it is portable. Weighing less than 249 g and with upgraded safety features, it\'s not only regulation-friendly, it\'s also the safest in its series.', 910),
('5', 'Camera(Canon - EOS Rebel T7 DSLR Video Two Lens Kit with EF-S 18-55mm and EF 75-300mm Lenses)\r\n', '', 'Take stunning pictures with vibrant colors using this EOS Rebel T7 camera. The built-in Wi-Fi makes printing and sharing pictures quick and easy, and the auto-focus system creates crisp images at a moment\'s notice. ', 600),
('50', 'Toys(DJI - Avata Pro-View Combo Drone - Gray)', '', 'When you combine Avata with the goggles and motion controller, flight becomes accessible to all. Experience the thrill of total immersion with unrivaled safety and control.', 1390),
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
