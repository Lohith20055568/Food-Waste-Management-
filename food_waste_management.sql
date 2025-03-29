-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2024 at 06:57 PM
-- Server version: 8.0.40-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_waste_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category'
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`) VALUES
(1, 'Homemade Food', 'Homemade Food'),
(2, 'Hotel Food', 'Hotel Food'),
(3, 'Event Food', 'Event Food');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1yszxy97tw2qhvxtkfzcipmqmxg5901o', 'OTJjZGRkY2E5ZjhhZDYwOTczNTQxZDlkNTJhNTYzNGY5ZDRjMDgwMjp7InVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfbmFtZSI6IkFtaXQgS3VtYXIifQ==', '2018-01-26 07:59:01'),
('7ks0ebm8w26vswny9c0wfojyd5asv43i', 'NDE1ODNmMjY1ZjNlZDA2Y2ExYzc1ZGU5NWEyNGEzN2IzMWY2OGVjYTp7Im9yZGVyX2lkIjoiMCIsImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2019-05-25 15:49:49'),
('9bgzvan3fd73sdzjqy4fy90dxwzgmltg', 'MDZiNTU1MGVjZDFkNDliNDc3ZWY1OGExZDgwOTk5MWFkYTZjZmE3NDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2018-01-29 14:09:38'),
('c7f2yysow67qjgtrgzabr8rx8eyvdnji', 'MDZiNTU1MGVjZDFkNDliNDc3ZWY1OGExZDgwOTk5MWFkYTZjZmE3NDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2018-01-29 14:19:42'),
('db4qnhkrby4ss6022wl24nin1wbwucs5', 'YjQ3ZWE3MWQ2YTMwNjc4MWE0NTQzNmI0ZTk0MWUxNTE0MWQwMWQ4ZDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9sZXZlbF9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2UsIm9yZGVyX2lkIjoiMCJ9', '2024-11-30 15:22:07'),
('ebqsosvupih3d6rfcy220w6eeoopoqt8', 'NDE1ODNmMjY1ZjNlZDA2Y2ExYzc1ZGU5NWEyNGEzN2IzMWY2OGVjYTp7Im9yZGVyX2lkIjoiMCIsImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2018-02-21 10:22:08'),
('f3ks71d68jf22wrv1b22elvrcibnmb1o', '.eJyrVkosLclIzSvJTE4sSU1RsiopKk3VUSotTi2KzwRyDQ2hnJzUstQcsJARVCQvMTdVyUrJMTcxT8G7NDexSKkWAEgVGxk:1tHSea:Aen55rwgzf0FMPolb1lvQ9LQ0-9npgD9En4s1OG_igQ', '2024-12-14 18:57:17'),
('f7vkj1ssawqqjkp470wbgzmqf8pnpuun', 'NDE1ODNmMjY1ZjNlZDA2Y2ExYzc1ZGU5NWEyNGEzN2IzMWY2OGVjYTp7Im9yZGVyX2lkIjoiMCIsImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2019-05-29 17:53:16'),
('j1unuxzc2z846m0r1xmkioa3xd63spfg', 'ODFkZmU0YjE3MzI5ODQ5NzQyNzc4Nzc0ODNjZjlkYTlhZWEwMmMxOTp7InVzZXJfaWQiOjI1LCJ1c2VyX2xldmVsX2lkIjoyLCJhdXRoZW50aWNhdGVkIjp0cnVlLCJ1c2VyX25hbWUiOiJLYXVzaGFsIEtpc2hvcmUifQ==', '2018-02-21 09:19:01'),
('pm9ifc6usfn38cwfcpuget8cu0g48c3k', 'OTJjZGRkY2E5ZjhhZDYwOTczNTQxZDlkNTJhNTYzNGY5ZDRjMDgwMjp7InVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfbmFtZSI6IkFtaXQgS3VtYXIifQ==', '2018-01-29 13:36:24'),
('qi4jui1wag7y5kjd3nal07b1h2jlc9ia', 'OTJjZGRkY2E5ZjhhZDYwOTczNTQxZDlkNTJhNTYzNGY5ZDRjMDgwMjp7InVzZXJfaWQiOjgsInVzZXJfbGV2ZWxfaWQiOjEsImF1dGhlbnRpY2F0ZWQiOnRydWUsInVzZXJfbmFtZSI6IkFtaXQgS3VtYXIifQ==', '2017-07-21 11:40:27'),
('tfndahzufxmpyuy7ko8x3nqp08spjwx5', 'YjQ3ZWE3MWQ2YTMwNjc4MWE0NTQzNmI0ZTk0MWUxNTE0MWQwMWQ4ZDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9sZXZlbF9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2UsIm9yZGVyX2lkIjoiMCJ9', '2019-06-24 13:33:15'),
('tjhdszyxzknx5an198ov6d1auinom0lj', 'MDZiNTU1MGVjZDFkNDliNDc3ZWY1OGExZDgwOTk5MWFkYTZjZmE3NDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2019-07-03 09:59:27'),
('vhvspuaom6ewud0zx7o3h3r60xxm32w2', 'YjQ3ZWE3MWQ2YTMwNjc4MWE0NTQzNmI0ZTk0MWUxNTE0MWQwMWQ4ZDp7ImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9sZXZlbF9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2UsIm9yZGVyX2lkIjoiMCJ9', '2019-06-24 13:49:12'),
('xqitzy5mm8bz740ja8unqi2yzmdyj7ed', 'MDMwNWRjNWZmMGI3MjYyOWE1ZDI2YjE1NWEzMjg3OWVkYzM3MjEwNDp7Im9yZGVyX2lkIjozNCwiYXV0aGVudGljYXRlZCI6ZmFsc2UsInVzZXJfbGV2ZWxfaWQiOmZhbHNlLCJ1c2VyX2lkIjpmYWxzZSwidXNlcl9uYW1lIjpmYWxzZX0=', '2018-02-20 13:24:04'),
('z5d6c71xih0dy9nuavixpex53jeoel3v', 'NDE1ODNmMjY1ZjNlZDA2Y2ExYzc1ZGU5NWEyNGEzN2IzMWY2OGVjYTp7Im9yZGVyX2lkIjoiMCIsImF1dGhlbnRpY2F0ZWQiOmZhbHNlLCJ1c2VyX2xldmVsX2lkIjpmYWxzZSwidXNlcl9pZCI6ZmFsc2UsInVzZXJfbmFtZSI6ZmFsc2V9', '2019-07-06 18:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int NOT NULL,
  `food_user_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `food_contact_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `food_mobile` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `food_prepared_date` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `food_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `food_category` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `food_expiry_date` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `food_quantity` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `food_pickup_address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `food_city` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `food_state` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `food_image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `food_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `food_user_id`, `food_contact_name`, `food_mobile`, `food_prepared_date`, `food_type`, `food_category`, `food_expiry_date`, `food_quantity`, `food_pickup_address`, `food_city`, `food_state`, `food_image`, `food_description`) VALUES
(1, '11', 'Kaushal Kishore', '9876565434', '2024-11-19', '1', '1', '2024-11-29', '50', 'Flat No : 162\r\nSector 88\r\nGurgaon', 'Gurgaon', 'Haryana', '/uploads/f1.jpg', 'A food bank is a non-profit, charitable organization that distributes food to those who have difficulty purchasing enough to avoid hunger, usually through intermediaries like food pantries and soup kitchens. Some food banks distribute food directly with their food pantries. St. Mary\'s Food Bank was the world\'s first food bank, established in the US in 1967. Since then, many thousands have been set up all over the world. In Europe, their numbers grew rapidly after the global increase in the price of food which began in late 2006, and especially after the financial crisis of 2007–2008 began to worsen economic conditions for those on low incomes. Likewise, the inflation and economic crisis of the 2020s has exponentially driven low and even some middle income class consumers to at least partially get their food.'),
(2, '11', 'Kaushal Kishore', '9876565434', '2024-11-14', '3', '1', '2024-11-22', '50', 'Flat No : 162\r\nSector 88\r\nGurgaon', 'Gurgaon', 'Haryana', '/uploads/f2.jpg', 'A food bank is a non-profit, charitable organization that distributes food to those who have difficulty purchasing enough to avoid hunger, usually through intermediaries like food pantries and soup kitchens. Some food banks distribute food directly with their food pantries. St. Mary\'s Food Bank was the world\'s first food bank, established in the US in 1967. Since then, many thousands have been set up all over the world. In Europe, their numbers grew rapidly after the global increase in the price of food which began in late 2006, and especially after the financial crisis of 2007–2008 began to worsen economic conditions for those on low incomes. Likewise, the inflation and economic crisis of the 2020s has exponentially driven low and even some middle income class consumers to at least partially get their food.'),
(3, '11', 'Kaushal Kishore', '9876565434', '2024-11-14', '1', '', '2024-11-22', '50', 'Flat No : 162\r\nSector 88\r\nGurgaon', 'Gurgaon', 'Haryana', '/uploads/f3.jpg', 'A food bank is a non-profit, charitable organization that distributes food to those who have difficulty purchasing enough to avoid hunger, usually through intermediaries like food pantries and soup kitchens. Some food banks distribute food directly with their food pantries. St. Mary\'s Food Bank was the world\'s first food bank, established in the US in 1967. Since then, many thousands have been set up all over the world. In Europe, their numbers grew rapidly after the global increase in the price of food which began in late 2006, and especially after the financial crisis of 2007–2008 began to worsen economic conditions for those on low incomes. Likewise, the inflation and economic crisis of the 2020s has exponentially driven low and even some middle income class consumers to at least partially get their food.'),
(4, '11', 'Kaushal Kishore', '9876565434', '2024-11-14', '1', '2', '2024-11-22', '50', 'Flat No : 162\r\nSector 88\r\nGurgaon', 'Gurgaon', 'Haryana', '/uploads/f4.jpg', 'A food bank is a non-profit, charitable organization that distributes food to those who have difficulty purchasing enough to avoid hunger, usually through intermediaries like food pantries and soup kitchens. Some food banks distribute food directly with their food pantries. St. Mary\'s Food Bank was the world\'s first food bank, established in the US in 1967. Since then, many thousands have been set up all over the world. In Europe, their numbers grew rapidly after the global increase in the price of food which began in late 2006, and especially after the financial crisis of 2007–2008 began to worsen economic conditions for those on low incomes. Likewise, the inflation and economic crisis of the 2020s has exponentially driven low and even some middle income class consumers to at least partially get their food.'),
(5, '11', 'Kaushal Kishore', '9876565434', '2024-11-14', '1', '2', '2024-11-22', '50', 'Flat No : 162\r\nSector 88\r\nGurgaon', 'Gurgaon', 'Haryana', '/uploads/f5.jpg', 'A food bank is a non-profit, charitable organization that distributes food to those who have difficulty purchasing enough to avoid hunger, usually through intermediaries like food pantries and soup kitchens. Some food banks distribute food directly with their food pantries. St. Mary\'s Food Bank was the world\'s first food bank, established in the US in 1967. Since then, many thousands have been set up all over the world. In Europe, their numbers grew rapidly after the global increase in the price of food which began in late 2006, and especially after the financial crisis of 2007–2008 began to worsen economic conditions for those on low incomes. Likewise, the inflation and economic crisis of the 2020s has exponentially driven low and even some middle income class consumers to at least partially get their food.'),
(6, '11', 'Kaushal Kishore', '9876565434', '2024-11-14', '1', '3', '2024-11-22', '50', 'Flat No : 162\r\nSector 88\r\nGurgaon', 'Gurgaon', 'Haryana', '/uploads/f6.webp', 'A food bank is a non-profit, charitable organization that distributes food to those who have difficulty purchasing enough to avoid hunger, usually through intermediaries like food pantries and soup kitchens. Some food banks distribute food directly with their food pantries. St. Mary\'s Food Bank was the world\'s first food bank, established in the US in 1967. Since then, many thousands have been set up all over the world. In Europe, their numbers grew rapidly after the global increase in the price of food which began in late 2006, and especially after the financial crisis of 2007–2008 began to worsen economic conditions for those on low incomes. Likewise, the inflation and economic crisis of the 2020s has exponentially driven low and even some middle income class consumers to at least partially get their food.'),
(7, '11', 'Kaushal Kishore', '9876565434', '2024-11-14', '1', '1', '2024-11-22', '50', 'Flat No : 162\r\nSector 88\r\nGurgaon', 'Gurgaon', 'Haryana', '/uploads/f5.jpg', 'A food bank is a non-profit, charitable organization that distributes food to those who have difficulty purchasing enough to avoid hunger, usually through intermediaries like food pantries and soup kitchens. Some food banks distribute food directly with their food pantries. St. Mary\'s Food Bank was the world\'s first food bank, established in the US in 1967. Since then, many thousands have been set up all over the world. In Europe, their numbers grew rapidly after the global increase in the price of food which began in late 2006, and especially after the financial crisis of 2007–2008 began to worsen economic conditions for those on low incomes. Likewise, the inflation and economic crisis of the 2020s has exponentially driven low and even some middle income class consumers to at least partially get their food.'),
(8, '11', 'Kaushal Kishore', '9876565434', '2024-11-14', '1', '2', '2024-11-22', '50', 'Flat No : 162\r\nSector 88\r\nGurgaon', 'Gurgaon', 'Haryana', '/uploads/f6.webp', 'A food bank is a non-profit, charitable organization that distributes food to those who have difficulty purchasing enough to avoid hunger, usually through intermediaries like food pantries and soup kitchens. Some food banks distribute food directly with their food pantries. St. Mary\'s Food Bank was the world\'s first food bank, established in the US in 1967. Since then, many thousands have been set up all over the world. In Europe, their numbers grew rapidly after the global increase in the price of food which began in late 2006, and especially after the financial crisis of 2007–2008 began to worsen economic conditions for those on low incomes. Likewise, the inflation and economic crisis of the 2020s has exponentially driven low and even some middle income class consumers to at least partially get their food.'),
(9, '11', 'Kaushal Kishore', '9876565434', '2024-11-14', '1', '3', '2024-11-22', '50', 'Flat No : 162\r\nSector 88\r\nGurgaon', 'Gurgaon', 'Haryana', '/uploads/f7.webp', 'A food bank is a non-profit, charitable organization that distributes food to those who have difficulty purchasing enough to avoid hunger, usually through intermediaries like food pantries and soup kitchens. Some food banks distribute food directly with their food pantries. St. Mary\'s Food Bank was the world\'s first food bank, established in the US in 1967. Since then, many thousands have been set up all over the world. In Europe, their numbers grew rapidly after the global increase in the price of food which began in late 2006, and especially after the financial crisis of 2007–2008 began to worsen economic conditions for those on low incomes. Likewise, the inflation and economic crisis of the 2020s has exponentially driven low and even some middle income class consumers to at least partially get their food.'),
(10, '11', 'Kaushal Kishore', '9876565434', '2024-11-14', '1', '1', '2024-11-22', '50', 'Flat No : 162\r\nSector 88\r\nGurgaon', 'Gurgaon', 'Haryana', '/uploads/f8.webp', 'A food bank is a non-profit, charitable organization that distributes food to those who have difficulty purchasing enough to avoid hunger, usually through intermediaries like food pantries and soup kitchens. Some food banks distribute food directly with their food pantries. St. Mary\'s Food Bank was the world\'s first food bank, established in the US in 1967. Since then, many thousands have been set up all over the world. In Europe, their numbers grew rapidly after the global increase in the price of food which began in late 2006, and especially after the financial crisis of 2007–2008 began to worsen economic conditions for those on low incomes. Likewise, the inflation and economic crisis of the 2020s has exponentially driven low and even some middle income class consumers to at least partially get their food.');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `requests_id` int NOT NULL,
  `requests_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `requests_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `requests_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `requests_contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `requests_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `requests_quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `requests_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`requests_id`, `requests_user_id`, `requests_name`, `requests_email`, `requests_contact`, `requests_address`, `requests_quantity`, `requests_description`) VALUES
