-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2018 at 05:11 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `login_id` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `gender`, `dob`, `relationship`, `department`, `address`, `mobile`, `login_id`, `pwd`, `lastlogin`) VALUES
(1, 'admin', 'M', '1994-01-01', 'unmarried', 'developer', 'Metro Minnesota', '18003004000', 'admin', 'admin', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `atm_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`id`, `cust_name`, `account_no`, `atm_status`) VALUES
(15, 'Amy Thomas', 34, 'PENDING'),
(16, 'Yuna', 42, 'ISSUED'),
(17, 'Nicky', 43, 'ISSUED');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary1`
--

CREATE TABLE `beneficiary1` (
  `id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `reciever_id` int(10) NOT NULL,
  `reciever_name` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary1`
--

INSERT INTO `beneficiary1` (`id`, `sender_id`, `sender_name`, `reciever_id`, `reciever_name`, `status`) VALUES
(21, 34, 'Jon Cooper', 35, 'mary hill', 'ACTIVE'),
(22, 34, 'James Nolan', 36, 'Jamie roger', 'ACTIVE'),
(23, 36, 'Sheila Mayer', 34, 'Jack Swan', 'ACTIVE'),
(24, 35, 'Lisa Ray', 34, 'Max Fritz', 'ACTIVE'),
(25, 34, 'Angela Beth', 38, 'Pat dillon', 'PENDING'),
(27, 42, 'Yuna', 40, 'John Lee', 'ACTIVE'),
(28, 43, 'Nicky', 42, 'yuna', 'ACTIVE'),
(29, 53, 'Michael', 38, 'Lisa Ray', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `cheque_book`
--

CREATE TABLE `cheque_book` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(255) NOT NULL,
  `account_no` int(10) NOT NULL,
  `cheque_book_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cheque_book`
--

INSERT INTO `cheque_book` (`id`, `cust_name`, `account_no`, `cheque_book_status`) VALUES
(8, 'Jon Cooper', 34, 'PENDING'),
(9, 'Nicky', 43, 'ISSUED');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `nominee` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `lastlogin` datetime NOT NULL,
  `accstatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `dob`, `nominee`, `account`, `address`, `mobile`, `email`, `password`, `branch`, `lastlogin`, `accstatus`) VALUES
(34, 'Jon Cooper', 'M', '1993-12-30', 'Mary Hill', 'savings', 'MN-US', '9999955555', 'JCooper@gmail.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'Minnesota', '2018-05-01 04:00:32', 'ACTIVE'),
(35, 'James Nolan', 'M', '1990-12-26', 'Jamie Roger', 'savings', 'MN-US', '9999955556', 'JNolan@gmail.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'Minnesota', '2018-01-20 10:11:07', 'ACTIVE'),
(36, 'Sheila Mayer', 'M', '1993-06-26', 'Jack Swan', 'savings', 'WI-US', '9999955556', 'SMeyer@gmail.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'Wisconsin', '2018-01-20 10:15:07', 'ACTIVE'),
(37, 'Ravi Gupta', 'M', '1986-06-26', 'Soni Gupta', 'savings', 'MN-US', '9999955556', 'rgupta@gmail.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'Minnesota', '2018-01-11 10:18:57', 'ACTIVE'),
(38, 'Lisa Ray', 'F', '1990-12-26', 'Max Fritz', 'savings', 'ND-US', '9999955556', 'LRay@gmail.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'North-Dakota', '2018-01-15 10:18:59', 'ACTIVE'),
(39, 'Pat Dillon', 'M', '2018-01-14', 'Angela Beth', 'savings', 'ND-US', '9804381248', 'PDillon@yahoo.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'North-Dakota', '2018-01-11 10:09:36', 'ACTIVE'),
(40, 'John Lee', 'M', '1996-02-18', 'Maria Lee', 'savings', 'MN-US', '8956231245', 'JLee@gmail.com', '28a1b310b43643306f560bb161ff6b67f763c576', 'Minnesota', '2018-01-11 09:42:43', 'ACTIVE'),
(41, 'Sharie cole', 'M', '1993-12-26', 'Matt Cole', 'savings', 'WI-US', '8956231245', 'SCole@yahoo.com', 'b638866443ed874cd5a9449a090cb8dce66e4a3a', 'WIsconsin', '2018-01-11 10:27:48', 'ACTIVE'),
(42, 'Yuna', 'F', '1994-02-13', 'John', 'savings', 'MN-US', '9164521100', 'yuna@gmail.com', 'e60cca9eb5f4bb8172e553fe150fb4e7901cfe42', 'Minnesota', '2018-05-01 04:38:07', 'ACTIVE'),
(43, 'Nicky', 'M', '1965-08-20', 'Chung', 'checking', 'MN-US', '528213554', 'nicky@gmail.com', 'e60cca9eb5f4bb8172e553fe150fb4e7901cfe42', 'Minnesota', '2018-05-01 04:33:10', 'ACTIVE'),
(52, 'Johnny Cage', 'M', '1817-08-28', 'N/A', 'checking', '101 Kike St. Saint Paul, MN 55106', '8651151584', 'johnnycage@gmail.com', '2957a2c9a06b689c80b4266ccbd5eb1698f458cf', 'Minnesota', '0000-00-00 00:00:00', 'ACTIVE'),
(53, 'Michael', 'M', '1958-03-23', 'N/A', 'savings', 'Saint Paul,MN', '7632551786', 'michael@live.com', 'e60cca9eb5f4bb8172e553fe150fb4e7901cfe42', 'Minnesota', '2018-05-01 05:01:37', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `passbook34`
--

CREATE TABLE `passbook34` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `acc_type` varchar(255) NOT NULL,
  `Deposit` int(10) DEFAULT NULL,
  `Withdraw` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook34`
--

INSERT INTO `passbook34` (`transactionid`, `transactiondate`, `name`, `branch`, `acc_type`, `Deposit`, `Withdraw`, `amount`, `narration`) VALUES
(1, '2018-01-08', 'Jon Cooper', 'Minnesota', 'savings', 13000, 0, 13000.00, 'Account Open'),
(9, '2018-01-09', 'Jon Cooper', 'Minnesota', 'savings', 0, 500, 12500.00, 'TO James Nolan'),
(10, '2018-01-10', 'Jon Cooper', 'Minnesota', 'savings', 100, 0, 12600.00, 'BY James Nolan'),
(11, '2018-01-10', 'Jon Cooper', 'Minnesota', 'savings', 2593, 0, 15193.00, 'BY James Nolan');

-- --------------------------------------------------------

--
-- Table structure for table `passbook35`
--

CREATE TABLE `passbook35` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `acc_type` varchar(255) NOT NULL,
  `Deposit` int(10) DEFAULT NULL,
  `Withdraw` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook35`
--

INSERT INTO `passbook35` (`transactionid`, `transactiondate`, `name`, `branch`, `acc_type`, `Deposit`, `Withdraw`, `amount`, `narration`) VALUES
(1, '2018-01-09', 'James Nolan', 'Minnesota', 'savings', 10002, 0, 10002.00, 'Account Open'),
(7, '2018-01-09', 'James Nolan', 'Minnesota', 'savings', 500, 0, 10502.00, 'BY Jon Cooper'),
(8, '2018-01-10', 'James Nolan', 'Minnesota', 'savings', 0, 100, 10402.00, 'TO Jon Cooper'),
(9, '2018-01-10', 'James Nolan', 'Minnesota', 'savings', 0, 2593, 7809.00, 'TO Jon Cooper');

-- --------------------------------------------------------

--
-- Table structure for table `passbook36`
--

CREATE TABLE `passbook36` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `acc_type` varchar(255) NOT NULL,
  `Deposit` int(10) DEFAULT NULL,
  `Withdraw` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook36`
--

INSERT INTO `passbook36` (`transactionid`, `transactiondate`, `name`, `branch`, `acc_type`, `Deposit`, `Withdraw`, `amount`, `narration`) VALUES
(1, '2018-01-09', 'Sheila Mayer', 'Wisconsin', 'savings', 95621, 0, 95621.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook37`
--

CREATE TABLE `passbook37` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `acc_type` varchar(255) NOT NULL,
  `Deposit` int(10) DEFAULT NULL,
  `Withdraw` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook37`
--

INSERT INTO `passbook37` (`transactionid`, `transactiondate`, `name`, `branch`, `acc_type`, `Deposit`, `Withdraw`, `amount`, `narration`) VALUES
(1, '2018-01-09', 'Ravi Gupta', 'Minnesota', 'savings', 9000, 0, 9000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook38`
--

CREATE TABLE `passbook38` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `acc_type` varchar(255) NOT NULL,
  `Deposit` int(10) DEFAULT NULL,
  `Withdraw` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook38`
--

INSERT INTO `passbook38` (`transactionid`, `transactiondate`, `name`, `branch`, `acc_type`, `Deposit`, `Withdraw`, `amount`, `narration`) VALUES
(1, '2018-01-09', 'Lisa Ray', 'North-Dakota', 'savings', 10000, 0, 10000.00, 'Account Open'),
(2, '2018-05-01', 'Lisa Ray', 'North-Dakota', 'savings', 11000, 0, 11000.00, 'BY Michael');

-- --------------------------------------------------------

--
-- Table structure for table `passbook39`
--

CREATE TABLE `passbook39` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `acc_type` varchar(255) NOT NULL,
  `Deposit` int(10) DEFAULT NULL,
  `Withdraw` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook39`
--

INSERT INTO `passbook39` (`transactionid`, `transactiondate`, `name`, `branch`, `acc_type`, `Deposit`, `Withdraw`, `amount`, `narration`) VALUES
(1, '2018-01-10', 'Pat Dillon', 'North-Dakota', 'savings', 1000, 0, 1000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook40`
--

CREATE TABLE `passbook40` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `acc_type` varchar(255) NOT NULL,
  `Deposit` float(10,2) NOT NULL,
  `Withdraw` float(10,2) NOT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook40`
--

INSERT INTO `passbook40` (`transactionid`, `transactiondate`, `name`, `branch`, `acc_type`, `Deposit`, `Withdraw`, `amount`, `narration`) VALUES
(1, '2018-01-11', 'John Lee', 'Minnesota', 'savings', 0.00, 0.00, 1000.00, 'Account Open'),
(7, '2018-02-07', 'John Lee', 'Minnesota', 'savings', 1000.00, 0.00, 3000.00, 'BY Yuna'),
(8, '2018-02-07', 'John Lee', 'Minnesota', 'savings', 5000.00, 0.00, 8000.00, 'BY Yuna'),
(9, '2018-05-01', 'John Lee', 'Minnesota', 'savings', 8500.00, 0.00, 8500.00, 'BY Yuna');

-- --------------------------------------------------------

--
-- Table structure for table `passbook41`
--

CREATE TABLE `passbook41` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `acc_type` varchar(255) NOT NULL,
  `credit` int(10) DEFAULT NULL,
  `debit` int(10) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook41`
--

INSERT INTO `passbook41` (`transactionid`, `transactiondate`, `name`, `branch`, `acc_type`, `credit`, `debit`, `amount`, `narration`) VALUES
(1, '2018-01-11', 'Sharie Cole', 'Wisconsin', 'savings', 1000, 0, 1000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook42`
--

CREATE TABLE `passbook42` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `acc_type` varchar(255) DEFAULT NULL,
  `Deposit` float(10,2) NOT NULL,
  `Withdraw` float(10,2) NOT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook42`
--

INSERT INTO `passbook42` (`transactionid`, `transactiondate`, `name`, `branch`, `acc_type`, `Deposit`, `Withdraw`, `amount`, `narration`) VALUES
(1, '2018-01-31', 'Yuna', 'Minnesota', 'savings', 0.00, 0.00, 10000.00, 'Account Open'),
(7, '2018-02-07', 'Yuna', 'Minnesota', 'savings', 0.00, 2000.00, 8000.00, 'TO John Lee'),
(8, '2018-02-07', 'Yuna', 'Minnesota', 'savings', 0.00, 5000.00, 3000.00, 'TO John Lee'),
(9, '2018-02-07', 'Yuna', 'Minnesota', 'savings', 8000.00, 0.00, 8000.00, 'BY Nicky'),
(10, '2018-05-01', 'Yuna', 'Minnesota', 'savings', 8500.00, 0.00, 8500.00, 'BY Nicky'),
(11, '2018-05-01', 'Yuna', 'Minnesota', 'savings', 0.00, 500.00, 8000.00, 'TO John Lee');

-- --------------------------------------------------------

--
-- Table structure for table `passbook43`
--

CREATE TABLE `passbook43` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `acc_type` varchar(255) NOT NULL,
  `Deposit` float(10,2) DEFAULT NULL,
  `Withdraw` float(10,2) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook43`
--

INSERT INTO `passbook43` (`transactionid`, `transactiondate`, `name`, `branch`, `acc_type`, `Deposit`, `Withdraw`, `amount`, `narration`) VALUES
(1, '2018-02-07', 'Nicky', 'Minnesota', 'checkings', 50000.00, 0.00, 50000.00, 'Account Open'),
(2, '2018-02-07', 'Nicky', 'Minnesota', 'checkings', 0.00, 5000.00, 45000.00, 'TO Yuna'),
(3, '2018-05-01', 'Nicky', 'Minnesota', 'checkings', 0.00, 500.00, 44500.00, 'TO Yuna');

-- --------------------------------------------------------

--
-- Table structure for table `passbook48`
--

CREATE TABLE `passbook48` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `Deposit` float(10,2) DEFAULT NULL,
  `Withdraw` float(10,2) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook48`
--

INSERT INTO `passbook48` (`transactionid`, `transactiondate`, `name`, `branch`, `account`, `Deposit`, `Withdraw`, `amount`, `narration`) VALUES
(1, '2018-02-07', 'fei', 'Minnesota', 'savings', 324324.00, 0.00, 324324.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook51`
--

CREATE TABLE `passbook51` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `Deposit` float(10,2) DEFAULT NULL,
  `Withdraw` float(10,2) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook51`
--

INSERT INTO `passbook51` (`transactionid`, `transactiondate`, `name`, `branch`, `account`, `Deposit`, `Withdraw`, `amount`, `narration`) VALUES
(1, '2018-02-25', '', '', '', 0.00, 0.00, 0.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook52`
--

CREATE TABLE `passbook52` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `Deposit` float(10,2) DEFAULT NULL,
  `Withdraw` float(10,2) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook52`
--

INSERT INTO `passbook52` (`transactionid`, `transactiondate`, `name`, `branch`, `account`, `Deposit`, `Withdraw`, `amount`, `narration`) VALUES
(1, '2018-05-01', 'Johnny Cage', 'Minnesota', 'checking', 80000.00, 0.00, 80000.00, 'Account Open');

-- --------------------------------------------------------

--
-- Table structure for table `passbook53`
--

CREATE TABLE `passbook53` (
  `transactionid` int(5) NOT NULL,
  `transactiondate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `Deposit` float(10,2) DEFAULT NULL,
  `Withdraw` float(10,2) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `narration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook53`
--

INSERT INTO `passbook53` (`transactionid`, `transactiondate`, `name`, `branch`, `account`, `Deposit`, `Withdraw`, `amount`, `narration`) VALUES
(1, '2018-05-01', 'Michael', 'Minnesota', 'savings', 100000.00, 0.00, 100000.00, 'Account Open'),
(2, '2018-05-01', 'Michael', 'Minnesota', 'savings', 0.00, 1000.00, 99000.00, 'TO Lisa Ray');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `doj` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(32) NOT NULL,
  `gender` char(1) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `dob`, `relationship`, `department`, `doj`, `address`, `mobile`, `email`, `pwd`, `gender`, `lastlogin`) VALUES
(2, 'Sam Cuban', '1998-08-21', 'unmarried', 'revenue', '2013-08-03', 'DakotaCity', '9635722546', 'SCuban@gmail.com', '125', 'M', '2018-05-01 04:48:31'),
(4, 'Ray Van', '1989-05-31', 'married', 'revenue', '2018-01-04', 'St.-Paul', '7845237865', 'RVan@gmail.com', '789', 'M', '2018-02-25 08:36:52'),
(5, 'Kai Leplant', '1980-04-21', 'married', 'revenue', '1991-01-01', 'Stillwater', '9876543210', 'KLeplant@gmail.com', 'kai', 'M', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`login_id`);

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cheque_book`
--
ALTER TABLE `cheque_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `passbook34`
--
ALTER TABLE `passbook34`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook35`
--
ALTER TABLE `passbook35`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook36`
--
ALTER TABLE `passbook36`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook37`
--
ALTER TABLE `passbook37`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook38`
--
ALTER TABLE `passbook38`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook39`
--
ALTER TABLE `passbook39`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook40`
--
ALTER TABLE `passbook40`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook41`
--
ALTER TABLE `passbook41`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook42`
--
ALTER TABLE `passbook42`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook43`
--
ALTER TABLE `passbook43`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook48`
--
ALTER TABLE `passbook48`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook51`
--
ALTER TABLE `passbook51`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook52`
--
ALTER TABLE `passbook52`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `passbook53`
--
ALTER TABLE `passbook53`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `cheque_book`
--
ALTER TABLE `cheque_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `passbook34`
--
ALTER TABLE `passbook34`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `passbook35`
--
ALTER TABLE `passbook35`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `passbook36`
--
ALTER TABLE `passbook36`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbook37`
--
ALTER TABLE `passbook37`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbook38`
--
ALTER TABLE `passbook38`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook39`
--
ALTER TABLE `passbook39`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbook40`
--
ALTER TABLE `passbook40`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `passbook41`
--
ALTER TABLE `passbook41`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbook42`
--
ALTER TABLE `passbook42`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `passbook43`
--
ALTER TABLE `passbook43`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `passbook48`
--
ALTER TABLE `passbook48`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbook51`
--
ALTER TABLE `passbook51`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbook52`
--
ALTER TABLE `passbook52`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbook53`
--
ALTER TABLE `passbook53`
  MODIFY `transactionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
