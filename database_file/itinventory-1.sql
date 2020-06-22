-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2020 at 11:59 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itinventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `Number` int(11) NOT NULL,
  `Head` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Detail` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email_announcer` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `date_check`
--

CREATE TABLE `date_check` (
  `Years` int(11) NOT NULL,
  `Date_start` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date_end` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `date_check`
--

INSERT INTO `date_check` (`Years`, `Date_start`, `Date_end`) VALUES
(2019, '2019-02-01', '2019-02-07'),
(2020, '2020-05-14', '2020-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `Asset_Number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Year` int(4) NOT NULL,
  `Inventory_Number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email_Committee` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email_Importer` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Asset_Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Model` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Serial` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Location` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Room` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Received_date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Original_value` int(7) NOT NULL,
  `Cost_center` int(10) NOT NULL,
  `Department` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date_Upload` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Vendor_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL,
  `Date_scan` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `takepicture` int(11) NOT NULL,
  `Image` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `year_user`
--

CREATE TABLE `year_user` (
  `Year` int(4) NOT NULL,
  `Email_user` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email_assigner` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Role` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `year_user`
--

INSERT INTO `year_user` (`Year`, `Email_user`, `Email_assigner`, `Role`) VALUES
(2019, 'pipat@gmail.com', 'tanapun@gmail.com', '2'),
(2019, 'tanapun2@gmail.com', 'tanapun2@gmail.com', '1'),
(2020, '6131302005@lamduan.mfu.ac.th', '6131302005@lamduan.mfu.ac.th', '1'),
(2020, 'boahancock557@gmail.com', '6131302005@lamduan.mfu.ac.th', 'กรรมการ'),
(2020, 'boahancock788@gmail.com', '6131302005@lamduan.mfu.ac.th', 'กรรมการ'),
(2020, 'dsaadas@gmail.com', '6131302005@lamduan.mfu.ac.th', 'admin'),
(2020, 'gjdkjfkjhf@gmail.com', '6131302005@lamduan.mfu.ac.th', 'กรรมการ'),
(2020, 'hjfjhvjhvj', '6131302005@lamduan.mfu.ac.th', '2'),
(2020, 'mnyspx@gmail.com', 'tanapun@gmail.com', '2'),
(2020, 'pokemon@gmail.com', 'boahancock557@gmail.com', '2'),
(2020, 'pokemon@gmial.com', '6131302005@lamduan.mfu.ac.th', '2'),
(2020, 'pokemon63@gmial.com', '6131302005@lamduan.mfu.ac.th', '2'),
(2020, 'pokemon674@gmial.com', '6131302005@lamduan.mfu.ac.th', 'กรรมการ'),
(2020, 'pokemon700@gmail.com', '6131302005@lamduan.mfu.ac.th', '2'),
(2020, 'pokemon78@gmail.com', '6131302005@lamduan.mfu.ac.th', '2'),
(2020, 'pokemon789@gmail.com', '6131302005@lamduan.mfu.ac.th', '2'),
(2020, 'tanapun@gmail.com', '6131302005@lamduan.mfu.ac.th', '1'),
(2020, 'tanapun558@gmail.com', '6131302005@lamduan.mfu.ac.th', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`Number`),
  ADD KEY `email_announcer` (`Email_announcer`);

--
-- Indexes for table `date_check`
--
ALTER TABLE `date_check`
  ADD PRIMARY KEY (`Years`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`Inventory_Number`,`Year`) USING BTREE,
  ADD KEY `ID_Importer` (`Email_Committee`),
  ADD KEY `ID_Committee` (`Email_Importer`),
  ADD KEY `Cost_center` (`Cost_center`),
  ADD KEY `Status` (`Status`),
  ADD KEY `Location` (`Location`);

--
-- Indexes for table `year_user`
--
ALTER TABLE `year_user`
  ADD PRIMARY KEY (`Year`,`Email_user`),
  ADD KEY `ID_User` (`Email_user`),
  ADD KEY `Email_assigner` (`Email_assigner`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `Number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `date_check`
--
ALTER TABLE `date_check`
  MODIFY `Years` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2021;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcement`
--
ALTER TABLE `announcement`
  ADD CONSTRAINT `announcement_ibfk_1` FOREIGN KEY (`Email_announcer`) REFERENCES `year_user` (`Email_user`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`Email_Committee`) REFERENCES `year_user` (`Email_user`),
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`Email_Importer`) REFERENCES `year_user` (`Email_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
