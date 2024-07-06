-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql
-- 生成日時: 2024 年 7 月 05 日 13:04
-- サーバのバージョン： 8.0.25
-- PHP のバージョン: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `reserve`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `reserve`
--

CREATE TABLE `reserve` (
  `id` int NOT NULL,
  `reserve_date` date NOT NULL,
  `reserve_time` time NOT NULL,
  `reserve_num` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_bin NOT NULL,
  `tel` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `reserve`
--

INSERT INTO `reserve` (`id`, `reserve_date`, `reserve_time`, `reserve_num`, `name`, `email`, `tel`, `comment`) VALUES
(1, '2024-06-01', '12:00:00', 1, 'shimei', 'test@gmail.com', '000-0000-0000', 'bikou'),
(2, '2024-06-01', '12:00:00', 1, 'aaaaa', 'test@gmail.com', '000-0000-0000', 'bikou'),
(3, '2024-06-01', '12:00:00', 1, 'aaaaa', 'mnbk21@gmail.com', '000-0000-0000', 'bikou'),
(4, '2024-06-03', '14:00:00', 3, 'bbbbb', 'test@gmail.com', '000-0000-0000', 'bikoutest'),
(5, '2024-06-02', '13:00:00', 2, 'bbbbb', 'test@gmail.com', '000-0000-0000', 'bikoutest'),
(6, '2024-06-02', '13:00:00', 2, 'bbbbb', 'test@gmail.com', '000-0000-0000', 'bikoutest'),
(7, '2022-06-03', '14:00:00', 3, 'test0704', 'test@gmail.com', '000-0000-0000', 'bikou0704'),
(8, '2024-07-05', '12:00:00', 5, '', '', '', NULL),
(9, '2024-07-05', '12:00:00', 2, '', '', '', NULL),
(10, '2024-07-05', '12:00:00', 1, '', '', '', NULL),
(11, '2024-07-05', '15:00:00', 3, 'aaaaa', 'test@gmail.com', '000-0000-0000', 'bikou'),
(12, '2024-07-05', '21:00:00', 9, 'aaaaa', 'test@gmail.com', '000-0000-0000', ''),
(13, '2024-07-05', '19:00:00', 10, 'aaaaa', 'test@gmail.com', '000-0000-0000', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `shop`
--

CREATE TABLE `shop` (
  `id` int NOT NULL,
  `login_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `login_password` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `reservable_date` int NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `max_reserve_num` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `shop`
--

INSERT INTO `shop` (`id`, `login_id`, `login_password`, `reservable_date`, `start_time`, `end_time`, `max_reserve_num`) VALUES
(1, 'admin', 'password', 10, '10:00:00', '22:00:00', 10);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `id` (`id`,`login_id`,`login_password`,`reservable_date`,`start_time`,`end_time`,`max_reserve_num`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `reserve`
--
ALTER TABLE `reserve`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- テーブルの AUTO_INCREMENT `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
