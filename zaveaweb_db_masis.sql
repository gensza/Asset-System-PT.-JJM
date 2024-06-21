-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 31, 2024 at 09:15 AM
-- Server version: 8.0.37
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zaveaweb_db_masis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_assets`
--

CREATE TABLE `tb_assets` (
  `id_assets` int NOT NULL,
  `kode_assets` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `merk` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `serial_number` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `satuan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_pt` int NOT NULL,
  `id_divisi` int DEFAULT NULL,
  `jabatan` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lokasi` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cpu` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `os` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ram` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `storage` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gpu` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `display` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lain` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `merk_monitor` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sn_monitor` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `merk_keyboard` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sn_keyboard` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `merk_mouse` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sn_mouse` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `qty_id` int NOT NULL,
  `tgl_pembelian` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `kondisi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `no_ba` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status_kondisi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idle` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fisik` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ket_fisik` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `no_po` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `harga` int NOT NULL,
  `status_unit` int NOT NULL,
  `frek_maintenan` int DEFAULT NULL,
  `tgl_mulai_maintenan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_jadwal_maintenan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_maintenan` tinyint(1) NOT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_assets`
--

INSERT INTO `tb_assets` (`id_assets`, `kode_assets`, `type`, `merk`, `serial_number`, `satuan`, `id_pt`, `id_divisi`, `jabatan`, `lokasi`, `cpu`, `os`, `ram`, `storage`, `gpu`, `display`, `lain`, `merk_monitor`, `sn_monitor`, `merk_keyboard`, `sn_keyboard`, `merk_mouse`, `sn_mouse`, `qty_id`, `tgl_pembelian`, `kondisi`, `no_ba`, `user`, `status_kondisi`, `idle`, `fisik`, `ket_fisik`, `no_po`, `harga`, `status_unit`, `frek_maintenan`, `tgl_mulai_maintenan`, `tgl_jadwal_maintenan`, `status_maintenan`, `date_created`) VALUES
(72, 'MSAL20210114098', '', 'Lenovo Ideapad 3 14ARE05', '', '', 1, NULL, NULL, 'MIS', 'AMD Ryzen 7 4700U octa-core (8 thread) 2GHz ', '', '8 GB', '512 SSD', ' AMD Radeon Vega 3', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-06-25', '1', NULL, 'MIS', 'Baru', NULL, 'Baik', '', '', 0, 1, 0, '0000-00-00', '1970-01-01', 0, NULL),
(73, 'MSAL20210114077', NULL, 'Laptop Lenovo G40-45', '', NULL, 1, NULL, NULL, '', 'Intel(R) Core™ i7-450U CPU @2.00GHz 2.60GHz', NULL, '8 GB', '500 GB HDD', 'AMD Radeon R4 Graphics', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2013-11-14', '1', NULL, 'STOCK', 'Hibah', 'on', 'Baik', 'bekas pak anton', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(74, 'MSAL20210114130', NULL, 'Lenovo Ideapad 110-14AST', '', NULL, 1, NULL, NULL, 'MIS', 'AMD Quad-Core A9-9400 2.9-3.5GHz', NULL, '8 GB', '1 TB HDD', 'RADEON R5 2GB', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2018-01-22', '1', NULL, 'ALI', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(75, 'MSAL20210114594', NULL, 'Lenovo Ideapad 110-14AST', '', NULL, 1, NULL, NULL, 'HO LANTAI 1', 'AMD Quad-Core A9-9400 2.9-3.5GHz', NULL, '8 GB', '1 TB HDD', 'RADEON R5 2GB', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2017-09-18', '1', NULL, 'YOGA', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(76, 'MSAL20210114128', '', 'Sony VAIO', '', '', 1, 67, NULL, 'HO LANTAI 4 MIS', 'Intel® Centrino® Duo With Core2 Duo Processor and 802.11a/b/g/n', '', '2 GB', '500 GB HDD', '', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2013-05-16', '1', NULL, 'ERLANGA', 'Baru', 'on', 'Baik', '', '', 0, 1, 0, '0000-00-00', '1970-01-01', 0, NULL),
(77, 'MSAL20210114760', NULL, 'Sony Compact', '', NULL, 1, NULL, NULL, 'HO LANTAI 1', 'Intel(R) Core™ i3 CPU M350 @2.27GHz 2.27GHz', NULL, '4 gb', '500 GB HDD', '', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2013-07-25', '1', NULL, 'ANANDA', 'Hibah', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(78, 'MSAL20210114534', NULL, 'Asus X441NA', '', NULL, 1, NULL, NULL, 'HO LT.3', 'Intel Celeron N3350 ( 1.6 – 2.48 GHz, 2 MB cache, 2 cores)', NULL, '4 GB', '500 GB HDD', 'Intel HD Graphic.', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2018-10-23', '1', NULL, 'Putu S.', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(79, 'MSAL20210114183', NULL, 'Lenovo Ideapad 330-14AST', '', NULL, 1, NULL, NULL, '', 'AMD APU A9-9425 3,1GHz dengan Turbo Core 3,7GHz', NULL, '8 GB', '500 GB SSD', 'AMD Radeon R5.', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2017-08-25', '1', NULL, '', '', '', '', '', '', 0, 0, NULL, NULL, NULL, 0, NULL),
(80, 'MSAL20210114845', NULL, 'LENOVO IdeaPad Slim 3 14ADA05-G4ID', '', NULL, 1, NULL, NULL, 'HO LANTAI 1', 'AMD Athlon Silver 3050U Radeon Graphics', NULL, '4 GB', '256 GB SSD', 'Integrated AMD Radeon Graphics', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-05-06', '1', NULL, 'IRVAN', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(81, 'MSAL20210114362', NULL, 'LENOVO IdeaPad Slim 3 14ADA05-G4ID', '', NULL, 1, NULL, NULL, 'HO LANTAI 1', 'AMD Athlon Silver 3050U Radeon Graphics', NULL, '4 GB', '256 GB SSD', 'Integrated AMD Radeon Graphics', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-05-06', '1', NULL, 'FERDI', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(82, 'MSAL20210114837', NULL, 'LENOVO IdeaPad Slim 3 14ADA05-G4ID', '', NULL, 1, NULL, NULL, 'HO LT.4', 'AMD Athlon Silver 3050U Radeon Graphics', NULL, '4 GB', '256 GB SSD', 'Integrated AMD Radeon Graphics', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-05-06', '1', NULL, 'ZAKARIA', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(83, 'MSAL20210114957', NULL, 'Asus Vivobook 14 M413DA', 'L7N0CX00160327C', NULL, 1, NULL, NULL, 'HO LT.1', 'AMD RRYZEN 3-3250U', NULL, '8 GB', '512 SSD', 'VGA Integreted Radeon VEGA-3', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-05-06', '1', NULL, 'DERIT ANOVA', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(84, 'MSAL20210114668', NULL, 'Asus Vivobook 14 M413DA', 'L8N0CX03Y561325', NULL, 1, NULL, NULL, 'HO LT.3', 'AMD RRYZEN 3-3250U', NULL, '8 GB', '512 SSD', 'VGA Integreted Radeon VEGA-3', '14', 'BUDI', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-05-06', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(85, 'MSAL20210114785', NULL, 'MSI GL62M 7REX', '', NULL, 1, NULL, NULL, '', 'Intel Core i7-7700HQ', NULL, '8 GB', '128 SSD &amp; 1 TB HDD', 'NVIDIA GeForce GTX 1050 Ti with 2GB GDDR5', '15.6', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2017-03-17', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(86, 'MSAL20210114190', NULL, ' ICA CT-1082B ', ' 1C1G61502588 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(87, 'MSAL20210114525', NULL, ' ICA CT-1082B ', ' 1216Y1301375 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(88, 'MSAL20210114178', NULL, ' ICA CP1400 ', ' 1916Y130123456 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(89, 'MSAL20210114129', NULL, 'APPLE MACBOOK AIR 2020', '', NULL, 1, NULL, NULL, '', ' MVH42ID/A 13&quot;/1.1 GHZ QUAD', NULL, '8 GB', '512 SSD', '', '13', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-10-07', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(90, 'MSAL20210114928', NULL, ' ICA CP1200 ', ' 1B1D21437968 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(91, 'MSAL20210114089', NULL, ' ICA CP1200 ', ' 1D20703666 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(92, 'MSAL20210114979', NULL, ' APC 650 ', '', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(93, 'MSAL20210114560', NULL, ' ICA CE1200 ', '', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(94, 'MSAL20210114807', NULL, ' ICA CE1200 ', '', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(95, 'MSAL20210114091', NULL, 'Dell Inspiron 13 5000', '', NULL, 1, NULL, NULL, '', '6th Generation Intel® Core™ i3-6100U Processor (3M Cache, up to 2.30 GHz)', NULL, '8 GB', '500 GB SSD', 'Intel® HD Graphics 620 with shared graphic', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2018-12-30', '1', NULL, '', '', '0', '', '', '', 0, 0, NULL, NULL, NULL, 0, NULL),
(96, 'MSAL20210114930', NULL, ' ICA CE1400 ', ' 1C1G61503535 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(97, 'MSAL20210114669', NULL, ' ICA CE1400 ', '', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(98, 'MSAL20210114563', NULL, ' ICA CP1400 ', ' 1C1G61502581 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(99, 'MSAL20210114998', NULL, ' ICA CE600 ', ' 1B1D11521058 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(100, 'MSAL20210114620', NULL, 'Dell Inspiron 13 5000', '', NULL, 1, NULL, NULL, 'HO LT.4', '6th Generation Intel® Core™ i3-6100U Processor (3M Cache, up to 2.30 GHz)', NULL, '8 GB', '256 GB SSD', 'Intel® HD Graphics 620 with shared graphic', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2018-07-30', '1', NULL, 'M IKBAL SUBEKTI', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(101, 'MSAL20210114925', NULL, 'Dell Inspiron 13 5000', '', NULL, 1, NULL, NULL, 'HO LT.3', '6th Generation Intel® Core™ i3-6100U Processor (3M Cache, up to 2.30 GHz)', NULL, '8 GB', '1 TB HDD', 'Intel® HD Graphics 620 with shared graphic', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2018-07-30', '1', NULL, 'FARRY', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(102, 'MSAL20210114267', NULL, 'Dell Inspiron 13 5000', '', NULL, 1, NULL, NULL, 'HO LT.3', '6th Generation Intel® Core™ i3-6100U Processor (3M Cache, up to 2.30 GHz)', NULL, '8 GB', '1 TB HDD', 'Intel® HD Graphics 620 with shared graphic', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2018-07-30', '1', NULL, 'SYAWALUDIN NASUTION', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(103, 'MSAL20210114958', NULL, 'Dell Inspiron 13 5000', '', NULL, 1, NULL, NULL, 'HO LT.3', '6th Generation Intel® Core™ i3-6100U Processor (3M Cache, up to 2.30 GHz)', NULL, '4 GB', '1 TB HDD', 'Intel® HD Graphics 620 with shared graphic', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2018-07-30', '1', NULL, 'JALAL', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(104, 'MSAL20210114862', NULL, 'Dell Inspiron 13 5000', '', NULL, 1, NULL, NULL, 'HO LT.3', '6th Generation Intel® Core™ i3-6100U Processor (3M Cache, up to 2.30 GHz)', NULL, '4 GB', '1 TB HDD', 'Intel® HD Graphics 620 with shared graphic', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2018-07-30', '1', NULL, 'I gede Bagus w.', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(105, 'MSAL20210114567', NULL, ' Printer Epson L360 ', ' XGW095443 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(106, 'MSAL20210114010', NULL, ' Printer Epson L310 ', ' VHSK185286 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(107, 'MSAL20210114586', NULL, ' Printer HP Officejet 7110 (A3) ', '', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(108, 'MSAL20210114473', NULL, 'Laptop DELL Inspiron 15 5567', '', NULL, 1, NULL, NULL, 'HO LT 3', 'Intel® Core™ i7-7500U Processor (2.70 Ghz, 4MB Cache)', NULL, '8 GB', '1 TB HDD', 'AMD Radeon R7 M445 2GB', '15.6', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2017-03-05', '1', NULL, 'Faradila NA', 'Baru', NULL, 'Baik', '', '', 8534996, 1, NULL, NULL, NULL, 0, NULL),
(109, 'MSAL20210114726', NULL, ' Scanner Brother ADS-2400N ', 'E75521COG353759', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 22, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(110, 'MSAL20210114524', NULL, ' Scanner Canon Lide 110 ', ' KEFF05303 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 22, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(111, 'MSAL20210114541', NULL, ' Printer HP Laserjet 1020 ', ' CNC0569451 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(112, 'MSAL20210114270', NULL, 'Laptop Lenovo G40-48', '', NULL, 1, NULL, NULL, 'HO LANTAI 1', 'AMD A8 6410, 2.0 Ghz up to 2.4 Ghz, ', NULL, '4 GB', '500 GB HDD', 'VGA Ati Radeon R5 M330 2 GB', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2017-04-26', '1', NULL, 'AYU', 'Hibah', NULL, 'Setengah', 'ENGSEL RUSAK', '', 479800, 1, NULL, NULL, NULL, 0, NULL),
(113, 'MSAL20210114394', NULL, ' Printer Canon Pixma E510 ', ' LRPA37993 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(114, 'MSAL20210114041', NULL, ' HP Deskjet 1515 ', '', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(115, 'MSAL20210114725', NULL, 'Laptop Lenovo G40-47', '', NULL, 1, NULL, NULL, 'HO LT.3', 'AMD A8 6410, 2.0 Ghz up to 2.4 Ghz, ', NULL, '4 GB', '500 GB HDD', 'VGA Ati Radeon R5 M330 2 GB, ', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2017-09-12', '1', NULL, 'Yudi', 'Baru', NULL, 'Baik', '', '', 479800, 1, NULL, NULL, NULL, 0, NULL),
(116, 'MSAL20210114304', NULL, ' Printer Epson L360 ', ' VGEK084165 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(117, 'MSAL20210114280', NULL, ' Printer Epson L210 ', ' RAEK322357 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(118, 'MSAL20210114892', NULL, 'Laptop Lenovo G40-45', '', NULL, 1, NULL, NULL, '', 'AMD A8 6410, 2.0 Ghz up to 2.4 Ghz,', NULL, '4 GB', '500 GB HDD', 'VGA Ati Radeon R5 M330 2 GB', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2017-04-12', '1', NULL, '', '', '0', '', '', '', 0, 0, NULL, NULL, NULL, 0, NULL),
(119, 'MSAL20210114450', NULL, ' Printer HP Officejet 7110 (A3) ', ' CN39B2KGGR ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(120, 'MSAL20210114640', NULL, ' Scanner Canon Lide 110 ', ' KEFE11774 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 22, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(121, 'MSAL20210114179', NULL, 'Laptop Lenovo C430', '', NULL, 1, NULL, NULL, 'HO LT.3', 'AMD Ryzen 3 3200G', NULL, '4 GB', '256 GB SSD', 'AMD Radeon Vega 8 Graphics', '14', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-07-20', '1', NULL, 'Roby Trisna', 'Baru', NULL, 'Baik', '', '', 8100000, 1, NULL, NULL, NULL, 0, NULL),
(122, 'MSAL20210114025', NULL, ' Deskjet 2060 ', ' CN1CD33JSW ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(123, 'MSAL20210114921', NULL, ' Printer HP Laserjet P1102 ', ' VNF6K70729 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(124, 'MSAL20210114756', NULL, ' Printer Epson L3110 ', ' VGEK084987 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(125, 'MSAL20210114020', NULL, ' Scanner Brother ADS-2400N ', ' CN39B2KGGR ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 22, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(127, 'MSAL20210114518', NULL, ' Printer Epson L210 ', ' RAEK318681 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(128, 'MSAL20210114652', NULL, ' Printer Epson L210 ', ' RADK302443 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(129, 'MSAL20210114214', NULL, ' Printer Epson L3110 ', ' VGEK084988 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(130, 'MSAL20210114351', NULL, ' Printer Epson L360 ', ' VGEK084987 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(131, 'MSAL20210114757', '', ' Printer Epson L360 ', ' VGEK08532 ', '', 1, 67, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', NULL, '', '', '', 0, 1, 0, '0000-00-00', '1970-01-01', 0, NULL),
(132, 'MSAL20210114109', NULL, ' Printer Epson LX-310 ', ' C8PY179151 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(133, 'MSAL20210114187', NULL, ' Printer HP Laserjet P1102 ', ' VNF6K70729 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(134, 'MSAL20210114909', NULL, ' Scanner Canon Lide 120 ', ' KJLB35046 ', NULL, 1, NULL, NULL, '', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 22, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(136, 'MSAL20210115047', NULL, 'Asus X441NA', '', NULL, 1, NULL, NULL, 'HO LT.1', 'Intel Celeron N3350 ( 1.6 – 2.48 GHz, 2 MB cache, 2 cores)', NULL, '4 GB', '500 GB HDD', 'Intel HD Graphic.', '14', 'IAMAN SUTEJO', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2018-06-26', '1', NULL, 'IAMAN SUTEJO', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(137, 'MSAL20210115110', NULL, 'Asus X441NA', '', NULL, 1, NULL, NULL, 'HO LT.3', 'Intel Celeron N3350 ( 1.6 – 2.48 GHz, 2 MB cache, 2 cores)', NULL, '4 GB', '500 GB HDD', 'Intel HD Graphic.', '14', 'RIBUT BUDIYONO', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2018-08-11', '1', NULL, 'RIBUT BUDIYONO', 'Baru', NULL, 'Baik', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(138, 'MSAL20210115474', NULL, 'LENOVO IdeaPad Slim 3 14ADA05-G4ID', '', NULL, 1, NULL, NULL, 'HO LT.3', 'AMD Athlon Silver 3050U Radeon Graphics', NULL, '4 GB', '256 GB SSD', 'Integrated AMD Radeon Graphics', '14', 'PUJI WALUYO', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-08-08', '1', NULL, 'PUJI WALUYO', 'Baru', NULL, 'Baik', '', '', 5098998, 1, NULL, NULL, NULL, 0, NULL),
(139, 'MSAL20210115733', NULL, 'LENOVO IdeaPad Slim 3 14ADA05-G4ID', '', NULL, 1, NULL, NULL, 'HO LT.3', 'AMD Athlon Silver 3050U Radeon Graphics', NULL, '4 GB', '256 GB SSD', 'Integrated AMD Radeon Graphics', '14', 'TEGUH TRIONO', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-08-08', '1', NULL, 'TEGUH TRIONO', 'Baru', NULL, 'Baik', '', '', 5098997, 1, NULL, NULL, NULL, 0, NULL),
(140, 'MSAL20210115001', NULL, 'LENOVO IdeaPad Slim 3 14ADA05-G4ID', '', NULL, 1, NULL, NULL, 'HO LT.3', 'AMD Athlon Silver 3050U Radeon Graphics', NULL, '4 GB', '256 GB SSD', 'Integrated AMD Radeon Graphics', '14', 'ADI T.P', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-08-08', '1', NULL, 'ADI T.P', 'Baru', NULL, 'Baik', '', '', 5099000, 1, NULL, NULL, NULL, 0, NULL),
(141, 'MSAL20210115091', NULL, 'Laptop Lenovo Thinkpad E440', '', NULL, 1, NULL, NULL, 'HO LT.4', 'Intel(R) Core™ i5-4210M CPU @2.00GHz 2.60GHz', NULL, '4 GB', '1 TB HDD', 'Intel HD Graphic.', '14', 'WINDI', NULL, NULL, NULL, NULL, NULL, NULL, 17, '0000-00-00', '1', NULL, 'WINDI', 'Baru', NULL, 'Baik', '', '', 599900, 1, NULL, NULL, NULL, 0, NULL),
(142, 'MSAL20210115716', NULL, 'Laptop Lenovo G40-45', '', NULL, 1, NULL, NULL, 'HO LT.4', 'AMD A8 6410, 2.0 Ghz up to 2.4 Ghz', NULL, '4 GB', '500 GB HDD', 'RADEON R5 2GB', '14', 'HENRY', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2018-12-25', '1', NULL, 'HENRY', 'Baru', NULL, 'Baik', '', '', 400000, 1, NULL, NULL, NULL, 0, NULL),
(143, 'MSAL20210115953', NULL, 'Laptop Lenovo G40-45', '', NULL, 1, NULL, NULL, 'HO LT.4', 'AMD A8 6410, 2.0 Ghz up to 2.4 Ghz', NULL, '4 GB', '500 GB HDD', 'VGA Ati Radeon R5 M330 2 GB', '14', 'DAVID', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2018-12-08', '1', NULL, 'DAVID', 'Baru', NULL, 'Baik', '', '', 3999997, 1, NULL, NULL, NULL, 0, NULL),
(144, 'MSAL20210115183', NULL, 'Lenovo Thinkpad  330-14 ast', '', NULL, 1, NULL, NULL, 'HO LT.4', 'AMD APU A4-915 DUAL CORE 2,3 Ghz', NULL, '4 GB', '1 TB HDD', 'AMD Radeon™ 530 AMD Integrated', '14', 'KI AGUS', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2019-09-05', '1', NULL, 'KI AGUS', 'Baru', NULL, 'Baik', '', '', 4599998, 1, NULL, NULL, NULL, 0, NULL),
(145, 'MSAL20210115730', NULL, 'LENOVO IdeaPad Slim 3 14ADA05-G4ID', 'PF2761BW', NULL, 1, NULL, NULL, 'HO LT.5', 'AMD Athlon Silver 3050U Radeon Graphics', NULL, '4 GB', '256 GB SSD', 'Integrated AMD Radeon Graphics', '14', 'PASKAH LIA', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-11-08', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(146, 'MSAL20210115009', NULL, 'LENOVO IdeaPad Slim 3 14ADA05-G4ID', 'PF2HFQLY', NULL, 1, NULL, NULL, 'HO LT.5', 'AMD Athlon Silver 3050U Radeon Graphics', NULL, '4 GB', '256 GB SSD', 'Integrated AMD Radeon Graphics', '14', 'LIDIA', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-11-08', '1', NULL, 'LIDIA', 'Baru', NULL, 'Baik', '', '', 5098998, 1, NULL, NULL, NULL, 0, NULL),
(147, 'MSAL20210115520', NULL, 'LENOVO IdeaPad Slim 3 14ADA05-G4ID', 'PF2HFPTD', NULL, 1, NULL, NULL, 'HO LT.4', 'AMD Athlon Silver 3050U Radeon Graphics', NULL, '4 GB', '256 GB SSD', 'Integrated AMD Radeon Graphics', '14', 'ZAKARIA', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2020-11-08', '1', NULL, 'zakria', 'Baru', NULL, 'Baik', '', '', 5098998, 1, NULL, NULL, NULL, 0, NULL),
(154, 'MSAL20210115621', NULL, 'LENOVO IdeaPad Slim 3 14ADA05-G4ID', 'PF2FQZB6', NULL, 1, NULL, NULL, 'HO', 'AMD 3010e 1,2GHx', NULL, '4 GB', '256 GB SSD', 'Integrated AMD Radeon Graphics', '14', 'STOK MIS', NULL, NULL, NULL, NULL, NULL, NULL, 17, '2021-01-11', '1', NULL, 'STOCK', 'Baru', 'on', 'Baik', 'STOCK', '', 5099000, 1, NULL, NULL, NULL, 0, NULL),
(155, 'MSAL20210118824', NULL, 'SAMSUNG', '', NULL, 1, NULL, NULL, 'HO R. SERVER', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 20, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(156, 'MSAL20210118533', NULL, 'Android Redmi Note 7', '', NULL, 1, NULL, NULL, 'HO LT.3', '', NULL, '', '', '', '', 'UNTUK DRONE BQC', NULL, NULL, NULL, NULL, NULL, NULL, 20, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(157, 'MSAL20210118219', NULL, 'Tablet Ipad ', '', NULL, 1, NULL, NULL, 'HO R. SERVER', '', NULL, '', '', '', '', 'STOK MIS', NULL, NULL, NULL, NULL, NULL, NULL, 20, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(158, 'MSAL20210118010', NULL, 'Android Tablet Alldocube', '', NULL, 1, NULL, NULL, 'HO R. SERVER', '', NULL, '', '', '', '', 'STOK MIS', NULL, NULL, NULL, NULL, NULL, NULL, 20, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(159, 'MSAL20210118870', NULL, 'Android Tablet Alldocube', '', NULL, 1, NULL, NULL, 'HO R. SERVER', '', NULL, '', '', '', '', 'STOK MIS', NULL, NULL, NULL, NULL, NULL, NULL, 20, '0000-00-00', '1', NULL, '', '', '0', '', '', '', 0, 0, NULL, NULL, NULL, 0, NULL),
(160, 'MSAL20210118018', NULL, 'Android Redmi Note 4', '', NULL, 1, NULL, NULL, 'HO LT.4', '', NULL, '', '', '', '', 'DRONE AUDIT', NULL, NULL, NULL, NULL, NULL, NULL, 20, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(161, 'MSAL20210118508', NULL, 'Proyektor Hitachi Type:CP-EX250', ' CP-EX250EY ', NULL, 1, NULL, NULL, 'HO LT.4', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 23, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(162, 'MSAL20210118810', NULL, 'Proyektor Hitachi Type:CP-EX30IN', ' CP-EX301EF ', NULL, 1, NULL, NULL, 'HO LT.1', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 23, '0000-00-00', '1', NULL, '', '', '', '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(163, 'MSAL20210118610', NULL, 'Proyektor EPSON EB-X400', ' X4GU9205911 ', NULL, 1, NULL, NULL, 'HO. LT. 2', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 23, '0000-00-00', '1', NULL, '', '', NULL, '', '', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(164, 'MSAL20210309863', NULL, 'LQ-590II', 'X4RN007083', NULL, 1, NULL, NULL, 'HO LANTAI 5', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, 'LANTAI 5', 'Baru', NULL, 'Baik', '                                ', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(165, 'MSAL20210309827', NULL, '', '', NULL, 1, NULL, NULL, 'HO LANTAI 1', 'AMD Athlon® 64x2 Dual Core Processor 4000+2.10GHz ', NULL, '4GB', '', 'ONBOARDING', '', 'KEYBOARD, MOUSE', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'DATA CENTER', 'Baru', NULL, 'Baik', '                                ', '', 3250000, 1, NULL, NULL, NULL, 0, NULL),
(166, 'MSAL20210309794', NULL, '', '', NULL, 1, NULL, NULL, 'HO LANTAI 1 HRD', 'Intel(R) Xeon(R) CPU E3-1240 v6 @ 3.70GHz (8 CPUs), ~3.7GHz', NULL, '16GB', '', 'ONBOARDING', '', 'KEYBOARD', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'MSAL GROUP SERVER', 'Baru', NULL, 'Baik', '                                ', '', 23400000, 1, NULL, NULL, NULL, 0, NULL),
(167, 'MSAL20210309581', NULL, '', '', NULL, 1, NULL, NULL, 'HO LANTAI 1', 'Intel® Pentuim® CPU @3.00GHz 3.00GHz', NULL, '2 GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'ENDAH', 'Baru', NULL, 'Baik', '                                ', '', 3570000, 1, NULL, NULL, NULL, 0, NULL),
(168, 'MSAL20210309922', NULL, '', '', NULL, 1, NULL, NULL, 'Purchasing', 'Intel® Pentuim® CPU G2010 @2.80GHz 2.80GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'SANTO', 'Baru', NULL, 'Baik', '                                ', '', 3535000, 1, NULL, NULL, NULL, 0, NULL),
(169, 'MSAL20210309630', NULL, '', '', NULL, 1, NULL, NULL, 'LANTAI 1 PURCHASING', 'Intel® Pentuim® Dual CPU E2200 @2.20GHz 2.20GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'IRVAN', 'Baru', NULL, 'Baik', 'MUTASI MSAL SITE                   ', '', 3535000, 1, NULL, NULL, NULL, 0, NULL),
(170, 'MSAL20210309516', NULL, '', '', NULL, 1, NULL, NULL, 'LANTAI 1 PURCHASING', 'Intel(R) Core™2 Duo CPU E8400 @3.00GHz 2.99GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'RAYMOND', 'Baru', NULL, 'Baik', '                                ', '', 3535000, 1, NULL, NULL, NULL, 0, NULL),
(171, 'MSAL20210309502', NULL, '', '', NULL, 1, NULL, NULL, 'LANTAI 1 PURCHASING', 'Intel® Pentuim® Dual CPU E2200 @2.20GHz 2.20GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'FERDY', 'Baru', NULL, 'Baik', '                                ', '', 3118000, 1, NULL, NULL, NULL, 0, NULL),
(172, 'MSAL20210309918', NULL, '', '', NULL, 1, NULL, NULL, 'HRD', 'Intel® Pentuim® CPU G2040 @3.00GHz 3.00GHz', NULL, '6 GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'DERIT', 'Baru', NULL, 'Baik', '                                ', '', 3123000, 1, NULL, NULL, NULL, 0, NULL),
(173, 'MSAL20210309644', NULL, '', '', NULL, 1, NULL, NULL, 'HRD', 'Intel(R) Core™2 Duo CPU E4500 @2.20GHz 2.20GHz', NULL, '2 GB', '', 'ONBOARDING', '', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Heru Agus Susilo', 'Baru', NULL, 'Baik', '                                ', '', 3625000, 1, NULL, NULL, NULL, 0, NULL),
(174, 'MSAL20210309456', NULL, '', '', NULL, 1, NULL, NULL, 'HRD', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '4 GB', '', 'ONBOARDING', '', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Putri Andini', 'Baru', NULL, 'Baik', '                                ', '', 3625000, 1, NULL, NULL, NULL, 0, NULL),
(175, 'MSAL20210309284', NULL, '', '', NULL, 1, NULL, NULL, 'HRD', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Hasbi Abdillah', 'Baru', NULL, 'Baik', '                                ', '', 2975000, 1, NULL, NULL, NULL, 0, NULL),
(176, 'MSAL20210309949', NULL, '', '', NULL, 1, NULL, NULL, 'HRD', 'Intel® Pentuim® CPU @3.00GHz 3.00GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'SAMSUNG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Bilal', 'Baru', NULL, 'Baik', '                                ', '', 2975000, 1, NULL, NULL, NULL, 0, NULL),
(177, 'MSAL20210309656', NULL, '', '', NULL, 1, NULL, NULL, 'HRD', 'Intel® Pentuim® CPU E2200 @2.20GHz 2.20GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Indah Lestari', 'Baru', NULL, 'Baik', '                                ', '', 3263000, 1, NULL, NULL, NULL, 0, NULL),
(178, 'MSAL20210309414', NULL, '', '', NULL, 1, NULL, NULL, 'LANTAI 1 PURCHASING', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'tasya', 'Baru', NULL, 'Baik', '                                ', '', 2540000, 1, NULL, NULL, NULL, 0, NULL),
(179, 'MSAL20210309053', NULL, '', '', NULL, 1, NULL, NULL, 'HRD', 'Intel® Pentuim® CPU E2200 @2.20GHz 2.20GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Oky', 'Baru', NULL, 'Baik', '                                ', '', 3270000, 1, NULL, NULL, NULL, 0, NULL),
(180, 'MSAL20210309299', NULL, '', '', NULL, 1, NULL, NULL, 'BQC', 'AMD Ryzen 3 ', NULL, '8 GB', 'H', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'tatang', 'Baru', NULL, 'Baik', '                                ', '', 5680000, 1, NULL, NULL, NULL, 0, NULL),
(181, 'MSAL20210309044', NULL, '', '', NULL, 1, NULL, NULL, 'umum', 'Intel® Pentuim® CPU E2200 @2.20GHz 2.20GHz', NULL, '16GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Sariyanto', 'Baru', NULL, 'Baik', '                                ', '', 2650000, 1, NULL, NULL, NULL, 0, NULL),
(182, 'MSAL20210309121', NULL, '', '', NULL, 1, NULL, NULL, 'DIREKSI', 'Intel® Pentuim® D CPU @3.00GHz 3.01GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Andre Yennatha', 'Baru', NULL, 'Baik', '                                ', '', 3426000, 1, NULL, NULL, NULL, 0, NULL),
(183, 'MSAL20210309149', NULL, '', '', NULL, 1, NULL, NULL, 'DIREKSI', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'SAMSUNG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Kevin Wusman', 'Baru', NULL, 'Baik', '                                ', '', 2988000, 1, NULL, NULL, NULL, 0, NULL),
(184, 'MSAL20210309512', NULL, '', '', NULL, 1, NULL, NULL, 'DIREKSI', 'AMD Ryzen 5 3400g with Radeon Vega Graphics', NULL, '4GB', 'HDD', 'ONBOARDING', 'BENQ', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Timoty Aucky Wusman', 'Baru', NULL, 'Baik', '                                ', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(185, 'MSAL20210309241', NULL, '', '', NULL, 1, NULL, NULL, 'DIREKSI', 'Intel® Pentuim® CPU E2220 @2.40GHz 2.40GHz', NULL, '2 GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Siswanta', 'Baru', NULL, 'Baik', '                                ', '', 2988000, 1, NULL, NULL, NULL, 0, NULL),
(186, 'MSAL20210309868', NULL, '', '', NULL, 1, NULL, NULL, 'Direksi', 'Intel® Pentuim® CPU G2020 @2.90GHz 2.90GHz', NULL, '2 GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'IGA Bagus', 'Baru', NULL, 'Baik', '                                ', '', 3550000, 1, NULL, NULL, NULL, 0, NULL),
(187, 'MSAL20210309544', NULL, '', '', NULL, 1, NULL, NULL, 'Agronomi', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '4 GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Bagus', 'Baru', NULL, 'Baik', '                                ', '', 3458000, 1, NULL, NULL, NULL, 0, NULL),
(188, 'MSAL20210309597', '', '', '', '', 1, 67, NULL, 'MARKETING', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', '', '2 GB', 'HDD', 'ONBOARDING', 'SAMSUNG', 'KEYBOARD, MOUSE,MONITOR', '', '', '', '', '', '', 18, '0000-00-00', '1', NULL, 'Roby Trisna', 'Baru', NULL, 'Baik', '                                ', '', 3426000, 1, 0, '0000-00-00', '1970-01-01', 0, NULL),
(189, 'MSAL20210309432', NULL, '', '', NULL, 1, NULL, NULL, 'Pabrik', 'Intel(R) Core™2 i5-4460 CPU @3.20GHz 3.20GHz', NULL, '8GB', 'HDD', 'ONBOARDING', 'SAMSUNG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Vindi', 'Baru', NULL, 'Baik', '                                ', '', 10234000, 1, NULL, NULL, NULL, 0, NULL),
(190, 'MSAL20210309920', NULL, '', '', NULL, 1, NULL, NULL, 'BQC', 'AMD Ryzen 3 ', NULL, '8 GB', 'HDD', 'ONBOARDING', 'AOC', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Permana', 'Baru', NULL, 'Baik', '                                ', '', 5765000, 1, NULL, NULL, NULL, 0, NULL),
(191, 'MSAL20210309822', NULL, '', '', NULL, 1, NULL, NULL, 'DIREKSI', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '2 GB', 'HDD', 'ONBOARDING', 'BENQ', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Dwi Darmawan', 'Baru', NULL, 'Baik', '                                ', '', 3598000, 1, NULL, NULL, NULL, 0, NULL),
(192, 'MSAL20210309626', NULL, '', '', NULL, 1, NULL, NULL, 'Funding', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '4 GB', '', 'ONBOARDING', '', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Ferry Apriyanto', 'Baru', NULL, 'Baik', '                                ', '', 2988000, 1, NULL, NULL, NULL, 0, NULL),
(193, 'MSAL20210309090', NULL, '', '', NULL, 1, NULL, NULL, 'Accounting', 'Intel® Pentuim® Dual CPU E2200 @2.20GHz 2.20GHz', NULL, '4 GB', '', 'ONBOARDING', 'BENQ', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Abdul Rohman', 'Baru', NULL, 'Baik', '                                ', '', 2767000, 1, NULL, NULL, NULL, 0, NULL),
(194, 'MSAL20210309188', NULL, '', '', NULL, 1, NULL, NULL, 'Tax', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'SAMSUNG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Adi Winoto', 'Baru', NULL, 'Baik', '                                ', '', 3538000, 1, NULL, NULL, NULL, 0, NULL),
(195, 'MSAL20210309254', NULL, '', '', NULL, 1, NULL, NULL, 'Manager FA', 'Intel® Pentuim® CPU G2020 @2.90GHz 2.90GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'BENQ', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Teguh WS', 'Baru', NULL, 'Baik', '                                ', '', 3550000, 1, NULL, NULL, NULL, 0, NULL),
(196, 'MSAL20210309153', NULL, '', '', NULL, 1, NULL, NULL, 'Accounting', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'M. Arifin', 'Baru', NULL, 'Baik', '                                ', '', 3538000, 1, NULL, NULL, NULL, 0, NULL),
(197, 'MSAL20210309096', NULL, '', '', NULL, 1, NULL, NULL, 'Accounting', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Josias Hartono', 'Baru', NULL, 'Baik', '                                ', '', 3538000, 1, NULL, NULL, NULL, 0, NULL),
(198, 'MSAL20210309641', NULL, '', '', NULL, 1, NULL, NULL, 'Kasir', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '2 GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Robert', 'Baru', NULL, 'Baik', '                            MUTASI PT. MAPA    ', '', 3538000, 1, NULL, NULL, NULL, 0, NULL),
(199, 'MSAL20210309985', NULL, '', '', NULL, 1, NULL, NULL, 'Finance', 'Intel® Pentuim® Dual CPU E2200 @2.20GHz 2.20GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'BENQ', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Ryan', 'Baru', NULL, 'Baik', '                          MUTASI PT.PEAK      ', '', 3392000, 1, NULL, NULL, NULL, 0, NULL),
(200, 'MSAL20210309054', NULL, '', '', NULL, 1, NULL, NULL, 'Accounting', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '4 GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Anantha', 'Baru', NULL, 'Baik', '                                ', '', 3608000, 1, NULL, NULL, NULL, 0, NULL),
(201, 'MSAL20210309485', NULL, '', '', NULL, 1, NULL, NULL, 'GM F,A &amp; T', 'Intel® Celeron® CPU G540 @2.50GHz 2.50GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'benq', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Jimmy', 'Baru', NULL, 'Baik', '                                ', '', 3538000, 1, NULL, NULL, NULL, 0, NULL),
(202, 'MSAL20210309918', NULL, '', '', NULL, 1, NULL, NULL, 'FA', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '4 GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Lidya', 'Baru', NULL, 'Baik', '                                ', '', 3148000, 1, NULL, NULL, NULL, 0, NULL),
(203, 'MSAL20210309823', NULL, '', '', NULL, 1, NULL, NULL, 'FA', 'Intel® Pentuim® CPU G2030 @3.00GHz 3.00GHz', NULL, '4 GB', '', 'ONBOARDING', '', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Lia Rahmawati', 'Baru', NULL, 'Baik', '                                ', '', 3148000, 1, NULL, NULL, NULL, 0, NULL),
(204, 'MSAL20210309765', NULL, '', '', NULL, 1, NULL, NULL, 'Finance', 'Intel® Pentuim® CPU G2020 @2.90GHz 2.90GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Paskah Lia', 'Baru', NULL, 'Baik', '                                U/ STOCK HO', '', 3550000, 1, NULL, NULL, NULL, 0, NULL),
(205, 'MSAL20210309980', NULL, '', '', NULL, 1, NULL, NULL, 'Accounting', 'Intel® Pentuim® CPU G2020 @2.90GHz 2.90GHz', NULL, '4 GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Sunariyadi', 'Baru', NULL, 'Baik', '                                ', '', 3539000, 1, NULL, NULL, NULL, 0, NULL),
(206, 'MSAL20210309684', NULL, '', '', NULL, 1, NULL, NULL, 'FA', 'Intel® Pentuim® CPU G2020 @2.90GHz 2.90GHz', NULL, '4 GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Elmanda', 'Baru', NULL, 'Baik', '                          MUTASI PT PEAK      ', '', 2150000, 1, NULL, NULL, NULL, 0, NULL),
(207, 'MSAL20210309883', NULL, '', '', NULL, 1, NULL, NULL, 'Accounting', 'Intel® Pentuim® CPU G2020 @2.90GHz 2.90GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'Agil P.', 'Baru', NULL, 'Baik', '                                ', '', 2150000, 1, NULL, NULL, NULL, 0, NULL),
(208, 'MSAL20210309634', NULL, '', '', NULL, 1, NULL, NULL, 'MAGANG FA', 'Intel® Pentuim® CPU G2020 @2.90GHz 2.90GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'aov', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'ISMI', 'Baru', NULL, 'Baik', '                                ', '', 3539000, 1, NULL, NULL, NULL, 0, NULL),
(209, 'MSAL20210309543', NULL, '', '', NULL, 1, NULL, NULL, 'Purchasing', 'Intel® Pentuim® Dual CPU E2200 @2.20GHz 2.20GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'irvan', 'Baru', NULL, 'Baik', '                                MUTASI MSAL SITE', '', 3535000, 1, NULL, NULL, NULL, 0, NULL),
(210, 'MSAL20210309707', NULL, 'RAKITAN', '', NULL, 1, NULL, NULL, 'Purchasing', 'Intel® Pentuim® Dual CPU E2200 @2.20GHz 2.20GHz', NULL, '4GB', 'HDD', 'ONBOARDING', 'LG', 'KEYBOARD, MOUSE,MONITOR', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'ferdy', 'Baru', NULL, 'Baik', '                                MUTASI MSAL SITE', '', 3118000, 1, NULL, NULL, NULL, 0, NULL),
(211, 'MSAL20210310222', NULL, 'Lenovo ThinkPad E14 Gen2', '', NULL, 1, NULL, NULL, 'HO LANTAI 1', 'Amd Ryzen 5 4500U, DDR4 3200 MHz, Grafis AMD Radeon', NULL, '8GB', 'SSD', 'AMD RADEON', '14.0&quot; FHD (1920 x 1080) IPS, anti-glare, 250 nits', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '0000-00-00', '1', NULL, 'REM0N', 'Baru', NULL, 'Baik', '                                ', '', 11837998, 1, NULL, NULL, NULL, 0, NULL),
(212, 'MSAL20210310779', NULL, 'Huawei MateBook D15', '', NULL, 1, NULL, NULL, 'HO LT.3', 'AMD Ryzen 5 3500U, AMD Radenon™ Vega 8 Graphic,DDR4 8GB, 256 SSD', NULL, '8 GB', 'SSD', 'AMD RADENON', '15,6 inci', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '0000-00-00', '1', NULL, 'Permana', 'Baru', NULL, 'Baik', '                                ', '', 8698999, 1, NULL, NULL, NULL, 0, NULL),
(213, 'MSAL20210310187', NULL, 'GL62M 7REX', '', NULL, 1, NULL, NULL, 'HO LANTAI 4 MIS', 'Intel Core i7-7700HQ, VGA Nvidia Geforce GTX 1050 Ti 2GB, 8GB DDR4, 1TB HDD + 128GB SSD', NULL, '8GB', 'SSD + HDD', 'VGA Nvidia Geforce GTX 1050', '15.6 inches ', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '0000-00-00', '1', NULL, 'MERY', 'Hibah', NULL, 'Baik', '                                ', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(214, 'MSAL20210312127', NULL, 'EPSON LQ-590II', 'X4RN007088', NULL, 1, NULL, NULL, 'HO LT.5', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '0000-00-00', '1', NULL, 'HO LANTAI 5', 'Baru', NULL, 'Baik', '                                ', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(215, 'MSAL20210329233', NULL, 'DELL', '', NULL, 1, NULL, NULL, 'HO GEDUNG SEBRANG', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 18, '0000-00-00', '1', NULL, 'MSAL GROUP SERVER', 'Bekas', NULL, 'Baik', '                                ', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(216, 'MSAL20210330869', NULL, 'epson L3110', 'X6NX559581', NULL, 1, NULL, NULL, 'Gedung Sebrang', '', NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, '2021-03-30', '1', NULL, 'PAK JALAL BQC', 'Baru', NULL, 'Baik', '                                ', '', 0, 1, NULL, NULL, NULL, 0, NULL),
(217, 'MSAL20210602227', '', 'asus x441s', 'G8N0WU00335431C', '', 1, 67, NULL, 'HO LANTAI 1', 'Intel® celeron N3350(1.6-2.48Ghz, 2 mb cache', '', '8 GB', '500 gb', 'AMD RADENON', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '0000-00-00', '1', NULL, 'STOCK', 'Baru', 'on', '', '                                ', '', 470000, 1, 0, '0000-00-00', '1970-01-01', 0, NULL),
(218, 'ASUS X453M', 'ASUS X453M', 'ASUS', 'QCWB335', 'unit', 1, 67, NULL, 'HO LANTAI 1', 'Intel dual core N2840', 'WINDOWS 8.1', '2 GB DDE3', '500 gb', 'Intel HD Graphics', '14\"', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '0000-00-00', '1', NULL, 'STOCK', 'Bekas', 'on', 'Setengah', '', '', 0, 1, 0, '0000-00-00', '1970-01-01', 0, '2021-06-22 17:22:01'),
(219, 'LENOVO IDEPAD 1', 'LENOVO ', 'LENOVO IDEPAD 110-14AST', 'PF0P1FDU', 'unit', 1, 67, NULL, 'HO LANTAI 1', 'AMD APU A9', 'DOS', '4GB DDR4', '1TB', 'AMD RADEON', '14 INCH', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '0000-00-00', '1', NULL, 'STOCK', 'Bekas', 'on', 'Setengah', '', '', 0, 1, 0, '0000-00-00', '1970-01-01', 0, '2021-06-22 17:28:47'),
(220, 'MSAL/2304/A/HO/', '', '', '', '', 1, 67, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '0000-00-00', '1', NULL, '', '', '0', '', '', '', 0, 0, 0, '0000-00-00', '1970-01-01', 0, '2023-04-30 20:26:45'),
(222, 'ASSET/2305/A/HO', '', '', '', NULL, 1, 67, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '0000-00-00', '1', NULL, '', NULL, 'on', NULL, '', '', 0, 1, 0, '0000-00-00', '1970-01-01', 0, '2023-05-16 21:00:51'),
(223, 'ASSET/2305/A/HO/LPT', 'samsung', '', '', '', 1, 67, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, '', '1', NULL, '', '', NULL, '', '', '', 0, 1, 0, '', '1970-01-01', 0, '2023-05-16 21:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_divisi`
--

CREATE TABLE `tb_divisi` (
  `id_divisi` int NOT NULL,
  `id_pt` int NOT NULL,
  `nama_divisi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_divisi`
--

INSERT INTO `tb_divisi` (`id_divisi`, `id_pt`, `nama_divisi`) VALUES
(67, 1, 'MIS'),
(68, 1, 'HRD'),
(69, 1, 'PURCHASING'),
(70, 1, 'DIRLEGAL'),
(71, 1, 'FA'),
(72, 1, 'ACCOUNTING'),
(73, 1, 'AGRONOMI'),
(74, 1, 'AUDIT'),
(75, 1, 'BQC'),
(76, 1, 'LEGAL'),
(77, 1, 'MANAGER LEGAL'),
(78, 1, 'MARKETING'),
(80, 1, 'OPS'),
(81, 1, 'PKS'),
(82, 1, 'RND'),
(83, 1, 'TAX'),
(84, 1, 'TEKNIK'),
(85, 1, 'TREASURY');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lend_assets`
--

CREATE TABLE `tb_lend_assets` (
  `id_lend` int NOT NULL,
  `assets_id` int NOT NULL,
  `nama` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `qty_id` int NOT NULL,
  `date_lend` datetime NOT NULL,
  `due_date` date NOT NULL,
  `date_return` datetime NOT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `notes_user` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apprvd_y_dept` int NOT NULL,
  `apprvd_mis_dept` int NOT NULL,
  `lend_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_lend_assets`
--

INSERT INTO `tb_lend_assets` (`id_lend`, `assets_id`, `nama`, `qty_id`, `date_lend`, `due_date`, `date_return`, `notes`, `notes_user`, `apprvd_y_dept`, `apprvd_mis_dept`, `lend_status`) VALUES
(43, 95, 'ROBERT', 17, '2021-01-15 11:11:57', '2021-01-10', '2021-03-05 01:36:12', 'PEMINJAAMAN LAPTOP U/ WFH', 'PEMINJAMAN LAPTOP DELL Dell Inspiron 13 5000', 1, 1, 0),
(44, 152, 'ELMANDA DENTIRA ZAHRA', 17, '2021-01-15 11:13:38', '0001-01-07', '2021-03-05 01:26:00', 'untuk wfh selama 11-25 Januari 2021', 'untuk wfh', 1, 1, 0),
(45, 153, 'LIA RAHMAWATI', 17, '2021-01-15 11:14:06', '2021-01-07', '2021-03-05 01:36:04', 'untuk wfh selama 11-25 Januari 2021', 'untuk wfh', 1, 1, 0),
(46, 154, 'AGIL PRASETYA', 17, '2021-01-15 11:14:22', '2021-01-07', '2021-03-05 01:25:50', 'untuk wfh selama 11-25 Januari 2021.', 'untuk wfh', 1, 1, 0),
(47, 79, 'NELVIRA GITHA PUTRI', 17, '2021-01-15 11:14:42', '2021-01-07', '0000-00-00 00:00:00', 'untuk wfh selama 11-25 Januari 2021', 'untuk wfh', 1, 1, 1),
(48, 131, 'AQMARINA TASYA RUNIDHA', 19, '2021-01-15 11:16:17', '2021-01-08', '2021-03-08 02:23:35', 'U/WFH', 'untuk wfh', 1, 1, 0),
(49, 126, 'JOSIAS HARTONO', 17, '2021-01-15 11:17:06', '2021-01-08', '2021-03-05 01:35:36', 'U/WFH', 'untuk wfh', 1, 1, 0),
(50, 118, 'AYU DIAH DWI ASTUTI', 17, '2021-01-15 11:22:07', '2021-01-11', '2021-04-20 11:02:37', 'U/WFH', 'untuk wfh', 1, 1, 0),
(51, 147, 'ADI TEGUH PRABOWO', 17, '2021-02-05 00:00:00', '2021-02-09', '2021-02-05 03:29:28', 'cepat dikembalikan', 'wfh', 1, 1, 0),
(52, 152, 'ALI', 17, '2021-02-09 00:00:00', '2021-02-11', '2021-04-21 04:37:01', 'untuk programmer', 'WFB', 1, 1, 0),
(53, 164, 'MUHAMAD GENSZA VERNANDO', 18, '2021-02-17 00:00:00', '2021-02-17', '2021-02-17 01:20:34', 'TEST UPDATE YEE', 'TEST UPDATE', 1, 1, 0),
(54, 0, 'ABDUL ROHMAN', 17, '2021-03-10 00:00:00', '2021-03-03', '0000-00-00 00:00:00', '0', 'TESST GENZA', 0, 0, 3),
(55, 95, 'ROBERT', 17, '2021-04-05 00:00:00', '2021-04-05', '2021-04-05 01:24:07', 'untuk presentasi dengan orang bank', 'untuk presentasi dengan orang bank', 1, 1, 0),
(56, 95, 'SAIFUL HUDA', 17, '2021-04-05 00:00:00', '2021-06-30', '2021-04-13 01:15:25', 'pinjam', 'untuk kerja networking', 1, 1, 0),
(57, 95, 'SYAWALUDDIN', 17, '2021-04-13 00:00:00', '2021-05-13', '0000-00-00 00:00:00', 'peminjaman dalam waktu sebulan', 'peminjaman sebulan', 1, 1, 1),
(58, 126, 'SAIFUL HUDA', 17, '2021-04-13 00:00:00', '2021-05-13', '2021-06-14 09:18:02', 'peminjaman', 'u/networking', 1, 1, 0),
(59, 154, 'MUHAMAD GENSZA VERNANDO', 17, '2021-04-16 00:00:00', '2021-05-17', '2021-04-21 04:36:47', 'untuk kerja programming', 'untuk programming', 1, 1, 0),
(60, 153, 'PUJI WALUYO', 17, '2021-04-16 00:00:00', '2021-04-27', '2021-04-19 09:02:49', 'untuk dinas', 'utuk dinas', 1, 1, 0),
(61, 153, 'BAGUS NUGRAHA OKY WICAKSANA', 17, '2021-04-19 00:00:00', '2021-04-26', '2021-05-03 01:23:19', 'untuk dinas', 'untuk dinas', 1, 1, 0),
(62, 73, 'RIAN ANDRIANA', 17, '2021-04-20 00:00:00', '2021-04-23', '2021-05-06 08:54:39', 'untuk wfh', 'wfh', 1, 1, 0),
(63, 159, 'IMAN SUTEJO', 20, '2021-04-20 00:00:00', '2021-05-20', '2023-05-16 02:15:56', 'untuk dinas sebulan', 'untuk dinas', 1, 1, 2),
(64, 0, 'MUHAMAD GENSZA VERNANDO', 17, '2021-05-16 00:00:00', '2021-05-18', '0000-00-00 00:00:00', '0', 'TEST update', 0, 0, 3),
(65, 0, 'MUHAMAD GENSZA VERNANDO', 17, '2021-05-16 00:00:00', '2021-05-17', '0000-00-00 00:00:00', '0', 'test lagi', 0, 0, 3),
(66, 154, 'MUHAMAD GENSZA VERNANDO', 17, '2021-05-16 00:00:00', '2021-05-24', '2021-05-16 07:38:46', 'di terima', 'test gensa', 1, 1, 0),
(67, 0, 'ALI', 17, '2021-05-15 00:00:00', '2021-05-21', '0000-00-00 00:00:00', '0', 'as', 0, 0, 3),
(68, 0, 'ALI', 17, '2021-05-21 00:00:00', '2021-05-20', '0000-00-00 00:00:00', '0', 'qwert', 0, 0, 3),
(69, 0, 'ALI', 17, '2021-05-19 00:00:00', '2021-05-26', '0000-00-00 00:00:00', '0', 'asas', 0, 0, 3),
(70, 0, 'MUHAMAD GENSZA VERNANDO', 17, '2021-05-16 00:00:00', '2021-05-16', '0000-00-00 00:00:00', '0', 'asdf', 0, 0, 3),
(71, 118, 'MUHAMAD GENSZA VERNANDO', 17, '2021-05-16 00:00:00', '2021-05-16', '2021-05-16 07:57:11', 'bbbb', 'aaaa', 1, 1, 0),
(72, 73, 'ALI', 17, '2021-05-16 00:00:00', '2021-05-16', '2021-05-16 08:19:48', 'ccc', 'test gensa', 1, 1, 0),
(73, 154, 'HERU AGUS SUSILO', 17, '2021-05-27 00:00:00', '2021-06-27', '2021-06-04 05:11:40', 'untuk kerjaan', 'untuk kerjaan', 1, 1, 0),
(74, 217, 'ASMAR SUBAKTI', 17, '2021-06-02 00:00:00', '2021-07-02', '2021-06-14 09:12:29', 'untuk kerja', 'untuk kerja', 1, 1, 0),
(75, 118, 'NABILA ANINDITA', 17, '2021-06-04 00:00:00', '2021-06-14', '2021-06-15 04:34:58', 'untuk dinas di jogja', 'untuk dinas', 1, 1, 0),
(76, 154, 'BAGUS NUGRAHA OKY WICAKSANA', 17, '2021-06-04 00:00:00', '2021-06-14', '2021-06-22 05:11:29', 'untuk dinas', 'utuk dinas', 1, 1, 0),
(77, 73, 'ADI TEGUH PRABOWO', 17, '2021-05-31 00:00:00', '2021-06-30', '2021-06-07 04:01:55', 'laptop sedang di servise', 'lapto sedang di servise', 1, 1, 0),
(78, 73, 'RIAN ANDRIANA', 17, '2021-06-07 00:00:00', '2021-07-07', '2021-06-15 04:34:54', 'wfh', 'wfh', 1, 1, 0),
(79, 153, 'IRVAN WIJAYA', 17, '2021-06-18 00:00:00', '2021-06-18', '2021-06-21 08:49:20', 'untuk kerja', 'untuk kerja', 1, 1, 0),
(80, 118, 'BAGUS NUGRAHA OKY WICAKSANA', 17, '2021-06-22 00:00:00', '2021-06-28', '0000-00-00 00:00:00', 'WFH', 'WFH', 1, 1, 1),
(81, 220, 'MSAL SITE', 17, '2023-05-16 00:00:00', '2023-05-17', '0000-00-00 00:00:00', 'pake aja', 'Noetf', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pt`
--

CREATE TABLE `tb_pt` (
  `id_pt` int NOT NULL,
  `nama_pt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alias` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `singkatan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pt`
--

INSERT INTO `tb_pt` (`id_pt`, `nama_pt`, `alias`, `singkatan`, `logo`, `deskripsi`, `is_created`, `is_active`) VALUES
(1, 'PT MULIA SAWIT AGRO LESTARI (HO)', 'PT MSAL (HO)', 'MSAL', '', '', '2021-04-25 11:43:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_qty_assets`
--

CREATE TABLE `tb_qty_assets` (
  `id_qty` int NOT NULL,
  `category` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `qty` int NOT NULL,
  `tersedia` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_qty_assets`
--

INSERT INTO `tb_qty_assets` (`id_qty`, `category`, `qty`, `tersedia`) VALUES
(17, 'LAPTOP', 48, 44),
(18, 'PC', 47, 47),
(19, 'PRINTER', 22, 22),
(20, 'GEDGET/TAB', 6, 5),
(21, 'UPS', 12, 12),
(22, 'SCANER', 5, 5),
(23, 'PROYEKTOR', 3, 3),
(24, 'SPAREPART', 0, 0),
(25, 'MOUSE', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id_users` int NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `department` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `position` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_active` int NOT NULL,
  `date_created` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id_users`, `name`, `department`, `position`, `is_active`, `date_created`) VALUES
(11, 'Genza', 'MIS', 'Lt 4', 1, 1610423891);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `id_pt` int NOT NULL,
  `username` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_id` int NOT NULL,
  `is_active` int NOT NULL,
  `date_created` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_pt`, `username`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(24, 1, 'admin', 'MSAL HO', '', 'default.jpg', '$2y$10$Tfxhijh0BfqMPkSVKiAsJ.s7329mTyYIPuC8.pS3rRUd/e9ASZRNq', 2, 1, 1623295123),
(25, 1, 'ahmad_user', 'Ahmad Assobirin', 'ahmad@gmail.com', 'default.jpg', '$2y$10$1aWW/fQek40ZkSheAxO3MemkoJEw7zkem3VZW03.gjCSQClKJaf8m', 1, 1, 1684244587),
(26, 1, 'ahmad_admin', 'Ahmad Assobirin', 'ahmad_assobirin@gmail.com', 'default.jpg', '$2y$10$1aWW/fQek40ZkSheAxO3MemkoJEw7zkem3VZW03.gjCSQClKJaf8m', 2, 1, 1717079985);

-- --------------------------------------------------------

--
-- Table structure for table `‘ci_sessions’`
--

CREATE TABLE `‘ci_sessions’` (
  `‘id’` varchar(40) NOT NULL,
  `‘ip_address’` varchar(45) NOT NULL,
  `‘timestamp’` int UNSIGNED NOT NULL DEFAULT '0',
  `‘data’` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_assets`
--
ALTER TABLE `tb_assets`
  ADD PRIMARY KEY (`id_assets`);

--
-- Indexes for table `tb_divisi`
--
ALTER TABLE `tb_divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `tb_lend_assets`
--
ALTER TABLE `tb_lend_assets`
  ADD PRIMARY KEY (`id_lend`);

--
-- Indexes for table `tb_pt`
--
ALTER TABLE `tb_pt`
  ADD PRIMARY KEY (`id_pt`);

--
-- Indexes for table `tb_qty_assets`
--
ALTER TABLE `tb_qty_assets`
  ADD PRIMARY KEY (`id_qty`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `‘ci_sessions’`
--
ALTER TABLE `‘ci_sessions’`
  ADD KEY `‘ci_sessions_timestamp’` (`‘timestamp’`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_assets`
--
ALTER TABLE `tb_assets`
  MODIFY `id_assets` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `tb_divisi`
--
ALTER TABLE `tb_divisi`
  MODIFY `id_divisi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `tb_lend_assets`
--
ALTER TABLE `tb_lend_assets`
  MODIFY `id_lend` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tb_pt`
--
ALTER TABLE `tb_pt`
  MODIFY `id_pt` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_qty_assets`
--
ALTER TABLE `tb_qty_assets`
  MODIFY `id_qty` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_users` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
