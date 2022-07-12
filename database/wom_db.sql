-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 11 Jul 2022 pada 11.54
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wom_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `M_BRANCH`
--

CREATE TABLE `M_BRANCH` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `M_BRANCH`
--

INSERT INTO `M_BRANCH` (`branch_id`, `branch_name`) VALUES
(1, 'BALARAJA'),
(2, 'BALARAJA SYARIAH'),
(3, 'BEKASI'),
(4, 'BEKASI SYARIAH'),
(5, 'BSD'),
(6, 'BSD SYARIAH'),
(7, 'CIKANDE'),
(8, 'CIKANDE SYARIAH'),
(9, 'MAUK'),
(10, 'MAUK SYARIAH'),
(11, 'TANGERANG SELATAN 2'),
(12, 'TANGERANG 3'),
(13, 'RAWAMANGUN'),
(14, 'RAWAMANGUN SYARIAH'),
(15, 'ROXY');

-- --------------------------------------------------------

--
-- Struktur dari tabel `M_PRODUCT`
--

CREATE TABLE `M_PRODUCT` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `M_PRODUCT`
--

INSERT INTO `M_PRODUCT` (`product_id`, `product_name`) VALUES
(1, 'BAJAJ'),
(2, 'HONDA'),
(3, 'KAWASAKI'),
(4, 'SUZUKI'),
(5, 'YAMAHA'),
(6, 'DATSUN'),
(7, 'HONDA'),
(8, 'ISUZU'),
(9, 'MAZDA'),
(10, 'TOYOTA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `T_DATA_CUSTOMER`
--

CREATE TABLE `T_DATA_CUSTOMER` (
  `cust_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `phone_no` varchar(13) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tenor_id` int(11) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `dtm_crt` datetime NOT NULL DEFAULT current_timestamp(),
  `usr_crt` varchar(30) NOT NULL,
  `dtm_upd` datetime DEFAULT NULL,
  `usr_upd` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `T_DATA_CUSTOMER`
--

INSERT INTO `T_DATA_CUSTOMER` (`cust_id`, `first_name`, `last_name`, `phone_no`, `branch_id`, `product_id`, `tenor_id`, `avatar`, `dtm_crt`, `usr_crt`, `dtm_upd`, `usr_upd`) VALUES
(5, 'Laras', 'Indah', '085642434341', 12, 8, 24, 'https://i.pravatar.cc/50?u=2', '2022-07-11 16:18:05', 'anonymous', NULL, NULL),
(6, 'Indah', 'Prasasti', '0856424349464', 9, 5, 32, 'https://i.pravatar.cc/50?u=3', '2022-07-11 16:19:41', 'anonymous', NULL, NULL),
(7, 'Surati', 'Sari', '087946434464', 5, 10, 28, 'https://i.pravatar.cc/50?u=4', '2022-07-11 16:21:08', 'anonymous', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `T_LOG_APIREQUEST`
--

CREATE TABLE `T_LOG_APIREQUEST` (
  `req_id` int(11) NOT NULL,
  `endpoint` varchar(30) NOT NULL,
  `parameter_in` text NOT NULL,
  `log_id` varchar(30) NOT NULL,
  `request_date` datetime NOT NULL DEFAULT current_timestamp(),
  `dtm_crt` datetime NOT NULL DEFAULT current_timestamp(),
  `usr_crt` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `T_LOG_APIREQUEST`
--

INSERT INTO `T_LOG_APIREQUEST` (`req_id`, `endpoint`, `parameter_in`, `log_id`, `request_date`, `dtm_crt`, `usr_crt`) VALUES
(29410, 'GetMasterBranch', '{}', 'b8fao', '2022-07-11 16:34:10', '2022-07-11 16:34:10', 'anonymous'),
(29411, 'GetMasterProduct', '{}', '2Kxv4', '2022-07-11 16:34:10', '2022-07-11 16:34:10', 'anonymous'),
(29412, 'GetDataCustomer', '\"5\"', 'nW0vp', '2022-07-11 16:34:10', '2022-07-11 16:34:10', 'anonymous'),
(29413, 'GetMasterBranch', '{}', 'R5xd3', '2022-07-11 16:34:33', '2022-07-11 16:34:33', 'anonymous'),
(29414, 'GetMasterProduct', '{}', '3fsRL', '2022-07-11 16:34:33', '2022-07-11 16:34:33', 'anonymous'),
(29415, 'GetAllDataCust', '{}', 'LbkqU', '2022-07-11 16:34:33', '2022-07-11 16:34:33', 'anonymous'),
(29416, 'GetMasterBranch', '{}', 'Kg1ZC', '2022-07-11 16:34:39', '2022-07-11 16:34:39', 'anonymous'),
(29417, 'GetMasterProduct', '{}', 'TeLeG', '2022-07-11 16:34:39', '2022-07-11 16:34:39', 'anonymous'),
(29418, 'GetAllDataCust', '{}', '8PZRE', '2022-07-11 16:34:39', '2022-07-11 16:34:39', 'anonymous'),
(29419, 'GetMasterBranch', '{}', 'tmtkz', '2022-07-11 16:34:45', '2022-07-11 16:34:45', 'anonymous'),
(29420, 'GetMasterProduct', '{}', 'tDl5U', '2022-07-11 16:34:46', '2022-07-11 16:34:46', 'anonymous'),
(29421, 'GetDataCustomer', '\"5\"', 'SV6Hi', '2022-07-11 16:34:46', '2022-07-11 16:34:46', 'anonymous'),
(29422, 'GetMasterBranch', '{}', 'H7nSY', '2022-07-11 16:34:48', '2022-07-11 16:34:48', 'anonymous'),
(29423, 'GetMasterProduct', '{}', 'IaD5Q', '2022-07-11 16:34:48', '2022-07-11 16:34:48', 'anonymous'),
(29424, 'GetAllDataCust', '{}', 'BhVoe', '2022-07-11 16:34:48', '2022-07-11 16:34:48', 'anonymous'),
(29425, 'GetMasterBranch', '{}', 'HK0Qf', '2022-07-11 16:35:49', '2022-07-11 16:35:49', 'anonymous'),
(29426, 'GetMasterProduct', '{}', '1FhcR', '2022-07-11 16:35:49', '2022-07-11 16:35:49', 'anonymous'),
(29427, 'GetAllDataCust', '{}', 'Btoom', '2022-07-11 16:35:49', '2022-07-11 16:35:49', 'anonymous'),
(29428, 'GetMasterBranch', '{}', 'mvw42', '2022-07-11 16:35:55', '2022-07-11 16:35:55', 'anonymous'),
(29429, 'GetMasterProduct', '{}', 'esyji', '2022-07-11 16:35:55', '2022-07-11 16:35:55', 'anonymous'),
(29430, 'GetDataCustomer', '\"5\"', 'KGLfh', '2022-07-11 16:35:55', '2022-07-11 16:35:55', 'anonymous'),
(29431, 'GetMasterBranch', '{}', '0BDcv', '2022-07-11 16:35:57', '2022-07-11 16:35:57', 'anonymous'),
(29432, 'GetMasterProduct', '{}', 'xeY8g', '2022-07-11 16:35:57', '2022-07-11 16:35:57', 'anonymous'),
(29433, 'GetAllDataCust', '{}', 'u5M7q', '2022-07-11 16:35:57', '2022-07-11 16:35:57', 'anonymous'),
(29434, 'GetMasterBranch', '{}', 'RauaC', '2022-07-11 16:36:07', '2022-07-11 16:36:07', 'anonymous'),
(29435, 'GetMasterProduct', '{}', 'OuuGv', '2022-07-11 16:36:07', '2022-07-11 16:36:07', 'anonymous'),
(29436, 'GetDataCustomer', '\"7\"', 'p9CLM', '2022-07-11 16:36:07', '2022-07-11 16:36:07', 'anonymous'),
(29437, 'GetMasterBranch', '{}', 'UCkD7', '2022-07-11 16:36:08', '2022-07-11 16:36:08', 'anonymous'),
(29438, 'GetMasterProduct', '{}', 'EqoxO', '2022-07-11 16:36:08', '2022-07-11 16:36:08', 'anonymous'),
(29439, 'GetAllDataCust', '{}', 'mViLJ', '2022-07-11 16:36:08', '2022-07-11 16:36:08', 'anonymous'),
(29440, 'GetMasterBranch', '{}', 'BmVE8', '2022-07-11 16:36:31', '2022-07-11 16:36:31', 'anonymous'),
(29441, 'GetMasterProduct', '{}', 'KwcQW', '2022-07-11 16:36:31', '2022-07-11 16:36:31', 'anonymous'),
(29442, 'GetDataCustomer', '\"5\"', 'Z1LzZ', '2022-07-11 16:36:31', '2022-07-11 16:36:31', 'anonymous'),
(29443, 'GetMasterBranch', '{}', 'SGKOa', '2022-07-11 16:36:33', '2022-07-11 16:36:33', 'anonymous'),
(29444, 'GetMasterProduct', '{}', 'cYeeP', '2022-07-11 16:36:33', '2022-07-11 16:36:33', 'anonymous'),
(29445, 'GetAllDataCust', '{}', 'eaChg', '2022-07-11 16:36:33', '2022-07-11 16:36:33', 'anonymous');

-- --------------------------------------------------------

--
-- Struktur dari tabel `T_LOG_APIRESPONSE`
--

CREATE TABLE `T_LOG_APIRESPONSE` (
  `req_id` int(11) NOT NULL,
  `endpoint` varchar(30) NOT NULL,
  `parameter_in` text NOT NULL,
  `log_id` varchar(30) NOT NULL,
  `response_code` varchar(30) NOT NULL,
  `response_message` text NOT NULL,
  `response_date` datetime NOT NULL DEFAULT current_timestamp(),
  `dtm_crt` datetime NOT NULL DEFAULT current_timestamp(),
  `usr_crt` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `T_LOG_APIRESPONSE`
--

INSERT INTO `T_LOG_APIRESPONSE` (`req_id`, `endpoint`, `parameter_in`, `log_id`, `response_code`, `response_message`, `response_date`, `dtm_crt`, `usr_crt`) VALUES
(29403, 'GetMasterBranch', '{}', 'b8fao', '200', '\"Success\"', '2022-07-11 16:34:10', '2022-07-11 16:34:10', 'anonymous'),
(29404, 'GetMasterBranch', '{}', '2Kxv4', '200', '\"Success\"', '2022-07-11 16:34:10', '2022-07-11 16:34:10', 'anonymous'),
(29405, 'GetDataCustomer', '\"5\"', 'nW0vp', '200', '\"Success\"', '2022-07-11 16:34:10', '2022-07-11 16:34:10', 'anonymous'),
(29406, 'GetMasterBranch', '{}', 'R5xd3', '200', '\"Success\"', '2022-07-11 16:34:33', '2022-07-11 16:34:33', 'anonymous'),
(29407, 'GetMasterBranch', '{}', '3fsRL', '200', '\"Success\"', '2022-07-11 16:34:33', '2022-07-11 16:34:33', 'anonymous'),
(29408, 'GetAllDataCust', '{}', 'LbkqU', '200', '\"Success\"', '2022-07-11 16:34:33', '2022-07-11 16:34:33', 'anonymous'),
(29409, 'GetMasterBranch', '{}', 'Kg1ZC', '200', '\"Success\"', '2022-07-11 16:34:39', '2022-07-11 16:34:39', 'anonymous'),
(29410, 'GetMasterBranch', '{}', 'TeLeG', '200', '\"Success\"', '2022-07-11 16:34:39', '2022-07-11 16:34:39', 'anonymous'),
(29411, 'GetAllDataCust', '{}', '8PZRE', '200', '\"Success\"', '2022-07-11 16:34:39', '2022-07-11 16:34:39', 'anonymous'),
(29412, 'GetMasterBranch', '{}', 'tmtkz', '200', '\"Success\"', '2022-07-11 16:34:45', '2022-07-11 16:34:45', 'anonymous'),
(29413, 'GetMasterBranch', '{}', 'tDl5U', '200', '\"Success\"', '2022-07-11 16:34:46', '2022-07-11 16:34:46', 'anonymous'),
(29414, 'GetDataCustomer', '\"5\"', 'SV6Hi', '200', '\"Success\"', '2022-07-11 16:34:46', '2022-07-11 16:34:46', 'anonymous'),
(29415, 'GetMasterBranch', '{}', 'H7nSY', '200', '\"Success\"', '2022-07-11 16:34:48', '2022-07-11 16:34:48', 'anonymous'),
(29416, 'GetMasterBranch', '{}', 'IaD5Q', '200', '\"Success\"', '2022-07-11 16:34:48', '2022-07-11 16:34:48', 'anonymous'),
(29417, 'GetAllDataCust', '{}', 'BhVoe', '200', '\"Success\"', '2022-07-11 16:34:48', '2022-07-11 16:34:48', 'anonymous'),
(29418, 'GetMasterBranch', '{}', 'HK0Qf', '200', '\"Success\"', '2022-07-11 16:35:49', '2022-07-11 16:35:49', 'anonymous'),
(29419, 'GetMasterBranch', '{}', '1FhcR', '200', '\"Success\"', '2022-07-11 16:35:49', '2022-07-11 16:35:49', 'anonymous'),
(29420, 'GetAllDataCust', '{}', 'Btoom', '200', '\"Success\"', '2022-07-11 16:35:49', '2022-07-11 16:35:49', 'anonymous'),
(29421, 'GetMasterBranch', '{}', 'mvw42', '200', '\"Success\"', '2022-07-11 16:35:55', '2022-07-11 16:35:55', 'anonymous'),
(29422, 'GetMasterBranch', '{}', 'esyji', '200', '\"Success\"', '2022-07-11 16:35:55', '2022-07-11 16:35:55', 'anonymous'),
(29423, 'GetDataCustomer', '\"5\"', 'KGLfh', '200', '\"Success\"', '2022-07-11 16:35:55', '2022-07-11 16:35:55', 'anonymous'),
(29424, 'GetMasterBranch', '{}', '0BDcv', '200', '\"Success\"', '2022-07-11 16:35:57', '2022-07-11 16:35:57', 'anonymous'),
(29425, 'GetMasterBranch', '{}', 'xeY8g', '200', '\"Success\"', '2022-07-11 16:35:57', '2022-07-11 16:35:57', 'anonymous'),
(29426, 'GetAllDataCust', '{}', 'u5M7q', '200', '\"Success\"', '2022-07-11 16:35:57', '2022-07-11 16:35:57', 'anonymous'),
(29427, 'GetMasterBranch', '{}', 'RauaC', '200', '\"Success\"', '2022-07-11 16:36:07', '2022-07-11 16:36:07', 'anonymous'),
(29428, 'GetMasterBranch', '{}', 'OuuGv', '200', '\"Success\"', '2022-07-11 16:36:07', '2022-07-11 16:36:07', 'anonymous'),
(29429, 'GetDataCustomer', '\"7\"', 'p9CLM', '200', '\"Success\"', '2022-07-11 16:36:07', '2022-07-11 16:36:07', 'anonymous'),
(29430, 'GetMasterBranch', '{}', 'UCkD7', '200', '\"Success\"', '2022-07-11 16:36:08', '2022-07-11 16:36:08', 'anonymous'),
(29431, 'GetMasterBranch', '{}', 'EqoxO', '200', '\"Success\"', '2022-07-11 16:36:08', '2022-07-11 16:36:08', 'anonymous'),
(29432, 'GetAllDataCust', '{}', 'mViLJ', '200', '\"Success\"', '2022-07-11 16:36:08', '2022-07-11 16:36:08', 'anonymous'),
(29433, 'GetMasterBranch', '{}', 'BmVE8', '200', '\"Success\"', '2022-07-11 16:36:31', '2022-07-11 16:36:31', 'anonymous'),
(29434, 'GetMasterBranch', '{}', 'KwcQW', '200', '\"Success\"', '2022-07-11 16:36:31', '2022-07-11 16:36:31', 'anonymous'),
(29435, 'GetDataCustomer', '\"5\"', 'Z1LzZ', '200', '\"Success\"', '2022-07-11 16:36:31', '2022-07-11 16:36:31', 'anonymous'),
(29436, 'GetMasterBranch', '{}', 'SGKOa', '200', '\"Success\"', '2022-07-11 16:36:33', '2022-07-11 16:36:33', 'anonymous'),
(29437, 'GetMasterBranch', '{}', 'cYeeP', '200', '\"Success\"', '2022-07-11 16:36:33', '2022-07-11 16:36:33', 'anonymous'),
(29438, 'GetAllDataCust', '{}', 'eaChg', '200', '\"Success\"', '2022-07-11 16:36:33', '2022-07-11 16:36:33', 'anonymous');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `M_BRANCH`
--
ALTER TABLE `M_BRANCH`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indeks untuk tabel `M_PRODUCT`
--
ALTER TABLE `M_PRODUCT`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `T_DATA_CUSTOMER`
--
ALTER TABLE `T_DATA_CUSTOMER`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indeks untuk tabel `T_LOG_APIREQUEST`
--
ALTER TABLE `T_LOG_APIREQUEST`
  ADD PRIMARY KEY (`req_id`);

--
-- Indeks untuk tabel `T_LOG_APIRESPONSE`
--
ALTER TABLE `T_LOG_APIRESPONSE`
  ADD PRIMARY KEY (`req_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `M_BRANCH`
--
ALTER TABLE `M_BRANCH`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `M_PRODUCT`
--
ALTER TABLE `M_PRODUCT`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `T_DATA_CUSTOMER`
--
ALTER TABLE `T_DATA_CUSTOMER`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `T_LOG_APIREQUEST`
--
ALTER TABLE `T_LOG_APIREQUEST`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29446;

--
-- AUTO_INCREMENT untuk tabel `T_LOG_APIRESPONSE`
--
ALTER TABLE `T_LOG_APIRESPONSE`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29439;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
