-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 05:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystory`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio_post`
--

CREATE TABLE `audio_post` (
  `audio_post_Id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `audio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `block_id` int(11) NOT NULL,
  `block_by` int(11) NOT NULL,
  `block_to` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `bkmrk_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bookmark_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`bkmrk_id`, `post_id`, `user_id`, `bookmark_time`) VALUES
(5, 11, 139, '2017-07-30 01:14:40'),
(7, 10, 139, '2017-07-30 01:37:57'),
(8, 33, 251, '2023-03-06 12:16:41'),
(9, 35, 19, '2023-03-06 15:33:48'),
(10, 34, 251, '2023-03-06 16:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `comment_likes`
--

CREATE TABLE `comment_likes` (
  `comment_like_id` int(11) NOT NULL,
  `like_by` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_likes`
--

INSERT INTO `comment_likes` (`comment_like_id`, `like_by`, `comment_id`, `time`) VALUES
(4, 139, 5, '2017-07-30 00:51:34'),
(5, 19, 9, '2023-03-06 13:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `con_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  `comb_users` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`con_id`, `name`, `user_one`, `user_two`, `comb_users`, `time`) VALUES
(1, 'aa', 139, 224, '139,224', '2017-07-30 00:58:07'),
(2, 'my con name', 139, 144, '139,144', '2017-07-30 00:58:25'),
(3, 'Chat', 251, 19, '251,19', '2023-03-06 12:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `doc_post`
--

CREATE TABLE `doc_post` (
  `doc_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `doc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_private`
--

CREATE TABLE `email_private` (
  `e_p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `options` enum('public','private') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_private`
--

INSERT INTO `email_private` (`e_p_id`, `user_id`, `options`) VALUES
(24, 139, 'public'),
(25, 140, 'public'),
(26, 141, 'public'),
(27, 142, 'public'),
(28, 143, 'public'),
(29, 144, 'public'),
(30, 145, 'public'),
(31, 146, 'public'),
(32, 147, 'public'),
(33, 148, 'public'),
(34, 149, 'public'),
(35, 150, 'public'),
(36, 151, 'public'),
(37, 152, 'public'),
(38, 153, 'public'),
(39, 154, 'public'),
(40, 155, 'public'),
(41, 156, 'public'),
(42, 157, 'public'),
(43, 158, 'public'),
(44, 159, 'public'),
(45, 160, 'public'),
(46, 161, 'public'),
(47, 162, 'public'),
(48, 163, 'public'),
(49, 164, 'public'),
(50, 165, 'public'),
(51, 166, 'public'),
(52, 167, 'public'),
(53, 168, 'public'),
(54, 169, 'public'),
(55, 170, 'public'),
(56, 171, 'public'),
(57, 172, 'public'),
(58, 173, 'public'),
(59, 174, 'public'),
(60, 175, 'public'),
(61, 176, 'public'),
(62, 177, 'public'),
(63, 178, 'public'),
(64, 179, 'public'),
(65, 180, 'public'),
(66, 181, 'public'),
(67, 182, 'public'),
(68, 183, 'public'),
(69, 184, 'public'),
(70, 185, 'public'),
(71, 186, 'public'),
(72, 187, 'public'),
(73, 188, 'public'),
(74, 189, 'public'),
(75, 190, 'public'),
(76, 191, 'public'),
(77, 192, 'public'),
(78, 193, 'public'),
(79, 194, 'public'),
(80, 195, 'public'),
(81, 196, 'public'),
(82, 197, 'public'),
(83, 198, 'public'),
(84, 199, 'public'),
(87, 206, 'public'),
(88, 207, 'public'),
(89, 208, 'public'),
(90, 209, 'public'),
(91, 210, 'public'),
(92, 211, 'public'),
(93, 212, 'public'),
(94, 213, 'public'),
(95, 214, 'public'),
(96, 215, 'public'),
(97, 216, 'public'),
(98, 217, 'public'),
(99, 218, 'public'),
(100, 219, 'public'),
(101, 220, 'public'),
(102, 221, 'public'),
(103, 222, 'public'),
(104, 223, 'public'),
(105, 224, 'public'),
(106, 227, 'public'),
(107, 228, 'public'),
(108, 230, 'public'),
(109, 232, 'public'),
(121, 250, 'public'),
(122, 251, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `fav_id` int(11) NOT NULL,
  `fav_by` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`fav_id`, `fav_by`, `user`, `time`) VALUES
(1, 139, 187, '2017-07-30 01:19:45'),
(2, 139, 144, '2017-07-30 01:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `follow_system`
--

CREATE TABLE `follow_system` (
  `follow_id` int(11) NOT NULL,
  `follow_by` int(11) NOT NULL,
  `follow_by_u` varchar(255) NOT NULL,
  `follow_to` int(11) NOT NULL,
  `follow_to_u` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow_system`
--

INSERT INTO `follow_system` (`follow_id`, `follow_by`, `follow_by_u`, `follow_to`, `follow_to_u`, `time`) VALUES
(1, 139, 'takkar', 224, 'coldplay', '2017-07-03 01:54:41'),
(3, 139, 'takkar', 141, 'modi', '2017-07-03 01:54:50'),
(5, 139, 'takkar', 143, 'selenagomez', '2017-07-03 16:10:47'),
(6, 139, 'takkar', 145, 'nfak', '2017-07-03 16:10:53'),
(8, 139, 'takkar', 166, 'pikachu', '2017-07-03 16:57:52'),
(9, 139, 'takkar', 195, 'snape', '2017-07-03 17:14:10'),
(10, 139, 'takkar', 175, 'looney_tunes', '2017-07-03 17:14:12'),
(11, 139, 'takkar', 182, 'oswald', '2017-07-03 17:14:14'),
(12, 182, 'oswald', 139, 'takkar', '2017-07-03 17:16:46'),
(13, 139, 'takkar', 227, 'Netherlands', '2017-07-03 19:54:17'),
(14, 227, 'Netherlands', 139, 'takkar', '2017-07-03 19:54:32'),
(15, 227, 'Netherlands', 186, 'harrypotter', '2017-07-03 21:18:32'),
(16, 227, 'Netherlands', 145, 'nfak', '2017-07-03 21:18:38'),
(17, 227, 'Netherlands', 154, 'voldemort', '2017-07-03 21:18:40'),
(18, 227, 'Netherlands', 140, 'zayn', '2017-07-03 21:18:45'),
(19, 139, 'takkar', 187, 'harmoine', '2017-07-30 00:56:11'),
(21, 139, 'takkar', 206, 'ISRO', '2017-07-30 01:05:28'),
(22, 187, 'harmoine', 139, 'takkar', '2017-07-30 01:06:05'),
(23, 139, 'takkar', 151, 'shaktiman', '2017-07-30 01:16:39'),
(24, 139, 'takkar', 186, 'harrypotter', '2017-07-30 01:16:41'),
(25, 144, 'ghalib', 142, 'taylor_swift', '2017-07-30 01:20:52'),
(28, 139, 'takkar', 144, 'ghalib', '2017-07-30 03:47:15'),
(39, 144, 'ghalib', 187, 'harmoine', '2017-07-30 03:52:56'),
(47, 250, 'Nicko', 139, 'fred', '2023-03-03 15:42:10'),
(49, 19, 'Nicko', 2, 'modric', '2023-03-06 11:34:18'),
(50, 19, 'Nicko', 3, 'selenagomez', '2023-03-06 11:34:19'),
(51, 19, 'Nicko', 9, 'stella', '2023-03-06 11:34:20'),
(52, 251, 'Damiog', 5, 'toba', '2023-03-06 12:16:52'),
(53, 251, 'Damiog', 14, 'dexter', '2023-03-06 12:16:53'),
(54, 251, 'Damiog', 9, 'stella', '2023-03-06 12:16:54'),
(55, 251, 'Damiog', 19, 'Nicko', '2023-03-06 12:17:07'),
(56, 19, 'Nicko', 251, 'Damiog', '2023-03-06 13:07:13'),
(57, 19, 'Nicko', 18, 'coldplay', '2023-03-06 13:08:54'),
(58, 19, 'Nicko', 15, 'dumbledore', '2023-03-06 15:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `grp_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grp_bio` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grp_avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `grp_admin` int(11) NOT NULL,
  `grp_privacy` enum('public','private') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `grp_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `grp_name`, `grp_bio`, `grp_avatar`, `grp_admin`, `grp_privacy`, `grp_time`) VALUES
(8, 'Trip Quest', 'This is a group to take trips together', '', 251, 'public', '2023-03-06 12:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `group_con`
--

CREATE TABLE `group_con` (
  `grp_con_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_con`
--

INSERT INTO `group_con` (`grp_con_id`, `name`, `avatar`, `time`, `admin`) VALUES
(5, 'my group', '1501356566.jpg', '2017-07-30 00:59:08', 144),
(6, 'Travel buddies', '1678101500.jpg', '2023-03-06 12:18:20', 251);

-- --------------------------------------------------------

--
-- Table structure for table `group_con_members`
--

CREATE TABLE `group_con_members` (
  `grp_con_mem_id` int(11) NOT NULL,
  `grp_con_id` int(11) NOT NULL,
  `members` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_con_members`
--

INSERT INTO `group_con_members` (`grp_con_mem_id`, `grp_con_id`, `members`) VALUES
(9, 5, 139),
(10, 5, 143),
(11, 5, 224),
(12, 5, 144),
(13, 5, 145),
(14, 5, 166),
(15, 5, 195),
(16, 6, 251),
(17, 6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `group_mem_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `group_member` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`group_mem_id`, `group_id`, `group_member`, `added_by`, `time`) VALUES
(7, 3, 139, 139, '2017-07-30 00:56:39'),
(10, 3, 143, 139, '2017-07-30 00:56:53'),
(11, 3, 144, 144, '2017-07-30 01:01:35'),
(12, 4, 139, 139, '2017-07-30 01:17:33'),
(13, 4, 144, 139, '2017-07-30 01:17:39'),
(15, 4, 143, 139, '2017-07-30 01:17:43'),
(16, 5, 139, 139, '2017-07-30 01:41:04'),
(17, 5, 144, 139, '2017-07-30 01:41:16'),
(18, 5, 224, 139, '2017-07-30 01:41:18'),
(19, 5, 143, 139, '2017-07-30 01:41:21'),
(20, 6, 251, 251, '2023-03-06 12:21:12'),
(21, 7, 251, 251, '2023-03-06 12:21:15'),
(22, 8, 251, 251, '2023-03-06 12:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `grpconunreads`
--

CREATE TABLE `grpconunreads` (
  `gru_id` int(11) NOT NULL,
  `grp_con_id` int(11) NOT NULL,
  `gcu_by` int(11) NOT NULL,
  `member` int(11) NOT NULL,
  `gcu_mssg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grpconunreads`
--

INSERT INTO `grpconunreads` (`gru_id`, `grp_con_id`, `gcu_by`, `member`, `gcu_mssg`) VALUES
(5, 5, 139, 143, 15),
(6, 5, 139, 143, 16),
(7, 5, 139, 143, 17),
(8, 5, 139, 224, 17),
(9, 5, 139, 143, 18),
(10, 5, 139, 224, 18),
(12, 5, 139, 143, 19),
(13, 5, 139, 224, 19),
(15, 5, 139, 145, 19),
(16, 5, 139, 143, 20),
(17, 5, 139, 224, 20),
(19, 5, 139, 145, 20),
(20, 5, 139, 166, 20),
(21, 5, 139, 143, 21),
(22, 5, 139, 224, 21),
(24, 5, 139, 145, 21),
(25, 5, 139, 166, 21),
(26, 5, 139, 195, 21),
(27, 5, 139, 143, 22),
(28, 5, 139, 224, 22),
(30, 5, 139, 145, 22),
(31, 5, 139, 166, 22),
(32, 5, 139, 195, 22),
(33, 5, 139, 143, 23),
(34, 5, 139, 224, 23),
(36, 5, 139, 145, 23),
(37, 5, 139, 166, 23),
(38, 5, 139, 195, 23),
(39, 5, 139, 143, 24),
(40, 5, 139, 224, 24),
(42, 5, 139, 145, 24),
(43, 5, 139, 166, 24),
(44, 5, 139, 195, 24),
(45, 5, 139, 143, 25),
(46, 5, 139, 224, 25),
(48, 5, 139, 145, 25),
(49, 5, 139, 166, 25),
(50, 5, 139, 195, 25),
(51, 5, 139, 143, 26),
(52, 5, 139, 224, 26),
(54, 5, 139, 145, 26),
(55, 5, 139, 166, 26),
(56, 5, 139, 195, 26),
(58, 5, 144, 143, 27),
(59, 5, 144, 224, 27),
(60, 5, 144, 145, 27),
(61, 5, 144, 166, 27),
(62, 5, 144, 195, 27),
(63, 5, 139, 143, 28),
(64, 5, 139, 224, 28),
(66, 5, 139, 145, 28),
(67, 5, 139, 166, 28),
(68, 5, 139, 195, 28),
(69, 5, 139, 143, 29),
(70, 5, 139, 224, 29),
(72, 5, 139, 145, 29),
(73, 5, 139, 166, 29),
(74, 5, 139, 195, 29),
(75, 5, 139, 143, 30),
(76, 5, 139, 224, 30),
(78, 5, 139, 145, 30),
(79, 5, 139, 166, 30),
(80, 5, 139, 195, 30);

-- --------------------------------------------------------

--
-- Table structure for table `hashtag`
--

CREATE TABLE `hashtag` (
  `hashtag_id` int(11) NOT NULL,
  `hashtag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` enum('post','post_comment') COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hashtag`
--

INSERT INTO `hashtag` (`hashtag_id`, `hashtag`, `src`, `post_id`, `comment_id`, `user_id`, `time`) VALUES
(6, '#seetheworld', 'post', 37, 0, 19, '2023-03-06 15:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `image_post`
--

CREATE TABLE `image_post` (
  `image_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_post`
--

INSERT INTO `image_post` (`image_post_id`, `post_id`, `image`, `about`, `filter`) VALUES
(9, 32, '1678099729.jpg', 'My time at the collosseum', ''),
(10, 33, '1678100277.jpg', 'Holiday in maldives', ''),
(11, 35, '1678101592.jpg', 'I was in paris last month,Beautiful sights!\r\nYou should visit💓💓💓', ''),
(12, 37, '1678113426.jpg', 'Bali szn #seetheworld 😎', ''),
(13, 38, '1678113885.jpg', 'trips', ''),
(14, 40, '1678114670.jpg', 'INDIA YO', '');

-- --------------------------------------------------------

--
-- Table structure for table `invitegrp`
--

CREATE TABLE `invitegrp` (
  `inviteGrpId` int(11) NOT NULL,
  `inviteGrp` int(11) NOT NULL,
  `inviteGrpBy` int(11) NOT NULL,
  `inviteGrpTo` int(11) NOT NULL,
  `inviteGrpTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `link_post`
--

CREATE TABLE `link_post` (
  `link_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_url` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loc_post`
--

CREATE TABLE `loc_post` (
  `loc_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `loc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `user_id`, `ip`, `time`, `os`, `browser`, `logout`) VALUES
(1, 139, '1', '2017-07-03 01:50:46', 'Windows 10', 'Chrome', '2017-07-03 16:11:08'),
(2, 144, '1', '2017-07-03 16:11:19', 'Windows 10', 'Chrome', '2017-07-03 16:46:39'),
(3, 139, '1', '2017-07-03 16:53:37', 'Windows 10', 'Chrome', '2017-07-03 17:16:18'),
(4, 182, '1', '2017-07-03 17:16:41', 'Windows 10', 'Chrome', '2017-07-03 17:19:32'),
(5, 139, '1', '2017-07-03 19:52:42', 'Windows 10', 'Chrome', '2017-07-03 19:54:22'),
(6, 227, '1', '2017-07-03 19:54:27', 'Windows 10', 'Chrome', '2017-07-03 22:36:13'),
(7, 149, '1', '2017-07-03 22:36:25', 'Windows 10', 'Chrome', '2017-07-30 00:35:34'),
(8, 139, '1', '2017-07-03 22:36:58', 'Windows 10', 'Chrome', '2017-07-03 23:06:50'),
(9, 139, '1', '2017-07-05 16:28:18', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(10, 139, '1', '2017-07-23 21:49:50', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(11, 139, '1', '2017-07-25 22:54:35', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(12, 139, '1', '2017-07-29 01:15:14', 'Windows 10', 'Firefox', '0000-00-00 00:00:00'),
(13, 144, '1', '2017-07-30 00:35:43', 'Windows 10', 'Chrome', '2017-07-30 00:38:56'),
(14, 139, '1', '2017-07-30 00:39:04', 'Windows 10', 'Chrome', '2017-07-30 00:39:52'),
(15, 139, '1', '2017-07-30 00:42:11', 'Windows 10', 'Chrome', '2017-07-30 00:49:07'),
(16, 144, '1', '2017-07-30 00:49:12', 'Windows 10', 'Chrome', '2017-07-30 00:50:50'),
(17, 139, '1', '2017-07-30 00:51:09', 'Windows 10', 'Chrome', '2017-07-30 01:00:39'),
(18, 144, '1', '2017-07-30 01:00:44', 'Windows 10', 'Chrome', '2017-07-30 01:02:01'),
(19, 139, '1', '2017-07-30 01:02:23', 'Windows 10', 'Chrome', '2017-07-30 01:03:18'),
(20, 139, '1', '2017-07-30 01:03:24', 'Windows 10', 'Chrome', '2017-07-30 01:05:49'),
(21, 187, '1', '2017-07-30 01:05:58', 'Windows 10', 'Chrome', '2017-07-30 01:06:12'),
(22, 139, '1', '2017-07-30 01:14:33', 'Windows 10', 'Chrome', '2017-07-30 01:19:59'),
(23, 144, '1', '2017-07-30 01:20:04', 'Windows 10', 'Chrome', '2017-07-30 01:21:20'),
(24, 139, '1', '2017-07-30 01:24:42', 'Windows 10', 'Chrome', '2017-07-30 01:27:16'),
(25, 139, '1', '2017-07-30 01:27:22', 'Windows 10', 'Chrome', '2017-07-30 01:28:13'),
(26, 144, '1', '2017-07-30 01:28:18', 'Windows 10', 'Chrome', '2017-07-30 01:30:05'),
(27, 139, '1', '2017-07-30 01:30:10', 'Windows 10', 'Chrome', '2017-07-30 01:37:24'),
(28, 139, '1', '2017-07-30 01:37:29', 'Windows 10', 'Chrome', '2017-07-30 01:41:57'),
(29, 144, '1', '2017-07-30 01:42:01', 'Windows 10', 'Chrome', '2017-07-30 01:42:16'),
(30, 187, '1', '2017-07-30 01:42:22', 'Windows 10', 'Chrome', '2017-07-30 01:42:39'),
(31, 144, '1', '2017-07-30 01:42:44', 'Windows 10', 'Chrome', '2017-07-30 01:43:40'),
(32, 144, '1', '2017-07-30 01:43:45', 'Windows 10', 'Chrome', '2017-07-30 01:44:30'),
(33, 139, '1', '2017-07-30 01:44:34', 'Windows 10', 'Chrome', '2017-07-30 01:44:44'),
(34, 144, '1', '2017-07-30 01:44:49', 'Windows 10', 'Chrome', '2017-07-30 01:45:02'),
(35, 144, '1', '2017-07-30 01:45:16', 'Windows 10', 'Chrome', '2017-07-30 01:45:24'),
(36, 139, '1', '2017-07-30 03:47:04', 'Windows 10', 'Chrome', '2017-07-30 03:47:25'),
(37, 144, '1', '2017-07-30 03:47:31', 'Windows 10', 'Chrome', '2017-07-31 02:26:22'),
(38, 139, '1', '2017-07-31 02:26:29', 'Windows 10', 'Chrome', '0000-00-00 00:00:00'),
(39, 235, '1', '2017-07-31 14:55:12', 'Windows 10', 'Chrome', '2017-07-31 14:58:45'),
(40, 236, '1', '2017-07-31 15:19:54', 'Windows 10', 'Chrome', '2017-07-31 15:20:06'),
(41, 250, '1', '2023-03-03 13:33:10', 'Windows 10', 'Chrome', '2023-03-03 15:45:05'),
(42, 250, '1', '2023-03-03 15:45:11', 'Windows 10', 'Chrome', '2023-03-03 15:45:17'),
(43, 250, '1', '2023-03-06 10:23:29', 'Windows 10', 'Chrome', '2023-03-06 11:30:13'),
(44, 19, '1', '2023-03-06 11:30:33', 'Windows 10', 'Chrome', '2023-03-06 12:11:45'),
(45, 19, '1', '2023-03-06 12:13:13', 'Windows 10', 'Chrome', '2023-03-06 12:13:55'),
(46, 19, '1', '2023-03-06 13:06:59', 'Windows 10', 'Chrome', '2023-03-06 14:08:44'),
(47, 251, '1', '2023-03-06 14:09:26', 'Windows 10', 'Chrome', '2023-03-06 14:12:34'),
(48, 19, '1', '2023-03-06 14:12:43', 'Windows 10', 'Chrome', '2023-03-06 14:13:25'),
(49, 19, '1', '2023-03-06 15:32:35', 'Windows 10', 'Chrome', '2023-03-06 15:37:14'),
(50, 251, '1', '2023-03-06 15:37:21', 'Windows 10', 'Chrome', '2023-03-06 15:57:06'),
(51, 19, '1', '2023-03-06 15:57:11', 'Windows 10', 'Chrome', '2023-03-06 15:57:55'),
(52, 251, '1', '2023-03-06 15:58:00', 'Windows 10', 'Chrome', '2023-03-06 16:07:16'),
(53, 19, '1', '2023-03-06 16:07:29', 'Windows 10', 'Chrome', '2023-03-06 16:08:00'),
(54, 19, '1', '2023-03-06 16:08:03', 'Windows 10', 'Chrome', '2023-03-06 16:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL,
  `grp_con_id` int(11) NOT NULL,
  `mssg_by` int(11) NOT NULL,
  `mssg_to` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('text','image','sticker','name_change','avatar_change','member_add','leave_grp_con','removed_grp_con','admin_change') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `mssg_of` enum('user','group') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `time` datetime NOT NULL,
  `status` enum('read','unread') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `con_id`, `grp_con_id`, `mssg_by`, `mssg_to`, `message`, `type`, `mssg_of`, `time`, `status`) VALUES
(1, 0, 0, 139, 0, '', 'avatar_change', 'user', '2017-07-03 01:55:19', 'unread'),
(9, 1, 0, 139, 224, 'aaa', 'text', 'user', '2017-07-30 00:58:07', 'unread'),
(10, 2, 0, 139, 144, 'nmnmnm', 'text', 'user', '2017-07-30 00:58:25', 'read'),
(11, 2, 0, 139, 144, '😴😴😴😴😴', 'text', 'user', '2017-07-30 00:58:34', 'read'),
(12, 2, 0, 139, 144, '1501356527.jpg', 'image', 'user', '2017-07-30 00:58:47', 'read'),
(13, 2, 0, 139, 0, '1501356532.png', 'sticker', 'user', '2017-07-30 00:58:52', 'unread'),
(14, 0, 5, 139, 0, '', 'avatar_change', 'user', '2017-07-30 00:59:08', 'unread'),
(15, 0, 5, 139, 0, '1501356556.png', 'sticker', 'group', '2017-07-30 00:59:16', 'unread'),
(16, 0, 5, 139, 0, '', 'avatar_change', 'user', '2017-07-30 00:59:26', 'unread'),
(17, 0, 5, 139, 0, '224', 'member_add', 'user', '2017-07-30 00:59:33', 'unread'),
(18, 0, 5, 139, 0, '144', 'member_add', 'user', '2017-07-30 00:59:36', 'unread'),
(19, 0, 5, 139, 0, '145', 'member_add', 'user', '2017-07-30 00:59:38', 'unread'),
(20, 0, 5, 139, 0, '166', 'member_add', 'user', '2017-07-30 00:59:41', 'unread'),
(21, 0, 5, 139, 0, '195', 'member_add', 'user', '2017-07-30 00:59:43', 'unread'),
(22, 0, 5, 139, 0, '144', 'admin_change', 'user', '2017-07-30 00:59:51', 'unread'),
(23, 0, 5, 139, 0, 'jkjk', 'text', 'group', '2017-07-30 01:00:01', 'unread'),
(24, 0, 5, 139, 0, '1501357717.png', 'sticker', 'group', '2017-07-30 01:18:37', 'unread'),
(25, 0, 5, 139, 0, 'jkjkjk', 'text', 'group', '2017-07-30 01:18:43', 'unread'),
(26, 0, 5, 139, 0, '1501357730.gif', 'image', 'group', '2017-07-30 01:18:50', 'unread'),
(27, 0, 5, 144, 0, 'Wo', 'text', 'group', '2017-07-30 01:20:42', 'unread'),
(28, 0, 5, 139, 0, 'tessspopo', 'text', 'group', '2017-07-30 01:37:38', 'unread'),
(29, 0, 5, 139, 0, '1501358864.jpg', 'image', 'group', '2017-07-30 01:37:44', 'unread'),
(30, 0, 5, 139, 0, '1501358869.png', 'sticker', 'group', '2017-07-30 01:37:49', 'unread'),
(31, 3, 0, 251, 19, 'Hi Nicko,how did you get to maldives', 'text', 'user', '2023-03-06 12:17:45', 'read'),
(32, 0, 6, 251, 0, '', 'avatar_change', 'user', '2023-03-06 12:18:20', 'unread'),
(33, 3, 0, 19, 251, 'i took plane yo', 'text', 'user', '2023-03-06 13:09:09', 'read'),
(34, 3, 0, 19, 251, 'nice', 'text', 'user', '2023-03-06 15:33:14', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_private`
--

CREATE TABLE `mobile_private` (
  `m_p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `options` enum('private','public') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobile_private`
--

INSERT INTO `mobile_private` (`m_p_id`, `user_id`, `options`) VALUES
(24, 139, 'public'),
(25, 140, 'public'),
(26, 141, 'public'),
(27, 142, 'public'),
(28, 143, 'public'),
(29, 144, 'public'),
(30, 145, 'public'),
(31, 146, 'public'),
(32, 147, 'public'),
(33, 148, 'public'),
(34, 149, 'public'),
(35, 150, 'public'),
(36, 151, 'public'),
(37, 152, 'public'),
(38, 153, 'public'),
(39, 154, 'public'),
(40, 155, 'public'),
(41, 156, 'public'),
(42, 157, 'public'),
(43, 158, 'public'),
(44, 159, 'public'),
(45, 160, 'public'),
(46, 161, 'public'),
(47, 162, 'public'),
(48, 163, 'public'),
(49, 164, 'public'),
(50, 165, 'public'),
(51, 166, 'public'),
(52, 167, 'public'),
(53, 168, 'public'),
(54, 169, 'public'),
(55, 170, 'public'),
(56, 171, 'public'),
(57, 172, 'public'),
(58, 173, 'public'),
(59, 174, 'public'),
(60, 175, 'public'),
(61, 176, 'public'),
(62, 177, 'public'),
(63, 178, 'public'),
(64, 179, 'public'),
(65, 180, 'public'),
(66, 181, 'public'),
(67, 182, 'public'),
(68, 183, 'public'),
(69, 184, 'public'),
(70, 185, 'public'),
(71, 186, 'public'),
(72, 187, 'public'),
(73, 188, 'public'),
(74, 189, 'public'),
(75, 190, 'public'),
(76, 191, 'public'),
(77, 192, 'public'),
(78, 193, 'public'),
(79, 194, 'public'),
(80, 195, 'public'),
(81, 196, 'public'),
(82, 197, 'public'),
(83, 198, 'public'),
(84, 199, 'public'),
(87, 206, 'public'),
(88, 207, 'public'),
(89, 208, 'public'),
(90, 209, 'public'),
(91, 210, 'public'),
(92, 211, 'public'),
(93, 212, 'public'),
(94, 213, 'public'),
(95, 214, 'public'),
(96, 215, 'public'),
(97, 216, 'public'),
(98, 217, 'public'),
(99, 218, 'public'),
(100, 219, 'public'),
(101, 220, 'public'),
(102, 221, 'public'),
(103, 222, 'public'),
(104, 223, 'public'),
(105, 224, 'public'),
(106, 227, 'public'),
(107, 228, 'public'),
(108, 230, 'public'),
(109, 232, 'public'),
(121, 250, 'public'),
(122, 251, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `noti_id` int(11) NOT NULL,
  `notify_by` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notify_to` int(11) NOT NULL,
  `notify_of` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `status` enum('read','unread') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`noti_id`, `notify_by`, `type`, `notify_to`, `notify_of`, `post_id`, `comment_id`, `time`, `status`) VALUES
(1, 139, 'follow', 224, 0, 0, 0, '2017-07-03 01:54:41', 'unread'),
(3, 139, 'follow', 141, 0, 0, 0, '2017-07-03 01:54:50', 'unread'),
(10, 139, 'follow', 143, 0, 0, 0, '2017-07-03 16:10:47', 'unread'),
(11, 139, 'follow', 145, 0, 0, 0, '2017-07-03 16:10:53', 'unread'),
(15, 139, 'follow', 166, 0, 0, 0, '2017-07-03 16:57:52', 'unread'),
(18, 139, 'follow', 195, 0, 0, 0, '2017-07-03 17:14:10', 'unread'),
(19, 139, 'follow', 175, 0, 0, 0, '2017-07-03 17:14:12', 'unread'),
(20, 139, 'follow', 182, 0, 0, 0, '2017-07-03 17:14:14', 'read'),
(30, 227, 'follow', 186, 0, 0, 0, '2017-07-03 21:18:32', 'unread'),
(31, 227, 'follow', 145, 0, 0, 0, '2017-07-03 21:18:39', 'unread'),
(32, 227, 'follow', 154, 0, 0, 0, '2017-07-03 21:18:40', 'unread'),
(33, 227, 'follow', 140, 0, 0, 0, '2017-07-03 21:18:45', 'unread'),
(44, 139, 'shareto', 166, 0, 11, 0, '2017-07-30 00:51:38', 'unread'),
(61, 139, 'grp_add', 224, 0, 3, 0, '2017-07-30 00:56:51', 'unread'),
(62, 139, 'grp_add', 143, 0, 3, 0, '2017-07-30 00:56:54', 'unread'),
(70, 139, 'follow', 206, 0, 0, 0, '2017-07-30 01:05:29', 'unread'),
(72, 139, 'like', 144, 0, 11, 0, '2017-07-30 01:14:39', 'read'),
(73, 139, 'shareto', 187, 0, 11, 0, '2017-07-30 01:14:45', 'read'),
(74, 139, 'shareyour', 144, 0, 11, 0, '2017-07-30 01:14:45', 'read'),
(77, 139, 'follow', 151, 0, 0, 0, '2017-07-30 01:16:39', 'unread'),
(78, 139, 'follow', 186, 0, 0, 0, '2017-07-30 01:16:41', 'unread'),
(79, 139, 'grp_add', 144, 0, 4, 0, '2017-07-30 01:17:39', 'read'),
(80, 139, 'grp_add', 224, 0, 4, 0, '2017-07-30 01:17:41', 'unread'),
(81, 139, 'grp_add', 143, 0, 4, 0, '2017-07-30 01:17:43', 'unread'),
(82, 139, 'recommend', 144, 187, 0, 0, '2017-07-30 01:19:56', 'read'),
(87, 144, 'follow', 142, 0, 0, 0, '2017-07-30 01:20:52', 'unread'),
(88, 139, 'like', 144, 0, 11, 0, '2017-07-30 01:37:55', 'read'),
(89, 139, 'shareto', 227, 0, 11, 0, '2017-07-30 01:38:00', 'unread'),
(90, 139, 'shareyour', 144, 0, 11, 0, '2017-07-30 01:38:00', 'read'),
(95, 139, 'recommend', 187, 144, 0, 0, '2017-07-30 01:40:44', 'read'),
(99, 144, 'follow', 187, 0, 0, 0, '2017-07-30 01:43:03', 'unread'),
(101, 139, 'follow', 144, 0, 0, 0, '2017-07-30 03:47:15', 'read'),
(103, 144, 'follow', 187, 0, 0, 0, '2017-07-30 03:49:59', 'unread'),
(104, 144, 'follow', 187, 0, 0, 0, '2017-07-30 03:50:08', 'unread'),
(112, 144, 'follow', 187, 0, 0, 0, '2017-07-30 03:52:57', 'unread'),
(114, 144, 'follow', 160, 0, 0, 0, '2017-07-30 04:21:45', 'unread'),
(115, 144, 'follow', 219, 0, 0, 0, '2017-07-30 04:22:06', 'unread'),
(117, 144, 'follow', 213, 0, 0, 0, '2017-07-30 04:22:08', 'unread'),
(118, 144, 'follow', 161, 0, 0, 0, '2017-07-30 04:22:09', 'unread'),
(119, 144, 'follow', 169, 0, 0, 0, '2017-07-30 04:22:12', 'unread'),
(120, 250, 'comment', 149, 0, 9, 0, '2023-03-03 15:37:56', 'unread'),
(121, 250, 'follow', 139, 0, 0, 0, '2023-03-03 15:42:10', 'unread'),
(122, 250, 'like', 144, 0, 11, 0, '2023-03-03 15:44:00', 'unread'),
(123, 19, 'follow', 13, 0, 0, 0, '2023-03-06 11:31:15', 'unread'),
(124, 19, 'follow', 2, 0, 0, 0, '2023-03-06 11:34:18', 'unread'),
(125, 19, 'follow', 3, 0, 0, 0, '2023-03-06 11:34:19', 'unread'),
(126, 19, 'follow', 9, 0, 0, 0, '2023-03-06 11:34:20', 'unread'),
(127, 251, 'like', 19, 0, 33, 0, '2023-03-06 12:16:30', 'read'),
(128, 251, 'like', 19, 0, 33, 0, '2023-03-06 12:16:30', 'read'),
(129, 251, 'comment', 19, 0, 33, 0, '2023-03-06 12:16:32', 'read'),
(130, 251, 'follow', 5, 0, 0, 0, '2023-03-06 12:16:52', 'unread'),
(131, 251, 'follow', 14, 0, 0, 0, '2023-03-06 12:16:53', 'unread'),
(132, 251, 'follow', 9, 0, 0, 0, '2023-03-06 12:16:54', 'unread'),
(133, 251, 'follow', 19, 0, 0, 0, '2023-03-06 12:17:07', 'read'),
(134, 251, 'tag', 19, 0, 35, 0, '2023-03-06 12:19:52', 'read'),
(135, 19, 'follow', 251, 0, 0, 0, '2023-03-06 13:07:13', 'read'),
(136, 19, 'comment', 251, 0, 35, 0, '2023-03-06 13:07:22', 'read'),
(137, 19, 'comment', 251, 0, 35, 0, '2023-03-06 13:07:30', 'read'),
(138, 19, 'like', 251, 0, 35, 0, '2023-03-06 13:08:00', 'read'),
(139, 19, 'commentLike', 251, 0, 33, 9, '2023-03-06 13:08:14', 'read'),
(140, 19, 'comment_mention', 251, 0, 33, 0, '2023-03-06 13:08:32', 'read'),
(141, 19, 'follow', 18, 0, 0, 0, '2023-03-06 13:08:54', 'unread'),
(142, 19, 'comment', 251, 0, 35, 0, '2023-03-06 15:33:42', 'read'),
(143, 19, 'comment', 251, 0, 35, 0, '2023-03-06 15:33:42', 'read'),
(144, 19, 'follow', 15, 0, 0, 0, '2023-03-06 15:35:24', 'unread'),
(145, 19, 'tag', 18, 0, 37, 0, '2023-03-06 15:37:07', 'unread'),
(146, 19, 'tag', 251, 0, 37, 0, '2023-03-06 15:37:07', 'read'),
(147, 19, 'like', 251, 0, 38, 0, '2023-03-06 16:07:36', 'unread'),
(148, 19, 'like', 251, 0, 36, 0, '2023-03-06 16:07:37', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('text','image','video','audio','link','document','location') COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_of` enum('user','group') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `grp_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `font_size` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `user_id`, `type`, `post_of`, `grp_id`, `time`, `font_size`, `address`) VALUES
(9, 149, 'image', 'user', 0, '2017-07-03 22:36:50', '14', ''),
(10, 144, 'text', 'user', 0, '2017-07-30 00:49:38', '19', 'Shammi Nagar, Dharavi, Mumbai'),
(11, 144, 'image', 'user', 0, '2017-07-30 00:50:05', '14', 'Shammi Nagar, Dharavi, Mumbai'),
(16, 139, 'text', 'group', 3, '2017-07-30 01:02:37', '14', ''),
(17, 139, 'image', 'group', 3, '2017-07-30 01:02:50', '14', ''),
(30, 139, 'text', 'user', 0, '2017-07-31 02:39:10', '14', ''),
(31, 250, 'text', 'user', 0, '2023-03-03 15:38:13', '14', ''),
(32, 19, 'image', 'user', 0, '2023-03-06 11:48:49', '14', ''),
(33, 19, 'image', 'user', 0, '2023-03-06 11:57:57', '14', ''),
(34, 19, 'text', 'user', 0, '2023-03-06 11:58:19', '14', ''),
(35, 251, 'image', 'user', 0, '2023-03-06 12:19:52', '14', ''),
(36, 251, 'video', 'user', 0, '2023-03-06 14:12:02', '14', ''),
(37, 19, 'image', 'user', 0, '2023-03-06 15:37:07', '14', ''),
(38, 251, 'image', 'user', 0, '2023-03-06 15:44:45', '14', ''),
(39, 251, 'text', 'user', 0, '2023-03-06 15:56:52', '14', ''),
(40, 19, 'image', 'user', 0, '2023-03-06 15:57:51', '14', '');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `post_comments_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('text','image','video','audio','link','document','location','sticker') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`post_comments_id`, `post_id`, `user_id`, `data`, `type`, `time`) VALUES
(5, 11, 139, '1501356089.png', 'sticker', '2017-07-30 00:51:29'),
(9, 33, 251, 'nice images bro', 'text', '2023-03-06 12:16:32'),
(10, 35, 19, 'Nice, i was at Osun recently myself', 'text', '2023-03-06 13:07:22'),
(11, 35, 19, '1678104450.png', 'image', '2023-03-06 13:07:30'),
(12, 33, 19, '@Damiog Thanks', 'text', '2023-03-06 13:08:32'),
(13, 35, 19, 'cool bro,real cool', 'text', '2023-03-06 15:33:42'),
(14, 35, 19, 'cool bro,real cool', 'text', '2023-03-06 15:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `post_likes_id` int(11) NOT NULL,
  `post_like_by` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`post_likes_id`, `post_like_by`, `post_id`, `time`) VALUES
(12, 139, 10, '2017-07-30 00:51:45'),
(19, 139, 11, '2017-07-30 01:37:55'),
(23, 250, 11, '2023-03-03 15:44:00'),
(25, 251, 33, '2023-03-06 12:16:30'),
(26, 19, 35, '2023-03-06 13:08:00'),
(27, 19, 33, '2023-03-06 13:08:49'),
(28, 251, 38, '2023-03-06 16:07:04'),
(29, 251, 36, '2023-03-06 16:07:07'),
(30, 19, 38, '2023-03-06 16:07:36'),
(31, 19, 36, '2023-03-06 16:07:37');

-- --------------------------------------------------------

--
-- Table structure for table `profile_views`
--

CREATE TABLE `profile_views` (
  `view_id` int(11) NOT NULL,
  `view_from` int(11) NOT NULL,
  `view_to` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_views`
--

INSERT INTO `profile_views` (`view_id`, `view_from`, `view_to`, `time`) VALUES
(1, 139, 141, '2017-07-03 01:54:48'),
(2, 139, 144, '2017-07-03 01:54:53'),
(3, 227, 139, '2017-07-03 19:50:58'),
(4, 227, 139, '2017-07-03 19:52:31'),
(5, 139, 227, '2017-07-03 19:54:14'),
(6, 139, 224, '2017-07-30 00:55:59'),
(7, 139, 187, '2017-07-30 00:56:07'),
(8, 144, 139, '2017-07-30 01:01:06'),
(9, 144, 139, '2017-07-30 01:01:10'),
(10, 144, 139, '2017-07-30 01:01:17'),
(11, 144, 139, '2017-07-30 01:01:21'),
(12, 139, 206, '2017-07-30 01:05:25'),
(13, 139, 187, '2017-07-30 01:19:42'),
(14, 144, 142, '2017-07-30 01:20:50'),
(15, 144, 142, '2017-07-30 01:20:54'),
(16, 144, 139, '2017-07-30 01:21:00'),
(17, 144, 139, '2017-07-30 01:21:02'),
(18, 144, 139, '2017-07-30 01:28:21'),
(19, 144, 139, '2017-07-30 01:28:24'),
(20, 139, 144, '2017-07-30 01:40:33'),
(21, 144, 187, '2017-07-30 01:43:00'),
(22, 144, 187, '2017-07-30 01:43:07'),
(23, 144, 139, '2017-07-30 01:44:23'),
(24, 144, 139, '2017-07-30 01:44:55'),
(25, 144, 139, '2017-07-30 01:44:59'),
(26, 144, 139, '2017-07-30 01:45:17'),
(27, 144, 187, '2017-07-30 03:49:53'),
(28, 144, 187, '2017-07-30 03:49:56'),
(29, 144, 187, '2017-07-30 03:51:15'),
(30, 144, 187, '2017-07-30 03:51:22'),
(31, 144, 187, '2017-07-30 03:52:35'),
(32, 144, 187, '2017-07-30 03:52:38'),
(33, 144, 187, '2017-07-30 03:52:54'),
(34, 144, 187, '2017-07-30 03:52:58'),
(35, 144, 139, '2017-07-30 03:53:21'),
(36, 144, 139, '2017-07-30 03:53:25'),
(37, 144, 160, '2017-07-30 04:21:42'),
(38, 250, 219, '2023-03-03 15:40:36'),
(39, 250, 195, '2023-03-03 15:41:50'),
(40, 250, 195, '2023-03-03 15:42:15'),
(41, 250, 150, '2023-03-06 11:14:11'),
(42, 250, 10, '2023-03-06 11:29:35'),
(43, 19, 13, '2023-03-06 11:31:25'),
(44, 19, 13, '2023-03-06 11:43:44'),
(45, 19, 11, '2023-03-06 11:59:20'),
(46, 251, 19, '2023-03-06 12:15:53'),
(47, 251, 19, '2023-03-06 12:17:04'),
(48, 19, 251, '2023-03-06 13:08:39');

-- --------------------------------------------------------

--
-- Table structure for table `recommends`
--

CREATE TABLE `recommends` (
  `recommend_id` int(11) NOT NULL,
  `recommend_by` int(11) NOT NULL,
  `recommend_to` int(11) NOT NULL,
  `recommend_of` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recommends`
--

INSERT INTO `recommends` (`recommend_id`, `recommend_by`, `recommend_to`, `recommend_of`, `time`) VALUES
(1, 139, 144, 187, '2017-07-30 01:19:56'),
(2, 139, 187, 144, '2017-07-30 01:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `share_id` int(11) NOT NULL,
  `share_by` int(11) NOT NULL,
  `share_to` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `share_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`share_id`, `share_by`, `share_to`, `post_id`, `share_time`) VALUES
(3, 139, 166, 11, '2017-07-30 00:51:38'),
(4, 139, 187, 11, '2017-07-30 01:14:45'),
(5, 139, 227, 11, '2017-07-30 01:38:00');

-- --------------------------------------------------------

--
-- Table structure for table `taggings`
--

CREATE TABLE `taggings` (
  `tagging_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `taggings` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggings_id` int(11) NOT NULL,
  `taggings_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggings`
--

INSERT INTO `taggings` (`tagging_id`, `post_id`, `taggings`, `taggings_id`, `taggings_time`) VALUES
(5, 10, 'takkar', 139, '2017-07-30 00:49:38'),
(6, 11, 'takkar', 139, '2017-07-30 00:50:06'),
(22, 35, 'Nicko', 19, '2023-03-06 12:19:52'),
(23, 37, 'coldplay', 18, '2023-03-06 15:37:07'),
(24, 37, 'Damiog', 251, '2023-03-06 15:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_id`, `user_id`, `tags`) VALUES
(65, 139, 'programmer');

-- --------------------------------------------------------

--
-- Table structure for table `text_post`
--

CREATE TABLE `text_post` (
  `text_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `text_post`
--

INSERT INTO `text_post` (`text_post_id`, `post_id`, `text`) VALUES
(3, 10, 'Hello😨😨😨😨😨😨'),
(5, 16, 'hjhj'),
(7, 30, 'hjhj'),
(8, 31, 'drea'),
(9, 34, 'I am so happy'),
(10, 39, 'I NEED FOOD');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('public','private') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `signup` datetime NOT NULL,
  `email_activated` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `last_login` datetime NOT NULL,
  `pri_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pri_os` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pri_browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `surname`, `email`, `password`, `facebook`, `instagram`, `twitter`, `youtube`, `website`, `mobile`, `bio`, `type`, `signup`, `email_activated`, `last_login`, `pri_ip`, `pri_os`, `pri_browser`) VALUES
(1, 'zayn', 'the_', 'zayn', 'zayn@hotmail.com', '$2y$10$XEeVWGcxz7Yy72rotBHog.MMP/I2e1QYkubkeag3AdMzWOjjgV6j6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'private', '2023-03-03 14:04:15', 'yes', '2023-03-03 14:04:15', '1', 'Windows 10', 'Chrome'),
(2, 'modric', 'modric', 'modi', 'modric@gmail.com', '$2y$10$9Q.ZQuHqDSAawwyDyDeo6uVnl/bcHFY4XKE/XonzYrnFM3biUkHxa', '', '', '', '', '', '', '🌞🌞🌞🌞', 'public', '2023-03-03 16:38:49', 'yes', '2023-03-03 16:38:49', '1', 'Windows 10', 'Chrome'),
(3, 'selenagomez', 'selena', 'gomez', 'selena@gmail.com', '$2y$10$IktQRVd262bp0Ihv2A06ferDhWAW/R0LhDwKxXWjPb3ycGDRx4ccC', 'https://www.facebook.com/Selena/', 'https://www.instagram.com/selenagomez/', 'https://twitter.com/selenagomez?ref_srctwsrc5Egoogle7Ctwcamp5Eserp7Ctwgr5Eauthor', 'https://www.youtube.com/user/SelenaGomezVEVO', 'https://www.selenagomez.com/', '', 'Get \'It Ain\'t Me\' with Kygo, out now. Enjoy!!😛😛', 'private', '2023-03-03 19:36:54', 'yes', '2023-03-03 19:36:54', '3', 'Windows 10', 'Chrome'),
(4, 'paula', 'paula', 'ghalib', 'paula@gmail.com', '$2y$10$jOJJJTFANBTOtW4b8m.ci.22KLhZClVeEkIhM9DVkLyP3pELFVeku', '', '', '', '', 'https://www.google.co.in/webhp?sourceidchrome-instant&ion1&espv2&ieUTF-8qghalib&#q=ghalib&*', '', 'Urdu Poet.', 'private', '2023-03-03 19:45:50', 'yes', '2023-03-03 19:45:50', '1', 'Windows 10', 'Chrome'),
(5, 'toba', 'toba', 'toba', 'toba@gmail.com', '$2y$10$rfMPxbC76Msi4w1yxO5YpeiYHtzdI56AU1BqOezEnfpm/D02UVXXW', '', '', '', '', '', '', 'A sufi singer.', 'public', '2023-03-03 21:43:38', 'yes', '2023-03-03 21:43:38', '1', 'Windows 10', 'Chrome'),
(6, 'Ben', 'Ben', 'kalam', 'Ben@gmail.com', '$2y$10$zhGjq.7AxTtAVU4Lrm/dIu8K8p0rYvo3SU496S1ptC/3lgL73qs6m', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2023-03-03 21:54:22', 'yes', '2023-03-03 21:54:22', '1', 'Windows 10', 'Chrome'),
(9, 'stella', 'stella', 'nobi', 'stella@gmail.com', '$2y$10$9kM9TpO9kjfTn.R2jnEia.3tz7F38QKiKifyfWDjW5al6aQUOeimu', '', '', '', '', '', '', 'Shh... I\'m sleeping right now.', 'public', '2023-03-03 22:11:22', 'yes', '2023-03-03 22:11:22', '1', 'Windows 10', 'Chrome'),
(10, 'steve_jobs', 'steve', 'jobs', 'steve@gmail.com', '$2y$10$/DpfUzQvet0u7BVtW3mI9.LD0DmVOl53FHEPs67VP.mYR.FqOLSgi', '', '', '', '', '', '', 'Apple', 'public', '2023-03-03 22:16:20', 'yes', '2023-03-03 22:16:20', '1', 'Windows 10', 'Chrome'),
(11, 'mj', 'michael', 'jackson', 'mj@gmail.com', '$2y$10$AWOumiYts02rtbI6GG/0Le/z7hUjCtBJwNS6.z/opDAMaSCErf/Ci', '', '', '', '', '', '', 'KING OF POP.', 'public', '2023-03-03 22:27:07', 'yes', '2023-03-03 22:27:07', '1', 'Windows 10', 'Chrome'),
(12, 'voldemort', 'lord', 'voldemort', 'lord@gmail.com', '$2y$10$cSpyMlCfMlCScH9r2/DYmuu42QPO9iDaV3j.vUua.M1ohdBqWhaMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2023-03-03 22:33:57', 'yes', '2023-03-03 22:33:57', '1', 'Windows 10', 'Chrome'),
(13, 'greg', 'greg', 'greg', 'greg@gmail.com', '$2y$10$yinUubQ3Gl1ImSeO61y87.n9vjUbqxJ73H1INtPJfpYNm0YfVyD4O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2023-03-04 14:33:54', 'yes', '2023-03-04 14:33:54', '1', 'Windows 10', 'Chrome'),
(14, 'dexter', 'dexters', 'laboratory', 'dexter@gmail.com', '$2y$10$bDARJPwkI3.eowdUjK4KGuHxkBfuOoywZ5667yquwRqWDn56Ql4BG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2023-03-04 00:56:56', 'yes', '2023-03-04 00:56:56', '1', 'Windows 10', 'Chrome'),
(15, 'dumbledore', 'albus', 'dumbledore', 'albus@gmail.com', '$2y$10$D74VnnC30GNLGHYfmIfc5O2K9O/N83BjkM500i6vkLwyy7Zq1yuyS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2023-03-04 00:02:46', 'yes', '2023-03-04 00:02:46', '1', 'Windows 10', 'Chrome'),
(16, 'Johnny-depp', 'johnny', 'depp', 'johnnydepp@gmail.com', '$2y$10$sJfxVvxanZMn9WBmG4q5.exZU15h/DeM60Y4xwS0EAM/SSs8syD0G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2023-03-04 16:13:13', 'yes', '2023-03-04 16:13:13', '1', 'Windows 10', 'Chrome'),
(17, 'Van-gogh', 'Vincent', 'van-gogh', 'van-gogh@gmail.com', '$2y$10$Y4s8K56yWGScgd4WpU5zjObPo77YzdLP8Twje5PmKd5gu1FR6Mzx6', '', '', '', '', '', '', ' A painter.', 'public', '2023-03-05 00:33:01', 'yes', '2023-03-05 00:33:01', '1', 'Windows 10', 'Chrome'),
(18, 'coldplay', 'cold', 'play', 'coldplay@gmail.com', '$2y$10$jqHQsPVpdITeMyDOrkKFXO6zuRb0v9ke1drNUNhrIIx1L4kmMktqK', '', '', '', '', '', '', '', 'public', '2023-03-05 15:15:53', 'yes', '2023-03-05 15:15:53', '1', 'Windows 10', 'Chrome'),
(19, 'Nicko', 'Nick', 'chi', 'drea@gmail.com', '$2y$10$vK0izv5QKo0.1fCRomdupOXWQfMkqk/uslUZBv1k/tPu5SzkMcT4C', '', '', '', '', '', '', '', 'public', '2023-03-03 02:56:28', 'no', '2023-03-03 02:56:28', '1', 'Windows 10', 'Chrome'),
(251, 'Damiog', 'bro', 'test', 'dea@gmail.com', '$2y$10$x3f5re1LRQeUnMkKgfAoUewLVVpaRNdrUPFkg.874eLjgC2pr7nx2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'public', '2023-03-06 12:15:39', 'no', '2023-03-06 12:15:39', '1', 'Windows 10', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `video_post`
--

CREATE TABLE `video_post` (
  `video_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_post`
--

INSERT INTO `video_post` (`video_post_id`, `post_id`, `video`, `about`) VALUES
(6, 36, '1678108322.mp4', 'Jobs in Us');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audio_post`
--
ALTER TABLE `audio_post`
  ADD PRIMARY KEY (`audio_post_Id`);

--
-- Indexes for table `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`bkmrk_id`);

--
-- Indexes for table `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`comment_like_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `doc_post`
--
ALTER TABLE `doc_post`
  ADD PRIMARY KEY (`doc_post_id`);

--
-- Indexes for table `email_private`
--
ALTER TABLE `email_private`
  ADD PRIMARY KEY (`e_p_id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `follow_system`
--
ALTER TABLE `follow_system`
  ADD PRIMARY KEY (`follow_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `group_con`
--
ALTER TABLE `group_con`
  ADD PRIMARY KEY (`grp_con_id`);

--
-- Indexes for table `group_con_members`
--
ALTER TABLE `group_con_members`
  ADD PRIMARY KEY (`grp_con_mem_id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`group_mem_id`);

--
-- Indexes for table `grpconunreads`
--
ALTER TABLE `grpconunreads`
  ADD PRIMARY KEY (`gru_id`);

--
-- Indexes for table `hashtag`
--
ALTER TABLE `hashtag`
  ADD PRIMARY KEY (`hashtag_id`);

--
-- Indexes for table `image_post`
--
ALTER TABLE `image_post`
  ADD PRIMARY KEY (`image_post_id`);

--
-- Indexes for table `invitegrp`
--
ALTER TABLE `invitegrp`
  ADD PRIMARY KEY (`inviteGrpId`);

--
-- Indexes for table `link_post`
--
ALTER TABLE `link_post`
  ADD PRIMARY KEY (`link_post_id`);

--
-- Indexes for table `loc_post`
--
ALTER TABLE `loc_post`
  ADD PRIMARY KEY (`loc_post_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `mobile_private`
--
ALTER TABLE `mobile_private`
  ADD PRIMARY KEY (`m_p_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`noti_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`post_comments_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`post_likes_id`);

--
-- Indexes for table `profile_views`
--
ALTER TABLE `profile_views`
  ADD PRIMARY KEY (`view_id`);

--
-- Indexes for table `recommends`
--
ALTER TABLE `recommends`
  ADD PRIMARY KEY (`recommend_id`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`share_id`);

--
-- Indexes for table `taggings`
--
ALTER TABLE `taggings`
  ADD PRIMARY KEY (`tagging_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `text_post`
--
ALTER TABLE `text_post`
  ADD PRIMARY KEY (`text_post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_post`
--
ALTER TABLE `video_post`
  ADD PRIMARY KEY (`video_post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audio_post`
--
ALTER TABLE `audio_post`
  MODIFY `audio_post_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `block`
--
ALTER TABLE `block`
  MODIFY `block_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `bkmrk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `comment_like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doc_post`
--
ALTER TABLE `doc_post`
  MODIFY `doc_post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_private`
--
ALTER TABLE `email_private`
  MODIFY `e_p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `follow_system`
--
ALTER TABLE `follow_system`
  MODIFY `follow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `group_con`
--
ALTER TABLE `group_con`
  MODIFY `grp_con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `group_con_members`
--
ALTER TABLE `group_con_members`
  MODIFY `grp_con_mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `group_mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `grpconunreads`
--
ALTER TABLE `grpconunreads`
  MODIFY `gru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `hashtag`
--
ALTER TABLE `hashtag`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image_post`
--
ALTER TABLE `image_post`
  MODIFY `image_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `invitegrp`
--
ALTER TABLE `invitegrp`
  MODIFY `inviteGrpId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `link_post`
--
ALTER TABLE `link_post`
  MODIFY `link_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loc_post`
--
ALTER TABLE `loc_post`
  MODIFY `loc_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `mobile_private`
--
ALTER TABLE `mobile_private`
  MODIFY `m_p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `noti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `post_comments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `post_likes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `profile_views`
--
ALTER TABLE `profile_views`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `recommends`
--
ALTER TABLE `recommends`
  MODIFY `recommend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `share_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `taggings`
--
ALTER TABLE `taggings`
  MODIFY `tagging_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `text_post`
--
ALTER TABLE `text_post`
  MODIFY `text_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `video_post`
--
ALTER TABLE `video_post`
  MODIFY `video_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
