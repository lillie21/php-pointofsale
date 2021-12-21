-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 10:51 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`) VALUES
(15, 'jill minishop', 'p.o box  765 nairobi', '0765387654', '10', 'bread', '2021-10-17', ''),
(16, 'joy minisupermarket', 'p.o box  432 nairobi', '0786534213', '15', 'milk', '2021-10-18', ''),
(17, 'all shops eneterprise', 'p.o box  3654 nairobi', '0765345237', '10', 'biscuits', '2021-10-19', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(58, 'silverstain', 'utensils', ' sufuria', '', '1000', '1500', '500', 'stainless steel', 0, 12, 20, '2021-10-29', '2021-10-04'),
(59, 'supeloaf', 'bread', ' brown bread', '', '80', '100', '20', 'kenya bakery', 0, 35, 50, '2021-11-01', '2021-10-08'),
(60, 'kcc', 'milk', 'fresh  milk       ', '', '1000', '1500', '500', 'kenya cremaries', 0, -7, 20, '2021-10-25', '2021-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `suplier` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_item`
--

CREATE TABLE `purchases_item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`) VALUES
(142, 'RS-882320', '<br /><b>Notice</b>:  Undefined index: SESS_FIRST_NAME in <b>C:\\xampp1\\htdocs\\pos\\main\\sales.php</b>', '10/17/21', 'cash', '500', '100', '1000', '', ''),
(143, 'RS-3333200', '<br /><b>Notice</b>:  Undefined index: SESS_FIRST_NAME in <b>C:\\xampp1\\htdocs\\pos\\main\\sales.php</b>', '10/17/21', 'cash', '1500', '500', '2000', '', ''),
(144, 'RS-308727', '<br /><b>Notice</b>:  Undefined index: SESS_FIRST_NAME in <b>C:\\xampp1\\htdocs\\pos\\main\\sales.php</b>', '10/18/21', 'cash', '7500', '2500', '4000', '', ''),
(145, 'RS-5422020', '<br /><b>Notice</b>:  Undefined index: SESS_FIRST_NAME in <b>C:\\xampp1\\htdocs\\pos\\main\\salesbymanage', '10/18/21', 'cash', '', '', '4000', '', ''),
(146, 'RS-25303203', '<br /><b>Notice</b>:  Undefined index: SESS_FIRST_NAME in <b>C:\\xampp1\\htdocs\\pos\\main\\sales.php</b>', '10/18/21', 'cash', '13500', '4500', '5000', '', ''),
(147, 'RS-33232', '<br /><b>Notice</b>:  Undefined index: SESS_FIRST_NAME in <b>C:\\xampp1\\htdocs\\pos\\main\\salesbymanage', '10/18/21', 'cash', '500', '100', '1000', '', ''),
(148, 'RS-32307', 'kevin', '10/18/21', 'cash', '7500', '2500', '3000', '', ''),
(149, 'RS-32735232', 'kevin', '10/18/21', 'cash', '200', '40', '500', '', ''),
(150, 'RS-832022', 'kevin', '10/18/21', 'cash', '3000', '1000', '5000', '', ''),
(151, 'RS-302253', 'kevin', '10/18/21', 'cash', '1500', '500', '200', '', ''),
(152, 'RS-2025', '<br /><b>Notice</b>:  Undefined index: SESS_FIRST_NAME in <b>C:\\xampp1\\htdocs\\pos\\main\\salesbycashie', '10/18/21', 'cash', '300', '60', '500', '', ''),
(153, 'RS-42592532', '<br /><b>Notice</b>:  Undefined index: SESS_FIRST_NAME in <b>C:\\xampp1\\htdocs\\pos\\main\\salesbycashie', '10/18/21', 'cash', '4500', '1500', '3000', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `gen_name`, `name`, `price`, `discount`, `date`) VALUES
(315, 'RS-882320', '59', '5', '500', '100', 'supeloaf', 'bread', ' brown bread', '100', '', '10/17/21'),
(316, 'RS-3333200', '58', '1', '1500', '500', 'silverstain', 'utensils', ' sufuria', '1500', '', '10/17/21'),
(318, 'RS-5340402', '60', '5', '7500', '2500', 'kcc', 'milk', 'fresh  milk       ', '1500', '', '10/18/21'),
(319, 'RS-33400636', '60', '5', '7500', '2500', 'kcc', 'milk', 'fresh  milk       ', '1500', '', '10/18/21'),
(321, 'RS-25303203', '60', '9', '13500', '4500', 'kcc', 'milk', 'fresh  milk       ', '1500', '', '10/18/21'),
(322, 'RS-33232', '59', '5', '500', '100', 'supeloaf', 'bread', ' brown bread', '100', '', '10/18/21'),
(323, 'RS-2333225', '60', '3', '4500', '1500', 'kcc', 'milk', 'fresh  milk       ', '1500', '', '10/18/21'),
(324, 'RS-32307', '58', '5', '7500', '2500', 'silverstain', 'utensils', ' sufuria', '1500', '', '10/18/21'),
(325, 'RS-32735232', '59', '2', '200', '40', 'supeloaf', 'bread', ' brown bread', '100', '', '10/18/21'),
(326, 'RS-832022', '58', '2', '3000', '1000', 'silverstain', 'utensils', ' sufuria', '1500', '', '10/18/21'),
(327, 'RS-302253', '60', '1', '1500', '500', 'kcc', 'milk', 'fresh  milk       ', '1500', '', '10/18/21'),
(328, 'RS-3202390', '60', '1', '1500', '500', 'kcc', 'milk', 'fresh  milk       ', '1500', '', '10/18/21'),
(332, 'RS-2025', '59', '3', '300', '60', 'supeloaf', 'bread', ' brown bread', '100', '', '10/18/21'),
(333, 'RS-42592532', '60', '3', '4500', '1500', 'kcc', 'milk', 'fresh  milk       ', '1500', '', '10/18/21');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`) VALUES
(1, 'kenya cremaries', 'p.o box 4567 nairobi', '0765985436', 'procurement', ''),
(2, 'stainless steel', 'p.o box 9876 nairobi', '0787654987', 'procurement', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `password`, `position`) VALUES
(1, 'mary', 'ann', 'mary', '585aa0e2160d6a41e3377ce8978d25f2', 'cashier'),
(2, 'john', 'mark', 'mark', 'f02e27c59b70dab302d78772f1c6dd98', 'admin'),
(3, 'kevin', 'vin', 'kevin', 'dfb949667e3483148677364affc60804', 'manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `purchases_item`
--
ALTER TABLE `purchases_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `purchases_item`
--
ALTER TABLE `purchases_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