(2, '11', 'Rahul Kumar', 'rahul@gmail.com', '9876543432', 'Jai Hotel\r\nSector 12\r\nGurgaon\r\nHaryana', '20', 'The growth of food banks has been welcomed by commentators who see them as examples of active, caring citizenship. Other academics and commentators have expressed concern that the rise of food banks may erode political support for welfare provision. Researchers have reported that in some cases food banks can be inefficient compared with state-run welfare.\r\n\r\n'),
(3, '11', 'Amit Kumar', 'amit@gmail.com', '9876543432', 'Jai Hotel\r\nSector 12\r\nGurgaon\r\nHaryana', '40', 'The growth of food banks has been welcomed by commentators who see them as examples of active, caring citizenship. Other academics and commentators have expressed concern that the rise of food banks may erode political support for welfare provision. Researchers have reported that in some cases food banks can be inefficient compared with state-run welfare.\r\n\r\n'),
(4, '11', 'Sumit Kumar', 'sumit@gmail.com', '9876543432', 'Jai Hotel\r\nSector 12\r\nGurgaon\r\nHaryana', '43', 'The growth of food banks has been welcomed by commentators who see them as examples of active, caring citizenship. Other academics and commentators have expressed concern that the rise of food banks may erode political support for welfare provision. Researchers have reported that in some cases food banks can be inefficient compared with state-run welfare.\r\n\r\n'),
(5, '11', 'Sunil Kumar', 'sunil@gmail.com', '9876543432', 'Jai Hotel\r\nSector 12\r\nGurgaon\r\nHaryana', '34', 'The growth of food banks has been welcomed by commentators who see them as examples of active, caring citizenship. Other academics and commentators have expressed concern that the rise of food banks may erode political support for welfare provision. Researchers have reported that in some cases food banks can be inefficient compared with state-run welfare.\r\n\r\n'),
(6, '11', 'Aman Kumar', 'aman@gmail.com', '9876543432', 'Jai Hotel\r\nSector 12\r\nGurgaon\r\nHaryana', '29', 'The growth of food banks has been welcomed by commentators who see them as examples of active, caring citizenship. Other academics and commentators have expressed concern that the rise of food banks may erode political support for welfare provision. Researchers have reported that in some cases food banks can be inefficient compared with state-run welfare.\r\n\r\n'),
(7, '11', 'Raman Kumar', 'raman@gmail.com', '9876543432', 'Jai Hotel\r\nSector 12\r\nGurgaon\r\nHaryana', '32', 'The growth of food banks has been welcomed by commentators who see them as examples of active, caring citizenship. Other academics and commentators have expressed concern that the rise of food banks may erode political support for welfare provision. Researchers have reported that in some cases food banks can be inefficient compared with state-run welfare.\r\n\r\n'),
(8, '11', 'Pawan Kumar', 'pawan@gmail.com', '9876543432', 'Jai Hotel\r\nSector 12\r\nGurgaon\r\nHaryana', '19', 'The growth of food banks has been welcomed by commentators who see them as examples of active, caring citizenship. Other academics and commentators have expressed concern that the rise of food banks may erode political support for welfare provision. Researchers have reported that in some cases food banks can be inefficient compared with state-run welfare.\r\n\r\n'),
(9, '11', 'Jitin Kumar', 'jitin@gmail.com', '9876543432', 'Jai Hotel\r\nSector 12\r\nGurgaon\r\nHaryana', '56', 'The growth of food banks has been welcomed by commentators who see them as examples of active, caring citizenship. Other academics and commentators have expressed concern that the rise of food banks may erode political support for welfare provision. Researchers have reported that in some cases food banks can be inefficient compared with state-run welfare.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `type_description`) VALUES
(1, 'Vegiterian', 'Vegiterian'),
(2, 'Non-Vegiterian', 'Non-Vegiterian'),
(3, 'Jain Food', 'Jain Food');

-- --------------------------------------------------------

--
-- Table structure for table `users_city`
--

CREATE TABLE `users_city` (
  `city_id` int NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_city`
--

INSERT INTO `users_city` (`city_id`, `city_name`) VALUES
(1, 'Allahabad'),
(2, 'Varanasi');

-- --------------------------------------------------------

--
-- Table structure for table `users_country`
--

CREATE TABLE `users_country` (
  `country_id` int NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_country`
--

INSERT INTO `users_country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `role_id` int NOT NULL,
  `role_title` varchar(255) NOT NULL,
  `role_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`role_id`, `role_title`, `role_description`) VALUES
(1, 'System Admin', 'Admin Roles and Permissions'),
(2, 'Normal User', 'Users Roles and Permissions'),
(3, 'Doctor', 'Doctors User Permission and Role'),
(4, 'Patient', 'Patient User Permission and Role');

-- --------------------------------------------------------

--
-- Table structure for table `users_state`
--

CREATE TABLE `users_state` (
  `state_id` int NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_state`
--

INSERT INTO `users_state` (`state_id`, `state_name`) VALUES
(1, 'UttarnPradesh'),
(2, 'Madhya Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `users_user`
--

CREATE TABLE `users_user` (
  `user_id` int NOT NULL,
  `user_level_id` int NOT NULL DEFAULT '2',
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_add1` varchar(255) NOT NULL,
  `user_add2` varchar(255) NOT NULL,
  `user_city` int NOT NULL,
  `user_state` int NOT NULL,
  `user_country` int NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_gender` varchar(255) NOT NULL,
  `user_dob` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_user`
--

INSERT INTO `users_user` (`user_id`, `user_level_id`, `user_username`, `user_password`, `user_name`, `user_add1`, `user_add2`, `user_city`, `user_state`, `user_country`, `user_email`, `user_mobile`, `user_gender`, `user_dob`, `user_image`) VALUES
(11, 2, 'customer', 'test', 'Aman Kumar', 'House No : 355, Sector 23', 'Noida', 1, 2, 1, 'aman@gmail.com', '987654321', 'Male', '18 January,1968', '/uploads/p3.jpg'),
(14, 2, 'kaushal', 'test', 'Pawan Kumar', 'House No : 355, Sector 23', 'Noida', 1, 1, 2, 'pawan@gmail.com', '987654321', 'Male', '18 January,1968', '/uploads/p5.jpg'),
(15, 2, 'hjghjg', 'j', 'asdfasdf', '786', '', 1, 1, 2, 'hjgjhghgjh', '867876', 'Male', '876', '/uploads/Screenshot%20from%202024-11-30%2019-18-55.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`requests_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `users_city`
--
ALTER TABLE `users_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `users_country`
--
ALTER TABLE `users_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users_state`
--
ALTER TABLE `users_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `users_user`
--
ALTER TABLE `users_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `requests_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_city`
--
ALTER TABLE `users_city`
  MODIFY `city_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_country`
--
ALTER TABLE `users_country`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `role_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_state`
--
ALTER TABLE `users_state`
  MODIFY `state_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_user`
--
ALTER TABLE `users_user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
