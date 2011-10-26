-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2011 年 10 月 24 日 22:59
-- 服务器版本: 5.1.54
-- PHP 版本: 5.3.5-1ubuntu7.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_group`
--


-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_group_permissions`
--


-- --------------------------------------------------------

--
-- 表的结构 `auth_message`
--

CREATE TABLE IF NOT EXISTS `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_403f60f` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_message`
--


-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add message', 4, 'add_message'),
(11, 'Can change message', 4, 'change_message'),
(12, 'Can delete message', 4, 'delete_message'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add site', 7, 'add_site'),
(20, 'Can change site', 7, 'change_site'),
(21, 'Can delete site', 7, 'delete_site'),
(22, 'Can add log entry', 8, 'add_logentry'),
(23, 'Can change log entry', 8, 'change_logentry'),
(24, 'Can delete log entry', 8, 'delete_logentry'),
(25, 'Can add publisher', 9, 'add_publisher'),
(26, 'Can change publisher', 9, 'change_publisher'),
(27, 'Can delete publisher', 9, 'delete_publisher'),
(28, 'Can add author', 10, 'add_author'),
(29, 'Can change author', 10, 'change_author'),
(30, 'Can delete author', 10, 'delete_author'),
(31, 'Can add book', 11, 'add_book'),
(32, 'Can change book', 11, 'change_book'),
(33, 'Can delete book', 11, 'delete_book');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'admin', '', '', 'admin@admin.com', 'sha1$8bf46$559f3ca65ffbb36301b389c1a7e19b262523e2d9', 1, 1, 1, '2011-10-24 07:30:45', '2011-10-07 09:31:25');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_user_groups`
--


-- --------------------------------------------------------

--
-- 表的结构 `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_user_user_permissions`
--


-- --------------------------------------------------------

--
-- 表的结构 `books_author`
--

CREATE TABLE IF NOT EXISTS `books_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salutation` varchar(10) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `books_author`
--

INSERT INTO `books_author` (`id`, `salutation`, `first_name`, `last_name`, `email`) VALUES
(1, 'Author1', 'Author1', 'Author1', 'Author1@Author1.com'),
(2, 'Author2', 'Author2', 'Author2', 'Author2@Author2.com');

-- --------------------------------------------------------

--
-- 表的结构 `books_book`
--

