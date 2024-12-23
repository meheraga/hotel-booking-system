-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2024 at 03:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hbwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'leah', '123');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(43, 43, 'Simple Room', 2000, 14000, NULL, 'Oshlum Fernandes', '7798910872', 'Borda'),
(44, 44, 'Luxury Room', 5000, 15000, 'B12', 'Oshlum Fernandes', '7798910872', 'Borda'),
(45, 45, 'Deluxe Room', 3500, 17500, 'A54', 'Oshlum Fernandes', '7798910872', 'Borda'),
(46, 46, 'Simple Room', 2000, 18000, NULL, 'Oshlum Fernandes', '7798910872', 'Borda'),
(47, 47, 'Simple Room', 2000, 14000, NULL, 'Oshlum Fernandes', '7798910872', 'Borda'),
(48, 48, 'Simple Room', 2000, 12000, NULL, 'Oshlum Fernandes', '7798910872', 'Borda'),
(49, 49, 'Deluxe Room', 3500, 17500, 'C12', 'Oshlum Fernandes', '7798910872', 'Borda'),
(50, 50, 'Simple Room', 2000, 10000, 'F34', 'Miffy Rebello', '9075796780', 'Benaulim'),
(51, 51, 'Simple Room', 2000, 10000, NULL, 'Miffy Rebello', '9075796780', 'Benaulim'),
(52, 52, 'Simple Room', 2000, 14000, NULL, 'Miffy Rebello', '9075796780', 'Benaulim'),
(53, 53, 'Simple Room', 2000, 10000, 'W23', 'leah Dias', '9076796780', 'Cavelossim'),
(54, 54, 'Luxury Room', 5000, 5000, NULL, 'leah Dias', '9076796780', 'Cavelossim'),
(55, 55, 'Simple Room', 2000, 12000, NULL, 'Miffy Rebello', '9075796780', 'Benaulim'),
(56, 56, 'Simple Room', 2000, 12000, 'E34', 'Ritchie Fernandes', '9850815247', 'Varca'),
(57, 57, 'Simple Room', 2000, 14000, NULL, 'Miffy Rebello', '9075796780', 'Benaulim'),
(58, 58, 'Simple Room', 2000, 22000, 'A24', 'Miffy Rebello', '9075796780', 'Benaulim'),
(59, 59, 'Luxury Room', 5000, 10000, 'B34', 'Lisa Rodrigues', '7896547689', 'Betalbatim');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `booking_status`, `order_id`, `rate_review`, `datentime`) VALUES
(43, 20, 3, '2024-10-29', '2024-11-05', 0, 'cancelled', 'ORD_202121858', NULL, '2024-10-29 00:43:51'),
(44, 20, 5, '2024-10-29', '2024-11-01', 1, 'booked', 'ORD_202562528', 0, '2024-10-29 01:00:40'),
(45, 20, 4, '2024-10-29', '2024-11-03', 1, 'booked', 'ORD_209096330', 0, '2024-10-29 01:06:20'),
(46, 20, 3, '2024-10-29', '2024-11-07', 0, 'cancelled', 'ORD_203571089', NULL, '2024-10-29 01:18:45'),
(47, 20, 3, '2024-10-29', '2024-11-05', 0, 'cancelled', 'ORD_205533037', NULL, '2024-10-29 01:30:55'),
(48, 20, 3, '2024-10-29', '2024-11-04', 0, 'cancelled', 'ORD_207001345', NULL, '2024-10-29 01:43:10'),
(49, 20, 4, '2024-10-29', '2024-11-03', 1, 'booked', 'ORD_202022569', 0, '2024-10-29 01:45:10'),
(50, 21, 3, '2024-10-29', '2024-11-03', 1, 'booked', 'ORD_217082870', 0, '2024-10-29 01:53:07'),
(51, 21, 3, '2024-10-29', '2024-11-03', 0, 'cancelled', 'ORD_219369066', NULL, '2024-10-29 01:53:46'),
(52, 21, 3, '2024-10-29', '2024-11-05', 0, 'cancelled', 'ORD_215279136', NULL, '2024-10-29 01:58:22'),
(53, 22, 3, '2024-10-29', '2024-11-03', 1, 'booked', 'ORD_225658168', 0, '2024-10-29 02:23:49'),
(54, 22, 5, '2024-10-29', '2024-10-30', 0, 'cancelled', 'ORD_229646144', NULL, '2024-10-29 02:34:18'),
(55, 21, 3, '2024-10-29', '2024-11-04', 0, 'cancelled', 'ORD_214668965', NULL, '2024-10-29 13:22:43'),
(56, 23, 3, '2024-10-29', '2024-11-04', 1, 'booked', 'ORD_239519566', 0, '2024-10-29 14:00:20'),
(57, 21, 3, '2024-10-29', '2024-11-05', 0, 'cancelled', 'ORD_215506442', NULL, '2024-10-29 19:51:20'),
(58, 21, 3, '2024-10-29', '2024-11-09', 1, 'booked', 'ORD_214054621', 0, '2024-10-29 20:00:19'),
(59, 24, 5, '2024-10-30', '2024-11-01', 1, 'booked', 'ORD_241805964', 0, '2024-10-29 20:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(4, 'IMG_62045.png'),
(5, 'IMG_93127.png'),
(6, 'IMG_99736.png'),
(8, 'IMG_40905.png'),
(9, 'IMG_55677.png\r\n'),
(10, 'IMG_98811.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'Fatorda Goa India', 'https://maps.app.goo.gl/Y4orreJP4b8W8i7w7', 9075796780, 7798910872, 'leoshli@gmail.com', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.x.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15394.076290646803!2d73.94978119601255!3d15.294000814456908!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbfb1610d48fc0b%3A0xca6f33d687953cf!2sFatorda%2C%20Goa!5e0!3m2!1sen!2sin!4v1729528176865!5m2!1sen!2sin');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(13, 'IMG_43553.svg', 'Wifi', 'Enjoy high-speed internet access throughout the hotel, ensuring you\'re always connected whether for business or leisure.'),
(14, 'IMG_49949.svg', 'Air conditioner', 'Relax in comfort with our climate-controlled rooms, featuring individual air conditioning for your convenience.'),
(15, 'IMG_41622.svg', 'Television', 'Unwind with a range of entertainment options on our flat-screen TVs, including international channels and streaming services.'),
(17, 'IMG_47816.svg', 'Spa', 'Indulge in rejuvenating spa treatments to relax and refresh your body and mind during your stay.'),
(18, 'IMG_96423.svg', 'Room Heater', 'Stay cozy in cooler seasons with room heaters available to maintain a comfortable and warm environment.'),
(19, 'IMG_27079.svg', 'Geyser', 'Hot water is available 24/7 for your convenience, ensuring a relaxing and comfortable bathing experience.');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(13, 'bedroom'),
(14, 'balcony'),
(15, 'kitchen'),
(17, 'sofa');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'simple room', 160, 4000, 56, 1, 0, 'Our Simple Room offers a cozy and affordable option, ideal for solo travelers or couples seeking comfort and convenience. Equipped with all the essentials, this room is perfect for a restful stay without breaking the bank.', 1, 1),
(2, 'simple room 2', 200, 5000, 85, 1, 1, 'Designed for budget-conscious travelers, Simple Room provides a welcoming space with basic amenities. Enjoy a comfortable bed, private bathroom, and a quiet ambiance, ensuring a relaxing experience for guests on a budget.', 1, 1),
(3, 'Simple Room', 250, 2000, 10, 2, 0, 'A comfortable and practical choice for budget travelers, our Simple Room provides all the essentials for a pleasant stay. Featuring a cozy bed, a private bathroom, and basic amenities, this room is ideal for guests who value simplicity and functionality without compromising on comfort.', 1, 0),
(4, 'Deluxe Room', 350, 3500, 10, 2, 1, 'Upgrade your stay with our Deluxe Room, featuring extra space, stylish decor, and premium amenities. This room is perfect for guests looking for added comfort and elegance, making it ideal for both business and leisure stays.', 1, 0),
(5, 'Luxury Room', 450, 5000, 12, 4, 3, 'A more spacious room, often featuring a king bed, a larger seating area, and upscale décor, along with extra amenities such as a minibar, upgraded toiletries, and possibly a view.', 1, 0),
(6, 'Supreme deluxe room', 600, 6000, 12, 5, 4, 'The most premium option, usually with a king bed or two queen beds, a separate living area, high-end furniture, advanced in-room tech, luxury amenities, and often a view or balcony.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(29, 4, 14),
(30, 4, 18),
(31, 4, 19),
(39, 5, 13),
(40, 5, 14),
(41, 5, 18),
(42, 3, 14),
(43, 3, 15),
(44, 3, 18),
(45, 3, 19);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(16, 4, 13),
(17, 4, 14),
(18, 4, 15),
(25, 5, 13),
(26, 5, 14),
(27, 5, 15),
(28, 3, 13),
(29, 3, 14),
(30, 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(15, 3, 'IMG_39782.png', 0),
(16, 3, 'IMG_65019.png', 1),
(17, 4, 'IMG_44867.png', 0),
(18, 4, 'IMG_78809.png', 1),
(19, 4, 'IMG_11892.png', 0),
(21, 5, 'IMG_17474.png', 0),
(22, 5, 'IMG_42663.png', 1),
(23, 5, 'IMG_70583.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'LEOSHLI', 'Welcome to LEOSHLI! We’re dedicated to blending luxury, comfort, and personalized service to make your stay truly memorable.<br> Thank you for choosing us! ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `security_question` varchar(255) NOT NULL,
  `security_answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `status`, `datentime`, `security_question`, `security_answer`) VALUES
(20, 'Oshlum Fernandes', 'fernandesoshlum08@gmail.com', 'Borda', '7798910872', 403602, '2004-04-08', 'IMG_37679.jpeg', '123', 1, 1, '2024-10-29 00:43:08', 'What was the name of your first school?', 'loyola'),
(21, 'Miffy Rebello', 'Miffy@gmail.com', 'Benaulim', '9075796780', 403605, '2024-10-29', 'IMG_89418.jpeg', '1234', 1, 1, '2024-10-29 01:51:52', 'What is your favorite food?', 'Chicken'),
(22, 'leah Dias', 'leah@gmail.com', 'Cavelossim', '9076796780', 403606, '2024-10-29', 'IMG_56798.jpeg', '123', 1, 1, '2024-10-29 02:23:31', 'What was the name of your first pet?', 'leah'),
(23, 'Ritchie Fernandes', 'ritchie@gmail.com', 'Varca', '9850815247', 403604, '2024-10-09', 'IMG_53744.jpeg', '1234', 1, 1, '2024-10-29 12:58:19', 'What is your favorite food?', 'Chicken'),
(24, 'Lisa Rodrigues', 'lisa@gmail.com', 'Betalbatim', '7896547689', 403604, '2024-10-29', 'IMG_41370.jpeg', '12345', 1, 1, '2024-10-29 20:06:51', 'What was the name of your first pet?', 'leah');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(8, 'Miffy Rebello', 'miffy@gmail.com', 'Request for Room with Sea View', 'Hi, I recently booked a Deluxe Room for the dates of November 10th to November 15th. I’d like to request a room with a sea view if available. Please let me know if this can be arranged or if there are any additional charges. Thank you very much for your assistance.', '2024-10-27 18:04:49', 1),
(11, 'lisa', 'lisa@gmail.com', 'Request for Early Check-in', 'Hello, I have booked a room from November 15th to November 20th. My flight arrives early in the morning, so I wanted to check if it would be possible to check in around 8:00 AM on November 15th. I’d be happy to pay any additional fees for early access to the room. Please let me know if this can be arranged. Thank you.', '2022-03-11 00:00:00', 1),
(13, 'Leah Dias', 'leoshli@gmail.com', 'hello', 'how r u?', '2024-10-28 21:44:06', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
