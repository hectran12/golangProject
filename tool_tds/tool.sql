-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 26, 2024 lúc 06:05 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tool`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info_tool`
--

CREATE TABLE `info_tool` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `info_tool`
--

INSERT INTO `info_tool` (`id`, `name`, `value`) VALUES
(1, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(2, 'idfb', '100092513394742'),
(3, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(4, 'idfb', '100092513394742'),
(5, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(6, 'idfb', '100092513394742'),
(7, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(8, 'idfb', '100092513394742'),
(9, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(10, 'idfb', '100092513394742'),
(11, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(12, 'idfb', '100092513394742'),
(13, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(14, 'idfb', '100092513394742'),
(15, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(16, 'idfb', '100092513394742'),
(17, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(18, 'idfb', '100092513394742'),
(19, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(20, 'idfb', '100092513394742'),
(21, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(22, 'idfb', '100092513394742'),
(23, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(24, 'idfb', '100092513394742'),
(25, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(26, 'idfb', '100092513394742'),
(27, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(28, 'idfb', '100092513394742'),
(29, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(30, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(31, 'idfb', '100092513394742'),
(32, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(33, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(34, 'idfb', '100092513394742'),
(35, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(36, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(37, 'idfb', '100092513394742'),
(38, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(39, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(40, 'idfb', '100092513394742'),
(41, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(42, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(43, 'idfb', '100092513394742'),
(44, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(45, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(46, 'idfb', '100092513394742'),
(47, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(48, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(49, 'idfb', '100092513394742'),
(50, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(51, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(52, 'idfb', '100092513394742'),
(53, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(54, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(55, 'idfb', '100092513394742'),
(56, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(57, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(58, 'idfb', '100092513394742'),
(59, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(60, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(61, 'idfb', '100092513394742'),
(62, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(63, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(64, 'idfb', '100092513394742'),
(65, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(66, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(67, 'idfb', '100092513394742'),
(68, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(69, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(70, 'idfb', '100092513394742'),
(71, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(72, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(73, 'idfb', '100092513394742'),
(74, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(75, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(76, 'idfb', '100092513394742'),
(77, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(78, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(79, 'idfb', '100092513394742'),
(80, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(81, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(82, 'idfb', '100092513394742'),
(83, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(84, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(85, 'idfb', '100092513394742'),
(86, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(87, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(88, 'idfb', '100092513394742'),
(89, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(90, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(91, 'idfb', '100092513394742'),
(92, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(93, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(94, 'idfb', '100092513394742'),
(95, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(96, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(97, 'idfb', '100092513394742'),
(98, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(99, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(100, 'idfb', '100092513394742'),
(101, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(102, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(103, 'idfb', '100092513394742'),
(104, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(105, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(106, 'idfb', '100092513394742'),
(107, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(108, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(109, 'idfb', '100092513394742'),
(110, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(111, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(112, 'idfb', '100092513394742'),
(113, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(114, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(115, 'idfb', '100092513394742'),
(116, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(117, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(118, 'idfb', '100092513394742'),
(119, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(120, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(121, 'idfb', '100092513394742'),
(122, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(123, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(124, 'idfb', '100092513394742'),
(125, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(126, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(127, 'idfb', '100092513394742'),
(128, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(129, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(130, 'idfb', '100092513394742'),
(131, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(132, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(133, 'idfb', '100092513394742'),
(134, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(135, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(136, 'idfb', '100092513394742'),
(137, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(138, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(139, 'idfb', '100092513394742'),
(140, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(141, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(142, 'idfb', '100092513394742'),
(143, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(144, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(145, 'idfb', '100092513394742'),
(146, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(147, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(148, 'idfb', '100092513394742'),
(149, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(150, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(151, 'idfb', '100092513394742'),
(152, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(153, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(154, 'idfb', '100092513394742'),
(155, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(156, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(157, 'idfb', '100092513394742'),
(158, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(159, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(160, 'idfb', '100092513394742'),
(161, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(162, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(163, 'idfb', '100092513394742'),
(164, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(165, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(166, 'idfb', '100092513394742'),
(167, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(168, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(169, 'idfb', '100083152343235'),
(170, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(171, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(172, 'idfb', '100083152343235'),
(173, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(174, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(175, 'idfb', '100083152343235'),
(176, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(177, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(178, 'idfb', '100083152343235'),
(179, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(180, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(181, 'idfb', '100083152343235'),
(182, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(183, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(184, 'idfb', '100083152343235'),
(185, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(186, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(187, 'idfb', '100083152343235'),
(188, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(189, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(190, 'idfb', '100083152343235'),
(191, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(192, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(193, 'idfb', '100083152343235'),
(194, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(195, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(196, 'idfb', '100083152343235'),
(197, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(198, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(199, 'idfb', '100083152343235'),
(200, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(201, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(202, 'idfb', '100083152343235'),
(203, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u'),
(204, 'apikey', 'TDSQfikjclZXZzJiOiIXZ2V2ciwiIpZzblBzY61WMiojIyV2c1Jye'),
(205, 'idfb', '100083152343235'),
(206, 'cookie_fb', 'sb=fK2jZnZuilETudqbwynQiSdW;datr=fK2jZo4TH4Md_kn3jXMrln7U;c_user=100083152343235;xs=40%3A81LLIsTsUj2eGQ%3A2%3A1722002826%3A-1%3A6296;fr=0Mpwwc8MUyRcwyfGQ.AWVygflWRWdGE-KUh3fRF0ZvbnY.Bmo618..AAA.0.0.Bmo62M.AWUyli8m6IE;presence=C%7B%22t3%22%3A%5B%5D%2C%22u');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `info_tool`
--
ALTER TABLE `info_tool`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `info_tool`
--
ALTER TABLE `info_tool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
