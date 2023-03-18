-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2023 at 11:39 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'ADMIN', '3b9fc97c385703573df7ffd503c05545', '2023-03-16 04:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`, `userId`) VALUES
(7, 8, 'shth.namira321@gmail.com', '2023-03-13', '2023-03-24', 'please book me this package', '2023-03-16 19:21:36', 1, NULL, '2023-03-17 04:55:42', 0),
(8, 3, 'shth.namira321@gmail.com', '2023-03-28', '2023-03-24', 'Can you please this package is available for this time period?', '2023-03-16 19:27:56', 1, NULL, '2023-03-17 04:55:51', 0),
(9, 5, 'akriti@gmail.com', '2023-03-23', '2023-03-31', 'I would like to book this package', '2023-03-17 04:23:26', 1, NULL, '2023-03-17 04:55:56', 0),
(10, 1, 'stuti.karki@gmail.com', '2023-03-20', '2023-03-27', 'book my flights', '2023-03-17 04:55:24', 1, NULL, '2023-03-17 04:56:00', 0),
(11, 4, 'sneha@gmail.com', '2023-03-13', '2023-03-17', 'I would like to book this package ', '2023-03-17 04:57:36', 0, NULL, NULL, 0),
(12, 9, 'jenisha@gmail.com', '2023-03-13', '2023-03-20', 'I would like to book this package', '2023-03-17 05:02:28', 0, NULL, NULL, 0),
(13, 1, 'shth.namira321@gmail.com', '2023-03-06', '2023-03-17', 'please book me this packageasdfasdfsfsd', '2023-03-17 09:49:15', 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(5, 'Stuti Karki', 'stuti.karki@gmail.com', '8945794578', 'packages ', 'What are the packages available for next month?', '2023-03-17 04:21:05', NULL),
(6, 'Namira Shth', 'namira@gmail.com', '9852794257', 'Bookings', 'Which are the luxurious hotels of Paris? ', '2023-03-17 04:26:14', NULL),
(7, 'James', 'james@gmail.com', '4783256876', 'packages ', 'What are the packages available for Nepal trip?', '2023-03-17 05:01:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(16, 'shth.namira321@gmail.com', 'Booking Issues', 'Can you please make sure if my tickets are booked?', '2023-03-16 19:26:46', NULL, NULL),
(17, 'shth.namira321@gmail.com', 'Refund', 'I think I wont be going on this holiday', '2023-03-16 19:28:54', NULL, NULL),
(20, 'akriti@gmail.com', 'Other', 'What are the best hotels in dubai?', '2023-03-17 04:24:23', NULL, NULL),
(23, 'sneha@gmail.com', 'Booking Issues', 'Can you please make sure if my tickets are booked?', '2023-03-17 04:57:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																														<p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: small; font-weight: 700;\">Hello! Explore the world with us today and make all the memories !!!</span></p>\r\n										\r\n										\r\n										'),
(2, 'privacy', '																				<span style=\"color: rgb(85, 85, 85); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif;\">HolidaysWithUs, is committed to maintaining the privacy of personal information that you provide to us when using the HolidaysWithUs web site. This Privacy Policy describes how we treat personal information received about you when you visit our website. </span><span style=\"color: rgb(85, 85, 85); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif;\">&nbsp;We recommend that you review the privacy policy at each such web site to determine how that site protects your privacy.</span>\r\n										\r\n										'),
(3, 'aboutus', '										<div><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify; font-weight: bold; font-family: georgia;\">Welcome On Board!!!</span></div><span style=\"font-family: georgia;\"><div style=\"text-align: justify;\"><span style=\"font-size: 14px; background-color: rgb(248, 248, 248);\">We, at HolidaysWithUs believe in the importance of freedom of choice and respect for individual\'s desire and preferences. Each one of us has different idea of holidaying or leisure, which is the reason we believe in individual\'s taste, choice and preferences. India as a country has so much in her lap to offer that it would not be wrong to quote that each individual would go through a soul searching experience during the trip. We aim to provide our customers not just any trip to India but a real Indian experience or the \'Indian Magic\', we all love to call it. Be it the vibrant colors of people, the astonishing landscapes, the mesmerizing cuisines, and the hospitality of your host\'s, the tranquillity of the temples or the smiling Indian faces, India has a lot to fascinate</span><span style=\"font-size: 14px; background-color: rgb(248, 248, 248);\"> </span><span style=\"font-size: 14px; background-color: rgb(248, 248, 248);\">you.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got packages to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></div></span>'),
(11, 'contact', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address----BDA-outer ring rd, nagarbhavi,bangalore-560056</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Swiss Paris Romantic Gateaway\r\n(3N-Switzerland,4N-Paris)', 'Couple', 'Paris and Switzerland', 250000, 'Round trip Economy class airfare valid for the duration of the holiday - Airport taxes - Accommodation for 3 nights in Paris and 3 nights in scenic Switzerland - Enjoy continental breakfasts every morning - Enjoy 5 Indian dinners in Mainland Europe ', 'Pick this holiday for a relaxing vacation in Paris and Switzerland. Your tour embarks from Paris. Enjoy an excursion to popular attractions like the iconic Eiffel Tower. After experiencing the beautiful city, you will drive past mustard fields through Burgundy to reach Switzerland. While there, you can opt for a tour to Interlaken and then to the Trummelbach Falls. Photostop at Zurich Lake and a cable car ride to Mt. Titlis are the main highlights of the holiday.', '1581490262_2_1.jpg', '2022-11-08 05:21:58', NULL),
(2, 'Bhutan Holidays - Land of Happiness\r\n(3N-Thimpu,1N-Punakha,2N-Paro)', 'Family', 'Bhutan', 62000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport taxes, Pick-up and drop facility,Free Wi-fi,Breakfast of your chice, Professional Guides,Standard hotels,Deluxe Rooms', 'Have the best time in Bhutan with your loved ones! Get a glimpse of the vibrant Bhutanese culture on an exclusive Farm Visit, try your hand at archery, visit the iconic Tiger’s Nest and enjoy beer tasting with delectable vegetarian snacks in Paro.', 'BHUTAN-THIMPU-PARO-PUNAKHA-TOUR-6N-7D.jpeg', '2023-01-08 05:37:40', '2023-03-15 19:27:55'),
(3, 'Soulmate Special Bali - 7 Nights', 'Couple', 'Indonesia(Bali)', 250000, 'Round trip Economy class airfare valid for the duration of the holiday - Airport taxes,Free Pickup and drop facility, Free Wi-fi , Free professional guide, Standard Rooms,Spa facility, Enjoy 4 english and 3 continental breakfast and dinners.', 'Experience a blend of love and adventure on your honeymoon in Bali with your soulmate. Explore Bali on an all inclusive Instagram tour, Unwind at the serene Ubud Pool Villa. Pamper yourself with a complimentary balinese spa.', '1583140977_5_11.jpg', '2023-01-08 05:41:07', '2023-03-15 19:28:20'),
(4, 'Kerala - A Lovers Paradise - Value Added\r\n(2N,3D)', 'Family', 'Kerala', 15000, 'Free Wi-fi, Free pick up and drop facility, Deluxe rooms,South indian breakfast and dinner of your choice', 'Visit Matupetty Dam, tea plantation and a spice garden | View sunset in Kanyakumari | AC Car at disposal for 2hrs extra (once per city)', 'images (2).jpg', '2022-12-08 05:45:58', NULL),
(5, 'Dubai-The Best of Dubai\r\n(6N,7D)', 'Family', 'Dubai', 55000, 'Free pick up and drop facility, Free Wi-fi, Free breakfast,Standard rooms,Private Transfers,Desert Safari', 'Celebrate love and companionship on this holiday to Dubai. Marvel at the magnificent view of the modern city from the iconic Burj Khalifa. Feel the thrill with your family on a desert safari and enjoy delicious food under the stars. ', 'unnamed.jpg', '2023-02-14 05:49:13', NULL),
(6, 'Sikkim Delight with Darjeeling (customizable)\r\n(2N,3D)', 'Group', 'Sikkim', 5000, 'Free Breakfast and Dinner, Free Pick up and drop facility,Deluxe Rooms', 'Changu Lake and New Baba Mandir excursion | View the sunrise from Tiger Hill | Get Blessed at the famous Rumtek Monastery', 'download (2).jpg', '2023-02-08 05:51:26', NULL),
(7, '6 Days in Guwahati and Shillong With Cherrapunji Excursion', 'Family', 'Guwahati(Sikkim)', 4500, 'Breakfast,  Accommodation » Pick-up » Drop » Sightseeing', 'After arrival at Guwahati airport meet our representative & proceed for Shillong. Shillong is the capital and hill station of Meghalaya, also known as Abode of Cloud, one of the smallest states in India. En route visit Barapani lake. By afternoon reach at Shillong. Check in to the hotel. Evening is leisure. Spent time as you want. Visit Police bazar. Overnight stay at Shillong.', '95995.jpg', '2023-02-08 05:54:42', NULL),
(8, 'Everest Base Camp Trek-13D', 'Group', 'Everest Reason,Nepal', 200999, 'Airport transfers - pick up and drop upon arrival and departure Entry permit to Sagarmatha National Park and TIMS fee Supporting staffs (trekking guide and porter), as well as their necessary insurance, and accommodation meals allowance and salary Breakfa', 'Everest Base Camp Trek’s route gives you thrills of majestic mountains, amazing trails to follow and\r\nunforgettable life experiences.\r\nAlong with Mt.Everest, you get to see many different peaks along this trek such as Mt. Makalu, the Lhotse Mt. Cho-Oyu,, Nuptse, Lingten, the Ama Dablam, Khumbutse Peak with Kongde-RI. In short, you get to enjoy magnificent views all around the trek.\r\nBlend with the culture of the ethnic Sherpa people living in the Khumbu region, famous for their natural aptitude to the cold, high area and climbing the high peaks. Their unique traditions and culture will surely amuse you.\r\nTrek to Everest Base Camp offers endless natural beauty of the Himalayas. The landscape and terrain of\r\nthe Everest region further adds beauty to this trek.\r\nYou will visit the well known town, ‘Namche Bazaar’ also known as “The Gateway to Everest” and reach ‘Kala Patthar’.\r\nHas the best point for panoramic views of Everest Circuit.\r\n‘Kala Patthar’ gives you a magical moment of the sun rising over Everest turning it into a glimmering\r\ngolden chunk of mass.', '8a.jpg', '2023-03-16 15:22:11', NULL),
(9, 'Nepal-Heritage,Festival and Nature Tour (11D)', 'Family', 'Kathmandu, Pokhara,Bandipur,Chitwan-Nepal', 99999, 'Airport transfers - pick up and drop upon arrival and departure and accommodation meals allowance and salary Breakfast, Lunch and Dinner -3 meals per day and overnight accommodation in deluxe rooms. ', 'Upon arrival, our representative will pick you up and transfer you to the hotel. Full day sightseeing of Kathmandu’s most iconic and ancient UNESCO world heritage sites - Kathmandu Durbar Square, Swoyambhunath Stupa, Patan Durbar Square. Heritage tour of Pashupatinath Temple, Bouddhanath Stupa and Bhaktapur. Drive to and walk around old Bandipur town with sunset views. Drive to Pokhara (3hrs) and sightseeing and mountains view from Hemjakot. Drive to Chitwan and start jungle activities', '5-Bouddhanath-Stupa.jpg', '2023-03-16 16:22:55', NULL),
(10, 'Muktinath Darshan (12D)', 'Group', 'Mustang,Nepal', 90000, 'Includes – Flight to Jomsom Round-trip Private Vehicle except at Muktinath, sharing Jeep from hotel to Muktinath Hotel based on twin sharing w/ Breakfast, Dinner included at Jomsom All Govt. Taxes – Nepal', 'Muktinath Tour Package combines the visit to Popular temples in Nepal – Pashupatinath Temple, Manakamana Temple, Muktinath Temple along with other Temples during sightseeing in Kathmandu and Pokhara. Muktinath is located at an altitude of 3,710 meters at the foot of the Himalayas – Thorong La mountain pass, Mustang, Nepal. Muktinath is a sacred place both for Hindus & Buddhists. This place is known as Mukti Kshetra, which means the “place of liberation or moksha”. We offer private and group Muktinath Yatra Package where you will visit Muktinath temple and also have opportunity to visit Manakamana Temple as well as Kathmandu and Pokhara sightseeing.', 'muktinath-darshan-yatra86.jpg', '2023-03-16 16:33:27', '2023-03-16 19:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(15, 'Namira Shth', '9861947844', 'shth.namira321@gmail.com', 'b7ef39c3aed3e5495ae5d5def153eefa', '2023-03-16 19:20:56', NULL),
(18, 'Stuti Karki', '6776439087', 'karki.stuti@gmail,com', '9e3d0604cb416c477e2bda33dd15f3e9', '2023-03-16 19:31:17', NULL),
(19, 'Akriti Raut', '7438768258', 'akriti@gmail.com', '14271711c3c48adac9fe981fbd46d705', '2023-03-17 04:22:07', NULL),
(21, 'Stuti', '8728429767', 'stuti.karki@gmail.com', 'b33e3982719dc12decf1b99812ccdbd0', '2023-03-17 04:53:48', NULL),
(22, 'Sneha', '9827459263', 'sneha@gmail.com', '5589b86d03110cd30f21cf09a67760d6', '2023-03-17 04:56:35', NULL),
(24, 'Jenny', '4928735774', 'Jenisha@gmail.com', '067fccb09c1d91f4f0c5d6d21d5355d9', '2023-03-17 05:01:47', NULL),
(25, 'krtinshet', '7019105904', 'krtin71@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2023-03-17 08:03:22', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
