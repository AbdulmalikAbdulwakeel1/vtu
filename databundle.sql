-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2024 at 11:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loadnaija`
--

-- --------------------------------------------------------

--
-- Table structure for table `databundle`
--

CREATE TABLE `databundle` (
  `id` int(11) NOT NULL,
  `data_id` varchar(255) NOT NULL,
  `network` varchar(255) NOT NULL,
  `plan_type` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `validity` varchar(255) NOT NULL,
  `n_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `databundle`
--

INSERT INTO `databundle` (`id`, `data_id`, `network`, `plan_type`, `amount`, `size`, `validity`, `n_type`) VALUES
(1, '182', '9mobile', 'Corporate Gifting', '100', '500.0MB', '30', '6'),
(2, '183', '9mobile', 'Gifting', '900', '1.5 GB', '30', '6'),
(3, '184', '9mobile', 'Gifting', '1000', '2.0 GB', '30', '6'),
(4, '185', '9mobile', 'Gifting', '1300', '3.0 GB', '30', '6'),
(5, '186', '9mobile', 'Gifting', '1700', '4.5 GB', '30', '6'),
(6, '187', '9mobile', 'Gifting', '3400', '11.0', '30', '6'),
(7, '188', '9mobile', 'Gifting', '4100', '15.0', '30', '6'),
(8, '189', '9mobile', 'Gifting', '8200', '40.0', '30', '6'),
(9, '190', '9mobile', 'Gifting', '12300', '75.0', '30', '6'),
(10, '236', '9mobile', 'Gifting', '82', '100', '1', '6'),
(11, '238', '9mobile', 'Gifting', '246000', '1000 MB', '1', '6'),
(12, '239', '9mobile', 'Gifting', '430', '2000 MB', '1', '6'),
(13, '276', '9mobile', 'Gifting', '1300', '7.0 GB', '7', '6'),
(14, '277', '9mobile', 'Gifting', '450', '1.0 GB', '1', '6'),
(15, '278', '9mobile', 'Gifting', '50', '25 MB', '1', '6'),
(16, '298', '9mobile', 'Corporate Gifting', '150', '1.0 GB', '30', '6'),
(17, '299', '9mobile', 'Corporate Gifting', '300', '2.0 GB', '30', '6'),
(18, '300', '9mobile', 'Corporate Gifting', '200', '1.5 GB', '30', '6'),
(19, '303', '9mobile', 'Corporate Gifting', '381.0', '3.0', '30', '6'),
(20, '304', '9mobile', 'Corporate Gifting', '635.0', '5.0', '30', '6'),
(21, '305', '9mobile', 'Corporate Gifting', '1270.0', '10.0', '30', '6'),
(22, '309', '9mobile', 'Gifting', '410.0', '500', '7', '6'),
(23, '310', '9mobile', 'Gifting', '164.0', '250', '7', '6'),
(24, '344', '9mobile', 'SME', '125.0', '500', '30', '6'),
(25, '346', '9mobile', 'SME', '875.0', '3.5', '30', '6'),
(26, '347', '9mobile', 'Corporate Gifting', '508.0', '4.0', '30', '6'),
(27, '348', '9mobile', 'Corporate Gifting', '580', '4.5', '30', '6'),
(28, '349', '9mobile', 'SME', '1680.0', '7.0', '30', '6'),
(29, '350', '9mobile', 'SME', '3000.0', '15.0', '30', '6'),
(30, '351', '9mobile', 'Corporate Gifting', '2540.0', '20.0', '30', '6'),
(31, '361', '9mobile', 'Corporate Gifting', '25.0', '25.0', '30', '6'),
(32, '362', '9mobile', 'Corporate Gifting', '1397.0', '11.0', '30', '6'),
(33, '372', '9mobile', 'Corporate Gifting', '35.0', '100.0', '30', '6'),
(34, '373', '9mobile', 'Corporate Gifting', '5560.0', '40.0', '30', '6'),
(35, '374', '9mobile', 'Corporate Gifting', '6350.0', '50.0', '30', '6'),
(36, '375', '9mobile', 'Corporate Gifting', '13900.0', '100.0', '30', '6'),
(37, '376', '9mobile', 'Corporate Gifting', '10.0', '10.0', '30', '6'),
(38, '377', '9mobile', 'Corporate Gifting', '15.0', '15', '30', '6'),
(39, '391', '9mobile', 'Gifting', '12700.0', '100.0', '90', '6'),
(40, '144', 'Airtel', 'Gifting', '468.0', '750.0', '14', '3'),
(41, '145', 'Airtel', 'Gifting', '1020.0', '1.5', '30', '3'),
(42, '146', 'Airtel', 'Gifting', '1164.0', '2.0', '30', '3'),
(43, '147', 'Airtel', 'Gifting', '1455.0', '3.0', '30', '3'),
(44, '148', 'Airtel', 'Gifting', '1940.0', '4.5', '30', '3'),
(45, '149', 'Airtel', 'Gifting', '2425.0', '6.0', '30', '3'),
(46, '150', 'Airtel', 'Gifting', '2910.0', '10.0', '30', '3'),
(47, '163', 'Airtel', 'Gifting', '3880.0', '11.0', '30', '3'),
(48, '209', 'Airtel', 'Gifting', '9700.0', '40.0', '30', '3'),
(49, '234', 'Airtel', 'Gifting', '4850.0', '20.0', '30', '3'),
(50, '241', 'Airtel', 'Gifting', '1455.0', '6000.0', '7', '3'),
(51, '251', 'Airtel', 'Gifting', '291.0', '350.0', '7', '3'),
(52, '253', 'Airtel', 'Gifting', '19400.0', '120.0', '30', '3'),
(53, '255', 'Airtel', 'Gifting', '14550.0', '75.0', '30', '3'),
(54, '264', 'Airtel', 'Corporate Gifting', '21.0', '100', '7', '3'),
(55, '265', 'Airtel', 'Corporate Gifting', '100', '300', '7', '3'),
(56, '266', 'Airtel', 'Corporate Gifting', '103.0', '500.0', '30', '3'),
(57, '267', 'Airtel', 'Corporate Gifting', '200.0', '1.0', '30', '3'),
(58, '268', 'Airtel', 'Corporate Gifting', '400.0', '2.0', '30', '3'),
(59, '269', 'Airtel', 'Corporate Gifting', '1000.0', '5.0', '30', '3'),
(60, '273', 'Airtel', 'Corporate Gifting', '2000.0', '10.0', '30', '3'),
(61, '274', 'Airtel', 'Corporate Gifting', '3075.0', '15.0', '30', '3'),
(62, '275', 'Airtel', 'Corporate Gifting', '4100.0', '20.0', '30', '3'),
(63, '319', 'Airtel', 'Corporate Gifting', '1000000.0', '500.0', '90', '3'),
(64, '324', 'Airtel', 'Corporate Gifting', '2050000.0', '1.0', '90', '3'),
(65, '325', 'Airtel', 'Corporate Gifting', '10000000.0', '5.0', '90', '3'),
(66, '326', 'Airtel', 'Corporate Gifting', '19800000.0', '10.0', '90', '3'),
(67, '369', 'Airtel', 'Corporate Gifting', '1000000.0', '500.0', '90', '3'),
(68, '370', 'Airtel', 'Corporate Gifting', '49250.0', '250.0', '90', '3'),
(69, '388', 'Airtel', 'Corporate Gifting', '230.0', '100.0', '7', '3'),
(70, '389', 'Airtel', 'Corporate Gifting', '194.0', '200.0', '3', '3'),
(71, '12', 'Glo', 'Gifting', '460.0', '800.0', '', '2'),
(72, '13', 'Glo', 'Gifting', '900.0', '3.9', '', '2'),
(73, '14', 'Glo', 'Gifting', '1800.0', '9.2', '', '2'),
(74, '15', 'Glo', 'Gifting', '2250.0', '10.8', '', '2'),
(75, '16', 'Glo', 'Gifting', '2700.0', '14.0', '', '2'),
(76, '18', 'Glo', 'Gifting', '3600.0', '18.0', '', '2'),
(77, '65', 'Glo', 'Gifting', '4800.0', '20.0', '', '2'),
(78, '180', 'Glo', 'Gifting', '1350.0', '7.5', '', '2'),
(79, '218', 'Glo', 'Gifting', '7200.0', '27.0', '', '2'),
(80, '219', 'Glo', 'Gifting', '9000.0', '50.0', '30', '2'),
(81, '220', 'Glo', 'Gifting', '14000', '93 GB', '30', '2'),
(82, '285', 'Glo', 'Gifting', '50', '50 MB', '1', '2'),
(83, '287', 'Glo', 'Gifting', '100', '150 MB', '1', '2'),
(84, '288', 'Glo', 'Gifting', '200', '350 MB', '2', '2'),
(85, '289', 'Glo', 'Gifting', '16300', '119 GB', '30', '2'),
(86, '290', 'Glo', 'Gifting', '18100', '138 GB   ', '30', '2'),
(87, '329', 'Glo', 'Corporate Gifting', '1200', '5 GB', '30', '2'),
(88, '331', 'Glo', 'Corporate Gifting', '150', '500.0MB', '30', '2'),
(89, '332', 'Glo', 'Corporate Gifting', '500', '2.0 GB', '30', '2'),
(90, '333', 'Glo', 'Corporate Gifting', '50', '200.0 MB ', '14', '2'),
(91, '334', 'Glo', 'Corporate Gifting', '250', '1.0 GB', '30', '2'),
(92, '335', 'Glo', 'Corporate Gifting', '2400', '10.0 GB', '30', '2'),
(93, '336', 'Glo', 'Corporate Gifting', '750', '3.0 GB', '30', '2'),
(94, '166', 'MTN', 'SME', '300', '1.0 GB', '30', '1'),
(95, '167', 'MTN', 'SME', '550', '2.0 GB', '30', '1'),
(96, '168', 'MTN', 'SME', '800', '3.0 GB', '30', '1'),
(97, '169', 'MTN', 'SME', '1300', '5.0 GB', '30', '1'),
(98, '179', 'MTN', 'SME', '150', '500.0MB', '30', '1'),
(99, '197', 'MTN', 'Gifting', '2900', '8.0 GB', '30', '1'),
(100, '199', 'MTN', 'Gifting', '3300', '12.0 GB', '30', '1'),
(101, '204', 'MTN', 'Gifting', '10400', '40.0 GB', '30', '1'),
(102, '213', 'MTN', 'Corporate Gifting', '300', '1.0 GB', '30', '1'),
(103, '215', 'MTN', 'Corporate Gifting', '550', '2.0 GB', '30', '1'),
(104, '216', 'MTN', 'Corporate Gifting', '800', '3.0 GB', '30', '1'),
(105, '217', 'MTN', 'Corporate Gifting', '2100', '5.0 GB', '30', '1'),
(106, '221', 'MTN', 'Gifting', '1000', '1.2 GB', '30', '1'),
(107, '222', 'MTN', 'Gifting', '1200', '1.5 GB', '30', '1'),
(108, '223', 'MTN', 'Gifting', '1950', '4.0 GB', '30', '1'),
(109, '225', 'MTN', 'Corporate Gifting', '150', '500.0MB', '30', '1'),
(110, '226', 'MTN', 'Gifting', '100', '100.0MB', '1', '1'),
(111, '228', 'MTN', 'Gifting', '1000', '2.0 GB', '7', '1'),
(112, '229', 'MTN', 'Gifting', '230', '200.0MB', '3', '1'),
(113, '230', 'MTN', 'Gifting', '300', '350.0MB', '7', '1'),
(114, '231', 'MTN', 'Gifting', '1500', '5.0 GB', '7', '1'),
(115, '232', 'MTN', 'Gifting', '500', '750.0MB', '7', '1'),
(116, '233', 'MTN', 'Gifting', '600', '1.0 GB', '7', '1'),
(117, '256', 'MTN', 'Gifting', '3300', '10.0 GB', '30', '1'),
(118, '257', 'MTN', 'Corporate Gifting', '2600', '10.0 GB', '30', '1'),
(119, '258', 'MTN', 'Corporate Gifting', '5200', '20.0 GB', '30', '1'),
(120, '259', 'MTN', 'Corporate Gifting', '4000', '15.0 GB', '30', '1'),
(121, '260', 'MTN', 'SME', '2600', '10 GB', '30', '1'),
(122, '261', 'MTN', 'Corporate Gifting', '10390', '40 GB', '30', '1'),
(123, '262', 'MTN', 'Corporate Gifting', '18400', '100GB', '30', '1'),
(124, '263', 'MTN', 'Corporate Gifting', '20', '50MB', '30', '1'),
(125, '270', 'MTN', 'Corporate Gifting', '50', '150MB', '30', '1'),
(126, '271', 'MTN', 'Corporate Gifting', '65', '250MB', '30', '1'),
(127, '272', 'MTN', 'Gifting', '5200', '20GB', '30', '1'),
(128, '279', 'MTN', 'Gifting', '15100', '75GB', '30', '1'),
(129, '282', 'MTN', 'Corporate Gifting', '12300', '50GB', '30', '1'),
(130, '283', 'MTN', 'Corporate Gifting', '14500', '60GB', '30', '1'),
(131, '284', 'MTN', 'Corporate Gifting', '3100', '12GB', '30', '1'),
(132, '291', 'MTN', 'Gifting', '350', '1GB', '1', '1'),
(133, '293', 'MTN', 'Gifting', '500', '2GB', '2', '1'),
(134, '294', 'MTN', 'Gifting', '580', '2GB', '30', '1'),
(135, '295', 'MTN', 'Gifting', '1550', '3GB', '1', '1'),
(136, '297', 'MTN', 'Gifting', '50', '40MB', '3', '1'),
(137, '311', 'MTN', 'Gifting', '300', '750MB', '2', '1'),
(138, '312', 'MTN', 'Gifting', '230', '250MB', '30', '1'),
(139, '314', 'MTN', 'Gifting', '5700', '25GB', '30', '1'),
(140, '315', 'MTN', 'Gifting', '20700', '120GB', '30', '1'),
(141, '316', 'MTN', 'Gifting', '28300', '200GB', '30', '1'),
(142, '317', 'MTN', 'SME', '1078000000', '500.0GB', '90', '1'),
(143, '318', 'MTN', 'Corporate Gifting', '111400000', '500.0GB', '90', '1'),
(144, '320', 'MTN', 'SME', '2135001000.0', '1.0 TB', '90', '1'),
(145, '321', 'MTN', 'Corporate Gifting', '257500.0', '1.0 TB', '90', '1'),
(146, '322', 'MTN', 'SME', '10784001095.0', '5.0 TB', '90', '1'),
(147, '323', 'MTN', 'Corporate Gifting', '111251000.0', '5.0 TB', '90', '1'),
(148, '327', 'MTN', 'SME', '4313901080.0', '20.0 TB', '90', '1'),
(149, '328', 'MTN', 'Corporate Gifting', '44400001000.0', '20.0 TB', '90', '1'),
(150, '260', 'MTN', 'SME', '2600', '10 GB', '30', '1'),
(151, '261', 'MTN', 'Corporate Gifting', '10390', '40 GB', '30', '1'),
(152, '262', 'MTN', 'Corporate Gifting', '18400', '100GB', '30', '1'),
(153, '263', 'MTN', 'Corporate Gifting', '20', '50MB', '30', '1'),
(154, '270', 'MTN', 'Corporate Gifting', '50', '150MB', '30', '1'),
(155, '271', 'MTN', 'Corporate Gifting', '65', '250MB', '30', '1'),
(156, '272', 'MTN', 'Gifting', '5200', '20GB', '30', '1'),
(157, '279', 'MTN', 'Gifting', '15100', '75GB', '30', '1'),
(158, '282', 'MTN', 'Corporate Gifting', '12300', '50GB', '30', '1'),
(159, '283', 'MTN', 'Corporate Gifting', '14500', '60GB', '30', '1'),
(160, '284', 'MTN', 'Corporate Gifting', '3100', '12GB', '30', '1'),
(161, '291', 'MTN', 'Gifting', '350', '1GB', '1', '1'),
(162, '293', 'MTN', 'Gifting', '500', '2GB', '2', '1'),
(163, '294', 'MTN', 'Gifting', '580', '2GB', '30', '1'),
(164, '295', 'MTN', 'Gifting', '1550', '3GB', '1', '1'),
(165, '297', 'MTN', 'Gifting', '50', '40MB', '3', '1'),
(166, '311', 'MTN', 'Gifting', '300', '750MB', '2', '1'),
(167, '312', 'MTN', 'Gifting', '230', '250MB', '30', '1'),
(168, '314', 'MTN', 'Gifting', '5700', '25GB', '30', '1'),
(169, '315', 'MTN', 'Gifting', '20700', '120GB', '30', '1'),
(170, '316', 'MTN', 'Gifting', '28300', '200GB', '30', '1'),
(171, '317', 'MTN', 'SME', '1078000000', '500.0GB', '90', '1'),
(172, '318', 'MTN', 'Corporate Gifting', '111400000', '500.0GB', '90', '1'),
(173, '320', 'MTN', 'SME', '2135001000.0', '1.0 TB', '90', '1'),
(174, '321', 'MTN', 'Corporate Gifting', '257500.0', '1.0 TB', '90', '1'),
(175, '322', 'MTN', 'SME', '10784001095.0', '5.0 TB', '90', '1'),
(176, '323', 'MTN', 'Corporate Gifting', '111251000.0', '5.0 TB', '90', '1'),
(177, '327', 'MTN', 'SME', '4313901080.0', '20.0 TB', '90', '1'),
(178, '328', 'MTN', 'Corporate Gifting', '44400001000.0', '20.0 TB', '90', '1'),
(179, '340', 'MTN', 'SME2', '1100.0', '4GB', '30', '1'),
(180, '353', 'MTN', 'SME2', '260.0', '1.0 GB', '30', '1'),
(181, '354', 'MTN', 'SME2', '520', '2.0 GB', '30', '1'),
(182, '355', 'MTN', 'SME2', '790', '3.0 GB', '30', '1'),
(183, '356', 'MTN', 'SME2', '1300', '5.0 GB', '30', '1'),
(184, '357', 'MTN', 'SME2', '2600', '10.0 GB', '30', '1'),
(185, '358', 'MTN', 'SME2', '150', '500.0 MB', '30', '1'),
(186, '359', 'MTN', 'SME2', '400', '1.5 GB', '30', '1'),
(187, '360', 'MTN', 'SME2', '40', '100.0 MB', '30', '1'),
(188, '363', 'MTN', 'SME2', '10', '20.0 MB', '30', '1'),
(189, '364', 'MTN', 'SME2', '13', '25.0 MB', '30', '1'),
(190, '366', 'MTN', 'SME2', '550', '6.0 GB', '30', '1'),
(191, '367', 'MTN', 'SME2', '1800', '7.0 GB', '30', '1'),
(192, '368', 'MTN', 'SME2', '50', '50.0 MB', '30', '1'),
(193, '371', 'MTN', 'SME', '540000000.0', '250.0 GB', '90', '1'),
(194, '378', 'MTN', 'Corporate Gifting', '2210000000.0', '10.0 TB', '30', '1'),
(195, '382', 'MTN', 'SME', '55103500000000.0', '25.6 TB', '30', '1'),
(196, '392', 'MTN', 'Gifting', '2000', '250 mb', '2', '1'),
(197, '393', 'MTN', 'Gifting', '752', '3.0GB', '2', '1'),
(198, '394', 'MTN', 'Gifting', '376', '1.5 GB', '1', '1'),
(199, '395', 'MTN', 'Gifting', '470', '1.5 GB', '7', '1'),
(200, '397', 'MTN', 'Gifting', '1900', '7.0 GB', '7', '1'),
(201, '398', 'MTN', 'Gifting', '475', '600 MB', '7', '1'),
(202, '400', 'MTN', 'Gifting', '1880', '4.0 GB', '30', '1'),
(203, '401', 'MTN', 'Gifting', '3050', '8.0 GB', '30', '1'),
(204, '402', 'MTN', 'Gifting', '1410', '5.0 GB', '30', '1'),
(205, '403', 'MTN', 'Gifting', '3900', '15 GB', '30', '1'),
(206, '404', 'MTN', 'Gifting', '3600', '11 GB', '30', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `databundle`
--
ALTER TABLE `databundle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `databundle`
--
ALTER TABLE `databundle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