CREATE TABLE IF NOT EXISTS `books_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `publication_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `books_book_22dd9c39` (`publisher_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `books_book`
--

INSERT INTO `books_book` (`id`, `title`, `publisher_id`, `publication_date`) VALUES
(1, 'book1', 2, '2011-01-01'),
(2, 'ssssssss', 2, '2011-01-02'),
(3, 'book1', 1, '2011-01-01');

-- --------------------------------------------------------

--
-- 表的结构 `books_book_authors`
--

CREATE TABLE IF NOT EXISTS `books_book_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book_id` (`book_id`,`author_id`),
  KEY `books_book_authors_752eb95b` (`book_id`),
  KEY `books_book_authors_337b96ff` (`author_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=105 ;

--
-- 转存表中的数据 `books_book_authors`
--

INSERT INTO `books_book_authors` (`id`, `book_id`, `author_id`) VALUES
(104, 3, 1),
(49, 1, 1),
(103, 2, 1),
(50, 1, 2);

-- --------------------------------------------------------

--
-- 表的结构 `books_publisher`
--

CREATE TABLE IF NOT EXISTS `books_publisher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(60) NOT NULL,
  `state_province` varchar(30) NOT NULL,
  `country` varchar(50) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `books_publisher`
--

INSERT INTO `books_publisher` (`id`, `name`, `address`, `city`, `state_province`, `country`, `website`) VALUES
(1, 'publisher1', 'publisher1', 'publisher1', 'publisher1', 'publisher1', 'http://www.baidu.com/'),
(2, 'publisher2', 'publisher2', 'publisher2', 'publisher2', 'publisher2', 'http://localhost/');

-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- 转存表中的数据 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2011-10-07 09:32:20', 1, 10, '1', 'Author1 Author1', 1, ''),
(2, '2011-10-07 09:32:31', 1, 10, '2', 'Author2 Author2', 1, ''),
(3, '2011-10-07 09:32:39', 1, 10, '2', 'Author2 Author2', 2, '没有字段被修改。'),
(4, '2011-10-07 09:32:42', 1, 10, '1', 'Author1 Author1', 2, '没有字段被修改。'),
(5, '2011-10-07 09:33:00', 1, 9, '1', 'publisher1', 1, ''),
(6, '2011-10-07 09:33:29', 1, 9, '2', 'publisher2', 1, ''),
(7, '2011-10-07 09:33:35', 1, 9, '2', 'publisher2', 2, '没有字段被修改。'),
(8, '2011-10-07 09:33:52', 1, 11, '1', 'book1', 1, ''),
(9, '2011-10-07 09:33:55', 1, 11, '1', 'book1', 2, '没有字段被修改。'),
(10, '2011-10-07 09:34:01', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(11, '2011-10-07 09:34:05', 1, 11, '1', 'book1', 2, '已修改 publisher 。'),
(12, '2011-10-07 09:34:09', 1, 11, '1', 'book1', 2, '没有字段被修改。'),
(13, '2011-10-07 09:35:36', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(14, '2011-10-07 09:35:42', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(15, '2011-10-07 09:35:46', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(16, '2011-10-07 09:35:56', 1, 11, '1', 'book1', 2, '没有字段被修改。'),
(17, '2011-10-07 09:36:00', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(18, '2011-10-07 09:36:06', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(19, '2011-10-07 09:37:42', 1, 11, '1', 'book1', 2, '没有字段被修改。'),
(20, '2011-10-07 09:38:04', 1, 11, '1', 'book1', 2, '没有字段被修改。'),
(21, '2011-10-07 09:38:25', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(22, '2011-10-07 09:38:35', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(23, '2011-10-07 09:38:42', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(24, '2011-10-07 10:14:57', 1, 11, '1', 'book1', 2, '没有字段被修改。'),
(25, '2011-10-07 10:15:02', 1, 11, '1', 'book1', 2, '已修改 publisher 。'),
(26, '2011-10-07 10:15:47', 1, 11, '1', 'book1', 2, '没有字段被修改。'),
(27, '2011-10-07 10:16:12', 1, 11, '1', 'book1', 2, '已修改 publisher 。'),
(28, '2011-10-07 10:28:05', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(29, '2011-10-07 10:28:09', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(30, '2011-10-07 10:30:53', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(31, '2011-10-07 10:30:55', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(32, '2011-10-07 10:31:00', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(33, '2011-10-07 10:32:08', 1, 9, '2', 'publisher2', 2, '已修改 website 。'),
(34, '2011-10-07 10:32:19', 1, 10, '2', 'Author2 Author2', 2, '没有字段被修改。'),
(35, '2011-10-07 10:32:26', 1, 11, '1', 'book1', 2, '没有字段被修改。'),
(36, '2011-10-07 10:39:52', 1, 11, '1', 'book1', 2, '没有字段被修改。'),
(37, '2011-10-07 10:39:56', 1, 11, '1', 'book1', 2, '已修改 publisher 。'),
(38, '2011-10-07 11:14:47', 1, 11, '1', 'book1', 2, '没有字段被修改。'),
(39, '2011-10-07 11:14:52', 1, 11, '1', 'book1', 2, '已修改 publisher 。'),
(40, '2011-10-07 11:15:09', 1, 11, '1', 'book1', 2, '已修改 publisher 。'),
(41, '2011-10-07 11:17:37', 1, 11, '1', 'book1', 2, '已修改 publisher 。'),
(42, '2011-10-07 11:17:45', 1, 11, '1', 'book1', 2, '没有字段被修改。'),
(43, '2011-10-07 11:19:39', 1, 11, '2', 'ssssssss', 1, ''),
(44, '2011-10-07 11:20:15', 1, 11, '2', 'ssssssss', 2, '没有字段被修改。'),
(45, '2011-10-07 11:20:19', 1, 11, '2', 'ssssssss', 2, '已修改 authors 。'),
(46, '2011-10-07 11:20:23', 1, 11, '1', 'book1', 2, '已修改 authors 。'),
(47, '2011-10-07 11:20:27', 1, 11, '2', 'ssssssss', 2, '已修改 authors 。'),
(48, '2011-10-07 11:20:31', 1, 11, '2', 'ssssssss', 2, '已修改 authors 。'),
(49, '2011-10-07 11:20:35', 1, 11, '2', 'ssssssss', 2, '已修改 authors 。'),
(50, '2011-10-07 11:20:40', 1, 11, '2', 'ssssssss', 2, '已修改 authors 。'),
(51, '2011-10-07 11:20:48', 1, 11, '2', 'ssssssss', 2, '已修改 publisher 。'),
(52, '2011-10-07 11:20:53', 1, 11, '2', 'ssssssss', 2, '已修改 publisher 。'),
(53, '2011-10-07 11:21:34', 1, 11, '2', 'ssssssss', 2, '没有字段被修改。'),
(54, '2011-10-07 11:21:58', 1, 11, '2', 'ssssssss', 2, '没有字段被修改。'),
(55, '2011-10-07 11:32:27', 1, 11, '2', 'ssssssss', 2, '已修改 publication_date 。'),
(56, '2011-10-07 11:38:58', 1, 11, '2', 'ssssssss', 2, '已修改 authors 和 author 。'),
(57, '2011-10-07 11:39:29', 1, 11, '2', 'ssssssss', 2, '已修改 author 。'),
(58, '2011-10-07 11:39:36', 1, 11, '2', 'ssssssss', 2, '已修改 author 。'),
(59, '2011-10-07 11:40:35', 1, 11, '2', 'ssssssss', 2, '已修改 author 。'),
(60, '2011-10-07 11:41:35', 1, 11, '2', 'ssssssss', 2, '已修改 author 。'),
(61, '2011-10-07 11:42:13', 1, 11, '2', 'ssssssss', 2, '已修改 authors 和 author 。'),
(62, '2011-10-07 11:43:30', 1, 11, '2', 'ssssssss', 2, '已修改 author 。'),
(63, '2011-10-07 11:43:53', 1, 11, '2', 'ssssssss', 2, '已修改 author 。'),
(64, '2011-10-07 11:45:24', 1, 11, '2', 'ssssssss', 2, '已修改 author 。'),
(65, '2011-10-07 11:45:51', 1, 11, '2', 'ssssssss', 2, '已修改 author 。'),
(66, '2011-10-07 11:46:13', 1, 11, '2', 'ssssssss', 2, '已修改 author 。'),
(67, '2011-10-07 11:47:19', 1, 11, '2', 'ssssssss', 2, '已修改 author 。'),
(68, '2011-10-07 11:47:55', 1, 11, '2', 'ssssssss', 2, '已修改 publisher，authors 和 author 。'),
(69, '2011-10-07 11:49:36', 1, 11, '2', 'ssssssss', 2, '已修改 author 。'),
(70, '2011-10-07 11:52:46', 1, 11, '2', 'ssssssss', 2, '已修改 authors 。'),
(71, '2011-10-07 22:05:40', 1, 11, '3', 'book1', 1, ''),
(72, '2011-10-07 22:08:21', 1, 11, '3', 'book1', 2, '已修改 author 。'),
(73, '2011-10-07 22:09:36', 1, 11, '2', 'ssssssss', 2, '没有字段被修改。'),
(74, '2011-10-07 22:47:55', 1, 11, '2', 'ssssssss', 2, '已修改 author 。'),
(75, '2011-10-07 22:48:33', 1, 11, '3', 'book1', 2, '已修改 author 。'),
(76, '2011-10-07 22:49:10', 1, 11, '3', 'book1', 2, '已修改 author 。'),
(77, '2011-10-07 22:50:17', 1, 11, '3', 'book1', 2, '已修改 authors 和 author 。'),
(78, '2011-10-07 22:51:06', 1, 11, '3', 'book1', 2, '已修改 author 。'),
(79, '2011-10-08 03:30:23', 1, 11, '2', 'ssssssss', 2, '已修改 author 。'),
(80, '2011-10-08 03:30:32', 1, 11, '3', 'book1', 2, '已修改 authors 和 author 。'),
(81, '2011-10-08 03:30:36', 1, 11, '3', 'book1', 2, '已修改 author 。'),
(82, '2011-10-08 03:45:36', 1, 11, '3', 'book1', 2, '已修改 authors 和 author 。'),
(83, '2011-10-08 03:45:40', 1, 11, '3', 'book1', 2, '已修改 authors 和 author 。'),
(84, '2011-10-09 07:58:30', 1, 9, '2', 'publisher2', 2, '没有字段被修改。'),
(85, '2011-10-09 07:58:55', 1, 11, '2', 'ssssssss', 2, '没有字段被修改。'),
(86, '2011-10-09 07:58:59', 1, 11, '3', 'book1', 2, '没有字段被修改。');

-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'message', 'auth', 'message'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'site', 'sites', 'site'),
(8, 'log entry', 'admin', 'logentry'),
(9, 'publisher', 'books', 'publisher'),
(10, 'author', 'books', 'author'),
(11, 'book', 'books', 'book');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9ea0d1a9fbfe0972559beb8a3bb33206', 'Y2I0ZGY5YmRlYTMzOTQ3NzZiYTkxYzllZDM1YzExNzAzZjNkNGVhMTqAAn1xAS4=\n', '2011-11-07 08:14:33'),
('8ca702e2db2f2d0191243497b692621d', 'YjA0NGVmMGUzNDYzYTg2MmY3MGMwZjdkMjIyZTQ4ZTkxYjA3NzAzYTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2011-10-21 09:31:33'),
('b5b21c1d80ede9a5f7e4e7a8d59da54e', 'YjA0NGVmMGUzNDYzYTg2MmY3MGMwZjdkMjIyZTQ4ZTkxYjA3NzAzYTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2011-10-21 20:53:25'),
('764c917cb6b9ee071488cb568d41cc1b', 'YjA0NGVmMGUzNDYzYTg2MmY3MGMwZjdkMjIyZTQ4ZTkxYjA3NzAzYTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2011-10-23 07:55:43'),
('34ee7c4166195dd587e5de68bd62d0fa', 'YjA0NGVmMGUzNDYzYTg2MmY3MGMwZjdkMjIyZTQ4ZTkxYjA3NzAzYTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2011-11-07 07:30:45'),
('e2832c7fcd5a3c8f3e8be879e05990c5', 'OTQ4NDdjMDUxNmY0ZmVjNDRjM2JhZDc5MjNlMTNiOWU5YmRiOWM1ZTqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2011-11-07 09:46:01');

-- --------------------------------------------------------

--
-- 表的结构 `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');
