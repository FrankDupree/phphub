-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2016 at 09:12 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ops`
--

-- --------------------------------------------------------

--
-- Table structure for table `appends`
--

CREATE TABLE IF NOT EXISTS `appends` (
  `id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appends`
--

INSERT INTO `appends` (`id`, `content`, `topic_id`, `created_at`, `updated_at`) VALUES
(1, '<p>It better work</p>', 25, '2015-06-12 07:58:51', '2015-06-12 07:58:51'),
(2, '<p>Ok, so this isnt gonna work</p>', 12, '2015-06-12 08:13:13', '2015-06-12 08:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE IF NOT EXISTS `assigned_roles` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attentions`
--

CREATE TABLE IF NOT EXISTS `attentions` (
  `id` int(10) unsigned NOT NULL,
  `topic_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(10) unsigned NOT NULL,
  `topic_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `topic_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2015-05-31 20:33:44', '2015-05-31 20:33:44'),
(2, 1, 6, '2015-05-31 20:44:08', '2015-05-31 20:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE IF NOT EXISTS `follows` (
  `id` int(10) unsigned NOT NULL,
  `follower_id` int(11) NOT NULL,
  `followed_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`id`, `follower_id`, `followed_id`, `created_at`, `updated_at`) VALUES
(1, 6, 8, '2015-06-01 10:42:27', '2015-06-01 10:42:27'),
(2, 1, 6, '2015-06-01 11:47:02', '2015-06-01 11:47:02'),
(3, 1, 8, '2015-06-08 12:40:57', '2015-06-08 12:40:57'),
(4, 11, 6, '2015-06-09 20:18:11', '2015-06-09 20:18:11'),
(5, 12, 6, '2015-06-10 19:58:15', '2015-06-10 19:58:15'),
(6, 8, 6, '2015-06-10 19:59:34', '2015-06-10 19:59:34'),
(7, 7, 6, '2015-06-10 20:00:50', '2015-06-10 20:00:50'),
(8, 7, 8, '2015-06-13 20:46:31', '2015-06-13 20:46:31'),
(9, 12, 13, '2015-06-13 22:47:41', '2015-06-13 22:47:41'),
(11, 13, 12, '2015-06-13 22:55:52', '2015-06-13 22:55:52'),
(12, 11, 13, '2015-06-13 23:13:20', '2015-06-13 23:13:20'),
(13, 13, 11, '2015-06-13 23:16:33', '2015-06-13 23:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cover` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `title`, `link`, `created_at`, `updated_at`, `cover`) VALUES
(1, 'Ruby China', 'https://ruby-china.org', '2015-05-11 21:21:42', '2015-05-11 21:21:42', 'assets/images/friends/ruby-china.png'),
(2, 'Golang 中国', 'http://golangtc.com/', '2015-05-11 21:21:42', '2015-05-11 21:21:42', 'assets/images/friends/golangcn.png'),
(3, 'CNode：Node.js 中文社区', 'http://cnodejs.org/', '2015-05-11 21:21:42', '2015-05-11 21:21:42', 'assets/images/friends/cnodejs.png'),
(4, 'F2E - 前端技术社区', 'http://f2e.im/', '2015-05-11 21:21:42', '2015-05-11 21:21:42', 'assets/images/friends/f2e.png');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) unsigned NOT NULL,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `thread_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'i wonder if it works', '2015-06-12 10:40:48', '2015-06-12 10:40:48'),
(2, 2, 6, 'tnx, got the message', '2015-06-12 11:06:10', '2015-06-12 11:06:10'),
(3, 2, 1, 'yeah, i got it, very awesome feel, i love it', '2015-06-12 11:14:08', '2015-06-12 11:14:08'),
(4, 3, 1, 'Grace, hope all is well', '2015-06-12 20:55:17', '2015-06-12 20:55:17'),
(5, 4, 1, 'Kelvin i saw this post, it was awesome, hope u enjoy it\r\nhttp://localhost:8000/topics/12', '2015-06-13 16:43:52', '2015-06-13 16:43:52'),
(6, 3, 8, 'i hear you oga', '2015-06-13 16:49:00', '2015-06-13 16:49:00'),
(7, 3, 8, 'will add hum now', '2015-06-13 17:15:21', '2015-06-13 17:15:21'),
(8, 3, 6, 'yeah, im in niccur', '2015-06-13 17:16:37', '2015-06-13 17:16:37'),
(9, 4, 8, 'I am going to add grace to the chat', '2015-06-13 20:47:25', '2015-06-13 20:47:25'),
(10, 4, 7, 'yeah, im in', '2015-06-13 20:48:13', '2015-06-13 20:48:13'),
(11, 4, 8, '', '2015-06-13 21:03:43', '2015-06-13 21:03:43'),
(12, 5, 1, 'i am happy to see you now, can we talk', '2015-06-13 22:12:43', '2015-06-13 22:12:43'),
(13, 6, 1, 'Hope yall understand', '2015-06-13 22:29:33', '2015-06-13 22:29:33'),
(14, 6, 12, 'sup dear, i see you', '2015-06-13 22:31:00', '2015-06-13 22:31:00'),
(15, 7, 13, 'this is my number', '2015-06-13 22:43:10', '2015-06-13 22:43:10'),
(16, 7, 12, 'yeah, i feel you', '2015-06-13 22:44:08', '2015-06-13 22:44:08'),
(17, 8, 13, 'God im sorry, just want to say thank you, i know it was you all along', '2015-06-13 23:17:29', '2015-06-13 23:17:29'),
(18, 2, 10, 'your post has been hacked', '2015-06-14 10:08:02', '2015-06-14 10:08:02'),
(19, 8, 12, 'k', '2015-06-16 11:35:53', '2015-06-16 11:35:53'),
(20, 9, 6, 'Hope i havent broken this shit', '2015-07-08 23:07:45', '2015-07-08 23:07:45'),
(21, 1, 6, 'yeah, it should work\r\n', '2015-07-09 09:30:54', '2015-07-09 09:30:54'),
(22, 10, 6, 'I am test running this ish', '2015-07-09 09:58:45', '2015-07-09 09:58:45'),
(23, 10, 1, 'Seun back to you, hope this works', '2015-07-09 10:28:56', '2015-07-09 10:28:56'),
(24, 11, 1, 'Lorem ipsum', '2016-01-09 07:57:58', '2016-01-09 07:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_01_03_011552_create_site_statuses_table', 1),
('2014_08_08_234417_create_users_table', 1),
('2014_08_10_085349_create_topics_table', 1),
('2014_08_10_091306_create_nodes_table', 1),
('2014_08_12_124425_create_replies_table', 1),
('2014_08_13_130603_entrust_setup_tables', 1),
('2014_08_14_221225_create_tips_table', 1),
('2014_08_15_163951_create_links_table', 1),
('2014_08_16_200848_create_favorites_table', 1),
('2014_08_19_080606_create_notifications_table', 1),
('2014_08_19_083110_add_notifications_field_to_user_table', 1),
('2014_08_19_162628_create_attention_table', 1),
('2014_08_20_130447_create_votes_table', 1),
('2014_08_22_112136_add_order_field_to_topic_table', 1),
('2014_08_24_080733_add_body_original_field_to_topics_table', 1),
('2014_08_24_102913_add_excerpt_field_to_topics_table', 1),
('2014_08_27_092832_add_github_name_filed_to_users_table', 1),
('2014_08_27_210652_add_body_original_filed_to_replies_table', 1),
('2014_10_12_080007_add_cover_field_to_links_table', 1),
('2015_03_02_102317_create_appends_table', 1),
('2015_03_25_115359_add_avatar_to_users', 1),
('2015_05_28_104020_add_votes_to_user_table', 2),
('2015_05_28_135645_add_columns_to_users', 3),
('2014_07_29_184354_create_follows_table', 4),
('2015_06_10_100053_create_password_reminders_table', 5),
('2015_06_12_111312_add_notify_to_user_table', 6),
('2014_10_28_175635_create_threads_table', 7),
('2014_10_28_175710_create_messages_table', 7),
('2014_10_28_180224_create_participants_table', 7),
('2014_11_03_154831_add_soft_deletes_to_participants_table', 7),
('2014_11_10_083449_add_nullable_to_last_read_in_participants_table', 7),
('2014_11_20_131739_alter_last_read_in_participants_table', 7),
('2014_12_04_124531_add_softdeletes_to_threads_table', 7),
('2015_06_12_112226_add_notify_to_user_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `nodes`
--

CREATE TABLE IF NOT EXISTS `nodes` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_node` smallint(6) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `topic_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nodes`
--

