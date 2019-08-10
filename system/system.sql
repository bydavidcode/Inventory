-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2019 at 04:22 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_active` int(11) NOT NULL DEFAULT '0',
  `categories_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_active`, `categories_status`) VALUES
(6, 'Categoria 1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `costumers`
--

CREATE TABLE `costumers` (
  `cost_id` int(11) NOT NULL,
  `cost_code` varchar(50) NOT NULL,
  `cost_nit` varchar(50) NOT NULL,
  `cost_name` varchar(255) NOT NULL,
  `cost_phone` char(30) NOT NULL,
  `cost_email` varchar(64) NOT NULL,
  `cost_address` varchar(255) NOT NULL,
  `cost_contact` varchar(25) NOT NULL,
  `cost_city` varchar(100) NOT NULL,
  `cost_departament` varchar(100) NOT NULL,
  `cost_credit` varchar(50) NOT NULL,
  `cost_date` datetime NOT NULL,
  `cost_active` int(11) NOT NULL,
  `cost_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `costumers`
--

INSERT INTO `costumers` (`cost_id`, `cost_code`, `cost_nit`, `cost_name`, `cost_phone`, `cost_email`, `cost_address`, `cost_contact`, `cost_city`, `cost_departament`, `cost_credit`, `cost_date`, `cost_active`, `cost_status`) VALUES
(4, 'sdsdasd', '323212', 'dfsdf', '123123', 'dfdsf@kjhisd', 'efsf', 'dfsdf', '1dfsdf', 'fsfdf1', 'refwfsd', '2019-03-18 16:53:43', 1, 1),
(5, 'dasdas', 'w3423432', 'sdasdd', 'Ã§23123', 'dfsdf@asdsd', 'dfsdf', '34124', 'dfsdf', 'qdfsdf', 'dfgsdf', '2019-03-19 16:40:55', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `credit_id` int(11) NOT NULL,
  `credit_date` date NOT NULL,
  `costumer` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `delivery_status` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `credit_description` varchar(255) NOT NULL,
  `credit_total` int(11) NOT NULL,
  `credit_active` int(11) NOT NULL,
  `credit_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`credit_id`, `credit_date`, `costumer`, `quantity`, `payment_status`, `delivery_status`, `payment_type`, `credit_description`, `credit_total`, `credit_active`, `credit_status`) VALUES
(6, '2019-03-19', 'dfsdf', 2, 1, 1, 1, '        ', 452, 2, 1),
(7, '2019-03-19', 'dfsdf', 5, 1, 1, 1, '        ', 1130, 1, 1),
(8, '2019-03-19', 'dfsdf', 10, 1, 1, 1, '        ', 2260, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `credit_item`
--

CREATE TABLE `credit_item` (
  `credit_item_id` int(11) NOT NULL,
  `credit_id` int(11) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kardex`
--

CREATE TABLE `kardex` (
  `kardex_id` int(11) NOT NULL,
  `kardex_concept` varchar(100) NOT NULL,
  `kardex_date` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `balance` varchar(10) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kardex`
--

INSERT INTO `kardex` (`kardex_id`, `kardex_concept`, `kardex_date`, `quantity`, `balance`, `product_id`) VALUES
(13, 'Inicio en inventario', '0000-00-00', 123, '0', 21),
(14, 'Ingreso a fac fiscal', '2019-03-18', 123, '-2', 21),
(15, 'Ingreso a fac fiscal', '2019-03-18', 121, '-2', 21),
(16, 'Ingreso a fac fiscal', '2019-03-18', 119, '-1', 21),
(17, 'Ingreso a fac fiscal', '2019-03-18', 118, '-1', 21),
(18, 'Ingreso a fac fiscal', '2019-03-18', 117, '-1', 21),
(19, 'Ingreso a fac fiscal', '2019-03-18', 116, '-2', 21),
(20, 'Inicio en inventario', '0000-00-00', 231, '0', 22),
(21, 'Ingreso a fac fiscal', '2019-03-19', 231, '-1', 22),
(22, 'Ingreso a fac fiscal', '2019-03-19', 105, '-5', 21),
(23, 'Ingreso a fac fiscal', '2019-03-19', 230, '-5', 22),
(24, 'Ingreso a fac fiscal', '2019-03-19', 100, '-100', 21),
(25, 'Ingreso a fac fiscal', '2019-03-19', 225, '-255', 22),
(26, 'Ingreso a fac fiscal', '2019-03-19', 0, '-10', 21),
(27, 'Ingreso a fac fiscal', '2019-03-19', -30, '-5', 22),
(28, 'Compra', '2019-03-20', -10, '+2', 21),
(29, 'Compra', '2019-03-20', -8, '+2', 21),
(30, 'Compra', '2019-03-20', -6, '+55', 21),
(31, 'Ingreso a fac fiscal', '2019-03-20', 49, '-2', 21),
(32, 'Ingreso a fac fiscal', '2019-03-20', -35, '-5', 22),
(33, 'Ingreso a fac fiscal', '2019-03-20', 47, '-2', 21),
(34, 'Ingreso a fac fiscal', '2019-03-20', -40, '-5', 22),
(35, 'Ingreso a fac fiscal', '2019-03-20', 45, '-100', 21),
(36, 'Ingreso a fac fiscal', '2019-03-20', -45, '-500', 22),
(37, 'Ingreso a fac fiscal', '2019-03-20', -55, '-100', 21),
(38, 'Ingreso a fac fiscal', '2019-03-20', -545, '-500', 22),
(39, 'Compra', '2019-03-20', -101, '+54', 21),
(40, 'Compra', '2019-03-20', -47, '+45', 21),
(41, 'Compra', '2019-03-20', -1045, '+100', 22),
(42, 'Compra', '2019-03-21', -2, '+100', 21),
(43, 'Inicio en inventario', '0000-00-00', 21, '0', 23),
(44, 'Ingreso a factura', '2019-06-09', 98, '-1', 21);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_cod` varchar(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `provider_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `price1` float NOT NULL,
  `price2` float NOT NULL,
  `price3` float NOT NULL,
  `price4` float NOT NULL,
  `utility1` float NOT NULL,
  `utility2` float NOT NULL,
  `utility3` float NOT NULL,
  `utility4` float NOT NULL,
  `purchase_price` float NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `product_type` varchar(15) NOT NULL,
  `product_active` int(11) NOT NULL DEFAULT '0',
  `product_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_cod`, `product_name`, `product_image`, `provider_id`, `categories_id`, `price1`, `price2`, `price3`, `price4`, `utility1`, `utility2`, `utility3`, `utility4`, `purchase_price`, `quantity`, `product_type`, `product_active`, `product_status`) VALUES
(21, 'abc', 'wdqwdq', '../assests/images/stock/6505663905c8c5b81813bd.jpg', 6, 6, 226, 55423, 52757, 524, 10, 55207, 52541, 308, 216, '97', '1', 1, 1),
(22, 'cde', 'dasdsad', '../assests/images/photo_default.png', 6, 6, 333, 0, 0, 0, 21, 0, 0, 0, 312, '2', '1', 1, 1),
(23, 'dasdas', 'asdasda', '../assests/images/photo_default.png', 6, 6, 212, 22, 0, 0, 191, 1, 0, 0, 21, '21', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `prov_id` int(11) NOT NULL,
  `prov_cod` varchar(100) NOT NULL,
  `prov_name` varchar(255) NOT NULL,
  `prov_phone` varchar(8) NOT NULL,
  `prov_nit` int(15) NOT NULL,
  `prov_address` varchar(100) NOT NULL,
  `prov_active` int(11) NOT NULL DEFAULT '0',
  `prov_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`prov_id`, `prov_cod`, `prov_name`, `prov_phone`, `prov_nit`, `prov_address`, `prov_active`, `prov_status`) VALUES
(6, 'abc', 'Proveedor 1', '21323', 213123123, 'fwefefwef', 1, 1),
(7, 'dsfsdf', 'GFSDF', '324234', 435453, 'GDFGDF', 1, 1),
(8, 'DSFSDFSDF', 'DSFDFSDF', '23434', 0, 'DFSADFDF', 1, 1),
(9, 'SDAASDASD', '43234324', '4323423', 34223432, 'SADASDAS', 1, 1),
(10, 'SADASDASD', 'SADASDA', '23423', 324234, 'ASDASD', 1, 1),
(11, 'SADASDAS', 'ASDASD', '3423', 3423, 'ASD', 1, 1),
(12, 'DSAADS', 'DSADSA', '543245', 5454, 'DASDASD', 1, 1),
(13, '3234', 'ASDASD', '432', 324, 'SDASD', 1, 1),
(14, 'dfsdfs', 'fgsdfdsaf', '23432', 3424234, 'dfdsf', 1, 1),
(15, 'dfssdfdsf', 'dsfsdfds', 'f54454', 432432, 'efwewr', 1, 1),
(16, 'dsfsdfsd', 'dsfsdf', '342432', 0, 'fsdfdsf', 1, 1),
(17, 'dsfsdf', 'sdfsdf', '23423', 234, 'dfs', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `purchase_id` int(11) NOT NULL,
  `purchase_description` varchar(200) NOT NULL,
  `provider` varchar(300) NOT NULL,
  `provider_nit` varchar(20) NOT NULL,
  `purchase_date` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `payment_status` varchar(40) NOT NULL,
  `payment_type` varchar(40) NOT NULL,
  `delivery_status` int(11) NOT NULL,
  `purchase_active` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`purchase_id`, `purchase_description`, `provider`, `provider_nit`, `purchase_date`, `quantity`, `total`, `payment_status`, `payment_type`, `delivery_status`, `purchase_active`) VALUES
(1, '        ', 'Proveedor 1', '21323', '2019-03-20', 54, '500.00', '1', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_item`
--

CREATE TABLE `purchase_item` (
  `purchase_item_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `purchase_item_active` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_item`
--

INSERT INTO `purchase_item` (`purchase_item_id`, `purchase_id`, `product_code`, `product_name`, `quantity`, `price`, `total`, `purchase_item_active`) VALUES
(1, 1, 'abc', 'wdqwdq', 54, '54', '2916.00', 2),
(2, 2, 'abc', 'wdqwdq', 54, '54', '2916.00', 1),
(3, 3, 'abc', 'wdqwdq', 45, '45', '2025.00', 2),
(4, 3, 'cde', 'dasdsad', 100, '100', '10000.00', 2),
(5, 4, 'abc', 'wdqwdq', 100, '45', '4500.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `quotation_id` int(11) NOT NULL,
  `costumer` varchar(1010) NOT NULL,
  `quotation_date` date NOT NULL,
  `quotation_description` varchar(500) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` float NOT NULL,
  `quotation_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quotation_item`
--

CREATE TABLE `quotation_item` (
  `quotation_item_id` int(11) NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `quotation_item_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `return_id` int(11) NOT NULL,
  `costumer` varchar(100) NOT NULL,
  `return_date` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `return_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `sale_date` date NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `sub_total` varchar(255) NOT NULL,
  `sale_discount` varchar(255) NOT NULL,
  `payment_status` int(5) NOT NULL,
  `sale_total` varchar(255) NOT NULL,
  `sale_active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `sale_date`, `client_name`, `sub_total`, `sale_discount`, `payment_status`, `sale_total`, `sale_active`) VALUES
(1, '2019-05-28', 'gdfgdf', '32', '9', 1, '23', 1),
(2, '2019-06-07', '', '', '', 1, '21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sale_item`
--

CREATE TABLE `sale_item` (
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `sale_item_active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale_item`
--

INSERT INTO `sale_item` (`sale_item_id`, `sale_id`, `product_id`, `quantity`, `price`, `total`, `sale_item_active`) VALUES
(1, 2, 21, '5', '10', '50', 1),
(2, 4, 21, '1', '0', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tmp`
--

CREATE TABLE `tmp` (
  `tmp_id` int(11) NOT NULL,
  `tmp_quantity` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tmp_price` double NOT NULL,
  `tmp_total` double NOT NULL,
  `session_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `costumers`
--
ALTER TABLE `costumers`
  ADD PRIMARY KEY (`cost_id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`credit_id`);

--
-- Indexes for table `credit_item`
--
ALTER TABLE `credit_item`
  ADD PRIMARY KEY (`credit_item_id`);

--
-- Indexes for table `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`kardex_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`prov_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `purchase_item`
--
ALTER TABLE `purchase_item`
  ADD PRIMARY KEY (`purchase_item_id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`quotation_id`);

--
-- Indexes for table `quotation_item`
--
ALTER TABLE `quotation_item`
  ADD PRIMARY KEY (`quotation_item_id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `sale_item`
--
ALTER TABLE `sale_item`
  ADD PRIMARY KEY (`sale_item_id`);

--
-- Indexes for table `tmp`
--
ALTER TABLE `tmp`
  ADD PRIMARY KEY (`tmp_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `costumers`
--
ALTER TABLE `costumers`
  MODIFY `cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `credit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `credit_item`
--
ALTER TABLE `credit_item`
  MODIFY `credit_item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kardex`
--
ALTER TABLE `kardex`
  MODIFY `kardex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `prov_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_item`
--
ALTER TABLE `purchase_item`
  MODIFY `purchase_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sale_item`
--
ALTER TABLE `sale_item`
  MODIFY `sale_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tmp`
--
ALTER TABLE `tmp`
  MODIFY `tmp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
