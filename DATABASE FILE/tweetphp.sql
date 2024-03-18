-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2022 at 04:25 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tweetphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(140) COLLATE utf16_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user_id`, `post_id`, `time`) VALUES
(44, 'This is GREAT', 25, 574, '2021-05-01 02:21:10'),
(45, 'This is great!', 59, 730, '2022-01-13 12:21:18'),
(46, 'here\'s a comment', 59, 735, '2022-01-13 12:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id`, `follower_id`, `following_id`, `time`) VALUES
(15, 40, 2, '2021-04-19 18:30:06'),
(16, 33, 2, '2021-04-19 18:30:56'),
(41, 37, 2, '2021-04-20 20:19:49'),
(43, 5, 2, '2021-04-20 20:20:32'),
(44, 27, 2, '2021-04-20 20:21:18'),
(45, 34, 2, '2021-04-20 20:22:07'),
(90, 41, 2, '2021-04-25 18:20:22'),
(94, 25, 27, '2021-04-27 07:07:27'),
(98, 42, 2, '2021-04-29 06:30:41'),
(99, 43, 2, '2021-04-29 06:32:50'),
(100, 44, 2, '2021-04-29 18:17:25'),
(101, 2, 25, '2021-04-30 02:16:24'),
(102, 25, 2, '2021-04-30 22:56:21'),
(120, 54, 2, '2021-05-01 06:57:13'),
(121, 55, 2, '2021-05-12 16:18:45'),
(126, 56, 2, '2021-05-12 16:35:31'),
(128, 57, 2, '2021-05-12 18:23:30'),
(129, 58, 2, '2021-05-13 14:52:58'),
(136, 59, 2, '2022-01-11 16:44:36'),
(137, 59, 58, '2022-01-11 17:09:51'),
(138, 58, 59, '2022-01-11 17:56:06'),
(139, 40, 55, '2022-01-12 16:50:18'),
(140, 40, 57, '2022-01-12 16:50:20'),
(141, 40, 58, '2022-01-12 16:50:23'),
(142, 40, 25, '2022-01-12 16:51:12'),
(143, 2, 59, '2022-01-12 17:03:06'),
(144, 2, 41, '2022-01-12 17:03:11'),
(145, 2, 44, '2022-01-12 17:03:20'),
(146, 2, 57, '2022-01-12 17:03:27'),
(147, 2, 58, '2022-01-12 17:03:32'),
(148, 5, 59, '2022-01-12 17:04:27'),
(149, 25, 59, '2022-01-12 17:04:41'),
(150, 27, 59, '2022-01-12 17:05:25'),
(151, 33, 59, '2022-01-12 17:05:49'),
(152, 34, 59, '2022-01-12 17:06:04'),
(153, 37, 59, '2022-01-12 17:06:20'),
(154, 40, 59, '2022-01-12 17:06:35'),
(155, 41, 59, '2022-01-12 17:06:50'),
(156, 42, 59, '2022-01-12 17:07:08'),
(157, 43, 59, '2022-01-12 17:07:23'),
(158, 44, 59, '2022-01-12 17:07:38'),
(159, 58, 25, '2022-01-12 17:49:11'),
(160, 59, 25, '2022-01-12 17:52:22'),
(161, 33, 25, '2022-01-12 17:55:36'),
(162, 59, 55, '2022-01-12 17:58:45'),
(163, 2, 55, '2022-01-12 18:01:46'),
(164, 42, 55, '2022-01-12 18:02:22'),
(165, 54, 59, '2022-01-12 18:02:43'),
(166, 54, 55, '2022-01-12 18:02:57'),
(167, 54, 25, '2022-01-12 18:02:58'),
(168, 54, 58, '2022-01-12 18:02:59'),
(169, 57, 58, '2022-01-12 18:03:33'),
(170, 57, 55, '2022-01-12 18:03:37'),
(171, 59, 40, '2022-01-12 18:06:25'),
(172, 5, 40, '2022-01-13 09:05:05'),
(173, 25, 40, '2022-01-13 09:05:46'),
(174, 27, 40, '2022-01-13 09:06:00'),
(175, 33, 40, '2022-01-13 09:06:32'),
(176, 34, 40, '2022-01-13 09:06:56'),
(177, 37, 40, '2022-01-13 09:07:10'),
(178, 42, 40, '2022-01-13 09:08:27'),
(179, 43, 40, '2022-01-13 09:08:38'),
(180, 60, 2, '2022-01-13 09:17:44'),
(182, 60, 58, '2022-01-13 09:20:32'),
(183, 60, 56, '2022-01-13 09:20:34'),
(184, 60, 25, '2022-01-13 09:20:38'),
(185, 60, 41, '2022-01-13 09:20:43'),
(186, 60, 5, '2022-01-13 09:20:47'),
(187, 59, 60, '2022-01-13 12:23:12'),
(188, 60, 59, '2022-01-13 12:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(192, 2, 362),
(209, 25, 573),
(211, 2, 573),
(214, 2, 574),
(227, 2, 711),
(231, 58, 726),
(233, 27, 726),
(234, 33, 726),
(235, 34, 726),
(236, 37, 726),
(237, 40, 726),
(238, 41, 726),
(239, 42, 726),
(240, 43, 726),
(241, 44, 726),
(242, 2, 726),
(243, 25, 726),
(245, 25, 654),
(246, 25, 574),
(247, 25, 362),
(248, 58, 654),
(249, 58, 574),
(250, 58, 573),
(252, 58, 727),
(253, 58, 711),
(254, 59, 654),
(255, 59, 727),
(256, 59, 711),
(257, 59, 573),
(258, 33, 654),
(259, 33, 573),
(260, 33, 362),
(261, 33, 727),
(262, 33, 711),
(263, 34, 727),
(264, 34, 711),
(265, 37, 727),
(266, 40, 727),
(267, 40, 728),
(268, 40, 573),
(269, 40, 362),
(270, 41, 727),
(271, 41, 728),
(272, 42, 727),
(273, 42, 728),
(274, 42, 573),
(275, 43, 573),
(276, 43, 654),
(277, 43, 727),
(278, 59, 729),
(279, 2, 729),
(280, 40, 729),
(281, 42, 729),
(282, 54, 573),
(283, 54, 654),
(284, 54, 726),
(285, 54, 728),
(287, 54, 729),
(288, 57, 654),
(289, 57, 728),
(290, 57, 729),
(291, 40, 654),
(292, 5, 730),
(293, 5, 362),
(294, 5, 574),
(295, 5, 726),
(296, 25, 730),
(297, 27, 730),
(298, 33, 730),
(299, 34, 730),
(300, 37, 730),
(301, 42, 730),
(302, 43, 730),
(303, 5, 731),
(304, 25, 731),
(305, 27, 731),
(306, 40, 731),
(307, 41, 731),
(308, 34, 731),
(309, 42, 731),
(310, 59, 730),
(311, 60, 728),
(312, 60, 711),
(313, 60, 574),
(314, 60, 733),
(315, 59, 735),
(316, 59, 734);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `notify_for` int(11) NOT NULL,
  `notify_from` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `type` enum('follow','like','retweet','qoute','comment','reply','mention') COLLATE utf16_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `count` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notify_for`, `notify_from`, `target`, `type`, `time`, `count`, `status`) VALUES
(30, 2, 25, 635, 'like', '2021-04-29 05:50:12', 1, 0),
(32, 2, 42, 0, 'follow', '2021-04-29 06:30:41', 1, 0),
(34, 2, 25, 711, 'qoute', '2021-04-29 18:29:24', 1, 0),
(35, 25, 2, 712, 'qoute', '2021-04-29 18:29:55', 1, 0),
(36, 2, 25, 712, 'like', '2021-04-29 18:31:11', 1, 0),
(37, 2, 25, 712, 'retweet', '2021-04-29 18:31:19', 1, 0),
(38, 25, 2, 0, 'follow', '2021-04-30 02:16:24', 1, 0),
(39, 2, 25, 0, 'follow', '2021-04-30 22:56:20', 1, 0),
(53, 2, 25, 574, 'comment', '2021-05-01 02:21:10', 1, 0),
(54, 25, 2, 574, 'reply', '2021-05-01 02:21:51', 1, 0),
(55, 2, 42, 725, 'mention', '2021-05-01 02:25:37', 1, 0),
(58, 25, 2, 711, 'like', '2021-05-01 04:32:36', 1, 0),
(67, 2, 54, 0, 'follow', '2021-05-01 06:57:13', 1, 0),
(68, 2, 55, 0, 'follow', '2021-05-12 16:18:46', 1, 0),
(73, 2, 56, 0, 'follow', '2021-05-12 16:35:31', 1, 0),
(75, 2, 57, 0, 'follow', '2021-05-12 18:23:30', 1, 0),
(76, 2, 58, 0, 'follow', '2021-05-13 14:52:58', 1, 0),
(83, 2, 59, 0, 'follow', '2022-01-11 16:44:36', 0, 0),
(84, 2, 59, 712, 'like', '2022-01-11 16:48:05', 0, 0),
(85, 2, 59, 712, 'comment', '2022-01-11 16:50:03', 0, 0),
(86, 58, 59, 0, 'follow', '2022-01-11 17:09:51', 1, 0),
(87, 2, 58, 712, 'like', '2022-01-11 17:55:50', 0, 0),
(88, 59, 58, 0, 'follow', '2022-01-11 17:56:05', 1, 0),
(89, 59, 58, 726, 'like', '2022-01-11 17:56:38', 1, 0),
(90, 55, 40, 0, 'follow', '2022-01-12 16:50:18', 0, 0),
(91, 57, 40, 0, 'follow', '2022-01-12 16:50:20', 1, 0),
(92, 58, 40, 0, 'follow', '2022-01-12 16:50:23', 0, 0),
(93, 2, 40, 712, 'like', '2022-01-12 16:50:34', 0, 0),
(94, 25, 40, 0, 'follow', '2022-01-12 16:51:12', 1, 0),
(95, 59, 2, 0, 'follow', '2022-01-12 17:03:06', 1, 0),
(96, 41, 2, 0, 'follow', '2022-01-12 17:03:11', 1, 0),
(97, 44, 2, 0, 'follow', '2022-01-12 17:03:20', 0, 0),
(98, 57, 2, 0, 'follow', '2022-01-12 17:03:27', 1, 0),
(99, 58, 2, 0, 'follow', '2022-01-12 17:03:31', 0, 0),
(100, 59, 5, 0, 'follow', '2022-01-12 17:04:27', 1, 0),
(101, 59, 25, 0, 'follow', '2022-01-12 17:04:41', 1, 0),
(102, 59, 27, 0, 'follow', '2022-01-12 17:05:25', 1, 0),
(103, 59, 27, 726, 'like', '2022-01-12 17:05:33', 1, 0),
(104, 59, 33, 0, 'follow', '2022-01-12 17:05:49', 1, 0),
(105, 59, 33, 726, 'like', '2022-01-12 17:05:50', 1, 0),
(106, 59, 34, 0, 'follow', '2022-01-12 17:06:04', 1, 0),
(107, 59, 34, 726, 'like', '2022-01-12 17:06:06', 1, 0),
(108, 59, 37, 0, 'follow', '2022-01-12 17:06:20', 1, 0),
(109, 59, 37, 726, 'like', '2022-01-12 17:06:22', 1, 0),
(110, 59, 40, 0, 'follow', '2022-01-12 17:06:35', 1, 0),
(111, 59, 40, 726, 'like', '2022-01-12 17:06:36', 1, 0),
(112, 59, 41, 0, 'follow', '2022-01-12 17:06:50', 1, 0),
(113, 59, 41, 726, 'like', '2022-01-12 17:06:51', 1, 0),
(114, 59, 42, 0, 'follow', '2022-01-12 17:07:08', 1, 0),
(115, 59, 42, 726, 'like', '2022-01-12 17:07:10', 1, 0),
(116, 59, 43, 0, 'follow', '2022-01-12 17:07:23', 1, 0),
(117, 59, 43, 726, 'like', '2022-01-12 17:07:25', 1, 0),
(118, 59, 44, 0, 'follow', '2022-01-12 17:07:38', 1, 0),
(119, 59, 44, 726, 'like', '2022-01-12 17:07:46', 1, 0),
(120, 59, 2, 726, 'like', '2022-01-12 17:46:13', 1, 0),
(121, 59, 25, 726, 'like', '2022-01-12 17:46:39', 1, 0),
(122, 2, 25, 654, 'like', '2022-01-12 17:46:43', 0, 0),
(123, 2, 25, 574, 'like', '2022-01-12 17:46:46', 0, 0),
(124, 2, 25, 362, 'like', '2022-01-12 17:46:49', 0, 0),
(125, 2, 58, 654, 'like', '2022-01-12 17:48:57', 0, 0),
(126, 2, 58, 574, 'like', '2022-01-12 17:48:58', 0, 0),
(127, 2, 58, 573, 'like', '2022-01-12 17:49:00', 0, 0),
(129, 25, 58, 0, 'follow', '2022-01-12 17:49:11', 0, 0),
(130, 25, 58, 727, 'like', '2022-01-12 17:49:13', 0, 0),
(131, 25, 58, 711, 'like', '2022-01-12 17:49:14', 0, 0),
(132, 2, 59, 654, 'like', '2022-01-12 17:51:43', 0, 0),
(133, 25, 59, 0, 'follow', '2022-01-12 17:52:22', 0, 0),
(134, 25, 59, 727, 'like', '2022-01-12 17:52:30', 0, 0),
(135, 25, 59, 711, 'like', '2022-01-12 17:55:09', 0, 0),
(136, 2, 59, 573, 'like', '2022-01-12 17:55:13', 0, 0),
(137, 2, 33, 654, 'like', '2022-01-12 17:55:30', 0, 0),
(138, 2, 33, 573, 'like', '2022-01-12 17:55:32', 0, 0),
(139, 2, 33, 362, 'like', '2022-01-12 17:55:33', 0, 0),
(140, 25, 33, 0, 'follow', '2022-01-12 17:55:36', 0, 0),
(141, 25, 33, 727, 'like', '2022-01-12 17:55:39', 0, 0),
(142, 25, 33, 711, 'like', '2022-01-12 17:55:41', 0, 0),
(143, 25, 34, 727, 'like', '2022-01-12 17:55:55', 0, 0),
(144, 25, 34, 711, 'like', '2022-01-12 17:55:58', 0, 0),
(145, 25, 37, 727, 'like', '2022-01-12 17:56:18', 0, 0),
(146, 25, 40, 727, 'like', '2022-01-12 17:56:31', 0, 0),
(147, 58, 40, 728, 'like', '2022-01-12 17:56:33', 0, 0),
(148, 2, 40, 573, 'like', '2022-01-12 17:56:42', 0, 0),
(149, 2, 40, 362, 'like', '2022-01-12 17:56:44', 0, 0),
(150, 25, 41, 727, 'like', '2022-01-12 17:57:00', 0, 0),
(151, 58, 41, 728, 'like', '2022-01-12 17:57:04', 0, 0),
(152, 25, 42, 727, 'like', '2022-01-12 17:57:16', 0, 0),
(153, 58, 42, 728, 'like', '2022-01-12 17:57:21', 0, 0),
(154, 2, 42, 573, 'like', '2022-01-12 17:57:28', 0, 0),
(155, 2, 43, 573, 'like', '2022-01-12 17:57:40', 0, 0),
(156, 2, 43, 654, 'like', '2022-01-12 17:57:42', 0, 0),
(157, 25, 43, 727, 'like', '2022-01-12 17:57:52', 0, 0),
(158, 55, 59, 0, 'follow', '2022-01-12 17:58:45', 0, 0),
(159, 55, 59, 729, 'like', '2022-01-12 18:01:05', 0, 0),
(160, 55, 2, 0, 'follow', '2022-01-12 18:01:45', 0, 0),
(161, 55, 2, 729, 'like', '2022-01-12 18:01:47', 0, 0),
(162, 55, 40, 729, 'like', '2022-01-12 18:02:09', 0, 0),
(163, 55, 42, 0, 'follow', '2022-01-12 18:02:22', 0, 0),
(164, 55, 42, 729, 'like', '2022-01-12 18:02:24', 0, 0),
(165, 2, 54, 573, 'like', '2022-01-12 18:02:36', 0, 0),
(166, 2, 54, 654, 'like', '2022-01-12 18:02:39', 0, 0),
(167, 59, 54, 0, 'follow', '2022-01-12 18:02:43', 1, 0),
(168, 59, 54, 726, 'like', '2022-01-12 18:02:51', 1, 0),
(169, 55, 54, 0, 'follow', '2022-01-12 18:02:57', 0, 0),
(170, 25, 54, 0, 'follow', '2022-01-12 18:02:58', 0, 0),
(171, 58, 54, 0, 'follow', '2022-01-12 18:02:59', 0, 0),
(172, 58, 54, 728, 'like', '2022-01-12 18:03:04', 0, 0),
(174, 55, 54, 729, 'like', '2022-01-12 18:03:10', 0, 0),
(175, 2, 57, 654, 'like', '2022-01-12 18:03:27', 0, 0),
(176, 58, 57, 0, 'follow', '2022-01-12 18:03:33', 0, 0),
(177, 58, 57, 728, 'like', '2022-01-12 18:03:35', 0, 0),
(178, 55, 57, 0, 'follow', '2022-01-12 18:03:37', 0, 0),
(179, 55, 57, 729, 'like', '2022-01-12 18:03:39', 0, 0),
(180, 40, 59, 0, 'follow', '2022-01-12 18:06:25', 0, 0),
(181, 2, 40, 654, 'like', '2022-01-13 09:04:39', 0, 0),
(182, 40, 5, 0, 'follow', '2022-01-13 09:05:05', 0, 0),
(183, 40, 5, 730, 'like', '2022-01-13 09:05:07', 0, 0),
(184, 2, 5, 362, 'like', '2022-01-13 09:05:16', 0, 0),
(185, 2, 5, 574, 'like', '2022-01-13 09:05:20', 0, 0),
(186, 59, 5, 726, 'like', '2022-01-13 09:05:28', 1, 0),
(187, 40, 25, 0, 'follow', '2022-01-13 09:05:46', 0, 0),
(188, 40, 25, 730, 'like', '2022-01-13 09:05:48', 0, 0),
(189, 40, 27, 0, 'follow', '2022-01-13 09:06:00', 0, 0),
(190, 40, 27, 730, 'like', '2022-01-13 09:06:02', 0, 0),
(191, 40, 33, 0, 'follow', '2022-01-13 09:06:32', 0, 0),
(192, 40, 33, 730, 'like', '2022-01-13 09:06:33', 0, 0),
(193, 40, 34, 0, 'follow', '2022-01-13 09:06:56', 0, 0),
(194, 40, 34, 730, 'like', '2022-01-13 09:06:57', 0, 0),
(195, 40, 37, 0, 'follow', '2022-01-13 09:07:10', 0, 0),
(196, 40, 37, 730, 'like', '2022-01-13 09:07:12', 0, 0),
(197, 40, 42, 0, 'follow', '2022-01-13 09:08:27', 0, 0),
(198, 40, 42, 730, 'like', '2022-01-13 09:08:28', 0, 0),
(199, 40, 43, 0, 'follow', '2022-01-13 09:08:38', 0, 0),
(200, 40, 43, 730, 'like', '2022-01-13 09:08:39', 0, 0),
(201, 2, 60, 0, 'follow', '2022-01-13 09:17:44', 0, 0),
(203, 58, 60, 0, 'follow', '2022-01-13 09:20:32', 0, 0),
(204, 56, 60, 0, 'follow', '2022-01-13 09:20:34', 0, 0),
(205, 25, 60, 0, 'follow', '2022-01-13 09:20:38', 0, 0),
(206, 41, 60, 0, 'follow', '2022-01-13 09:20:43', 0, 0),
(207, 5, 60, 0, 'follow', '2022-01-13 09:20:46', 0, 0),
(208, 59, 5, 731, 'like', '2022-01-13 09:27:56', 1, 0),
(209, 59, 25, 731, 'like', '2022-01-13 09:28:07', 1, 0),
(210, 59, 27, 731, 'like', '2022-01-13 09:28:16', 1, 0),
(211, 59, 40, 731, 'like', '2022-01-13 09:28:29', 1, 0),
(212, 59, 41, 731, 'like', '2022-01-13 09:28:42', 1, 0),
(213, 59, 34, 731, 'like', '2022-01-13 09:29:05', 1, 0),
(214, 59, 42, 731, 'like', '2022-01-13 09:29:24', 1, 0),
(215, 40, 59, 730, 'like', '2022-01-13 12:20:47', 0, 0),
(216, 40, 59, 730, 'comment', '2022-01-13 12:21:18', 0, 0),
(217, 58, 59, 732, 'mention', '2022-01-13 12:22:25', 0, 0),
(218, 40, 59, 732, 'mention', '2022-01-13 12:22:25', 0, 0),
(219, 2, 59, 732, 'mention', '2022-01-13 12:22:25', 0, 0),
(220, 60, 59, 0, 'follow', '2022-01-13 12:23:12', 1, 0),
(221, 58, 60, 728, 'like', '2022-01-13 12:25:07', 0, 0),
(222, 25, 60, 711, 'like', '2022-01-13 12:25:09', 0, 0),
(223, 2, 60, 574, 'like', '2022-01-13 12:25:14', 0, 0),
(224, 59, 60, 0, 'follow', '2022-01-13 12:26:08', 1, 0),
(225, 59, 60, 733, 'like', '2022-01-13 12:26:14', 1, 0),
(226, 59, 60, 735, 'qoute', '2022-01-13 12:26:35', 1, 0),
(227, 60, 59, 735, 'like', '2022-01-13 12:27:20', 0, 0),
(228, 60, 59, 734, 'like', '2022-01-13 12:27:26', 0, 0),
(229, 60, 59, 735, 'comment', '2022-01-13 12:28:10', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_on`) VALUES
(362, 2, '2021-07-08 08:31:07'),
(573, 2, '2021-08-25 03:03:39'),
(574, 2, '2021-08-26 03:04:53'),
(654, 2, '2021-10-11 02:19:45'),
(711, 25, '2021-10-12 18:29:24'),
(726, 59, '2022-01-11 16:45:42'),
(727, 25, '2022-01-12 17:48:33'),
(728, 58, '2022-01-12 17:51:22'),
(729, 55, '2021-09-29 18:00:04'),
(730, 40, '2022-01-13 09:04:13'),
(731, 59, '2022-01-08 09:25:34'),
(732, 59, '2022-01-13 12:22:25'),
(733, 59, '2022-01-13 12:24:26'),
(734, 60, '2022-01-13 12:25:53'),
(735, 60, '2022-01-13 12:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` varchar(140) COLLATE utf16_unicode_ci NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `comment_id`, `user_id`, `reply`, `time`) VALUES
(11, 44, 2, 'Oh yeah, it is!', '2021-05-01 02:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `retweets`
--

CREATE TABLE `retweets` (
  `post_id` int(11) NOT NULL,
  `retweet_msg` varchar(140) COLLATE utf16_unicode_ci DEFAULT NULL,
  `tweet_id` int(11) DEFAULT NULL,
  `retweet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `retweets`
--

INSERT INTO `retweets` (`post_id`, `retweet_msg`, `tweet_id`, `retweet_id`) VALUES
(711, '10/10', 654, NULL),
(735, 'I quoted this tweet!', 732, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `id` int(11) NOT NULL,
  `hashtag` varchar(140) COLLATE utf16_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`id`, `hashtag`, `created_on`) VALUES
(1, 'php', '2021-01-06 05:57:43'),
(4, 'hi', '2021-01-25 21:42:35'),
(5, 'alex', '2021-01-25 21:42:36'),
(6, '7oda', '2021-03-20 23:40:12'),
(9, 'js', '2021-04-02 03:24:28'),
(12, 'bro', '2021-04-02 03:31:38'),
(13, 'mysql', '2022-01-13 16:10:54'),
(14, 'explore', '2022-01-13 16:10:54'),
(15, 'fun', '2022-01-13 16:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `post_id` int(11) NOT NULL,
  `status` varchar(140) COLLATE utf16_unicode_ci DEFAULT NULL,
  `img` text COLLATE utf16_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`post_id`, `status`, `img`) VALUES
(362, '@testacc This tweet is for mentioning other users!', NULL),
(573, 'Sample Post with Image', 'tweet-60666d6b426a1.jpg'),
(574, '#php #mysql #jquery for Hashtags..', NULL),
(654, 'You can be everything. You can be the infinite amount of things that people are.', NULL),
(726, 'OK, this is my first Tweet for Testing Purpose!', NULL),
(727, 'Unfortunately I feel like I have to master every skill I begin to enjoy!!!', NULL),
(728, 'You canâ€™t climb uphill by thinking downhill thoughts', NULL),
(729, 'I just wanna be nice, but some people are so ANNOYING.', NULL),
(730, 'The need for forgiveness is an illusion. There is nothing to forgive.', NULL),
(731, '', 'tweet-61dfd3ee910a8.png'),
(732, 'This is a second demo tweet with mention too! @ralph @wilburpotter @codeastro', NULL),
(733, 'A post with Sample Image.', 'tweet-61dffddac3a4c.jpg'),
(734, 'Here\'s a tweet with hashtags. #php #mysql #js #explore #fun', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) COLLATE utf16_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf16_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf16_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf16_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `imgCover` varchar(255) COLLATE utf16_unicode_ci NOT NULL DEFAULT 'cover.png',
  `bio` varchar(140) COLLATE utf16_unicode_ci NOT NULL DEFAULT '',
  `location` varchar(255) COLLATE utf16_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf16_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `img`, `imgCover`, `bio`, `location`, `website`) VALUES
(2, 'codeastro', 'astro@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Astro', 'user-61def28fce0d7.jpg', 'cover.png', 'Well, nothing...', 'South Dakota', 'https://codeastro.com/'),
(5, 'matholiver', 'oliver@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Matthew Oliver', 'user-61dee95ac1f87.jpg', 'cover.png', 'I make money in my sleep', '', ''),
(25, 'itselisagrnt', 'elisag@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Elisa Grant', 'user-61deea3b7c7b3.jpg', 'cover.png', 'Midnight snacker', '', ''),
(27, 'viodaw', 'dawson@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Viola Dawson', 'default.jpg', 'cover.png', 'Recovering cake addict', '', ''),
(33, 'floreshe', 'sherflore@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Sherman Flores', 'default.jpg', 'cover.png', 'Smart. Strong. Silly. ', '', ''),
(34, 'darlyperez', 'daryl@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Daryl Perez', 'user-61deea7887174.png', 'cover.png', 'Donï¿½t like me? Donï¿½t care.', '', ''),
(37, 'edwhitney', 'whed@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Whitney Edwards', 'default.jpg', 'cover.png', 'thank you, come again.', '', ''),
(40, 'wilburpotter', 'potterw@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Wilbur Potter', 'user-61deeaa4a6178.jpg', 'cover.png', 'Having the time of my life', '', ''),
(41, 'miwalters', 'micwalters@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Michelle Walters', 'user-61dee97f31d06.png', 'cover.png', 'Status Update: Currently hungry', '', ''),
(42, 'osborne', 'aosborne@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Andy Osborne', 'default.jpg', 'user-609be2968c0b9.png', 'Don’t kale my vibe', '', ''),
(43, 'tiffiny', 'irvint@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Tiffiny Irvin', 'default.jpg', 'cover.png', 'Seas the day', '', ''),
(44, 'mrbarton', 'compton@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Barton Compton', 'user-61dee9ff9a415.jpg', 'cover.png', 'Doing better', '', ''),
(54, 'swensonelt', 'swenson69@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Elton Swenson', 'default.jpg', 'cover.png', 'Life is beautiful', '', ''),
(55, 'lynscott', 'scottt@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Lynn Scott', 'user-61dee92566ea7.jpg', 'cover.png', 'Goal: bigger smile', '', ''),
(56, 'gregg58', 'gregcarr@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Greg Carr', 'user-61dee9a0f415d.png', 'cover.png', 'I apologize for anything I post while hungry', '', ''),
(57, 'johnst', 'john@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'John Stuart', 'default.jpg', 'cover.png', 'Not like the rest of them', '', ''),
(58, 'ralph', 'ralph5@mail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Ralph Garza', 'user-61dda8817afe8.png', 'cover.png', 'In a world of worriers, be the warrior', '', ''),
(59, 'testacc', 'test@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Test Account', 'user-61def0bcc0f0d.jpg', 'cover.png', 'I practice what I post!', 'New Jersey', 'https://testwebsite.com/'),
(60, 'marctaylor', 'marc@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Marc Taylor', 'user-61dfd28bd6e79.png', 'cover.png', 'Coffee in one hand, confidence in another.', 'Lake Isaiah', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follower_id` (`follower_id`),
  ADD KEY `following_id` (`following_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `likes_ibfk_2` (`post_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_ibfk_1` (`notify_for`),
  ADD KEY `notifications_ibfk_2` (`notify_from`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `retweets`
--
ALTER TABLE `retweets`
  ADD PRIMARY KEY (`post_id`) USING BTREE,
  ADD KEY `retweet_id` (`retweet_id`),
  ADD KEY `retweets_ibfk_2` (`tweet_id`);

--
-- Indexes for table `trends`
--
ALTER TABLE `trends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hashtag` (`hashtag`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=736;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `trends`
--
ALTER TABLE `trends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`notify_for`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`notify_from`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `retweets`
--
ALTER TABLE `retweets`
  ADD CONSTRAINT `retweets_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `retweets_ibfk_2` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `retweets_ibfk_3` FOREIGN KEY (`retweet_id`) REFERENCES `retweets` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tweets`
--
ALTER TABLE `tweets`
  ADD CONSTRAINT `tweets_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