INSERT INTO `nodes` (`id`, `name`, `slug`, `parent_node`, `description`, `topic_count`, `created_at`, `updated_at`) VALUES
(1, 'CATEGORIES', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Health', 'health', 1, 'Latest job opportunities in the health sector', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Football', 'football', 1, 'latest club transfers, betting and live scores', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Tennis', 'tennis', 1, 'Follow the latest sporting activities in the world of tennis', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Relationship', 'relationship', 1, 'Love is sweet, why not find the right match here', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Business', 'business', 1, 'Meet people, create a team, build a network', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Religion', 'religion', 1, 'Finding God should easy', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Fashion', 'fashion', 1, 'get the latest tips and oportunities in the fashion industry', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Housing', 'housing', 1, 'Real Estate deals and expenses', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Job', 'job', 1, 'Be the first to get the latest job openings', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Education', 'education', 1, 'Study abroad, get student visas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Law', 'law', 1, 'Law cases, coruption news, be informed', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(10) unsigned NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `from_user_id`, `user_id`, `topic_id`, `reply_id`, `body`, `type`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 1, 0, '', 'topic_upvote', '2015-05-31 20:42:01', '2015-05-31 20:42:01'),
(2, 6, 1, 1, 1, '<p>i am interested sir, please my number is 08033538123</p>', 'new_reply', '2015-05-31 20:43:06', '2015-05-31 20:43:06'),
(3, 6, 1, 1, 0, '', 'topic_favorite', '2015-05-31 20:44:08', '2015-05-31 20:44:08'),
(4, 8, 1, 1, 2, '<p>Cool post i really feel you</p>', 'new_reply', '2015-06-01 08:39:31', '2015-06-01 08:39:31'),
(5, 8, 1, 1, 0, '', 'topic_upvote', '2015-06-01 08:39:43', '2015-06-01 08:39:43'),
(6, 1, 7, 3, 0, '', 'topic_upvote', '2015-06-01 09:23:13', '2015-06-01 09:23:13'),
(7, 7, 6, 4, 0, '', 'topic_upvote', '2015-06-01 09:41:43', '2015-06-01 09:41:43'),
(8, 1, 8, 1, 22, '<p><a href="http://localhost:8000/users/8">@kelvin</a> i dont understand what you mean though</p>', 'at', '2015-06-01 16:35:06', '2015-06-01 16:35:06'),
(9, 1, 6, 1, 23, '<p><a href="http://localhost:8000/users/6">@Seun</a> wadup bro, still dont get how this works</p>', 'at', '2015-06-01 16:36:25', '2015-06-01 16:36:25'),
(10, 1, 6, 6, 0, '', 'topic_mark_wiki', '2015-06-01 16:42:49', '2015-06-01 16:42:49'),
(11, 1, 6, 6, 0, '', 'topic_mark_excellent', '2015-06-01 16:43:16', '2015-06-01 16:43:16'),
(12, 1, 7, 3, 0, '', 'topic_mark_excellent', '2015-06-01 21:04:21', '2015-06-01 21:04:21'),
(13, 1, 6, 6, 25, '<p>:blush:</p>', 'new_reply', '2015-06-01 21:21:07', '2015-06-01 21:21:07'),
(14, 1, 7, 5, 0, '', 'topic_mark_wiki', '2015-06-04 11:52:44', '2015-06-04 11:52:44'),
(15, 1, 6, 4, 0, '', 'topic_mark_wiki', '2015-06-04 11:52:50', '2015-06-04 11:52:50'),
(16, 1, 7, 3, 0, '', 'topic_mark_wiki', '2015-06-04 11:52:55', '2015-06-04 11:52:55'),
(17, 1, 8, 2, 0, '', 'topic_mark_wiki', '2015-06-04 11:53:02', '2015-06-04 11:53:02'),
(18, 1, 6, 6, 0, '', 'topic_upvote', '2015-06-04 12:09:00', '2015-06-04 12:09:00'),
(19, 1, 8, 2, 0, '', 'topic_mark_excellent', '2015-06-04 12:57:41', '2015-06-04 12:57:41'),
(20, 1, 8, 13, 26, '<p>:flushed:</p>', 'new_reply', '2015-06-08 12:38:20', '2015-06-08 12:38:20'),
(21, 7, 1, 1, 28, '<p><img src="http://localhost:8000/uploads/images/201506/10/7/Lh2wQSK28L.png" alt="file" /></p>', 'new_reply', '2015-06-10 20:18:58', '2015-06-10 20:18:58'),
(22, 1, 6, 1, 28, '<p><a href="http://localhost:8000/users/6">@Seun</a> hihiooioioiooioiyioyioyiioyi</p>', 'at', '2015-06-11 18:08:18', '2015-06-11 18:08:18'),
(23, 7, 1, 25, 29, '<p>@ frankdupree  i wonder if youll get this, please answer me asap</p>', 'new_reply', '2015-06-12 08:37:33', '2015-06-12 08:37:33'),
(24, 7, 1, 25, 30, '<p><a href="http://localhost:8000/users/1">@frankdupree</a></p>', 'new_reply', '2015-06-12 08:38:13', '2015-06-12 08:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE IF NOT EXISTS `participants` (
  `id` int(10) unsigned NOT NULL,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `last_read` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `thread_id`, `user_id`, `last_read`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2015-07-09 09:52:47', '2015-06-12 10:40:48', '2015-07-09 09:52:47', NULL),
(2, 1, 6, '2015-07-09 09:52:08', '2015-06-12 10:40:48', '2015-07-09 09:52:08', NULL),
(3, 2, 6, '2015-07-09 07:39:49', '2015-06-12 11:06:10', '2015-07-09 07:39:49', NULL),
(4, 2, 1, '2015-07-04 19:17:00', '2015-06-12 11:06:10', '2015-07-04 19:17:00', NULL),
(5, 3, 1, '2015-07-04 19:16:15', '2015-06-12 20:55:17', '2015-07-04 19:16:15', NULL),
(6, 3, 8, '2015-06-13 21:04:17', '2015-06-12 20:55:18', '2015-06-13 21:04:17', NULL),
(7, 4, 1, '2015-07-04 19:16:47', '2015-06-13 16:43:53', '2015-07-04 19:16:47', NULL),
(8, 4, 8, '2015-06-16 12:20:51', '2015-06-13 16:43:53', '2015-06-16 12:20:51', NULL),
(9, 3, 6, '2015-06-13 17:16:38', '2015-06-13 17:15:21', '2015-06-13 17:16:38', NULL),
(10, 4, 7, '2016-01-15 22:59:30', '2015-06-13 20:47:25', '2016-01-15 22:59:30', NULL),
(11, 5, 1, '2015-06-13 22:12:44', '2015-06-13 22:12:44', '2015-06-13 22:12:44', NULL),
(12, 6, 1, '2015-06-13 22:31:20', '2015-06-13 22:29:33', '2015-06-13 22:31:20', NULL),
(13, 6, 12, '2015-06-21 20:13:04', '2015-06-13 22:29:33', '2015-06-21 20:13:04', NULL),
(14, 7, 13, '2015-06-13 22:48:04', '2015-06-13 22:43:10', '2015-06-13 22:48:04', NULL),
(15, 7, 12, '2015-06-16 11:30:02', '2015-06-13 22:43:10', '2015-06-16 11:30:02', NULL),
(16, 8, 13, '2015-06-13 23:17:54', '2015-06-13 23:17:29', '2015-06-13 23:17:54', NULL),
(17, 8, 11, NULL, '2015-06-13 23:17:29', '2015-06-13 23:17:29', NULL),
(18, 2, 10, '2015-06-14 10:22:33', '2015-06-14 10:08:02', '2015-06-14 10:22:33', NULL),
(19, 8, 12, '2015-06-21 20:12:14', '2015-06-16 11:35:53', '2015-06-21 20:12:14', NULL),
(20, 9, 6, '2015-07-08 23:07:45', '2015-07-08 23:07:45', '2015-07-08 23:07:45', NULL),
(21, 9, 1, '2015-07-08 23:08:29', '2015-07-08 23:07:46', '2015-07-08 23:08:29', NULL),
(22, 10, 6, '2015-07-09 10:36:07', '2015-07-09 09:58:45', '2015-07-09 10:36:07', NULL),
(23, 10, 1, '2015-07-09 10:28:57', '2015-07-09 09:58:45', '2015-07-09 10:28:57', NULL),
(24, 11, 1, '2016-01-09 07:58:30', '2016-01-09 07:57:58', '2016-01-09 07:58:30', NULL),
(25, 11, 7, '2016-01-15 22:59:12', '2016-01-09 07:57:58', '2016-01-15 22:59:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

CREATE TABLE IF NOT EXISTS `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_reminders`
--

INSERT INTO `password_reminders` (`email`, `token`, `created_at`) VALUES
('frankyotana@yahoo.com', 'e69b90c226f7a5208d69a9e0b83556c0dbdab581', '2015-06-11 08:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_topics', 'Manage Topics', '2015-05-11 21:21:12', '2015-05-11 21:21:12'),
(2, 'manage_users', 'Manage Users', '2015-05-11 21:21:12', '2015-05-11 21:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE IF NOT EXISTS `replies` (
  `id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `is_block` tinyint(1) NOT NULL DEFAULT '0',
  `vote_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `body_original` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `body`, `user_id`, `topic_id`, `is_block`, `vote_count`, `created_at`, `updated_at`, `body_original`) VALUES
(1, '<p>i am interested sir, please my number is 08033538123</p>', 6, 1, 0, 0, '2015-05-31 20:43:06', '2015-05-31 20:43:06', 'i am interested sir, please my number is 08033538123'),
(20, '<p>i wonder whats up with this database</p>', 1, 7, 0, 0, '2015-06-01 16:31:58', '2015-06-01 16:31:58', 'i wonder whats up with this database'),
(22, '<p><a href="http://localhost:8000/users/8">@kelvin</a> i dont understand what you mean though</p>', 1, 1, 0, 0, '2015-06-01 16:35:05', '2015-06-01 16:35:05', '[@kelvin](http://localhost:8000/users/8) i dont understand what you mean though'),
(23, '<p><a href="http://localhost:8000/users/6">@Seun</a> wadup bro, still dont get how this works</p>', 1, 1, 0, 0, '2015-06-01 16:36:24', '2015-06-01 16:36:24', '[@Seun](http://localhost:8000/users/6) wadup bro, still dont get how this works\r\n'),
(24, '<p>ok, cool</p>', 1, 1, 0, 0, '2015-06-01 16:41:43', '2015-06-01 16:41:43', 'ok, cool'),
(25, '<p>:blush:</p>', 1, 6, 0, 0, '2015-06-01 21:21:06', '2015-06-01 21:21:06', ':blush:'),
(26, '<p>:flushed:</p>', 1, 13, 0, 0, '2015-06-08 12:38:19', '2015-06-08 12:38:19', ':flushed:'),
(27, '<p>:flushed:</p>', 1, 1, 0, 0, '2015-06-08 12:57:45', '2015-06-08 12:57:45', ':flushed:'),
(28, '<p><a href="http://localhost:8000/users/6">@Seun</a> hihiooioioiooioiyioyioyiioyi</p>', 1, 1, 0, 0, '2015-06-11 18:08:17', '2015-06-11 18:08:17', '[@Seun](http://localhost:8000/users/6) hihiooioioiooioiyioyioyiioyi'),
(30, '<p><a href="http://localhost:8000/users/1">@frankdupree</a></p>', 7, 25, 0, 0, '2015-06-12 08:38:12', '2015-06-12 08:38:12', '[@frankdupree](http://localhost:8000/users/1)');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Founder', '2015-05-11 21:21:11', '2015-05-11 21:21:11'),
(2, 'Admin', '2015-05-11 21:21:12', '2015-05-11 21:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `site_statuses`
--

CREATE TABLE IF NOT EXISTS `site_statuses` (
  `id` int(10) unsigned NOT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `register_count` int(11) NOT NULL DEFAULT '0',
  `topic_count` int(11) NOT NULL DEFAULT '0',
  `reply_count` int(11) NOT NULL DEFAULT '0',
  `image_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_statuses`
--

INSERT INTO `site_statuses` (`id`, `day`, `register_count`, `topic_count`, `reply_count`, `image_count`, `created_at`, `updated_at`) VALUES
(1, '2015-05-11', 1, 0, 0, 0, '2015-05-11 21:21:12', '2015-05-11 21:21:12'),
(2, '2015-05-29', 5, 0, 0, 0, '2015-05-29 08:44:43', '2015-05-29 12:51:01'),
(3, '2015-05-31', 0, 1, 1, 0, '2015-05-31 20:27:57', '2015-05-31 20:43:06'),
(4, '2015-06-01', 2, 6, 24, 0, '2015-06-01 08:16:12', '2015-06-01 21:21:06'),
(5, '2015-06-05', 1, 7, 0, 0, '2015-06-05 11:43:49', '2015-06-05 13:30:08'),
(6, '2015-06-06', 1, 0, 0, 0, '2015-06-06 10:48:41', '2015-06-06 10:48:41'),
(7, '2015-06-08', 0, 1, 2, 0, '2015-06-08 12:38:19', '2015-06-08 21:28:34'),
(8, '2015-06-09', 1, 9, 0, 0, '2015-06-09 09:30:00', '2015-06-09 09:48:56'),
(9, '2015-06-10', 2, 0, 1, 1, '2015-06-10 08:05:53', '2015-06-10 20:18:58'),
(10, '2015-06-11', 0, 0, 1, 0, '2015-06-11 18:08:17', '2015-06-11 18:08:17'),
(11, '2015-06-12', 0, 2, 2, 0, '2015-06-12 07:58:13', '2015-06-12 10:01:58'),
(12, '2015-07-05', 0, 2, 0, 0, '2015-07-05 17:52:59', '2015-07-05 17:54:14'),
(13, '2015-07-09', 1, 0, 0, 0, '2015-07-09 18:46:51', '2015-07-09 18:46:51'),
(14, '2015-07-10', 1, 0, 0, 0, '2015-07-10 11:41:56', '2015-07-10 11:41:56'),
(15, '2016-01-15', 0, 1, 0, 0, '2016-01-15 22:20:57', '2016-01-15 22:20:57'),
(16, '2016-01-17', 0, 3, 0, 0, '2016-01-17 05:37:30', '2016-01-17 05:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE IF NOT EXISTS `threads` (
  `id` int(10) unsigned NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `subject`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'whats up, found this awesome article', '2015-06-12 10:40:47', '2015-07-09 09:30:54', NULL),
(2, 'Ok', '2015-06-12 11:06:09', '2015-06-14 10:08:02', NULL),
(3, 'Grace', '2015-06-12 20:55:16', '2015-06-13 17:16:37', NULL),
(4, 'Kelvin how far', '2015-06-13 16:43:52', '2015-06-13 21:03:44', NULL),
(5, 'Project Dev', '2015-06-13 22:12:43', '2015-06-13 22:12:44', NULL),
(6, 'sorry', '2015-06-13 22:29:33', '2015-06-13 22:31:00', NULL),
(7, 'its me Seyi', '2015-06-13 22:43:10', '2015-06-13 22:44:08', NULL),
(8, 'hahahahahahahahahhahaha', '2015-06-13 23:17:29', '2015-06-16 11:35:53', NULL),
(9, 'Franky Bobo', '2015-07-08 23:07:44', '2015-07-08 23:07:45', NULL),
(10, 'Hope you get the notification', '2015-07-09 09:58:45', '2015-07-09 10:28:56', NULL),
(11, 'Hello World', '2016-01-09 07:57:58', '2016-01-09 07:57:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE IF NOT EXISTS `tips` (
  `id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id`, `body`, `created_at`, `updated_at`) VALUES
(1, '<a href="http://laracasts.com/" target="_blank">Laracasts</a> 上面有很不错的 Laravel 开发技巧的视频，通通看完你可以学到很多东西', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '<a href="http://packalyst.com/" target="_blank">Packalyst</a> 上可以了解更多 Laravel 的 package.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '<a href="http://userscape.com/laracon/2014/" target="_blank">Laracon 2014</a> 这里是 Laracon NYC 2014 的现场录像', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '<a href="http://cheats.jesse-obrien.ca/" target="_blank">Laravel Cheat Sheet</a> 这里是 Laravel 的 Cheat Sheet.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'laravel.com/docs 没事多读读文档, 每一次都可以收获不少.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Laravel 在 HHVM 运行单元测试 100% 通过.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Learn something about everything and everything about something.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Any fool can write code that a computer can understand. Good programmers write code that humans can understand.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'phptherightway.com 上可以更新的 PHP 知识.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '<a href="http://www.buzzsprout.com/11908" target="_blank">Laravel.io 博客</a> - 听 Laravel 社区的几个领导者谈论技术.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Model::remember(5)->get(); 可以缓存 Model 五分钟', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '使用 CoffeeScript 和 Sass 来写 JavaScript 和 CSS 提高开发效率', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `is_excellent` tinyint(1) NOT NULL DEFAULT '0',
  `is_wiki` tinyint(1) NOT NULL DEFAULT '0',
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `reply_count` int(11) NOT NULL DEFAULT '0',
  `view_count` int(11) NOT NULL DEFAULT '0',
  `favorite_count` int(11) NOT NULL DEFAULT '0',
  `vote_count` int(11) NOT NULL DEFAULT '0',
  `last_reply_user_id` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order` int(11) NOT NULL DEFAULT '0',
  `body_original` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `body`, `user_id`, `node_id`, `is_excellent`, `is_wiki`, `is_blocked`, `reply_count`, `view_count`, `favorite_count`, `vote_count`, `last_reply_user_id`, `deleted_at`, `created_at`, `updated_at`, `order`, `body_original`, `excerpt`) VALUES
(1, 'please work', '<p>im trying to code ok, somone cut me some slacks..excited</p>', 1, 7, 0, 0, 0, 6, 71, 0, 2, 1, NULL, '2015-05-31 20:27:55', '2015-06-11 18:08:17', 0, 'im trying to code ok, somone cut me some slacks..excited', 'im trying to code ok, somone cut me some slacks..excited'),
(2, 'New Post', '<p>Where is the money</p>', 8, 8, 1, 1, 0, 0, 12, 0, 0, 0, NULL, '2015-06-01 09:16:38', '2015-06-01 09:16:38', 0, 'Where is the money', 'Where is the money'),
(3, 'I like Food', '<p>I like eating immediately i get to work</p>', 7, 12, 1, 1, 0, 0, 24, 0, -1, 0, NULL, '2015-06-01 09:17:45', '2015-06-01 09:17:45', 0, 'I like eating immediately i get to work', 'I like eating immediately i get to work'),
(4, 'I am a Yoruba boy', '<p>Who will marry me</p>', 6, 9, 0, 1, 0, 0, 17, 0, 1, 0, NULL, '2015-06-01 09:19:09', '2015-06-01 09:19:09', 0, 'Who will marry me', 'Who will marry me'),
(5, 'Why was my account banned', '<p>can someone please explain why my account was blaclisted</p>', 7, 12, 0, 1, 0, 0, 5, 0, 0, 0, NULL, '2015-06-01 09:42:57', '2015-06-01 09:42:57', 0, 'can someone please explain why my account was blaclisted', 'can someone please explain why my account was blaclisted'),
(6, 'Jesus Rocks', '<p>Wonder what this means when you say you can do anything</p>', 6, 11, 1, 1, 0, 1, 56, 0, 1, 1, NULL, '2015-06-01 11:42:47', '2015-06-01 21:21:07', 0, 'Wonder what this means when you say you can do anything', 'Wonder what this means when you say you can do anything'),
(7, 'Unit Testing', '<p>Trying to see is anything would break, pray it doesn''t mehn! besides, how are y''all doing, hope good..take care mehn, Gods speed.</p>', 1, 14, 1, 1, 0, 1, 54, 0, 0, 1, NULL, '2015-06-01 16:29:59', '2015-06-01 16:32:00', 0, 'Trying to see is anything would break, pray it doesn''t mehn! besides, how are y''all doing, hope good..take care mehn, Gods speed.', 'Trying to see is anything would break, pray it doesn''t mehn! besides, how are y''all doing, hope good..take care mehn, Gods speed.'),
(8, 'Law is cool', '<p>All lawyers are liars, please believe me when i say this</p>', 6, 17, 0, 0, 0, 0, 3, 0, 0, 0, NULL, '2015-06-05 11:43:46', '2015-06-05 11:43:46', 0, 'All lawyers are liars, please believe me when i say this', 'All lawyers are liars, please believe me when i say this'),
(9, 'School is for the edumb', '<p>School is meant fo the dumb, all great people never went to school</p>', 6, 16, 0, 0, 0, 0, 1, 0, 0, 0, NULL, '2015-06-05 11:44:55', '2015-06-05 11:44:55', 0, 'School is meant fo the dumb, all great people never went to school', 'School is meant fo the dumb, all great people never went to school'),
(10, 'Banana Island', '<p>That has gotta be the most expensive hotel in the world, anyway, i have got some vacant rooms, who is interested</p>', 6, 14, 0, 0, 0, 0, 3, 0, 0, 0, NULL, '2015-06-05 11:46:13', '2015-06-05 11:46:13', 0, 'That has gotta be the most expensive hotel in the world, anyway, i have got some vacant rooms, who is interested', 'That has gotta be the most expensive hotel in the world, anyway, i have got some vacant rooms, who is interested'),
(11, 'New Dresses For sale', '<p>Please buy my new dresses as we proceed into the new year</p>', 6, 13, 0, 0, 0, 0, 1, 0, 0, 0, NULL, '2015-06-05 11:47:08', '2015-06-05 11:47:08', 0, 'Please buy my new dresses as we proceed into the new year', 'Please buy my new dresses as we proceed into the new year'),
(12, 'House is good', '<p>How are you my people, i am very happy to post here</p>', 7, 14, 0, 0, 0, 0, 6, 0, 0, 0, NULL, '2015-06-05 13:23:59', '2015-06-05 13:23:59', 0, 'How are you my people, i am very happy to post here', 'How are you my people, i am very happy to post here'),
(13, 'I LOVE HOUSES', '<p>i want to stay in banana island</p>', 8, 14, 0, 0, 0, 1, 5, 0, 0, 1, NULL, '2015-06-05 13:26:40', '2015-06-08 12:38:19', 0, 'i want to stay in banana island', 'i want to stay in banana island'),
(14, 'I HAVE FOUR HOUSES', '<p>I want to give away four houses, please contact me if you want any</p>', 9, 14, 0, 0, 0, 0, 1, 0, 0, 0, NULL, '2015-06-05 13:30:07', '2015-06-05 13:30:07', 0, 'I want to give away four houses, please contact me if you want any', 'I want to give away four houses, please contact me if you want any'),
(15, 'Health is Wealth', '<p>I told them health is wealth, no one listened</p>', 1, 7, 0, 0, 0, 0, 1, 0, 0, 0, NULL, '2015-06-08 21:28:33', '2015-06-08 21:28:33', 0, 'I told them health is wealth, no one listened', 'I told them health is wealth, no one listened'),
(16, 'I need  a Job', '<p>Someone come and give me a <strong>job</strong></p>', 8, 15, 0, 0, 0, 0, 1, 0, 0, 0, NULL, '2015-06-09 09:30:00', '2015-06-09 09:30:00', 0, 'Someone come and give me a **job**', 'Someone come and give me a job'),
(17, 'God is great', '<p>God is the best in the world <strong>for real mehn</strong> hope yall understand :wink:</p>', 8, 12, 0, 0, 0, 0, 1, 0, 0, 0, NULL, '2015-06-09 09:31:45', '2015-06-09 09:31:45', 0, 'God is the best in the world **for real mehn** hope yall understand :wink:', 'God is the best in the world for real mehn hope yall understand :wink:'),
(18, 'I hate Nadal for real', '<p>hahahaha, not really, just kidding</p>', 8, 9, 0, 0, 0, 0, 1, 0, 0, 0, NULL, '2015-06-09 09:32:22', '2015-06-09 09:32:22', 0, 'hahahaha, not really, just kidding', 'hahahaha, not really, just kidding'),
(19, 'I hate all lawyers', '<p>for real nicca, hahahahahahahahaha</p>', 6, 17, 0, 0, 0, 0, 1, 0, 0, 0, NULL, '2015-06-09 09:34:56', '2015-06-09 09:34:56', 0, 'for real nicca, hahahahahahahahaha', 'for real nicca, hahahahahahahahaha'),
(20, 'I want a good girl on this forum', '<p>Any cute lady should pls holla me, i wanna marry one asap</p>', 6, 10, 0, 0, 0, 0, 1, 0, 0, 0, NULL, '2015-06-09 09:35:57', '2015-06-09 09:35:57', 0, 'Any cute lady should pls holla me, i wanna marry one asap', 'Any cute lady should pls holla me, i wanna marry one asap'),
(21, 'Please come and work with me on a project, i need a consultant asap', '<p>got a new job for yall, who can design websites</p>', 6, 11, 0, 0, 0, 0, 6, 0, 0, 0, NULL, '2015-06-09 09:37:02', '2015-06-09 09:37:02', 0, 'got a new job for yall, who can design websites', 'got a new job for yall, who can design websites'),
(22, 'I bake cakes', '<p>Hello y''all i bake cake, who wants me to bake cakes for them</p>', 11, 15, 0, 0, 0, 0, 1, 0, 0, 0, NULL, '2015-06-09 09:46:48', '2015-06-09 09:46:48', 0, 'Hello y''all i bake cake, who wants me to bake cakes for them', 'Hello y''all i bake cake, who wants me to bake cakes for them'),
(23, 'Who wants to partner with me', '<p>i want to team up and play tennis</p>', 11, 9, 0, 0, 0, 0, 1, 0, 0, 0, NULL, '2015-06-09 09:48:01', '2015-06-09 09:48:01', 0, 'i want to team up and play tennis', 'i want to team up and play tennis'),
(24, 'why men cheat', '<p>Men cheat because their wives are not fine enough, what do you think</p>', 11, 10, 0, 0, 0, 0, 3, 0, 0, 0, NULL, '2015-06-09 09:48:56', '2015-06-09 09:48:56', 0, 'Men cheat because their wives are not fine enough, what do you think', 'Men cheat because their wives are not fine enough, what do you think'),
(25, 'Why hasn''t Ebola been eradicated', '<p>Its a federal scam i tell you, the government is a scam</p>', 1, 7, 0, 0, 0, 1, 10, 0, 0, 7, NULL, '2015-06-12 07:58:11', '2015-06-12 08:38:12', 0, 'Its a federal scam i tell you, the government is a scam', 'Its a federal scam i tell you, the government is a scam'),
(26, 'Mansions Everywhere', '<p>hope yall understand what is happening here</p>', 8, 14, 0, 0, 0, 0, 6, 0, 0, 0, NULL, '2015-06-12 10:01:57', '2015-06-12 10:01:57', 0, 'hope yall understand what is happening here', 'hope yall understand what is happening here'),
(27, 'I need a Job', '<p>Hope this works</p>', 12, 15, 0, 0, 0, 0, 15, 0, 0, 0, NULL, '2015-07-05 17:52:54', '2015-07-05 17:52:54', 0, 'Hope this works', 'Hope this works'),
(28, 'Wanna go play Tennis', '<p>y''all should go play tennis wiv me</p>', 12, 9, 0, 0, 0, 0, 55, 0, 0, 0, NULL, '2015-07-05 17:54:14', '2015-07-05 17:54:14', 0, 'y''all should go play tennis wiv me', 'y''all should go play tennis wiv me'),
(29, 'I need a job asap', '<p>i need a job, like asap..anyone wants to hire me!!?</p>', 1, 15, 0, 0, 0, 0, 3, 0, 0, 0, NULL, '2016-01-15 22:20:54', '2016-01-15 22:20:54', 0, 'i need a job, like asap..anyone wants to hire me!!?', 'i need a job, like asap..anyone wants to hire me!!?'),
(30, 'Laravel and Composer', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua</p>', 6, 11, 0, 0, 0, 0, 1, 0, 0, 0, NULL, '2016-01-17 05:37:27', '2016-01-17 05:37:27', 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'),
(31, 'I need a new boyfriend', '<p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur.</p>', 7, 10, 0, 0, 0, 0, 5, 0, 0, 0, NULL, '2016-01-17 05:40:12', '2016-01-17 05:40:12', 0, 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur.', 'quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'),
(32, 'How to stay healthy', '<p>in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1, 7, 0, 0, 0, 0, 1, 0, 0, 0, NULL, '2016-01-17 05:48:59', '2016-01-17 05:48:59', 0, 'in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `github_id` int(11) NOT NULL,
  `github_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic_count` int(11) NOT NULL DEFAULT '0',
  `reply_count` int(11) NOT NULL DEFAULT '0',
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `notification_count` int(11) NOT NULL DEFAULT '0',
  `github_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_one` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cat_two` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cat_three` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `notify` enum('y','n') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'y'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `github_id`, `github_url`, `email`, `name`, `remember_token`, `is_banned`, `image_url`, `topic_count`, `reply_count`, `city`, `company`, `twitter_account`, `personal_website`, `signature`, `introduction`, `deleted_at`, `created_at`, `updated_at`, `notification_count`, `github_name`, `first_name`, `last_name`, `fullname`, `avatar`, `password`, `cat_one`, `cat_two`, `cat_three`, `sex`, `notify`) VALUES
(1, 324764, 'https://github.com/frankdupree', 'frankyotana@yahoo.com', 'frankdupree', '9mTBJIqQhmJ1twp53e5Jr59yN280H2uB3iUKF6SO4DnI3HmlfxzGdmbvxvzg', 0, '180-frank.jpg', 6, 26, 'Lagos', 'Buycheap Nigerian Limitd', 'FrankDupr33', 'www.ffo.com', '******', 'Writting message.......', NULL, '2015-05-11 21:21:12', '2016-01-17 05:48:59', 0, '', 'Frank ', 'Akogun', 'Frank.Akogun', '', '$2y$10$gTY/LzSBTO7.Q65ft54Awe4A91mtTAp9WWmu1PauWq3I1YBG8fSBa', '7', '14', '16', 'male', 'y'),
(6, 0, '', 'seun@yahoo.com', 'Seun', 'a4pYSiQIuw8T1sq4l8LSXGARGJD94bShZYCqGWE0ahwcsXa9t3VHvXS8Hv0r', 0, '180-hiit.png', 10, 1, 'Lasgidi', 'Eko', 'seun4life', 'www.ffro.com', 'i am', 'God bless', NULL, '2015-05-29 12:51:01', '2016-01-17 05:38:06', 0, '', 'Seun ', 'Osewa', 'Seun.Osewa', '', '$2y$10$uKlxFVqTAxZ4oUbY53bv1epSvgjYYLDCEUjQbNTP0BkFMXv6AVS9K', '7', '8', '17', 'male', 'y'),
(7, 0, '', 'grace@yahoo.com', 'grace', 'EpbMFsyPny9qgClxZhRLzkxVryKyFIQ2WUk9DSCt3dLo4EvFCqRnLpKrmTIh', 0, '180-girl.png', 4, 3, 'Benin', 'MTN Nigeria', 'grace4real', 'www.mtn.com', '2345', 'I am the wife of Okorocha', NULL, '2015-06-01 08:16:12', '2016-01-17 05:40:12', 0, '', 'Grace ', 'Okoro', 'Grace.Okoro', '', '$2y$10$rIEAt2SQ0U8RehrjWXmhFOlnMaOsrtyJc62ic77eabSDOObrYaoK6', '7', '8', '12', 'female', 'y'),
(8, 0, '', 'kelvin@yahoo.com', 'kelvin', 'UzYS4htl73Lld3wJEK7O1SFV08UqepD09KqIZw9C9IE7IK9phk2gzcGuTEoR', 0, '180-kelv.jpg', 6, 1, 'Benin', 'Nascar', 'kelvinkuds', 'www.nascar.com', '****', 'Im just trying to make a honest living', NULL, '2015-06-01 08:17:51', '2015-06-14 10:02:47', 0, '', 'Kelvin ', 'Chiddy', 'Kelvin.Chiddy', '', '$2y$10$oQ2Qqole2vYjjdBKxIFMYu7zURovCk6SJif6s9L18MCYxJgGcss6m', '7', '12', '8', 'male', 'y'),
(9, 0, '', 'nancy@yahoo.com', 'Nancy', '0LXXyBXVZZgxderQbFFoAtQYlXe9RETiJ4SwqATYF5ybbMPKz4UtoxxxEz0S', 0, '180-i354989412_jpg_180x180_q85.jpg', 1, 0, 'Onitsha', 'Dormalong', 'nancymoon', 'www.nancy.com', 'vcvcvcvc', 'i am the best', NULL, '2015-06-05 13:29:09', '2015-06-13 21:30:50', 0, '', 'Nancy', 'Moon', 'Nancy.Moon', '', '$2y$10$PjfikrIR6Di8hgvlUWJY/eyMMEnBmedPIs.JO0h3DsFPtYBfWkwnu', '14', '8', '17', 'female', 'y'),
(10, 0, '', 'dizzydalo@yahoo.com', 'dizzydalo', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-06-06 10:48:41', '2015-06-14 10:05:19', 0, '', NULL, NULL, NULL, '', '$2y$10$/txe4PNoavqKbu5OstCjkehH3WG02Al3q9FXWJr73hby3xwi/abSq', '15', '10', '11', 'male', 'y'),
(11, 0, '', 'sarah@yahoo.com', 'sarah', 'VkorRdoyFYEik9VNISWVtTqnaH2n49LCB4V8pnLqft1vVDh7LnGj1dvqdoAo', 0, '180-180-te.jpg', 3, 0, 'Calabar', 'PavoPunda', 'meforreal', 'www.zutasia.com', 'resty', 'i am what ever they say i am, and if i wasnt, then would they say i am', NULL, '2015-06-09 09:39:06', '2015-06-13 23:15:02', 0, '', 'Sarah', '', 'Sarah.', '', '$2y$10$8Y70Kmh1AsjWLFj4mWjSMO9Ed0cdI4p2IwL.saCYs6d395klo6tEe', '7', '11', '13', 'female', 'y'),
(12, 0, '', 'eunice@yahoo.com', 'Eunice', 'Q5B8bxPq69CArmVm22kMwxWE1waFE8aWVnf7da81vPLM5LC5hZZguGBfHUJj', 0, '180-baby lather.jpg', 2, 0, 'Delta', 'Coybiz', 'fifi', 'www.fifi.com', 'were', 'i am classy', NULL, '2015-06-10 08:05:53', '2015-07-05 17:54:14', 0, '', 'Eunice', 'Amarachi', 'Eunice.Amarachi', '', '$2y$10$TWZRP/2dx/x2BQQQBjL/OeY4hX0qUyENNUt5OJ615/dcgbJy/kk7i', '9', '13', '15', 'female', 'y'),
(13, 0, '', 'seyi@yahoo.com', 'Seyi', 'uZR0pMnKLz0nAMEswEGBqJiO72DfvrDtJEiLSMMT4s9SRKzYkKt2heqv4MSq', 0, '180-(_)hhj.jpg', 0, 0, 'Lagos', 'smith', 'seyikiki', 'www.smith.com', 'seyi', 'i am the greatest', NULL, '2015-06-10 08:43:13', '2015-06-13 23:33:08', 0, '', 'Seyi', 'Akogun', 'Seyi.Akogun', '', '$2y$10$IC/pdIeDl4CI/DrFR.5DE.XqgFVMQdhWZOUKXTEXi.yBPxyfkX0yq', '9', '12', '15', 'male', 'y'),
(14, 0, '', 'aladin@yahoo.com', 'Aladin', 'KYxKfvFEt6t1aQBJlY2mvOzo1I4Oet2i6YMscpraGhziluvODecJ0iGQZ54P', 0, '180-brown.jpg', 0, 0, 'Kano', 'shell', 'musariro', 'www.shell.com', '2348', 'I love Jesus', NULL, '2015-07-09 18:46:51', '2015-07-10 11:40:54', 0, '', 'Aladin', 'Musa', 'Aladin.Musa', '', '$2y$10$iNBJKFMbYz5QeHH4L4rMM.Cvq9u/oYXNc1H5tPzULmLGUO6GTGUy2', '7', '8', '9', 'male', 'y'),
(15, 0, '', 'melissa@yahoo.com', 'melissa', 'pRV3MyrqGycsqmgnJBK7pEnwCcx4FXzZ40Hd9f1rqZJRoZYOC89Z5P6ZIy8K', 0, '180-ban.png', 0, 0, 'Lagos', 'Chevron', 'melimeli', 'www.meli.com', '1234', 'i am a lover of God', NULL, '2015-07-10 11:41:56', '2015-07-10 11:56:43', 0, '', 'Melissa', 'coder', 'Melissa.coder', '', '$2y$10$xgrsBm4Wj1Kg.K29AkqzhO1WTW3hqklEQMw7Lrd7PS1dsRUkAIal2', '10', '11', '13', 'female', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `votable_id` int(11) NOT NULL,
  `votable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `votable_id`, `votable_type`, `is`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'Topic', 'upvote', '2015-05-31 20:42:01', '2015-05-31 20:42:01'),
(2, 8, 1, 'Topic', 'upvote', '2015-06-01 08:39:43', '2015-06-01 08:39:43'),
(5, 1, 3, 'Topic', 'downvote', '2015-06-01 09:23:47', '2015-06-01 09:23:47'),
(6, 7, 4, 'Topic', 'upvote', '2015-06-01 09:41:43', '2015-06-01 09:41:43'),
(7, 1, 6, 'Topic', 'upvote', '2015-06-04 12:09:00', '2015-06-04 12:09:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appends`
--
ALTER TABLE `appends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appends_topic_id_index` (`topic_id`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_user_id_foreign` (`user_id`),
  ADD KEY `assigned_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `attentions`
--
ALTER TABLE `attentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attentions_topic_id_index` (`topic_id`),
  ADD KEY `attentions_user_id_index` (`user_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_topic_id_index` (`topic_id`),
  ADD KEY `favorites_user_id_index` (`user_id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follows_follower_id_index` (`follower_id`),
  ADD KEY `follows_followed_id_index` (`followed_id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_thread_id_foreign` (`thread_id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `nodes`
--
ALTER TABLE `nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nodes_name_index` (`name`),
  ADD KEY `nodes_slug_index` (`slug`),
  ADD KEY `nodes_parent_node_index` (`parent_node`),
  ADD KEY `nodes_topic_count_index` (`topic_count`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_from_user_id_index` (`from_user_id`),
  ADD KEY `notifications_user_id_index` (`user_id`),
  ADD KEY `notifications_topic_id_index` (`topic_id`),
  ADD KEY `notifications_reply_id_index` (`reply_id`),
  ADD KEY `notifications_type_index` (`type`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participants_thread_id_foreign` (`thread_id`),
  ADD KEY `participants_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reminders`
--
ALTER TABLE `password_reminders`
  ADD KEY `password_reminders_email_index` (`email`),
  ADD KEY `password_reminders_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_user_id_index` (`user_id`),
  ADD KEY `replies_topic_id_index` (`topic_id`),
  ADD KEY `replies_is_block_index` (`is_block`),
  ADD KEY `replies_vote_count_index` (`vote_count`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `site_statuses`
--
ALTER TABLE `site_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_statuses_day_index` (`day`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_title_index` (`title`),
  ADD KEY `topics_user_id_index` (`user_id`),
  ADD KEY `topics_node_id_index` (`node_id`),
  ADD KEY `topics_is_excellent_index` (`is_excellent`),
  ADD KEY `topics_is_wiki_index` (`is_wiki`),
  ADD KEY `topics_is_blocked_index` (`is_blocked`),
  ADD KEY `topics_reply_count_index` (`reply_count`),
  ADD KEY `topics_view_count_index` (`view_count`),
  ADD KEY `topics_favorite_count_index` (`favorite_count`),
  ADD KEY `topics_vote_count_index` (`vote_count`),
  ADD KEY `topics_last_reply_user_id_index` (`last_reply_user_id`),
  ADD KEY `topics_order_index` (`order`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_github_id_index` (`github_id`),
  ADD KEY `users_email_index` (`email`),
  ADD KEY `users_name_index` (`name`),
  ADD KEY `users_is_banned_index` (`is_banned`),
  ADD KEY `users_topic_count_index` (`topic_count`),
  ADD KEY `users_reply_count_index` (`reply_count`),
  ADD KEY `users_github_name_index` (`github_name`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votes_user_id_index` (`user_id`),
  ADD KEY `votes_votable_id_index` (`votable_id`),
  ADD KEY `votes_votable_type_index` (`votable_type`),
  ADD KEY `votes_is_index` (`is`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appends`
--
ALTER TABLE `appends`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `attentions`
--
ALTER TABLE `attentions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `nodes`
--
ALTER TABLE `nodes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `site_statuses`
--
ALTER TABLE `site_statuses`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attentions`
--
ALTER TABLE `attentions`
  ADD CONSTRAINT `attentions_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attentions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`),
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`),
  ADD CONSTRAINT `participants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
