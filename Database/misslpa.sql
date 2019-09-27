-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 07, 2019 at 09:18 PM
-- Server version: 5.7.24
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `misslpa`
--

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_assets`
--

DROP TABLE IF EXISTS `wtyqf_assets`;
CREATE TABLE IF NOT EXISTS `wtyqf_assets` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_assets`
--

INSERT INTO `wtyqf_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 111, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 22, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 23, 24, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 25, 26, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 27, 28, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 35, 36, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 37, 40, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 41, 42, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 43, 76, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 77, 80, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 81, 82, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 83, 84, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 85, 86, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 87, 88, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 89, 92, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 93, 94, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 78, 79, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 90, 91, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 95, 96, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 97, 98, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 99, 100, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 101, 102, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 103, 104, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 105, 106, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 44, 45, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 46, 47, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 48, 49, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 50, 51, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 52, 53, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 54, 55, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 56, 57, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 58, 59, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 60, 61, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 62, 63, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 64, 65, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 66, 67, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 68, 69, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 70, 71, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 72, 73, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 38, 39, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 74, 75, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 27, 19, 20, 3, 'com_content.article.1', 'admin', '{}'),
(57, 1, 107, 108, 1, 'com_ppms', 'com_ppms', '{}'),
(58, 1, 109, 110, 1, 'com_misslpa', 'com_misslpa', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_associations`
--

DROP TABLE IF EXISTS `wtyqf_associations`;
CREATE TABLE IF NOT EXISTS `wtyqf_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_banners`
--

DROP TABLE IF EXISTS `wtyqf_banners`;
CREATE TABLE IF NOT EXISTS `wtyqf_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_banner_clients`
--

DROP TABLE IF EXISTS `wtyqf_banner_clients`;
CREATE TABLE IF NOT EXISTS `wtyqf_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_banner_tracks`
--

DROP TABLE IF EXISTS `wtyqf_banner_tracks`;
CREATE TABLE IF NOT EXISTS `wtyqf_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_categories`
--

DROP TABLE IF EXISTS `wtyqf_categories`;
CREATE TABLE IF NOT EXISTS `wtyqf_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_categories`
--

INSERT INTO `wtyqf_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 663, '2018-07-10 09:54:18', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 663, '2018-07-10 09:54:18', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 663, '2018-07-10 09:54:18', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 663, '2018-07-10 09:54:18', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 663, '2018-07-10 09:54:18', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 663, '2018-07-10 09:54:18', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_contact_details`
--

DROP TABLE IF EXISTS `wtyqf_contact_details`;
CREATE TABLE IF NOT EXISTS `wtyqf_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_content`
--

DROP TABLE IF EXISTS `wtyqf_content`;
CREATE TABLE IF NOT EXISTS `wtyqf_content` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`),
  KEY `idx_alias` (`alias`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_content`
--

INSERT INTO `wtyqf_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 56, 'admin', 'admin', '<p>admin panel</p>', '', 1, 2, '2018-07-10 11:46:09', 663, '', '2018-07-11 05:08:19', 663, 0, '0000-00-00 00:00:00', '2018-07-10 11:46:09', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 2, 14, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_contentitem_tag_map`
--

DROP TABLE IF EXISTS `wtyqf_contentitem_tag_map`;
CREATE TABLE IF NOT EXISTS `wtyqf_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_content_frontpage`
--

DROP TABLE IF EXISTS `wtyqf_content_frontpage`;
CREATE TABLE IF NOT EXISTS `wtyqf_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_content_rating`
--

DROP TABLE IF EXISTS `wtyqf_content_rating`;
CREATE TABLE IF NOT EXISTS `wtyqf_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_content_types`
--

DROP TABLE IF EXISTS `wtyqf_content_types`;
CREATE TABLE IF NOT EXISTS `wtyqf_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_content_types`
--

INSERT INTO `wtyqf_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_core_log_searches`
--

DROP TABLE IF EXISTS `wtyqf_core_log_searches`;
CREATE TABLE IF NOT EXISTS `wtyqf_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_extensions`
--

DROP TABLE IF EXISTS `wtyqf_extensions`;
CREATE TABLE IF NOT EXISTS `wtyqf_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=806 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_extensions`
--

INSERT INTO `wtyqf_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"0\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"27cc3586356600ba52576d33b8a1fa19\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 663, '2019-07-07 21:05:41', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `wtyqf_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.38.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.8\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1562517316}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":1531216476,\"unique_id\":\"2a6fe656c2b6435e738fa945f7dd12f69ee24a96\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.10\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.10\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.10\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"June 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.10.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(803, 0, 'com_ppms', 'component', 'com_ppms', '', 1, 1, 0, 0, '{\"name\":\"com_ppms\",\"type\":\"component\",\"creationDate\":\"2018-07-11\",\"author\":\"Ruvin Accura\",\"copyright\":\"2018 Ruvin\",\"authorEmail\":\"ruvin09@gmail.com\",\"authorUrl\":\"http:\\/\\/\",\"version\":\"CVS: 1.0.0\",\"description\":\"\",\"group\":\"\",\"filename\":\"ppms\"}', '{\"save_history\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(804, 0, 'com_misslpa', 'component', 'com_misslpa', '', 1, 1, 0, 0, '{\"name\":\"com_misslpa\",\"type\":\"component\",\"creationDate\":\"2018-08-06\",\"author\":\"Ruvin Roshan\",\"copyright\":\"2018 Ruvin\",\"authorEmail\":\"ruvin09@gmail.com\",\"authorUrl\":\"http:\\/\\/\",\"version\":\"CVS: 1.0.0\",\"description\":\"\",\"group\":\"\",\"filename\":\"misslpa\"}', '{\"save_history\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `wtyqf_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(805, 0, 'PhpSpreadSheet Library for Joomla', 'library', 'phpspreadsheet', '', 0, 1, 1, 0, '{\"name\":\"PhpSpreadSheet Library for Joomla\",\"type\":\"library\",\"creationDate\":\"June 2018\",\"author\":\"Iv\\u00e1n Ramos Jim\\u00e9nez\",\"copyright\":\"Copyright (C) 2018\",\"authorEmail\":\"info@ivan.ramos.name\",\"authorUrl\":\"ivan.ramos.name\",\"version\":\"1.0.0\",\"description\":\"\",\"group\":\"\",\"filename\":\"phpspreadsheet\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_fields`
--

DROP TABLE IF EXISTS `wtyqf_fields`;
CREATE TABLE IF NOT EXISTS `wtyqf_fields` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_fields_categories`
--

DROP TABLE IF EXISTS `wtyqf_fields_categories`;
CREATE TABLE IF NOT EXISTS `wtyqf_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_fields_groups`
--

DROP TABLE IF EXISTS `wtyqf_fields_groups`;
CREATE TABLE IF NOT EXISTS `wtyqf_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_fields_values`
--

DROP TABLE IF EXISTS `wtyqf_fields_values`;
CREATE TABLE IF NOT EXISTS `wtyqf_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_filters`
--

DROP TABLE IF EXISTS `wtyqf_finder_filters`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links`
--

DROP TABLE IF EXISTS `wtyqf_finder_links`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms0`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_terms0`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms1`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_terms1`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms2`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_terms2`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms3`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_terms3`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms4`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_terms4`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms5`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_terms5`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms6`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_terms6`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms7`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_terms7`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms8`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_terms8`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_terms9`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_terms9`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_termsa`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_termsa`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_termsb`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_termsb`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_termsc`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_termsc`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_termsd`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_termsd`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_termse`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_termse`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_links_termsf`
--

DROP TABLE IF EXISTS `wtyqf_finder_links_termsf`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_taxonomy`
--

DROP TABLE IF EXISTS `wtyqf_finder_taxonomy`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wtyqf_finder_taxonomy`
--

INSERT INTO `wtyqf_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `wtyqf_finder_taxonomy_map`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_terms`
--

DROP TABLE IF EXISTS `wtyqf_finder_terms`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_terms_common`
--

DROP TABLE IF EXISTS `wtyqf_finder_terms_common`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wtyqf_finder_terms_common`
--

INSERT INTO `wtyqf_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_tokens`
--

DROP TABLE IF EXISTS `wtyqf_finder_tokens`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `wtyqf_finder_tokens_aggregate`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_finder_types`
--

DROP TABLE IF EXISTS `wtyqf_finder_types`;
CREATE TABLE IF NOT EXISTS `wtyqf_finder_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_languages`
--

DROP TABLE IF EXISTS `wtyqf_languages`;
CREATE TABLE IF NOT EXISTS `wtyqf_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_languages`
--

INSERT INTO `wtyqf_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_menu`
--

DROP TABLE IF EXISTS `wtyqf_menu`;
CREATE TABLE IF NOT EXISTS `wtyqf_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_menu`
--

INSERT INTO `wtyqf_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 57, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 42, 0, '*', 0),
(102, 'mainmenu', 'success', 'success', '', 'success', 'index.php?option=com_users&view=login', 'component', -2, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"loginredirectchoice\":\"1\",\"login_redirect_url\":\"\",\"login_redirect_menuitem\":\"102\",\"logindescription_show\":\"0\",\"login_description\":\"\",\"login_image\":\"\",\"logoutredirectchoice\":\"1\",\"logout_redirect_url\":\"\",\"logout_redirect_menuitem\":\"101\",\"logoutdescription_show\":\"0\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 43, 44, 0, '*', 0),
(103, 'mainmenu', 'Login Form', 'login-form', '', 'login-form', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"loginredirectchoice\":\"1\",\"login_redirect_url\":\"\",\"login_redirect_menuitem\":\"104\",\"logindescription_show\":\"0\",\"login_description\":\"\",\"login_image\":\"\",\"logoutredirectchoice\":\"1\",\"logout_redirect_url\":\"\",\"logout_redirect_menuitem\":\"103\",\"logoutdescription_show\":\"0\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 45, 46, 1, '*', 0),
(104, 'mainmenu', 'cpanel', 'cpanel', '', 'cpanel', 'index.php?option=com_misslpa&view=cpanel', 'component', 1, 1, 1, 804, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 47, 48, 0, '*', 0),
(105, 'main', 'COM_PPMS', 'com-ppms', '', 'com-ppms', 'index.php?option=com_ppms', 'component', 1, 1, 1, 803, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 49, 52, 0, '', 1),
(106, 'main', 'COM_PPMS_TITLE_CPANELS', 'com-ppms-title-cpanels', '', 'com-ppms/com-ppms-title-cpanels', 'index.php?option=com_ppms&view=cpanels', 'component', 1, 105, 2, 803, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 50, 51, 0, '', 1),
(107, 'main', 'COM_MISSLPA', 'com-misslpa', '', 'com-misslpa', 'index.php?option=com_misslpa', 'component', 1, 1, 1, 804, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 53, 56, 0, '', 1),
(108, 'main', 'COM_MISSLPA_TITLE_CPANELS', 'com-misslpa-title-cpanels', '', 'com-misslpa/com-misslpa-title-cpanels', 'index.php?option=com_misslpa&view=cpanels', 'component', 1, 107, 2, 804, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 54, 55, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_menu_types`
--

DROP TABLE IF EXISTS `wtyqf_menu_types`;
CREATE TABLE IF NOT EXISTS `wtyqf_menu_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_menu_types`
--

INSERT INTO `wtyqf_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_messages`
--

DROP TABLE IF EXISTS `wtyqf_messages`;
CREATE TABLE IF NOT EXISTS `wtyqf_messages` (
  `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_messages_cfg`
--

DROP TABLE IF EXISTS `wtyqf_messages_cfg`;
CREATE TABLE IF NOT EXISTS `wtyqf_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_misslpa_cpanel`
--

DROP TABLE IF EXISTS `wtyqf_misslpa_cpanel`;
CREATE TABLE IF NOT EXISTS `wtyqf_misslpa_cpanel` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_modules`
--

DROP TABLE IF EXISTS `wtyqf_modules`;
CREATE TABLE IF NOT EXISTS `wtyqf_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_modules`
--

INSERT INTO `wtyqf_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 1, 'middle-form', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"102\",\"logout\":\"101\",\"greeting\":\"1\",\"name\":\"0\",\"profilelink\":\"0\",\"usesecure\":\"0\",\"usetext\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_modules_menu`
--

DROP TABLE IF EXISTS `wtyqf_modules_menu`;
CREATE TABLE IF NOT EXISTS `wtyqf_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_modules_menu`
--

INSERT INTO `wtyqf_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_newsfeeds`
--

DROP TABLE IF EXISTS `wtyqf_newsfeeds`;
CREATE TABLE IF NOT EXISTS `wtyqf_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_overrider`
--

DROP TABLE IF EXISTS `wtyqf_overrider`;
CREATE TABLE IF NOT EXISTS `wtyqf_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_postinstall_messages`
--

DROP TABLE IF EXISTS `wtyqf_postinstall_messages`;
CREATE TABLE IF NOT EXISTS `wtyqf_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_postinstall_messages`
--

INSERT INTO `wtyqf_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 0),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 0),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 0),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 0),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 0),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 0),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_ppms_cpanel`
--

DROP TABLE IF EXISTS `wtyqf_ppms_cpanel`;
CREATE TABLE IF NOT EXISTS `wtyqf_ppms_cpanel` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_ppms_cpanel`
--

INSERT INTO `wtyqf_ppms_cpanel` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 0, '0000-00-00 00:00:00', 663, 663);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_redirect_links`
--

DROP TABLE IF EXISTS `wtyqf_redirect_links`;
CREATE TABLE IF NOT EXISTS `wtyqf_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_schemas`
--

DROP TABLE IF EXISTS `wtyqf_schemas`;
CREATE TABLE IF NOT EXISTS `wtyqf_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_schemas`
--

INSERT INTO `wtyqf_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.8.9-2018-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_session`
--

DROP TABLE IF EXISTS `wtyqf_session`;
CREATE TABLE IF NOT EXISTS `wtyqf_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_session`
--

INSERT INTO `wtyqf_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('lktmbqqmv4q9aupakjp4rdulp7', 0, 1, '1562533158', 'joomla|s:1228:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0O3M6NToidG9rZW4iO3M6MzI6Ik5kclE4SzdlTzFKdzk5cWptbTNWdkNtcmlkZWdBS20xIjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1NjI1MzMxNTU7czo0OiJsYXN0IjtpOjE1NjI1MzMxNTg7czozOiJub3ciO2k6MTU2MjUzMzE1ODt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxvZ2luIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImZvcm0iO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7YTo1OntzOjY6InJldHVybiI7czozOToiaW5kZXgucGhwP29wdGlvbj1jb21fdXNlcnMmdmlldz1wcm9maWxlIjtzOjg6InVzZXJuYW1lIjtzOjA6IiI7czo4OiJwYXNzd29yZCI7czowOiIiO3M6OToic2VjcmV0a2V5IjtzOjA6IiI7czo4OiJyZW1lbWJlciI7aTowO31zOjY6InJldHVybiI7czozOToiaW5kZXgucGhwP29wdGlvbj1jb21fdXNlcnMmdmlldz1wcm9maWxlIjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
('lru3k23fdp802qut9ingvo7sop', 1, 0, '1562533542', 'joomla|s:1320:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo3O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTU2MjUzMzQ3MjtzOjQ6Imxhc3QiO2k6MTU2MjUzMzU0MTtzOjM6Im5vdyI7aToxNTYyNTMzNTQyO31zOjU6InRva2VuIjtzOjMyOiI4ZDFxT1YzekFQOWtocUw0NlE2ZUxCTHh5WUExRjNKdyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJjb21fcGx1Z2lucyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJwbHVnaW5zIjtPOjg6InN0ZENsYXNzIjozOntzOjY6ImZpbHRlciI7YTo0OntzOjY6InNlYXJjaCI7czo0OiJhdXRoIjtzOjc6ImVuYWJsZWQiO3M6MDoiIjtzOjY6ImZvbGRlciI7czowOiIiO3M6NjoiYWNjZXNzIjtzOjA6IiI7fXM6NDoibGlzdCI7YTo0OntzOjEyOiJmdWxsb3JkZXJpbmciO3M6MTA6ImZvbGRlciBBU0MiO3M6NToibGltaXQiO3M6MjoiMjAiO3M6OToic29ydFRhYmxlIjtzOjY6ImZvbGRlciI7czoxNDoiZGlyZWN0aW9uVGFibGUiO3M6MzoiQVNDIjt9czoxMDoibGltaXRzdGFydCI7aTowO31zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoicGx1Z2luIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjE6e2k6MDtpOjQwMTt9czo0OiJkYXRhIjtOO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtzOjM6IjY2MyI7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 663, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_agent`
--

DROP TABLE IF EXISTS `wtyqf_slpa_agent`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_agent` (
  `agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_no` int(10) NOT NULL,
  `agent_name` varchar(500) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `address3` text NOT NULL,
  `contact_no1` varchar(15) NOT NULL,
  `contact_no2` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `credit_balance` double NOT NULL,
  `agent_status` varchar(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_agent`
--

INSERT INTO `wtyqf_slpa_agent` (`agent_id`, `account_no`, `agent_name`, `address1`, `address2`, `address3`, `contact_no1`, `contact_no2`, `fax`, `email`, `credit_balance`, `agent_status`, `user_id`, `created_date`) VALUES
(1, 2001, 'CL CYNERGY (PVT) LTD', 'NO. 651/35,', 'ELVITIGALA MAWATHA,', 'COLOMBO 05.', '5300250', '0715555555', '5338745', 'info@clcynergy.com', 30000, 'A', 663, '2019-07-06 15:54:14'),
(2, 2002, 'F S L LANKA (PVT) LTD', '45,', 'JANADIPATHI MAWATHA,', 'COLOMBO-01', '2472573', '', '2472577', 'info.lkcmb@freight systems.com', 30000, 'A', 9, '2019-07-06 15:54:14'),
(3, 2003, 'SEACARE FORWARDERS (PVT)', '545B, 2/2,', 'SRI SANGARAJA MAWATHA,', 'COLOMBO-10', '4723488', '', '4723450', 'shipcar@sltnet.lk', 30000, 'A', 9, '2019-07-06 15:54:14'),
(4, 2004, 'C P WORLD LANKA (PVT) LTD', '149,fREIGHT HOUSE,', 'UNION PLACE,', 'COLOMBO 02', '5333513', '', '5333512', 'info@lk.cpworldgroup.com', 30000, 'A', 9, '2019-07-06 15:54:14'),
(5, 2005, 'CWT GLOBLINK COLOMBO (PVT) LTD', '2nd  FLOOR, FORBES &amp; WORKERS,', 'MAIN BUILDING, 46/38, NAWAM MAWATHA', 'COLOMBO-02', '4723588', '4444', '4723599', 'cmb@cwtglobling.lk', 30000, 'A', 663, '2019-07-06 15:54:14'),
(6, 2006, 'FREIGHT LINKS INTERNATIONAL (PVT) L', 'LEVEL 07,ACCESS TOWERS,', '278, UNION PLACE,', 'COLOMBO- 02', '2302402', '', '2302412', 'info@freight-links.com', 30000, 'A', 9, '2019-07-06 15:54:14'),
(7, 2007, 'SPEDICON LOGISTICS(PVT) LTD', 'LANDAN HOUSE,COMMERCIAL BUILDING,', '1ST FLOOR, # 302 1/1, HAVELOCK ROAD', 'COLOMBO 03', '5649480', '', '5550406', 'cusdesk@spediconlogistics.com', 30000, 'A', 9, '2019-07-06 15:54:14'),
(8, 2009, 'G P SHIPPING (PVT) LTD', 'LEVEL 8, WEST WING CEYLINCO HOUSE,', '69, JANADIPATHI MAWATHA,', 'COLOMBO 01', '5377388', '', '5379706', 'info@gpshippingltd.com', 30000, 'A', 9, '2019-07-06 15:54:14'),
(9, 2012, 'ECU LINE LANKA (PVT) LTD', 'No.03, Lukshmi Gardens,', 'Maradana Road,', 'Colombo 08', '4368872', '', '4641081', '', 30000, 'A', 9, '2019-07-06 15:54:14'),
(10, 2013, 'MSA SHIPPING (PVT) LTD', 'P. O. BOX 1843,', '121/1, STACE ROAD,', 'COLOMBO 14', '2385289', '', '2445934', 'msa@msashipping.com', 30000, 'A', 9, '2019-07-06 15:54:14'),
(11, 2014, 'Transcare Logistics Pvt Ltd', 'No: 149 / 5, 1st floor,', 'Havelock Road, Colombo 05', '', '5339811', '', '5339827', 'info@transcarel.com', 30000, 'A', 9, '2019-07-06 15:54:14'),
(12, 2018, 'WORLDGATE EXPRESS LINES LANKA (PVT)', '2 A, ROCKWOOD PLACE,', 'COLOMBO 07.', '', '2663700', '', '2689522', 'operations@sas.com.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(13, 2019, 'MERCURY SHIPPING (PVT) LTD', 'NO:321, UNION PLACE,', 'COLOMBO 02', '', '3156094', '', '4615931', 'info@mercury-ship.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(14, 2020, 'DHL GLOBAL FORWARDING LANKA (PVT) L', '8TH FLOOR, SETMIL COMPLEX,', '256, SRIMATH RAMANADAN MW,', 'COLOMBO 15.', '7321321', '', '7321283', 'dgf.lk@dhl.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(15, 2023, 'TRANZGATE EXPRESS PVT LTD', '545B, 1/2, LEVEL 02,', 'SRI SANGARAJA MAWATHA,,', 'COLOMBO 02.', '4741501', '', '2386969', 'info@tranzgateexpress.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(16, 2024, 'CLARION LOGISTICS (PVT) LTD', 'NO.88, LEVEL 03,', 'JUSTICE AKBAR MAWATHA,', 'COLOMBO 02', '4340853', '', '2303209', 'info@clarionlogistics.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(17, 2026, 'EXPOLANKA FREIGHT (PVT) LTD', 'NO.10,MILEPOST AVENUE,', 'COLOMBO 03', '', '4791000', '', '2574213', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(18, 2027, 'DART GLOBAL LOGISTICS (PVT) LTD', 'DART FREIGHT CENTER,', 'NO.260, SRI RAMANADAN MAWATHA,', 'COLOMBO 15', '4609600', '', '2448628', 'dartcmb@dart-global.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(19, 2028, 'SHIPPING AGENCY SERVICES (PVT) LTD', 'NO.07, CAMBRIDGE TERRACE,', 'COLOMBO 07', '', '2663700', '', '2689522', 'operations@sas.com.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(20, 2030, 'EXCEL LOGISTICS INTERNATIONAL (PVT)', 'NO.37, SCHOOL LANE,', 'COLOMBO', '', '4378360', '', '4641577', 'info@excel-logistics.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(21, 2031, 'KUEHNE+NAGEL (PVT) LTD', '23, CLIFFORD AVENUE,', 'COLOMBO 03.', '', '5400600', '', '2372876', 'info.colombo@kuehne-nagel.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(22, 2032, 'ALTRON SHIPPING COLOMBO', 'NO.33, LEVEL 2,', 'CANAL ROW, COLOMBO 01', '', '3772507', '', '5377258', 'admin@ltronshpg.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(23, 2033, 'FTL COLOMBO (PVT) LTD', '04th FLOOR, FORBES & WALKER MAIN,', 'BUILDING, 46/38, NAWAM MAWATHA, COL', '', '4380839', '', '4641910', 'info@ftl.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(24, 2034, 'MERCURY LANKA (PVT) LTD', 'NO.7-1/2, HUNUPITIYA CROSS ROAD,', 'COLOMBO 02.', '', '4716173', '', '4741999', 'mercury@wwslk.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(25, 2036, 'COLOMBO LOGISTICS TERMINAL (PVT)LTD', '63/1,WARD PLACE,', 'COLOMBO07', '', '2662050', '', '2662060', 'www.colombologistics.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(26, 2037, 'FREIGHT CONCEPT LANKA (PVT) LTD', 'LEVEL 8, EAST WING, NO.69,', 'JANADIPATHI MAWATHA, COLOMBO 01', '', '5766388', '', '5766384', 'info@fcl.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(27, 2038, 'PRESTIGE INTERNATIONAL LOGISTICS', '124 , 1 ST FLOOR, LAYARD\'S BROADWAY,', 'COLOMBO 14', '', '2470099', '', '2470033', 'mkt.prestige@pilcmb.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(28, 2039, 'FOUR SHIPS CARGO (PVT) LTD', 'NO: 94/1 , LAURIES ROAD', 'COLOMBO 04', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(29, 2041, 'FOREWAY Logistics (Pvt) Ltd', '56A, School Lane,', 'Colombo 03', '', '', '', '', 'info@forewaylogistics.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(30, 2042, 'CLARION SHIPPING (PVT) LTD', 'NO: 400,  DEANS ROAD,', 'COLOMBO 10', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(31, 2043, 'F F M LANKA (PVT', 'NO. 65/7,', 'D.S. SENANAYAKA MAWATHA', 'COLOMBO 08', '5288501', '', '6770770', 'fml.cmb@flege.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(32, 2044, 'SHERMANS LOGISTICS (PVT) LTD', 'NO.87, BARNES PLACE,', 'COLOMBO 07', '', '5362568', '', '2698789', 'shermanslog@eureka.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(33, 2045, 'WORLDWIDE LOGISTICS LANKA (PVT) LTD', 'NO:71, 1, 1/1,    GREGORY \'S  ROAD,', 'COLOMBO  07', '', '7870000', '', '2694255', 'info@worldwide-lanka.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(34, 2046, 'PULSAR FREIGHT PVT LTD', 'NO : 10, MILE POST AVENUE,', 'COLOMBO 03', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(35, 2047, 'HANKYU MARITIME PVT LTD', 'P 91 OLCOTT MAWATHA,', 'COLOMBO 11', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(36, 2048, 'EQUITY SERVICES LTD', 'NO: 141/9 ,  VAUXHALL STREET,', 'COLOMBO  02', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(37, 2049, 'Bollore Logistics Lanka (Pvt) Ltd', 'Level 03, Setmil Maritime Centre,', 'No.256,Srimath Ramanathan Mw,', 'Colombo-15', '4705900', '', '4705990', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(38, 2050, 'UTI PERSHIP (PVT)LTD', 'LEVEL 3 , 35, EDWARD LANE,', 'COLOMBO 03', '', '2508906', '', '2592632', 'cmb@go2uti.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(39, 2051, 'HELLMANN WORLDWIDE LOGISTICS (PVT)L', 'NO: 50 / 25A, SIR JAMES PEIRIS MW,', 'COLOMBO 02', '', '2316700', '', '2303379', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(40, 2052, 'DAG GROUPAGE SERVICES (PVT)LTD', 'NO: 22 / 1 / 2, SHRUBBERY GARDENS,', 'COLOMBO 04', '', '4380222', '', '5372222', 'info@daggroupage.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(41, 2053, 'SHIPPING AND CARGO SEVICCES (PVT)LT', 'NO: 545 B - 2/2 ,', 'SRI SANGARAJA MAWATHA, COLOMBO 10', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(42, 2054, 'V V K MARITIME AGENCIES (PVT)LTD', 'NO; 579 BULUGAHA  JUNCTION,', 'KANDY ROAD', 'KELANIYA', '5422222', '', '5422299', 'freight@vvkarunaratne.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(43, 2055, 'BENCHMARK LOGISTICS INTERNATIONAL', 'NO 256 3RD FLOOR ,', 'SETMIL MARITIME CENTER', 'RAMANATHAN MAWATHA,  COLOMBO 15', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(44, 2056, 'APL LOGISTICS LANKA', 'No. 08, 3rd Floor,', 'York Arcade building', 'Layden Bastian Road', '', '', '', 'dissanayake@apl.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(45, 2057, 'WINGS LOGISTICS (PVT) LTD', '33, ABDUL CAFFOOR MAWATHA,', 'COLOMBO 15', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(46, 2058, 'UCL LOGISTICS (PVT) LTD', 'NO: 10 A , MILEPOST AVENUE,', 'COLOMBO 03', '', '4885152', '', '2574213', 'customerservice@ucllogistics.c', 0, 'A', 9, '0000-00-00 00:00:00'),
(47, 2061, 'LEWIS SHIPPING (PVT) LTD', '101, Vinayalankara Mawatha,', 'PO Box 45, Colombo 10', '', '2693361', '', '2669810', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(48, 2062, 'ALPHA EXPRESS COLOMBO (PVT) LTD', '618 2/2, GALLE ROAD,', ' COLOMBO 03', '', '', '', '2585406', 'devapriya@alphalogisticscmb.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(49, 2063, 'MCC Handler Colombo (Pvt) Ltd', '04th Floor, Forbes & Worker Main,', ' Building, 46/38, Nawam Mawatha,', ' Colombo 02', '4376713', '', '4645215', 'info@mcc.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(50, 2066, 'SHIPCO TRANSPORT LANKA (PVT) LTD', '4th Floor, 209/10, Union Place,', ' Colombo 02', '', '2305519', '', '2307732', 'cmb@shipco.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(51, 2067, 'EXPO GLOBAL DISTRIBUTION CENTRE', 'SPUR ROAD III, PHASE ONE,', 'INVESTMENT PROCESSING ZONE,', 'KATUNAYAKE', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(52, 2068, 'ETL COLOMBO (PVT) LTD', '11/1A, 1st FLOOR,', 'SCHORFIELD PLACE,', 'COLOMBO 03', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(53, 2070, 'FM GLOBAL LOGISTIC LANKA (PVT) LTD', '2, GROUND FLOOR,', 'HUNUPITIYA CROSS ROAD,', 'COLOMBO 02', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(54, 2071, 'URBAN SKY (PVT) LTD', '279/1, HOKANDARA ROAD,', 'TALAWATHUGODA', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(55, 2072, 'ALCO LOGISTICS (PVT) LTD', '375, GEORGE R DE SILVA MAWATHA,', 'COLOMBO 13', '', '', '', '', 'info@alco-logistics.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(56, 2073, 'CIVARO LANKA (PVT) LTD', '400, DEANS ROAD,', 'COLOMBO 10', '', '2167777', '', '2699337', 'info@civaro.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(57, 2074, 'KO CONSOLIDATORS (PVT) LTD', 'No. 214/3/2/29, Camway Plaza,', 'Srimath Bandaranayake Mawatha,', 'Colombo 12', '', '', '', 'himaz@koconsol.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(58, 2076, 'BAZ GLOBAL LOGISTICS COLOMBO', '5, LAKSHMI GARDENS,', 'COLOMBO 08', '', '', '', '', 'info@bazlogistics.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(59, 2077, 'ADVENT LOGISTICS LANKA (PVT) LTD', '321, Union Place,', 'Colombo 02', '', '', '', '', 'accounts@adventlogistics.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(60, 2078, 'CONQUER SHIPPING (LANKA) PVT LTD', '88, LEVEL 03,', 'JUSTICE AKBAR MAWATHA,', 'COLOMBO 02', '', '', '', 'conquer@eureka.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(61, 2079, 'MARINE TRANSPORT SERVICES (PVT) LTD', '156-1/2, WALUKARAMA ROAD,', 'COLOMBO 03', '', '', '', '', 'mts@marine.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(62, 2080, 'CARGOPLAN INTERNATIONAL (PVT) LTD', 'Access Tower, Level 6,', '278, Union Place', 'Colombo 02', '2305476', '', '4720536', 'info@cargoplan.ws', 0, 'A', 9, '0000-00-00 00:00:00'),
(63, 2081, 'DFL GLOBAL PVT LTD', 'LEVEL 35, WEST TOWER,', 'WORLD TRADE CENTRE', 'COLOMBO 01', '', '', '', 'accounts@dflglobal.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(64, 2082, 'PACIFIC LANKA (PVT) LTD', '149, Union Place, Colombo 02', '', '', '5333513', '', '5333512', 'lanka@pacificlk.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(65, 2083, 'Freight Plan (PVT)LTD', '', '', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(66, 2084, 'DUTCH FREIGHT & LOGISTICS (PVT)LTD', 'NO.633,SIRIMAVO BANDARANAYEKA MAWAT', 'COLOMBO 14', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(67, 2085, 'BRIZO COLOMBO PVT LTD', 'NO 633,', 'SIRIMAVO BANDARANAYAKE MAWATHA', 'COLOMBO 14', '', '', '', 'info@brizocolombo.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(68, 2086, 'GLOBAL CARGO SOLUTIONS(PVT)LTD', '69, JANADHIPATHI MW,', '', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(69, 2088, 'SEA MASTER SHIPPING PVT LTD', '', '', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(70, 2089, 'CP WORLD LOGISTICS PVT LTD', '', '', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(71, 2089, 'CP WORLD LOGISTICS PVT LTD', '', '', '', '2305476', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(72, 2090, 'MACOLINES FREIGHT PVT LTD', '260,', 'SRI RAMANATHAN MAWATHA', 'COLOMBO 15', '', '', '', 'info@macolinelk.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(73, 2090, 'MACOLINES FREIGHT(PVT)LTD', '', '', '', '', '', '', '', 0, 'A', 9, '0000-00-00 00:00:00'),
(74, 2091, 'GLOBAL CONSOLIDATORS LANKA PVT LTD', 'LEVEL 09, WEST WING,CEYLINCO HOUSE,', 'NO 69, JANADHIPATHI MW', 'COLOMBO', '', '', '', 'hemantha.cmb@globalconsol.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(75, 2092, 'MALSHIP LOGISTICS PVT LTD', 'LEVEL 08, VALIANT TOWERS,', '46/7, NAWAM MAWATHA,', 'COLOMBO 02', '', '', '', 'malshiplog@sltnet.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(76, 2093, 'CARGO CONSOL LANKA PVT LTD', 'NO 10, TRELAWNEY PLACE, GP SQUARE,', '6TH FLOOR, OFF BAUDDHALOKA MW,', 'COLOMBO 04', '', '', '', 'mallika@cargoconsol.lk', 0, 'A', 9, '0000-00-00 00:00:00'),
(77, 2094, 'AOL OCEAN CONTAINER LINES PVT LTD', 'NO 88/2-1, JUSTICE AKBAR MW,', 'COLOMBO 02', '', '', '', '', 'info@aollines.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(78, 2095, 'MARINE LANKA SHIPPING PVT LTD', 'NO 1D/1, RANHOMES RESIDENCIES,', 'RAJA MAWATHA, EKALA', 'JA ELA', '', '', '', 'marinelanka.shipping@gmail.com', 0, 'A', 9, '0000-00-00 00:00:00'),
(79, 2096, 'DSV PERSHIP PVT LTD', 'NO 72C BAUDDHALOKA MW,', 'COLOMBO 04', '', '', '', '', 'chinthaka.ruparathne@lk.dsv.co', 0, 'A', 9, '0000-00-00 00:00:00'),
(80, 2097, 'CMA CGM LOGISTICS LANKA PVT LTD', 'NO 400 DEANS ROAD,', 'COLOMBO 10', '', '', '', '', 'cbu.genmbox@cma-cgm.com', 0, 'A', 9, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_agent_credit_balance`
--

DROP TABLE IF EXISTS `wtyqf_slpa_agent_credit_balance`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_agent_credit_balance` (
  `agent_credit_balance_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `credit_balance` double NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `cerated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`agent_credit_balance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_agent_history`
--

DROP TABLE IF EXISTS `wtyqf_slpa_agent_history`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_agent_history` (
  `agent_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL,
  `account_no` int(12) NOT NULL,
  `agent_name` varchar(250) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `address3` text NOT NULL,
  `contact_no1` varchar(15) NOT NULL,
  `contact_no2` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `credit_balance` double NOT NULL,
  `agent_status` varchar(1) NOT NULL,
  `created_date_agent` date NOT NULL,
  `user_id_agent` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`agent_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_agent_history`
--

INSERT INTO `wtyqf_slpa_agent_history` (`agent_history_id`, `agent_id`, `account_no`, `agent_name`, `address1`, `address2`, `address3`, `contact_no1`, `contact_no2`, `fax`, `email`, `credit_balance`, `agent_status`, `created_date_agent`, `user_id_agent`, `created_date`, `user_id`) VALUES
(1, 1, 2001, 'CL CYNERGY (PVT) LTD', 'NO. 651/35,', 'ELVITIGALA MAWATHA,', 'COLOMBO 05.', '5300250', '', '5338745', 'info@clcynergy.com', 0, 'A', '2019-02-12', 9, '2019-03-13 21:47:03', 663),
(2, 1, 2001, 'CL CYNERGY (PVT) LTD', 'NO. 651/35,', 'ELVITIGALA MAWATHA,', 'COLOMBO 05.', '5300250', '', '5338745', 'info@clcynergy.com', 0, 'A', '2019-02-12', 9, '2019-03-13 21:48:28', 663),
(3, 1, 2001, 'CL CYNERGY (PVT) LTD', 'NO. 651/35,', 'ELVITIGALA MAWATHA,', 'COLOMBO 05.', '5300250', '', '5338745', 'info@clcynergy.com', 0, 'A', '2019-02-12', 9, '2019-03-13 21:48:37', 663),
(4, 1, 2001, 'CL CYNERGY (PVT) LTD', 'NO. 651/35,', 'ELVITIGALA MAWATHA,', 'COLOMBO 05.', '5300250', '', '5338745', 'info@clcynergy.com', 0, 'A', '2019-02-12', 9, '2019-03-13 21:50:02', 663),
(5, 1, 2001, 'CL CYNERGY (PVT) LTD', 'NO. 651/35,', 'ELVITIGALA MAWATHA,ee', 'COLOMBO 05.', '5300250', '0715555555', '5338745', 'info@clcynergy.com', 0, 'A', '2019-03-14', 663, '2019-03-13 21:50:18', 663),
(6, 5, 2005, 'CWT GLOBLINK COLOMBO (PVT) LTD', '2nd  FLOOR, FORBES & WORKERS,', 'MAIN BUILDING, 46/38, NAWAM MAWATHA', 'COLOMBO-02', '4723588', '', '4723599', 'cmb@cwtglobling.lk', 0, 'A', '0000-00-00', 9, '2019-07-06 05:52:16', 663);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_bill`
--

DROP TABLE IF EXISTS `wtyqf_slpa_bill`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_bill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_serial_no` int(10) NOT NULL,
  `rework_service_id` int(11) NOT NULL,
  `rework_no` bigint(11) NOT NULL,
  `container_no` varchar(50) NOT NULL,
  `stuffing_destuffing` varchar(11) NOT NULL,
  `account_no` int(11) NOT NULL,
  `payment_mode` varchar(11) NOT NULL,
  `container_size` int(11) NOT NULL,
  `tariff_id` int(11) NOT NULL,
  `tariff_code` varchar(100) NOT NULL,
  `computer_code` varchar(100) NOT NULL,
  `tariff_rate` double NOT NULL,
  `total_amount` double NOT NULL,
  `bill_status` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_bill`
--

INSERT INTO `wtyqf_slpa_bill` (`bill_id`, `bill_serial_no`, `rework_service_id`, `rework_no`, `container_no`, `stuffing_destuffing`, `account_no`, `payment_mode`, `container_size`, `tariff_id`, `tariff_code`, `computer_code`, `tariff_rate`, `total_amount`, `bill_status`, `user_id`, `created_date`) VALUES
(1, 0, 1, 20190400001, '11111111111', 'D', 2003, 'Credit', 20, 38, '27.01', '21.266', 47.35, 47.35, 'B', 663, '2019-04-02 07:18:49'),
(2, 0, 2, 20190400002, '44444444444', 'D', 2003, 'Credit', 40, 39, '27.01', '21.267', 71.25, 71.25, 'B', 663, '2019-04-02 10:30:19'),
(3, 1, 10, 20190400003, '345', 'D', 2001, 'Credit', 20, 38, '27.01', '21.266', 47.35, 47.35, 'B', 663, '2019-05-04 03:37:26'),
(4, 2, 11, 20190400003, '345', 'D', 2001, 'Credit', 20, 50, '27.05', '21.266', 6, 90, 'B', 663, '2019-05-03 22:07:26'),
(5, 3, 12, 20190400003, '345', 'D', 2001, 'Credit', 20, 13, '17.02', '21.072', 10, 10, 'B', 663, '2019-05-03 22:07:26'),
(6, 4, 42, 20190700014, 'WRWE', 'D', 2001, 'Credit', 20, 4, '17.01', '21.069', 25, 25, 'B', 663, '2019-07-06 13:39:49'),
(7, 5, 42, 20190700014, 'WRWE', 'D', 2001, 'Credit', 20, 4, '17.01', '21.069', 25, 25, 'B', 663, '2019-07-06 13:39:59'),
(8, 6, 27, 20190400008, '44444444444', 'S', 2006, 'Credit', 40, 42, '27.02', '21.267', 71.25, 71.25, 'B', 663, '2019-07-06 13:41:31'),
(9, 7, 28, 20190400008, '44444444444', 'S', 2006, 'Credit', 40, 79, '60.12', '21.267', 6, 6, 'B', 663, '2019-07-06 08:11:31'),
(10, 8, 29, 20190400008, '44444444444', 'S', 2006, 'Credit', 40, 50, '27.05', '21.268', 6, 42, 'B', 663, '2019-07-06 08:11:31'),
(11, 9, 40, 20190700016, '33333333333', 'D', 2001, 'Credit', 40, 39, '27.01', '21.267', 71.25, 71.25, 'B', 663, '2019-07-06 13:42:17'),
(12, 10, 41, 20190700016, '33333333333', 'D', 2001, 'Credit', 40, 50, '27.05', '21.267', 6, 156, 'B', 663, '2019-07-06 08:12:17'),
(13, 11, 20, 20190400007, '55555555555', 'S', 2004, 'Credit', 40, 39, '27.01', '21.267', 71.25, 71.25, 'B', 663, '2019-07-06 16:08:32'),
(14, 12, 21, 20190400007, '55555555555', 'S', 2004, 'Credit', 40, 14, '17.02', '21.267', 15, 15, 'B', 663, '2019-07-06 10:38:32'),
(15, 13, 44, 20190700018, '555', 'S', 2001, 'Credit', 20, 41, '27.02', '21.266', 47.35, 47.35, 'B', 663, '2019-07-06 16:10:01'),
(16, 14, 45, 20190700018, '555', 'S', 2001, 'Credit', 20, 79, '60.12', '21.266', 6, 6, 'B', 663, '2019-07-06 10:40:01'),
(17, 15, 18, 20190400005, 'W3333333333', 'D', 2003, 'Credit', 40, 39, '27.01', '21.267', 71.25, 71.25, 'B', 663, '2019-07-06 16:18:58'),
(18, 16, 19, 20190400006, '66666666666', 'D', 2005, 'Credit', 20, 38, '27.01', '21.266', 47.35, 47.35, 'B', 663, '2019-07-06 16:20:24'),
(19, 17, 43, 20190700017, '44', 'D', 2001, 'Credit', 20, 38, '27.01', '21.266', 47.35, 47.35, 'B', 663, '2019-07-06 16:21:41'),
(20, 18, 32, 20190400009, '33333333333', 'D', 2006, 'Credit', 20, 38, '27.01', '21.266', 47.35, 47.35, 'B', 720, '2019-07-07 13:01:15'),
(21, 19, 33, 20190400009, '33333333333', 'D', 2006, 'Credit', 20, 50, '27.05', '21.268', 6, 90, 'B', 720, '2019-07-07 07:31:15'),
(22, 20, 66, 20190700030, '5345ERTE', 'D', 2001, 'Credit', 20, 25, '18.02', '21.078', 100, 100, 'B', 663, '2019-07-07 18:14:29'),
(23, 21, 67, 20190700030, '5345ERTE', 'D', 2001, 'Credit', 20, 13, '17.02', '21.078', 10, 30, 'B', 663, '2019-07-07 12:44:29'),
(24, 22, 68, 20190700031, 'ERT6345', 'D', 2001, 'Credit', 20, 32, '25.01', '81', 21.45, 81, 'B', 663, '2019-07-07 12:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_card_print`
--

DROP TABLE IF EXISTS `wtyqf_slpa_card_print`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_card_print` (
  `card_print_id` int(11) NOT NULL AUTO_INCREMENT,
  `card_serial` int(7) NOT NULL,
  `rework_service_id` int(11) NOT NULL,
  `rework_no` bigint(11) NOT NULL,
  `container_no` varchar(15) NOT NULL,
  `operation_category` varchar(1) NOT NULL,
  `operation_type` varchar(1) NOT NULL,
  `stuffing_destuffing` varchar(1) NOT NULL,
  `card_type` varchar(10) NOT NULL,
  `card_status` varchar(500) NOT NULL,
  `remarks` text NOT NULL,
  `cancel_reason` text NOT NULL,
  `cancel_user_id` int(11) NOT NULL,
  `cancel_created_date` datetime NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`card_print_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_card_print`
--

INSERT INTO `wtyqf_slpa_card_print` (`card_print_id`, `card_serial`, `rework_service_id`, `rework_no`, `container_no`, `operation_category`, `operation_type`, `stuffing_destuffing`, `card_type`, `card_status`, `remarks`, `cancel_reason`, `cancel_user_id`, `cancel_created_date`, `created_date`, `user_id`, `state`) VALUES
(1, 1000000, 0, 20190400001, '33333333333', 'F', 'M', 'D', 'Y_IN', 'I', '', '20190400001', 663, '2019-07-06 09:36:54', '2019-07-06 16:06:54', 663, 0),
(2, 1000001, 0, 20190400002, '33333333333', 'F', 'M', 'S', 'P_OUT', 'I', '', 'ter fdgfdgreete', 663, '2019-07-07 11:34:14', '2019-07-07 18:04:14', 663, 0),
(3, 1000002, 0, 20190400004, '22222222222', 'L', 'M', 'S', 'P_OUT', 'A', '', '', 0, '0000-00-00 00:00:00', '2019-04-04 08:07:11', 663, 0),
(4, 1000003, 0, 20190400005, 'W3333333333', 'F', 'M', 'D', 'Y_IN', 'A', '', '', 0, '0000-00-00 00:00:00', '2019-04-04 08:49:14', 663, 0),
(5, 1000004, 0, 20190400006, '66666666666', 'F', 'M', 'D', 'Y_IN', 'A', '', '', 0, '0000-00-00 00:00:00', '2019-04-04 08:49:42', 663, 0),
(6, 1000005, 0, 20190400007, '55555555555', 'F', 'M', 'S', 'P_OUT', 'A', '', '', 0, '0000-00-00 00:00:00', '2019-04-04 08:50:30', 663, 0),
(7, 1000006, 0, 20190400009, '33333333333', 'L', 'M', 'D', 'P_IN', 'A', '', '', 0, '0000-00-00 00:00:00', '2019-04-04 09:02:52', 663, 0),
(8, 1000007, 0, 20190700024, 'FFD', 'T', 'S', 'D', 'Y_IN', 'A', '20190700024', '', 0, '0000-00-00 00:00:00', '2019-07-06 14:44:40', 663, 0),
(9, 1000008, 0, 20190700014, 'WRWE', 'F', 'M', 'D', 'Y_IN', 'A', '', '', 0, '0000-00-00 00:00:00', '2019-07-06 15:22:54', 663, 0),
(10, 1000009, 0, 20190700019, '555', 'L', 'M', 'D', 'P_IN', 'A', '', '', 0, '0000-00-00 00:00:00', '2019-07-06 15:56:38', 663, 0),
(11, 1000010, 0, 20190400001, '33333333333', 'F', 'M', 'D', 'Y_IN', 'A', '33333 ', '', 0, '0000-00-00 00:00:00', '2019-07-06 16:07:17', 663, 0),
(12, 1000011, 0, 20190700018, '555', 'F', 'M', 'S', 'P_OUT', 'A', '', '', 0, '0000-00-00 00:00:00', '2019-07-07 12:29:18', 717, 0),
(13, 1000012, 0, 20190700026, '22222222222', 'F', 'M', 'D', 'Y_IN', 'A', '', '', 0, '0000-00-00 00:00:00', '2019-07-07 17:09:54', 663, 0),
(14, 1000013, 0, 20190700027, '4234234', 'F', 'M', 'S', 'P_OUT', 'A', '', '', 0, '0000-00-00 00:00:00', '2019-07-07 17:20:38', 663, 0),
(15, 1000014, 0, 20190700028, 'GFRTE', 'L', 'M', 'D', 'P_IN', 'A', '', '', 0, '0000-00-00 00:00:00', '2019-07-07 17:32:13', 663, 0),
(16, 1000015, 0, 20190700029, 'ERTER435', 'L', 'M', 'S', 'P_OUT', 'A', '', '', 0, '0000-00-00 00:00:00', '2019-07-07 17:40:47', 663, 0),
(17, 1000016, 0, 20190700030, '5345ERTE', '', 'N', 'D', 'Y_IN', 'A', '', '', 0, '0000-00-00 00:00:00', '2019-07-07 17:51:08', 663, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_document`
--

DROP TABLE IF EXISTS `wtyqf_slpa_document`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_document` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `document_code` varchar(5) NOT NULL,
  `document_name` varchar(250) NOT NULL,
  `document_status` varchar(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_document`
--

INSERT INTO `wtyqf_slpa_document` (`document_id`, `document_code`, `document_name`, `document_status`, `user_id`, `created_date`) VALUES
(8, 'CAS', 'CUSTOM APPROVAL', 'A', 663, '2019-02-07 05:24:06'),
(9, 'REA', 'REWORK APPLICATION', 'A', 663, '2019-02-07 05:24:03'),
(10, 'GUA', 'GUARANTEE LETTER', 'A', 663, '2019-02-07 05:23:58'),
(11, 'OBJ', 'NO OBJECTION LETTER', 'A', 663, '2019-01-10 23:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_exchange_rate`
--

DROP TABLE IF EXISTS `wtyqf_slpa_exchange_rate`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_exchange_rate` (
  `exchange_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `exchange_rate` float(5,2) NOT NULL,
  `effective_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`exchange_rate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_exchange_rate`
--

INSERT INTO `wtyqf_slpa_exchange_rate` (`exchange_rate_id`, `exchange_rate`, `effective_date`, `user_id`, `created_date`) VALUES
(1, 0.23, '2018-09-25', 1, '2018-09-25 03:18:29'),
(2, 3.00, '2019-07-11', 663, '2019-07-06 19:44:32'),
(3, 66.00, '2019-07-07', 663, '2019-07-07 03:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_rent`
--

DROP TABLE IF EXISTS `wtyqf_slpa_rent`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_rent` (
  `rent_id` int(11) NOT NULL AUTO_INCREMENT,
  `container_no` varchar(13) NOT NULL,
  `container_size` int(11) NOT NULL,
  `card_serial` int(11) NOT NULL,
  `tariff_code` int(11) NOT NULL,
  `tariff_rate` float(12,2) NOT NULL,
  `days` int(11) NOT NULL,
  `total` float(20,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wtyqf_slpa_rent`
--

INSERT INTO `wtyqf_slpa_rent` (`rent_id`, `container_no`, `container_size`, `card_serial`, `tariff_code`, `tariff_rate`, `days`, `total`, `user_id`, `created_date`) VALUES
(7, '33333333333', 20, 1000001, 2201, 6.95, 3, 20.85, 663, '2019-07-07 10:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_rework`
--

DROP TABLE IF EXISTS `wtyqf_slpa_rework`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_rework` (
  `rework_id` int(11) NOT NULL AUTO_INCREMENT,
  `rework_no` bigint(20) NOT NULL,
  `operation_type` varchar(1) NOT NULL,
  `operation_category` varchar(1) NOT NULL,
  `terminal` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `xd_xt` varchar(2) NOT NULL,
  `pending_cdn` varchar(1) NOT NULL,
  `cdn_received_date` date NOT NULL,
  `register_date` date NOT NULL,
  `cancel_date` date NOT NULL,
  `rework_status` varchar(2) NOT NULL,
  `is_agent_insert` int(11) NOT NULL DEFAULT '0',
  `user_id` int(1) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rework_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_rework`
--

INSERT INTO `wtyqf_slpa_rework` (`rework_id`, `rework_no`, `operation_type`, `operation_category`, `terminal`, `location`, `xd_xt`, `pending_cdn`, `cdn_received_date`, `register_date`, `cancel_date`, `rework_status`, `is_agent_insert`, `user_id`, `created_date`) VALUES
(1, 20190400001, 'M', 'F', 'S', 'I', '', '', '2019-04-04', '2019-04-04', '2019-07-07', 'C', 0, 717, '2019-07-07 12:21:22'),
(2, 20190400002, 'M', 'F', '', 'I', 'XT', '', '2019-04-04', '2019-04-04', '2019-04-04', 'P', 0, 663, '2019-07-06 06:19:47'),
(3, 20190400003, 'M', 'L', 'J', 'I', '', '', '2019-04-04', '2019-04-04', '2019-04-04', 'P', 0, 663, '2019-07-06 06:19:47'),
(4, 20190400004, 'M', 'L', '', 'I', 'XD', 'R', '2019-04-04', '2019-04-04', '2019-04-04', 'P', 0, 663, '2019-07-06 06:19:47'),
(5, 20190400005, 'M', 'F', 'J', 'I', '', '', '2019-04-04', '2019-04-04', '2019-04-04', 'P', 0, 663, '2019-07-06 06:19:47'),
(6, 20190400006, 'M', 'F', 'J', 'I', '', '', '2019-04-04', '2019-04-04', '2019-04-04', 'P', 0, 663, '2019-07-06 06:19:47'),
(7, 20190400007, 'M', 'F', 'J', 'I', 'XT', '', '2019-04-04', '2019-04-04', '2019-04-04', 'P', 0, 663, '2019-07-06 06:19:47'),
(8, 20190400008, 'M', 'L', 'J', 'I', 'XD', 'R', '2019-04-04', '2019-04-04', '2019-04-04', 'P', 0, 663, '2019-07-06 06:19:47'),
(9, 20190400009, 'M', 'L', 'J', 'I', '', '', '2019-04-04', '2019-04-04', '2019-04-04', 'P', 0, 663, '2019-07-06 06:19:47'),
(10, 20190400010, 'M', 'F', 'S', 'I', '', '', '2019-04-04', '2019-04-04', '2019-04-04', 'P', 0, 663, '2019-07-06 06:19:47'),
(11, 20190500011, 'M', 'F', '', 'I', '', '', '2019-04-04', '2019-05-05', '2019-04-04', 'P', 0, 663, '2019-07-06 06:19:47'),
(12, 20190700012, '', '', '', '', '', '', '2019-04-04', '2019-04-04', '2019-04-04', 'P', 0, 663, '2019-07-06 06:19:47'),
(13, 20190700013, 'M', 'F', '', 'I', 'XT', '', '2019-04-04', '2019-07-06', '2019-04-04', 'P', 0, 663, '2019-07-06 06:19:47'),
(14, 20190700014, 'M', 'F', 'J', 'I', '', '', '0000-00-00', '2019-07-06', '0000-00-00', 'P', 0, 715, '2019-07-06 08:54:16'),
(15, 20190700015, 'M', 'L', 'S', 'I', '', 'R', '0000-00-00', '2019-07-06', '0000-00-00', 'P', 0, 715, '2019-07-06 07:12:20'),
(16, 20190700016, 'M', 'L', 'J', 'I', '', 'R', '0000-00-00', '2019-07-06', '0000-00-00', 'P', 0, 715, '2019-07-06 07:11:53'),
(17, 20190700017, 'M', 'F', 'J', 'I', '', '', '0000-00-00', '2019-07-06', '0000-00-00', 'P', 0, 715, '2019-07-06 12:22:39'),
(18, 20190700018, 'M', 'F', 'J', 'I', 'XT', '', '0000-00-00', '2019-07-06', '0000-00-00', 'P', 0, 715, '2019-07-06 12:28:28'),
(19, 20190700019, 'M', 'L', 'S', 'I', '', 'R', '0000-00-00', '2019-07-06', '2019-07-08', 'C', 0, 663, '2019-07-07 18:48:05'),
(20, 20190700020, 'M', 'L', 'S', 'I', 'XD', 'Y', '0000-00-00', '2019-07-06', '0000-00-00', 'P', 0, 715, '2019-07-06 12:33:39'),
(21, 20190700021, 'N', '', 'C', 'I', 'XT', '', '0000-00-00', '2019-07-06', '0000-00-00', 'P', 0, 715, '2019-07-06 12:34:49'),
(22, 20190700022, 'S', 'O', 'O', 'I', '', '', '0000-00-00', '2019-07-06', '0000-00-00', 'P', 0, 715, '2019-07-06 12:36:11'),
(23, 20190700023, 'S', 'O', 'S', 'I', 'XT', '', '0000-00-00', '2019-07-06', '0000-00-00', 'P', 0, 715, '2019-07-06 12:37:16'),
(24, 20190700024, 'S', 'T', 'S', 'I', 'XT', '', '0000-00-00', '2019-07-06', '0000-00-00', 'P', 0, 715, '2019-07-06 12:38:38'),
(25, 20190700025, 'D', '', 'J', 'I', '', '', '0000-00-00', '2019-07-06', '0000-00-00', 'P', 0, 715, '2019-07-06 12:45:45'),
(26, 20190700026, 'M', 'F', 'S', 'I', '', '', '0000-00-00', '2019-07-07', '0000-00-00', 'P', 0, 663, '2019-07-07 17:05:22'),
(27, 20190700027, 'M', 'F', 'J', 'I', 'XT', '', '0000-00-00', '2019-07-07', '0000-00-00', 'P', 0, 663, '2019-07-07 17:20:27'),
(28, 20190700028, 'M', 'L', 'J', 'I', '', 'R', '0000-00-00', '2019-07-07', '2019-07-08', 'C', 0, 663, '2019-07-07 18:31:26'),
(29, 20190700029, 'M', 'L', 'J', 'I', 'XD', 'R', '2019-07-07', '2019-07-07', '0000-00-00', 'P', 0, 663, '2019-07-07 17:45:09'),
(30, 20190700030, 'N', '', 'J', 'I', 'XT', '', '0000-00-00', '2019-07-07', '0000-00-00', 'P', 0, 663, '2019-07-07 17:49:20'),
(31, 20190700031, 'S', 'O', 'J', 'I', '', '', '0000-00-00', '2019-07-07', '0000-00-00', 'P', 0, 663, '2019-07-07 17:53:16'),
(32, 20190700032, 'S', 'O', 'J', 'I', 'XT', '', '0000-00-00', '2019-07-07', '0000-00-00', 'P', 0, 663, '2019-07-07 17:55:12'),
(33, 20190700033, 'S', 'T', 'J', 'I', 'XT', '', '0000-00-00', '2019-07-07', '0000-00-00', 'P', 0, 663, '2019-07-07 17:59:54'),
(34, 20190700034, 'D', '', 'S', 'I', '', '', '0000-00-00', '2019-07-07', '0000-00-00', 'P', 0, 663, '2019-07-07 18:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_rework_document`
--

DROP TABLE IF EXISTS `wtyqf_slpa_rework_document`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_rework_document` (
  `rework_document_id` int(11) NOT NULL AUTO_INCREMENT,
  `rework_id` int(11) NOT NULL,
  `rework_no` bigint(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `operation_type` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rework_document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_rework_document`
--

INSERT INTO `wtyqf_slpa_rework_document` (`rework_document_id`, `rework_id`, `rework_no`, `document_id`, `operation_type`, `user_id`, `created_date`) VALUES
(4, 6, 20190400006, 11, 'M', 663, '2019-04-04 08:49:40'),
(5, 7, 20190400007, 9, 'M', 663, '2019-04-04 08:50:25'),
(6, 8, 20190400008, 11, 'M', 663, '2019-04-04 08:51:15'),
(7, 9, 20190400009, 9, 'M', 663, '2019-04-04 09:02:50'),
(8, 10, 20190400010, 8, 'M', 663, '2019-04-04 09:35:10'),
(9, 11, 20190500011, 8, 'M', 663, '2019-05-05 06:04:09'),
(38, 13, 20190700013, 8, 'M', 663, '2019-07-06 05:45:05'),
(39, 13, 20190700013, 9, 'M', 663, '2019-07-06 05:45:05'),
(40, 14, 20190700014, 8, 'M', 715, '2019-07-06 06:57:09'),
(41, 14, 20190700014, 9, 'M', 715, '2019-07-06 06:57:09'),
(42, 15, 20190700015, 9, 'M', 715, '2019-07-06 07:03:07'),
(43, 15, 20190700015, 10, 'M', 715, '2019-07-06 07:03:07'),
(44, 16, 20190700016, 8, 'M', 715, '2019-07-06 07:11:53'),
(45, 17, 20190700017, 8, 'M', 715, '2019-07-06 12:08:25'),
(46, 17, 20190700017, 9, 'M', 715, '2019-07-06 12:08:25'),
(47, 18, 20190700018, 8, 'M', 715, '2019-07-06 12:10:45'),
(48, 18, 20190700018, 10, 'M', 715, '2019-07-06 12:10:45'),
(51, 20, 20190700020, 10, 'M', 715, '2019-07-06 12:12:26'),
(52, 20, 20190700020, 11, 'M', 715, '2019-07-06 12:12:26'),
(53, 21, 20190700021, 8, 'N', 715, '2019-07-06 12:12:56'),
(54, 21, 20190700021, 9, 'N', 715, '2019-07-06 12:12:56'),
(55, 22, 20190700022, 8, 'S', 715, '2019-07-06 12:13:37'),
(56, 22, 20190700022, 9, 'S', 715, '2019-07-06 12:13:37'),
(57, 23, 20190700023, 8, 'S', 715, '2019-07-06 12:14:10'),
(58, 23, 20190700023, 9, 'S', 715, '2019-07-06 12:14:10'),
(59, 24, 20190700024, 8, 'S', 715, '2019-07-06 12:14:43'),
(60, 24, 20190700024, 9, 'S', 715, '2019-07-06 12:14:43'),
(61, 25, 20190700025, 8, 'D', 715, '2019-07-06 12:15:08'),
(67, 1, 20190400001, 8, 'M', 663, '2019-07-06 14:22:28'),
(68, 1, 20190400001, 9, 'M', 663, '2019-07-06 14:22:28'),
(69, 1, 20190400001, 10, 'M', 663, '2019-07-06 14:22:28'),
(70, 19, 20190700019, 8, 'M', 663, '2019-07-06 14:22:51'),
(71, 19, 20190700019, 9, 'M', 663, '2019-07-06 14:22:51'),
(72, 19, 20190700019, 10, 'M', 663, '2019-07-06 14:22:51'),
(73, 26, 20190700026, 8, 'M', 663, '2019-07-07 17:05:22'),
(74, 27, 20190700027, 8, 'M', 663, '2019-07-07 17:20:27'),
(75, 28, 20190700028, 8, 'M', 663, '2019-07-07 17:31:05'),
(76, 30, 20190700030, 8, 'N', 663, '2019-07-07 17:49:20'),
(77, 32, 20190700032, 11, 'S', 663, '2019-07-07 17:55:12'),
(78, 33, 20190700033, 8, 'S', 663, '2019-07-07 17:59:54'),
(79, 34, 20190700034, 8, 'D', 663, '2019-07-07 18:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_rework_service`
--

DROP TABLE IF EXISTS `wtyqf_slpa_rework_service`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_rework_service` (
  `rework_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `rework_id` int(11) NOT NULL,
  `rework_no` bigint(11) NOT NULL,
  `stuffing_destuffing` varchar(1) NOT NULL,
  `account_no` varchar(20) NOT NULL,
  `payment_mode` varchar(8) NOT NULL,
  `container_no` varchar(13) NOT NULL,
  `container_size` varchar(8) NOT NULL,
  `service_type` varchar(250) NOT NULL,
  `container_operator` varchar(6) NOT NULL,
  `vessel_operator` varchar(6) NOT NULL,
  `voyage` varchar(8) NOT NULL,
  `dc_cargo` varchar(10) NOT NULL,
  `un_no` varchar(10) NOT NULL,
  `class_no` varchar(10) NOT NULL,
  `tariff_id` int(11) NOT NULL,
  `tariff_code` varchar(10) NOT NULL,
  `computer_code` varchar(8) NOT NULL,
  `tariff_rate` float NOT NULL,
  `vessel_name` varchar(250) NOT NULL,
  `vessel_date` date NOT NULL,
  `vessel_ref` varchar(100) NOT NULL,
  `warehouse` varchar(250) NOT NULL,
  `destination` varchar(250) NOT NULL,
  `ts_cbm` float NOT NULL,
  `weighing_charges` float NOT NULL,
  `local_cbm` float NOT NULL,
  `total_amount` double(15,2) NOT NULL,
  `rework_status` varchar(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cancel_reason` text NOT NULL,
  `cancel_date` date NOT NULL,
  `cash_paid` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remarks` text NOT NULL,
  `completed_date` datetime NOT NULL,
  PRIMARY KEY (`rework_service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_rework_service`
--

INSERT INTO `wtyqf_slpa_rework_service` (`rework_service_id`, `rework_id`, `rework_no`, `stuffing_destuffing`, `account_no`, `payment_mode`, `container_no`, `container_size`, `service_type`, `container_operator`, `vessel_operator`, `voyage`, `dc_cargo`, `un_no`, `class_no`, `tariff_id`, `tariff_code`, `computer_code`, `tariff_rate`, `vessel_name`, `vessel_date`, `vessel_ref`, `warehouse`, `destination`, `ts_cbm`, `weighing_charges`, `local_cbm`, `total_amount`, `rework_status`, `user_id`, `cancel_reason`, `cancel_date`, `cash_paid`, `created_date`, `remarks`, `completed_date`) VALUES
(2, 1, 20190400001, 'D', '2003', 'Credit', '33333333333', '20', 'MCC DE STUFFING 20\'', '', '', '', '', '', '', 38, '27.01', '21.266', 47.35, 'WER', '2019-04-04', '', 'BQ', '', 23, 0, 0, 47.35, 'P', 663, '', '0000-00-00', 0, '2019-04-04 06:25:45', '', '0000-00-00 00:00:00'),
(3, 1, 20190400001, 'D', '2003', 'Credit', '33333333333', '20', 'EMPTY CONTINER MOUNT 20\'', '', '', '', '', '', '', 13, '17.02', '21.072', 10, 'WER', '2019-04-04', '', 'BQ', '', 0, 3, 0, 30.00, 'P', 663, '', '0000-00-00', 0, '2019-04-04 06:25:45', '', '0000-00-00 00:00:00'),
(6, 2, 20190400002, 'S', '2003', 'Credit', '33333333333', '40', 'MCC STUFFING 40\'', 'WER', 'WER', 'WERw', 'YES', 'WER', 'WER', 42, '27.02', '21.267', 71.25, 'WER', '2019-04-04', '', 'BQ', 'ER', 12, 0, 0, 71.25, 'P', 663, '', '0000-00-00', 0, '2019-04-04 06:48:59', '', '0000-00-00 00:00:00'),
(7, 2, 20190400002, 'S', '2003', 'Credit', '33333333333', '40', 'WEIGHING', 'WER', 'WER', 'WERw', 'YES', 'WER', 'WER', 79, '60.12', '21.267', 6, 'WER', '2019-04-04', '', 'BQ', 'ER', 0, 1, 0, 6.00, 'P', 663, '', '0000-00-00', 0, '2019-04-04 06:48:59', '', '0000-00-00 00:00:00'),
(10, 3, 20190400003, 'D', '2001', 'Credit', '345', '20', 'MCC DE STUFFING 20\'', '', '', '', '', '', '', 38, '27.01', '21.266', 47.35, 'R5ERT', '2019-04-04', '', 'BQ', '', 12, 0, 0, 47.35, 'B', 663, '', '0000-00-00', 0, '2019-05-04 03:37:26', '', '0000-00-00 00:00:00'),
(11, 3, 20190400003, 'D', '2001', 'Credit', '345', '20', 'EXCESS CARGO ', '', '', '', '', '', '', 50, '27.05', '21.266', 6, 'R5ERT', '2019-04-04', '', 'BQ', '', 0, 0, 23, 90.00, 'B', 663, '', '0000-00-00', 0, '2019-05-04 03:37:26', '', '0000-00-00 00:00:00'),
(12, 3, 20190400003, 'D', '2001', 'Credit', '345', '20', 'EMPTY CONTINER MOUNT 20\'', '', '', '', '', '', '', 13, '17.02', '21.072', 10, 'R5ERT', '2019-04-04', '', 'BQ', '', 0, 1, 0, 10.00, 'B', 663, '', '0000-00-00', 0, '2019-05-04 03:37:26', '', '0000-00-00 00:00:00'),
(15, 4, 20190400004, 'S', '2003', 'Credit', '22222222222', '40', 'MCC STUFFING 40\'', 'SDF', 'SDF', 'SFs', 'YES', 'SFs', 'DFS', 42, '27.02', '21.267', 71.25, 'EWQ', '2019-04-04', '', 'BQ', 'SSDF', 12, 0, 0, 71.25, 'P', 663, '', '0000-00-00', 0, '2019-04-04 08:11:43', '', '0000-00-00 00:00:00'),
(16, 4, 20190400004, 'S', '2003', 'Credit', '22222222222', '40', 'WEIGHING', 'SDF', 'SDF', 'SFs', '', '', '', 79, '60.12', '21.267', 6, 'EWQ', '2019-04-04', '', 'BQ', 'SSDF', 0, 1, 0, 6.00, 'P', 663, '', '0000-00-00', 0, '2019-04-04 08:11:43', '', '0000-00-00 00:00:00'),
(17, 4, 20190400004, 'S', '2003', 'Credit', '22222222222', '40', 'EXCESS CARGO ', 'SDF', 'SDF', 'SFs', 'YES', 'SFs', 'DFS', 50, '27.05', '21.268', 6, 'EWQ', '2019-04-04', '', 'BQ', 'SSDF', 0, 0, 107, 642.00, 'P', 663, '', '0000-00-00', 0, '2019-04-04 08:11:43', '', '0000-00-00 00:00:00'),
(18, 5, 20190400005, 'D', '2003', 'Credit', 'W3333333333', '40', 'MCC DE STUFFING 40\'', '', '', '', '', '', '', 39, '27.01', '21.267', 71.25, 'ERWE', '2019-04-04', '', 'BQ', '', 23, 0, 0, 71.25, 'B', 663, '', '0000-00-00', 0, '2019-07-06 16:18:58', '', '0000-00-00 00:00:00'),
(19, 6, 20190400006, 'D', '2005', 'Credit', '66666666666', '20', 'MCC DE STUFFING 20\'', '', '', '', '', '', '', 38, '27.01', '21.266', 47.35, 'TYU', '2019-04-04', '', 'BQ', '', 56, 0, 0, 47.35, 'B', 663, '', '0000-00-00', 0, '2019-07-06 16:20:24', '', '0000-00-00 00:00:00'),
(20, 7, 20190400007, 'S', '2004', 'Credit', '55555555555', '40', 'MCC DE STUFFING 40\'', 'FGH', 'FGH', 'FGH', 'YES', 'GFH', 'GFH', 39, '27.01', '21.267', 71.25, 'RTY', '2019-04-04', '', 'BQ', 'FGH', 45, 0, 0, 71.25, 'B', 663, '', '0000-00-00', 0, '2019-07-06 16:08:32', '', '0000-00-00 00:00:00'),
(21, 7, 20190400007, 'S', '2004', 'Credit', '55555555555', '40', 'EMPTY CONTINER MOUNT 40\'', 'FGH', 'FGH', 'FGH', 'YES', 'GFH', 'GFH', 14, '17.02', '21.267', 15, 'RTY', '2019-04-04', '', 'BQ', 'FGH', 0, 1, 0, 15.00, 'B', 663, '', '0000-00-00', 0, '2019-07-06 16:08:32', '', '0000-00-00 00:00:00'),
(27, 8, 20190400008, 'S', '2006', 'Credit', '44444444444', '40', 'MCC STUFFING 40\'', 'TY', 'RTY', 'RTY', 'YES', 'RTY', 'RY', 42, '27.02', '21.267', 71.25, 'RTY', '2019-04-04', '', 'BQ', 'RTY', 45, 0, 0, 71.25, 'B', 663, '', '0000-00-00', 0, '2019-07-06 13:41:31', '', '0000-00-00 00:00:00'),
(28, 8, 20190400008, 'S', '2006', 'Credit', '44444444444', '40', 'WEIGHING', 'TY', 'RTY', 'RTY', '', '', '', 79, '60.12', '21.267', 6, 'RTY', '2019-04-04', '', 'BQ', 'RTY', 0, 1, 0, 6.00, 'B', 663, '', '0000-00-00', 0, '2019-07-06 13:41:31', '', '0000-00-00 00:00:00'),
(29, 8, 20190400008, 'S', '2006', 'Credit', '44444444444', '40', 'EXCESS CARGO ', 'TY', 'RTY', 'RTY', 'NO', '', '', 50, '27.05', '21.268', 6, 'RTY', '2019-04-04', '', 'BQ', 'RTY', 0, 0, 23, 42.00, 'B', 663, '', '0000-00-00', 0, '2019-07-06 13:41:31', '', '0000-00-00 00:00:00'),
(32, 9, 20190400009, 'D', '2006', 'Credit', '33333333333', '20', 'MCC DE STUFFING 20\'', '', '', '', '', '', '', 38, '27.01', '21.266', 47.35, 'ERT', '2019-04-04', '', 'BQ', '', 43, 0, 0, 47.35, 'B', 663, '', '0000-00-00', 0, '2019-07-07 13:01:15', '', '0000-00-00 00:00:00'),
(33, 9, 20190400009, 'D', '2006', 'Credit', '33333333333', '20', 'EXCESS CARGO ', '', '', '', '', '', '', 50, '27.05', '21.268', 6, 'ERT', '2019-04-04', '', 'BQ', '', 0, 0, 23, 90.00, 'B', 663, '', '0000-00-00', 0, '2019-07-07 13:01:15', '', '0000-00-00 00:00:00'),
(34, 10, 20190400010, 'D', '2001', 'Credit', '44444444444', '20', 'MCC DE STUFFING 20\'', '', '', '', '', '', '', 38, '27.01', '21.266', 47.35, 'ERT', '2019-04-04', '', 'BQ', '', 34, 0, 0, 47.35, 'P', 663, '', '0000-00-00', 0, '2019-04-04 09:35:10', '', '0000-00-00 00:00:00'),
(35, 11, 20190500011, 'D', '2001', 'Credit', 'ASDAS', '20', 'LADEN CONTAINER MOUNTING 20\'', '', '', '', '', '', '', 7, '17.01', '21.069', 25, 'ASD', '2019-05-06', '', 'BQ', '', 0, 1, 0, 25.00, 'P', 663, '', '0000-00-00', 0, '2019-05-05 06:04:09', '', '0000-00-00 00:00:00'),
(36, 13, 20190700013, 'S', '2001', 'Cash', '22', '40', 'LADEN CONTAINER DEMOUNTING 40\'', 'WRw', 'WER', 'RWE', 'NO', '', '', 5, '17.01', '21.07', 38, 'WER', '2019-07-06', '', 'BQ', 'WER', 0, 1, 0, 38.00, 'P', 663, '', '0000-00-00', 1, '2019-07-06 18:52:25', '', '0000-00-00 00:00:00'),
(38, 15, 20190700015, 'D', '2001', 'Credit', 'WRWER', '40', 'MCC DE STUFFING 40\'', '', '', '', '', '', '', 39, '27.01', '21.267', 71.25, 'WW', '2019-07-01', '', 'BQ', '', 4, 0, 0, 71.25, 'P', 715, '', '0000-00-00', 0, '2019-07-06 07:03:07', '', '0000-00-00 00:00:00'),
(39, 15, 20190700015, 'D', '2001', 'Credit', 'WRWER', '40', 'EXCESS CARGO ', '', '', '', '', '', '', 50, '27.05', '21.267', 6, 'WW', '2019-07-01', '', 'BQ', '', 0, 0, 20, 24.00, 'P', 715, '', '0000-00-00', 0, '2019-07-06 07:03:07', '', '0000-00-00 00:00:00'),
(40, 16, 20190700016, 'D', '2001', 'Credit', '33333333333', '40', 'MCC DE STUFFING 40\'', '', '', '', '', '', '', 39, '27.01', '21.267', 71.25, 'WER', '2019-07-06', '', 'BQ', '', 12, 0, 0, 71.25, 'B', 715, '', '0000-00-00', 0, '2019-07-06 13:42:17', '', '0000-00-00 00:00:00'),
(41, 16, 20190700016, 'D', '2001', 'Credit', '33333333333', '40', 'EXCESS CARGO ', '', '', '', '', '', '', 50, '27.05', '21.267', 6, 'WER', '2019-07-06', '', 'BQ', '', 0, 0, 42, 156.00, 'B', 715, '', '0000-00-00', 0, '2019-07-06 13:42:17', '', '0000-00-00 00:00:00'),
(43, 17, 20190700017, 'D', '2001', 'Credit', '44', '20', 'MCC DE STUFFING 20\'', '', '', '', '', '', '', 38, '27.01', '21.266', 47.35, 'DDD', '2019-07-10', '', 'BQ', '', 55, 0, 0, 47.35, 'B', 715, '', '0000-00-00', 0, '2019-07-06 16:21:41', '', '0000-00-00 00:00:00'),
(44, 18, 20190700018, 'S', '2001', 'Credit', '555', '20', 'MCC STUFFING 20\'', 'RTRT', 'WW', 'EE', 'NO', '', '', 41, '27.02', '21.266', 47.35, 'TTT', '2019-07-07', '', 'BQ', 'RRR', 55, 0, 0, 47.35, 'B', 715, '', '0000-00-00', 0, '2019-07-06 16:10:01', '', '0000-00-00 00:00:00'),
(45, 18, 20190700018, 'S', '2001', 'Credit', '555', '20', 'WEIGHING', 'RTRT', 'WW', 'EE', 'NO', '', '', 79, '60.12', '21.266', 6, 'TTT', '2019-07-07', '', 'BQ', 'RRR', 0, 1, 0, 6.00, 'B', 715, '', '0000-00-00', 0, '2019-07-06 16:10:01', '', '0000-00-00 00:00:00'),
(46, 19, 20190700019, 'D', '2001', 'Credit', '555', '40', 'EMPTY CONTINER MOUNT 40\'', '', '', '', '', '', '', 14, '17.02', '21.073', 15, 'TT', '2019-07-07', '', 'BQ', '', 0, 1, 0, 15.00, 'C', 663, 'test', '2019-07-08', 0, '2019-07-07 18:51:40', '', '0000-00-00 00:00:00'),
(47, 20, 20190700020, 'S', '2001', 'Credit', '56', '40', 'EMPTY CONTINER MOUNT 40\'', 'FGH', 'FGHFG', 'FGH', 'NO', '', '', 14, '17.02', '21.073', 15, 'FGH', '2019-07-17', '', 'BQ', 'FGH', 0, 1, 0, 15.00, 'P', 715, '', '0000-00-00', 0, '2019-07-06 12:12:26', '', '0000-00-00 00:00:00'),
(48, 21, 20190700021, 'D', '2001', 'Credit', '45', '40', 'STORAGE LADEN EXPORT CONT. 40\'', '', '', '', 'NO', '', '', 30, '22.02', '90.003', 10.4, 'FGH', '2019-07-08', '', 'BQ', '', 0, 1, 0, 10.40, 'P', 715, '', '0000-00-00', 0, '2019-07-06 12:12:56', '', '0000-00-00 00:00:00'),
(49, 22, 20190700022, 'D', '2001', 'Credit', 'DFG', '40', '2ND STUFFING SAME PLACE 40\'', '', '', '', '', '', '', 20, '18.01', '33', 21.076, 'DFG', '2019-07-06', '', 'BQ', '', 0, 1, 0, 33.00, 'P', 715, '', '0000-00-00', 0, '2019-07-06 12:13:37', '', '0000-00-00 00:00:00'),
(50, 23, 20190700023, 'S', '2001', 'Credit', 'DFG', '40', 'NORMAL OPERATION 40\'', 'Ff', 'FFF', 'FF', 'NO', '', '', 26, '18.02', '150', 21.079, 'FFF', '2019-07-02', '', 'BQ', 'FF', 0, 1, 0, 150.00, 'P', 715, '', '0000-00-00', 0, '2019-07-06 12:14:10', '', '0000-00-00 00:00:00'),
(51, 23, 20190700023, 'S', '2001', 'Credit', 'DFG', '40', 'EMPTY CONTINER MOUNT 40\'', 'Ff', 'FFF', 'FF', 'NO', '', '', 14, '17.02', '15', 21.079, 'FFF', '2019-07-02', '', 'BQ', 'FF', 0, 1, 0, 15.00, 'P', 715, '', '0000-00-00', 0, '2019-07-06 12:14:10', '', '0000-00-00 00:00:00'),
(53, 25, 20190700025, 'D', '2001', 'Credit', 'ADa', '20', 'LADEN CONTAINER MOUNTING 20\'', '', '', '', '', '', '', 7, '17.01', '21.069', 25, 'ASD', '2019-07-09', '', 'BQ', '', 0, 1, 0, 25.00, 'P', 715, '', '0000-00-00', 0, '2019-07-06 12:15:08', '', '0000-00-00 00:00:00'),
(54, 25, 20190700025, 'D', '2001', 'Credit', 'ADa', '20', 'LADEN CONTAINER MOUNTING 20\'', '', '', '', '', '', '', 7, '17.01', '21.069', 25, 'ASD', '2019-07-09', '', 'BQ', '', 0, 1, 0, 25.00, 'P', 715, '', '0000-00-00', 0, '2019-07-06 12:15:08', '', '0000-00-00 00:00:00'),
(55, 26, 20190700026, 'D', '2001', 'Credit', '22222222222', '20', 'MCC DE STUFFING 20\'', '', '', '', '', '', '', 38, '27.01', '21.266', 47.35, 'RWER', '2019-07-07', '', 'BQ', '', 34, 0, 0, 47.35, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:05:22', '', '0000-00-00 00:00:00'),
(56, 27, 20190700027, 'S', '2001', 'Credit', '4234234', '20', 'MCC STUFFING 20\'', 'WRE', 'WER', 'WR', 'YES', 'ER', 'RT', 41, '27.02', '21.266', 47.35, 'ERT', '2019-07-07', '', 'BQ', 'WR', 23, 0, 0, 47.35, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:20:27', '', '0000-00-00 00:00:00'),
(57, 27, 20190700027, 'S', '2001', 'Credit', '4234234', '20', 'WEIGHING', 'WRE', 'WER', 'WR', 'YES', 'ER', 'RT', 79, '60.12', '21.266', 6, 'ERT', '2019-07-07', '', 'BQ', 'WR', 0, 2, 0, 12.00, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:20:27', '', '0000-00-00 00:00:00'),
(58, 28, 20190700028, 'D', '2001', 'Credit', 'GFRTE', '20', 'MCC DE STUFFING 20\'', '', '', '', '', '', '', 38, '27.01', '21.266', 47.35, 'DFGD', '2019-07-07', '', 'BQ', '', 45, 0, 0, 47.35, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:31:05', '', '0000-00-00 00:00:00'),
(59, 28, 20190700028, 'D', '2001', 'Credit', 'GFRTE', '20', 'EXCESS CARGO ', '', '', '', '', '', '', 50, '27.05', '21.266', 6, 'DFGD', '2019-07-07', '', 'BQ', '', 0, 0, 34, 156.00, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:31:05', '', '0000-00-00 00:00:00'),
(60, 28, 20190700028, 'D', '2001', 'Credit', 'GFRTE', '20', 'WEIGHING', '', '', '', '', '', '', 79, '60.12', '22.074', 6, 'DFGD', '2019-07-07', '', 'BQ', '', 0, 1, 0, 6.00, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:31:05', '', '0000-00-00 00:00:00'),
(63, 29, 20190700029, 'S', '2001', 'Credit', 'ERTER435', '20', 'MCC STUFFING 20\'', 'RT', 'ETRHF', 'ERTFH', 'NO', '', '', 41, '27.02', '21.266', 47.35, 'ERT', '2019-07-07', '', 'BQ', 'ERT', 13, 0, 0, 47.35, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:45:09', '', '0000-00-00 00:00:00'),
(64, 29, 20190700029, 'S', '2001', 'Credit', 'ERTER435', '20', 'WEIGHING', 'RT', 'ETR', 'ERT', '', '', '', 79, '60.12', '21.266', 6, 'ERT', '2019-07-07', '', 'BQ', 'ERT', 0, 1, 0, 6.00, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:45:09', '', '0000-00-00 00:00:00'),
(65, 29, 20190700029, 'S', '2001', 'Credit', 'ERTER435', '20', 'EXCESS CARGO ', 'RT', 'ETR', 'ERT', 'NO', '', '', 50, '27.05', '21.268', 6, 'ERT', '2019-07-07', '', 'BQ', 'ERT', 0, 0, 56, 288.00, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:45:09', '', '0000-00-00 00:00:00'),
(66, 30, 20190700030, 'D', '2001', 'Credit', '5345ERTE', '20', 'NORMAL OPERATION 20\'', '', '', '', 'NO', '', '', 25, '18.02', '21.078', 100, 'ERT', '2019-07-07', '', 'BQ', '', 0, 3, 0, 100.00, 'B', 663, '', '0000-00-00', 0, '2019-07-07 18:14:29', '', '0000-00-00 00:00:00'),
(67, 30, 20190700030, 'D', '2001', 'Credit', '5345ERTE', '20', 'EMPTY CONTINER MOUNT 20\'', '', '', '', 'NO', '', '', 13, '17.02', '21.078', 10, 'ERT', '2019-07-07', '', 'BQ', '', 0, 3, 0, 30.00, 'B', 663, '', '0000-00-00', 0, '2019-07-07 18:14:29', '', '0000-00-00 00:00:00'),
(68, 31, 20190700031, 'D', '2001', 'Credit', 'ERT6345', '20', 'ONE WAY SPECIAL OPERATION 20\'', '', '', '', '', '', '', 32, '25.01', '81', 21.45, 'ERT', '2019-07-07', '', 'BQ', '', 0, 1, 0, 81.00, 'B', 663, '', '0000-00-00', 0, '2019-07-07 18:14:29', '', '0000-00-00 00:00:00'),
(69, 32, 20190700032, 'S', '2001', 'Credit', '5345ERTEE', '20', 'ONE WAY SPECIAL OPERATION 20\'', 'HFG', 'FGH', 'FH', 'NO', '', '', 32, '25.01', '81', 21.45, 'ET', '2019-07-07', '', 'BQ', 'FGH', 0, 1, 0, 81.00, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:55:12', '', '0000-00-00 00:00:00'),
(70, 32, 20190700032, 'S', '2001', 'Credit', '5345ERTEE', '20', 'WEIGHING', 'HFG', 'FGH', 'FH', 'NO', '', '', 79, '60.12', '6', 21.45, 'ET', '2019-07-07', '', 'BQ', 'FGH', 0, 1, 0, 6.00, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:55:12', '', '0000-00-00 00:00:00'),
(71, 33, 20190700033, 'D', '2001', 'Credit', '22222222222', '20', 'TWO WAY SPECIAL OPERATION 20\'', '', '', '', 'NO', '', '', 35, '25.02', '21.453', 148, 'WRE', '2019-07-07', '', 'BQ', '', 0, 1, 0, 148.00, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:59:54', '', '0000-00-00 00:00:00'),
(72, 33, 20190700033, 'D', '2001', 'Credit', '22222222222', '20', 'EMPTY CONTINER MOUNT 20\'', '', '', '', 'NO', '', '', 13, '17.02', '21.072', 10, 'WRE', '2019-07-07', '', 'BQ', '', 0, 2, 0, 20.00, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:59:54', '', '0000-00-00 00:00:00'),
(73, 33, 20190700033, 'S', '2001', 'Credit', '55555555555', '20', 'EMPTY CONTINER MOUNT 20\'', 'RET', 'ERT', 'ERT', 'NO', '', '', 13, '17.02', '21.072', 10, 'WRE', '2019-07-07', '', 'BQ', 'ET', 0, 2, 0, 20.00, 'P', 663, '', '0000-00-00', 0, '2019-07-07 17:59:54', '', '0000-00-00 00:00:00'),
(74, 34, 20190700034, 'D', '2001', 'Credit', '56456', '20', '2ND DESTUFFING 20\'', '', '', '', '', '', '', 22, '18.02', '21.082', 75, 'RTR', '2019-07-07', '', 'BQ', '', 0, 1, 0, 75.00, 'P', 663, '', '0000-00-00', 0, '2019-07-07 18:01:15', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_rework_service_cancelation`
--

DROP TABLE IF EXISTS `wtyqf_slpa_rework_service_cancelation`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_rework_service_cancelation` (
  `rework_service_cancelation_id` int(11) NOT NULL AUTO_INCREMENT,
  `rework_service_id` int(11) NOT NULL,
  `rework_id` int(11) NOT NULL,
  `rework_no` bigint(11) NOT NULL,
  `stuffing_destuffing` varchar(1) NOT NULL,
  `account_no` int(11) NOT NULL,
  `payment_mode` varchar(8) NOT NULL,
  `container_no` varchar(13) NOT NULL,
  `container_size` varchar(8) NOT NULL,
  `service_type` varchar(250) NOT NULL,
  `container_operator` varchar(6) NOT NULL,
  `vessel_operator` varchar(6) NOT NULL,
  `voyage` varchar(8) NOT NULL,
  `tariff_id` int(11) NOT NULL,
  `tariff_code` varchar(10) NOT NULL,
  `computer_code` varchar(8) NOT NULL,
  `tariff_rate` float NOT NULL,
  `vessel_name` varchar(250) NOT NULL,
  `vessel_date` date NOT NULL,
  `vessel_ref` varchar(100) NOT NULL,
  `warehouse` varchar(250) NOT NULL,
  `destination` varchar(250) NOT NULL,
  `ts_cbm` float NOT NULL,
  `weighing_charges` float NOT NULL,
  `local_cbm` float NOT NULL,
  `total_amount` double(15,2) NOT NULL,
  `rework_status` varchar(1) NOT NULL,
  `bill_status` varchar(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remarks` text NOT NULL,
  `completed_date` datetime NOT NULL,
  `cancelation_remark` text NOT NULL,
  `cancelation_user_id` int(11) NOT NULL,
  `cancelation_date` date NOT NULL,
  PRIMARY KEY (`rework_service_cancelation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_rework_service_cancelation`
--

INSERT INTO `wtyqf_slpa_rework_service_cancelation` (`rework_service_cancelation_id`, `rework_service_id`, `rework_id`, `rework_no`, `stuffing_destuffing`, `account_no`, `payment_mode`, `container_no`, `container_size`, `service_type`, `container_operator`, `vessel_operator`, `voyage`, `tariff_id`, `tariff_code`, `computer_code`, `tariff_rate`, `vessel_name`, `vessel_date`, `vessel_ref`, `warehouse`, `destination`, `ts_cbm`, `weighing_charges`, `local_cbm`, `total_amount`, `rework_status`, `bill_status`, `user_id`, `created_date`, `remarks`, `completed_date`, `cancelation_remark`, `cancelation_user_id`, `cancelation_date`) VALUES
(1, 42, 14, 20190700014, 'D', 2001, 'Credit', 'WRWE', '20', 'LADEN CONTAINER DEMOUNTING 20\'', '', '', '', 4, '17.01', '21.069', 25, 'WE', '2019-07-10', '', 'BQ', '', 0, 1, 0, 25.00, 'B', '', 663, '2019-07-06 13:39:49', '', '0000-00-00 00:00:00', '', 721, '2019-07-07'),
(2, 52, 24, 20190700024, 'D', 2001, 'Credit', 'FFD', '40', 'LADEN CONTAINER MOUNTING 40\'', '', '', '', 8, '17.01', '21.07', 38, 'DF', '2019-07-16', '', 'BQ', '', 0, 1, 0, 38.00, 'P', '', 715, '2019-07-06 12:14:43', '', '0000-00-00 00:00:00', '', 663, '2019-07-08');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_rework_service_history`
--

DROP TABLE IF EXISTS `wtyqf_slpa_rework_service_history`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_rework_service_history` (
  `rework_service_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `rework_service_id` int(11) NOT NULL,
  `rework_id` int(11) NOT NULL,
  `rework_no` bigint(11) NOT NULL,
  `stuffing_destuffing` varchar(1) NOT NULL,
  `account_no` int(11) NOT NULL,
  `payment_mode` varchar(8) NOT NULL,
  `container_no` varchar(13) NOT NULL,
  `container_size` varchar(8) NOT NULL,
  `service_type` varchar(250) NOT NULL,
  `container_operator` varchar(6) NOT NULL,
  `vessel_operator` varchar(6) NOT NULL,
  `voyage` varchar(8) NOT NULL,
  `tariff_id` int(11) NOT NULL,
  `tariff_code` varchar(10) NOT NULL,
  `computer_code` varchar(8) NOT NULL,
  `tariff_rate` float NOT NULL,
  `vessel_name` varchar(250) NOT NULL,
  `vessel_date` date NOT NULL,
  `vessel_ref` varchar(100) NOT NULL,
  `warehouse` varchar(250) NOT NULL,
  `destination` varchar(250) NOT NULL,
  `ts_cbm` float NOT NULL,
  `weighing_charges` float NOT NULL,
  `local_cbm` float NOT NULL,
  `total_amount` double(15,2) NOT NULL,
  `rework_status` varchar(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remarks` text NOT NULL,
  `completed_date` datetime NOT NULL,
  `remove_user_id` int(11) NOT NULL,
  `remove_date` date NOT NULL,
  PRIMARY KEY (`rework_service_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_rework_service_history`
--

INSERT INTO `wtyqf_slpa_rework_service_history` (`rework_service_history_id`, `rework_service_id`, `rework_id`, `rework_no`, `stuffing_destuffing`, `account_no`, `payment_mode`, `container_no`, `container_size`, `service_type`, `container_operator`, `vessel_operator`, `voyage`, `tariff_id`, `tariff_code`, `computer_code`, `tariff_rate`, `vessel_name`, `vessel_date`, `vessel_ref`, `warehouse`, `destination`, `ts_cbm`, `weighing_charges`, `local_cbm`, `total_amount`, `rework_status`, `user_id`, `created_date`, `remarks`, `completed_date`, `remove_user_id`, `remove_date`) VALUES
(1, 1, 1, 20190400001, 'D', 2003, 'Credit', '33333333333', '20', 'MCC DE STUFFING 20\'', '', '', '', 38, '27.01', '21.266', 47.35, 'WER', '2019-04-04', '', 'BQ', '', 23, 0, 0, 47.35, 'P', 663, '2019-04-04 06:24:09', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(2, 4, 2, 20190400002, 'S', 2003, 'Credit', '33333333333', '40', 'MCC STUFFING 40\'', 'WER', 'WER', 'WERw', 42, '27.02', '21.267', 71.25, 'WER', '2019-04-04', '', 'BQ', 'ER', 0, 0, 0, 0.00, 'P', 663, '2019-04-04 06:28:59', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(3, 5, 2, 20190400002, 'S', 2003, 'Credit', '33333333333', '40', 'WEIGHING', 'WER', 'WER', 'WERw', 79, '60.12', '21.267', 6, 'WER', '2019-04-04', '', 'BQ', 'ER', 0, 1, 0, 6.00, 'P', 663, '2019-04-04 06:28:59', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(4, 8, 3, 20190400003, 'D', 2001, 'Credit', '345', '20', 'MCC DE STUFFING 20\'', '', '', '', 38, '27.01', '21.266', 47.35, 'R5ERT', '2019-04-04', '', 'BQ', '', 12, 0, 0, 47.35, 'P', 663, '2019-04-04 07:59:47', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(5, 9, 3, 20190400003, 'D', 2001, 'Credit', '345', '20', 'EXCESS CARGO ', '', '', '', 50, '27.05', '21.266', 6, 'R5ERT', '2019-04-04', '', 'BQ', '', 0, 0, 23, 90.00, 'P', 663, '2019-04-04 07:59:47', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(6, 13, 4, 20190400004, 'S', 2003, 'Credit', '22222222222', '40', 'MCC STUFFING 40\'', 'SDF', 'SDF', 'SFs', 42, '27.02', '21.267', 71.25, 'EWQ', '2019-04-04', '', 'BQ', 'SSDF', 0, 0, 0, 0.00, 'P', 663, '2019-04-04 08:07:06', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(7, 14, 4, 20190400004, 'S', 2003, 'Credit', '22222222222', '40', 'WEIGHING', 'SDF', 'SDF', 'SFs', 79, '60.12', '21.267', 6, 'EWQ', '2019-04-04', '', 'BQ', 'SSDF', 0, 1, 0, 6.00, 'P', 663, '2019-04-04 08:07:06', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(8, 22, 8, 20190400008, 'S', 2006, 'Credit', '44444444444', '40', 'MCC STUFFING 40\'', 'TY', 'RTY', 'RTY', 42, '27.02', '21.267', 71.25, 'RTY', '2019-04-04', '', 'BQ', 'RTY', 45, 0, 0, 71.25, 'P', 663, '2019-04-04 08:51:15', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(9, 23, 8, 20190400008, 'S', 2006, 'Credit', '44444444444', '40', 'WEIGHING', 'TY', 'RTY', 'RTY', 79, '60.12', '21.267', 6, 'RTY', '2019-04-04', '', 'BQ', 'RTY', 0, 1, 0, 6.00, 'P', 663, '2019-04-04 08:51:15', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(10, 24, 8, 20190400008, 'S', 2006, 'Credit', '44444444444', '40', 'MCC STUFFING 40\'', 'TY', 'RTY', 'RTY', 42, '27.02', '21.267', 71.25, 'RTY', '2019-04-04', '', 'BQ', 'RTY', 45, 0, 0, 71.25, 'P', 663, '2019-04-04 08:52:23', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(11, 25, 8, 20190400008, 'S', 2006, 'Credit', '44444444444', '40', 'WEIGHING', 'TY', 'RTY', 'RTY', 79, '60.12', '21.267', 6, 'RTY', '2019-04-04', '', 'BQ', 'RTY', 0, 1, 0, 6.00, 'P', 663, '2019-04-04 08:52:23', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(12, 26, 8, 20190400008, 'S', 2006, 'Credit', '44444444444', '40', 'EXCESS CARGO ', 'TY', 'RTY', 'RTY', 50, '27.05', '21.268', 6, 'RTY', '2019-04-04', '', 'BQ', 'RTY', 0, 0, 7, 42.00, 'P', 663, '2019-04-04 08:52:23', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(13, 30, 9, 20190400009, 'D', 2006, 'Credit', '33333333333', '20', 'MCC DE STUFFING 20\'', '', '', '', 38, '27.01', '21.266', 47.35, 'ERT', '2019-04-04', '', 'BQ', '', 43, 0, 0, 47.35, 'P', 663, '2019-04-04 09:02:50', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(14, 31, 9, 20190400009, 'D', 2006, 'Credit', '33333333333', '20', 'EXCESS CARGO ', '', '', '', 50, '27.05', '21.266', 6, 'ERT', '2019-04-04', '', 'BQ', '', 0, 0, 0, 0.00, 'P', 663, '2019-04-04 09:02:50', '', '0000-00-00 00:00:00', 663, '2019-04-04'),
(15, 37, 14, 20190700014, 'D', 2001, 'Credit', 'WRWE', '20', 'LADEN CONTAINER DEMOUNTING 20\'', '', '', '', 4, '17.01', '21.069', 25, 'WE', '2019-07-10', '', 'BQ', '', 0, 1, 0, 25.00, 'P', 715, '2019-07-06 06:57:09', '', '0000-00-00 00:00:00', 663, '2019-07-06'),
(16, 61, 29, 20190700029, 'S', 2001, 'Credit', 'ERTER435', '20', 'MCC STUFFING 20\'', 'RT', 'ETR', 'ERT', 41, '27.02', '21.266', 47.35, 'ERT', '2019-07-07', '', 'BQ', 'ERT', 32, 0, 0, 47.35, 'P', 663, '2019-07-07 17:40:42', '', '0000-00-00 00:00:00', 663, '2019-07-07'),
(17, 62, 29, 20190700029, 'S', 2001, 'Credit', 'ERTER435', '20', 'WEIGHING', 'RT', 'ETR', 'ERT', 79, '60.12', '21.266', 6, 'ERT', '2019-07-07', '', 'BQ', 'ERT', 0, 1, 0, 6.00, 'P', 663, '2019-07-07 17:40:42', '', '0000-00-00 00:00:00', 663, '2019-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_tariff`
--

DROP TABLE IF EXISTS `wtyqf_slpa_tariff`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_tariff` (
  `tariff_id` int(11) NOT NULL AUTO_INCREMENT,
  `tariff_code` varchar(15) NOT NULL,
  `computer_code` varchar(10) NOT NULL,
  `tariff_name` varchar(250) NOT NULL,
  `tariff_rate` float NOT NULL,
  `tariff_type` varchar(3) NOT NULL,
  `container_size` int(2) NOT NULL,
  `service_type_default` varchar(50) NOT NULL,
  `service_type_value` varchar(50) NOT NULL,
  `local_default` int(11) NOT NULL,
  `tariff_status` varchar(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tariff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_tariff`
--

INSERT INTO `wtyqf_slpa_tariff` (`tariff_id`, `tariff_code`, `computer_code`, `tariff_name`, `tariff_rate`, `tariff_type`, `container_size`, `service_type_default`, `service_type_value`, `local_default`, `tariff_status`, `user_id`, `created_date`) VALUES
(1, '16.02', '21.066', 'UNIT TO UNIT MOVEMENT 20\'', 34, '', 20, '', 'Q', 0, 'A', 9, '2019-02-13 06:03:37'),
(2, '16.02', '21.067', 'UNIT TO UNIT MOVEMENT 40\'', 51, '', 40, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(3, '16.02', '21.068', 'UNIT TO UNIT MOVEMENT 45\'', 63, '', 45, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(4, '17.01', '21.069', 'LADEN CONTAINER DEMOUNTING 20\'', 25, '', 20, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(5, '17.01', '21.07', 'LADEN CONTAINER DEMOUNTING 40\'', 38, '', 40, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(6, '17.01', '21.071', 'LADEN CONTAINER DEMOUNTING 45\'', 47, '', 45, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(7, '17.01', '21.069', 'LADEN CONTAINER MOUNTING 20\'', 25, '', 20, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(8, '17.01', '21.07', 'LADEN CONTAINER MOUNTING 40\'', 38, '', 40, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(9, '17.01', '21.071', 'LADEN CONTAINER MOUNTING 45\'', 47, '', 45, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(10, '17.02', '21.072', 'EMPTY CONTINER DEMOUNT 20\'', 10, '', 20, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(11, '17.02', '21.073', 'EMPTY CONTINER DEMOUNT 40\'', 15, '', 40, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(12, '17.02', '21.074', 'EMPTY CONTINER DEMOUNT 45\'', 18, '', 45, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(13, '17.02', '21.072', 'EMPTY CONTINER MOUNT 20\'', 10, '', 20, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(14, '17.02', '21.073', 'EMPTY CONTINER MOUNT 40\'', 15, '', 40, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(15, '17.02', '21.074', 'EMPTY CONTINER MOUNT 45\'', 18, '', 45, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(16, '18.01', '21.075', '2ND DESTUFFING SAME PLACE   20\"', 22, '', 20, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(17, '18.01', '21.076', '2ND DESTUFFING SAME PLACE 40\'', 33, '', 40, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(18, '18.01', '21.077', '2ND DESTUFFING SAME PLACE 45\'', 41, '', 45, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(19, '18.01', '21.075', '2ND STUFFING SAME PLACE 20\'', 22, '', 20, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(20, '18.01', '21.076', '2ND STUFFING SAME PLACE 40\'', 33, '', 40, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(21, '18.01', '21.077', '2ND STUFFING SAME PLACE 45\'', 41, '', 45, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(22, '18.02', '21.082', '2ND DESTUFFING 20\'', 75, '', 20, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(23, '18.02', '21.083', '2ND DESTUFFING 40\'', 112, '', 40, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(24, '18.02', '21.084', '2ND DESTUFFING 45\'', 139, '', 45, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(25, '18.02', '21.078', 'NORMAL OPERATION 20\'', 100, '', 20, '13', 'T', 0, 'A', 9, '0000-00-00 00:00:00'),
(26, '18.02', '21.079', 'NORMAL OPERATION 40\'', 150, '', 40, '14', 'T', 0, 'A', 9, '0000-00-00 00:00:00'),
(27, '18.02', '21.08', 'NORMAL OPERATION 45\'', 186, '', 45, '15', 'T', 0, 'A', 9, '0000-00-00 00:00:00'),
(28, '20.05', '90.001', 'STATUS CHANGE', 25, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(29, '22.02', '90.002', 'STORAGE LADEN EXPORT CONT. 20\'', 5.2, '', 20, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(30, '22.02', '90.003', 'STORAGE LADEN EXPORT CONT. 40\'', 10.4, '', 40, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(31, '22.02', '90.004', 'STORAGE LADEN EXPORT CONT. 45\'', 15.9, '', 45, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(32, '25.01', '21.45', 'ONE WAY SPECIAL OPERATION 20\'', 81, '', 20, '79', 'T', 0, 'A', 9, '0000-00-00 00:00:00'),
(33, '25.01', '21.451', 'ONE WAY SPECIAL OPERATION 40\'', 168, '', 40, '79', 'T', 0, 'A', 9, '0000-00-00 00:00:00'),
(34, '25.01', '21.452', 'ONE WAY SPECIAL OPERATION 45\'', 210, '', 45, '79', 'T', 0, 'A', 9, '0000-00-00 00:00:00'),
(35, '25.02', '21.453', 'TWO WAY SPECIAL OPERATION 20\'', 148, '', 20, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(36, '25.02', '21.454', 'TWO WAY SPECIAL OPERATION 40\'', 308.2, '', 40, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(37, '25.02', '21.455', 'TWO WAY SPECIAL OPERATION 45\'', 410.3, '', 45, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(38, '27.01', '21.266', 'MCC DE STUFFING 20\'', 47.35, '', 20, '13', 'T', 50, 'A', 9, '0000-00-00 00:00:00'),
(39, '27.01', '21.267', 'MCC DE STUFFING 40\'', 71.25, '', 40, '14', 'T', 50, 'A', 9, '0000-00-00 00:00:00'),
(40, '27.01', '21.267', 'MCC DE STUFFING 45\'', 71.25, '', 45, '15', 'T', 50, 'A', 9, '0000-00-00 00:00:00'),
(41, '27.02', '21.266', 'MCC STUFFING 20\'', 47.35, '', 20, '79', 'T', 0, 'A', 9, '0000-00-00 00:00:00'),
(42, '27.02', '21.267', 'MCC STUFFING 40\'', 71.25, '', 40, '79', 'T', 0, 'A', 9, '0000-00-00 00:00:00'),
(43, '27.02', '21.267', 'MCC STUFFING 45\'', 71.25, '', 45, '79', 'T', 0, 'A', 9, '0000-00-00 00:00:00'),
(44, '27.03', '21.456', 'STUFFING MORE THAN ONCE SAME PLACE 20\'', 22, '', 20, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(45, '27.03', '21.457', 'STUFFING MORE THAN ONCE SAME PLACE 40\'', 33, '', 40, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(46, '27.03', '21.457', 'STUFFING MORE THAN ONCE SAME PLACE 45\'', 33, '', 45, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(47, '27.04', '21.458', 'STUFFING MORE THAN ONCE IN SHIFT 20\'', 47.35, '', 20, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(48, '27.04', '21.459', 'STUFFING MORE THAN ONCE IN SHIFT 40\'', 71.25, '', 40, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(49, '27.04', '21.459', 'STUFFING MORE THAN ONCE IN SHIFT 45\'', 71.25, '', 45, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(50, '27.05', '21.268', 'EXCESS CARGO ', 6, '', 0, '', 'L', 0, 'A', 9, '0000-00-00 00:00:00'),
(51, '61.02', '90.005', 'NON LABOUR CHARGES', 1.5, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(52, '61.03', '90.006', 'LABOUR CHARGES', 1, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(53, '63.01', '90.007', 'FL/T UP TO 2.5TONS', 7, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(54, '63.02', '90.008', 'FL/L 2.5 TO 10', 20, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(55, '63.03', '90.009', 'FL/T 10 TO 15', 40, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(56, '63.04', '90.01', 'FL/T 15 TO 25', 52, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(57, '63.05', '90.011', 'FL/T  25-40 TONS', 70, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(58, '64.02', '90.012', 'PRIME MOVER CHARGES', 20, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(59, '64.03', '90.013', 'HIRE OF TRACTOR & TRAILER', 18, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(60, '64.04', '90.014', 'HIRE OF 20\' TRAILER', 10, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(61, '64.05', '90.015', 'HIRE OF 40\' TRAILER', 15, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(62, '66.02', '90.016', 'Hire of slings heavy', 11, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(63, '66.07', '90.017', 'HIRE OF HOOKS & SEAL CUTTER', 0.75, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(64, '22.01.01', '90.018', 'STORAGE MT 20\' 1ST 31 DAYS', 6.95, '', 20, '', 'Q', 0, 'A', 9, '2019-02-13 06:01:19'),
(65, '22.01.01', '90.019', 'STORAGE MT 40\' 1ST 31 DAYS', 13.85, '', 40, '', 'Q', 0, 'A', 9, '2019-02-13 06:01:30'),
(66, '22.01.01', '90.02', 'STORAGE MT OVER 40\' 1ST 31 DAY', 17.3, '', 45, '', 'Q', 0, 'A', 9, '2019-02-13 06:01:55'),
(67, '25.01.02', '90.021', 'ONE WAY SPECIAL OPERATION PVT CO 20\'', 51, '', 20, '', 'Q', 0, 'A', 9, '2019-02-13 06:02:04'),
(68, '25.01.02', '90.022', 'ONE WAY SPECIAL OPERATION PVT CO 40\'', 77, '', 40, '', 'Q', 0, 'A', 9, '2019-02-13 06:02:09'),
(69, '25.01.02', '90.023', 'ONE WAY SPECIAL OPERATION PVT CO 45\'', 93, '', 45, '', 'Q', 0, 'A', 9, '2019-02-13 06:02:12'),
(70, '46.01.02', '90.024', 'OCCUPATION CHARGES BASIC 20\'', 8, '', 20, '', 'Q', 0, 'A', 9, '2019-02-13 06:02:30'),
(71, '46.01.02', '90.025', 'OCCUPATION CHARGES BASIC 40 \'', 18, '', 40, '', 'Q', 0, 'A', 9, '2019-02-13 06:02:34'),
(72, '46.01.02', '90.026', 'OCCUPATION CHARGES BASIC 45\'', 16, '', 45, '', 'Q', 0, 'A', 9, '2019-02-13 06:02:38'),
(73, '46.01.03', '90.027', 'OCCUPATION CHARGES 20\' 8-14 DYS', 15, '', 20, '', 'Q', 0, 'A', 9, '2019-02-13 06:02:47'),
(74, '46.01.03', '90.028', 'OCCUPATION CHARGES 40\' 8-14 DYS', 33, '', 40, '', 'Q', 0, 'A', 9, '2019-02-13 06:02:52'),
(75, '46.01.03', '90.029', 'OCCUPATION CHARGES 45\' 8-14 DYS', 30, '', 45, '', 'Q', 0, 'A', 9, '2019-02-13 06:03:04'),
(76, '46.01.04', '90.03', 'OCCUPATION CHARGES 20\' THEREAFTER', 23, '', 20, '', 'Q', 0, 'A', 9, '2019-02-13 06:03:08'),
(77, '46.01.04', '90.031', 'OCCUPATION CHARGES 40\' THEREAFTER', 50, '', 40, '', 'Q', 0, 'A', 9, '2019-02-13 06:03:12'),
(78, '46.01.04', '90.032', 'OCCUPATION CHARGES 45\' THEREAFTER', 46, '', 45, '', 'Q', 0, 'A', 9, '2019-02-13 06:03:16'),
(79, '60.12', '22.074', 'WEIGHING', 6, '', 0, '', 'Q', 0, 'A', 9, '0000-00-00 00:00:00'),
(80, '22.01.01', '', 'EMPTY RENT', 6.95, 'EM', 20, '', '', 0, 'A', 1, '2019-07-06 12:23:00'),
(81, '22.01.01', '', 'EMPTY RENT', 13.85, 'EM', 40, '', '', 0, 'A', 1, '2019-07-06 12:23:00'),
(82, '22.01.01', '', 'EMPTY RENT', 17.3, 'EM', 45, '', '', 0, 'A', 1, '2019-07-06 12:24:20'),
(83, '46.01.02', '', 'IMPORT LADEN RENT', 8, 'IM', 20, '', '', 0, 'A', 1, '2019-07-06 12:25:36'),
(84, '46.01.02', '', 'IMPORT LADEN RENT', 16, 'IM', 40, '', '', 0, 'A', 1, '2019-07-06 12:29:31'),
(85, '46.01.02', '', 'IMPORT LADEN RENT', 18, 'IM', 45, '', '', 0, 'A', 1, '2019-07-06 12:29:36'),
(88, '1', '1', '1', 1, 'EM', 20, '', '', 0, 'A', 663, '2019-07-07 20:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_user_details`
--

DROP TABLE IF EXISTS `wtyqf_slpa_user_details`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_user_details` (
  `user_details` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `computer_no` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `user_role` int(11) NOT NULL,
  `user_status` varchar(1) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`user_details`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_user_details`
--

INSERT INTO `wtyqf_slpa_user_details` (`user_details`, `id`, `computer_no`, `designation`, `contact_no`, `user_role`, `user_status`, `created_date`, `user_id`) VALUES
(4, 663, 111111, 'IS', '0112423390', 8, 'A', '2019-07-07 15:05:11', 663),
(22, 707, 529966, 'CHIEF SUPDT.', '2641', 6, 'A', '2019-02-27 03:34:20', 663),
(23, 708, 474403, 'MA', '3008', 7, 'A', '2019-02-27 03:35:24', 663),
(24, 709, 482992, 'MA', '3008', 4, 'A', '2019-02-27 03:35:54', 663),
(25, 710, 509224, 'MA', '3008', 4, 'A', '2019-02-27 03:36:18', 663),
(26, 711, 449231, 'MA', '3008', 4, 'A', '2019-02-27 08:31:29', 663),
(27, 712, 477315, 'MA', '3008', 4, 'A', '2019-02-27 08:31:33', 663),
(28, 713, 493353, 'MA', '3008', 4, 'A', '2019-02-27 08:31:36', 663),
(29, 714, 111145, 'SE', '0711212122', 7, 'A', '2019-05-29 23:17:43', 663),
(30, 715, 1111, 'Agent', '01112222', 2, 'A', '2019-07-04 21:07:36', 663),
(31, 716, 100, 'Admin', '0711111111', 7, 'A', '2019-07-06 23:20:03', 663),
(32, 717, 200, 'Head Clerk', '0711111112', 4, 'A', '2019-07-07 05:23:40', 663),
(33, 718, 500, 'Agent', '0711111113', 2, 'A', '2019-07-07 05:37:55', 663),
(34, 719, 400, 'Manager', '0711111115', 6, 'A', '2019-07-07 05:39:00', 663),
(35, 720, 300, 'Billing Clerk', '0711111116', 3, 'A', '2019-07-06 23:33:27', 663),
(36, 721, 600, 'Warehouse Clerk', '0711111117', 10, 'A', '2019-07-07 06:02:57', 663);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_user_history`
--

DROP TABLE IF EXISTS `wtyqf_slpa_user_history`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_user_history` (
  `user_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `computer_no` int(11) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `user_role` int(11) NOT NULL,
  `user_status` varchar(1) NOT NULL,
  `created_date_user` date NOT NULL,
  `user_id_user` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`user_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_user_history`
--

INSERT INTO `wtyqf_slpa_user_history` (`user_history_id`, `id`, `name`, `username`, `email`, `password`, `group_id`, `computer_no`, `designation`, `contact_no`, `user_role`, `user_status`, `created_date_user`, `user_id_user`, `created_date`, `user_id`) VALUES
(6, 711, 'S.D.S. WEERASINGHE', 'SDSW', 'logisticbilling@slpa.lk', '$2y$10$N.E3SYn/.v78jntnTLzLduypmD9gVmCSZHP2n645n2dA6RkA7Ay1S', 3, 449231, 'MA', '3008', 3, 'A', '2019-02-27', 663, '2019-02-27 08:31:49', 663),
(7, 712, 'M.M.A. FATHAH', 'MMAF', 'logisticbilling@slpa.lk', '$2y$10$MFpWt5EigGgq03dDhrixyezK24PlWr/VDIUAdxo8F1G8zsfzxxM42', 3, 477315, 'MA', '3008', 3, 'A', '2019-02-27', 663, '2019-02-27 08:31:52', 663),
(8, 713, 'M.B. LUKMAAN ', 'MBLM', 'logisticbilling@slpa.lk', '$2y$10$KjIAPXiiC.0xF8tdg9OEZOSuMTVd6INR6LjUjZPwyBas8uwkxjGCu', 3, 493353, 'MA', '3008', 3, 'A', '2019-02-27', 663, '2019-02-27 08:31:54', 663),
(9, 716, 'A.B. Saman', 'saman', 'saman@email.com', '$2y$10$5/z191K2X7ypXcEiWbltH.tQ2mi1Y/cZPVYoWI9MwpjAG2bEIuoNm', 7, 100, 'Admin', '0711111111', 7, 'A', '2019-07-07', 663, '2019-07-06 23:20:03', 663),
(10, 663, 'Super User', 'admin', 'test@gmail.com', '$2y$10$yCAmMowlyVaWmN5MS6hzuuAXANrAvWQa08OEwL/fzCNJnGtw3TVFS', 8, 111111, 'IS', '0112423390', 8, 'A', '2018-12-05', 1, '2019-07-06 23:29:08', 663),
(11, 663, 'Super User', 'admin', 'test@gmail.com', '$2y$10$yCAmMowlyVaWmN5MS6hzuuAXANrAvWQa08OEwL/fzCNJnGtw3TVFS', 7, 111111, 'IS', '0112423390', 7, 'A', '2019-07-07', 663, '2019-07-06 23:29:20', 663),
(12, 720, 'A.B. Nimal', 'nimal', 'nimal@email.com', '$2y$10$GSMnrgRiELqZsBYzfhNhG.z65Eydxzf8nQw2Znwq1f9muCebDPbJ6', 3, 300, 'Billing Clerk', '0711111116', 3, 'A', '2019-07-07', 663, '2019-07-06 23:33:16', 663),
(13, 720, 'A.B. Nimal', 'nimal', 'nimal@email.com', '$2y$10$GSMnrgRiELqZsBYzfhNhG.z65Eydxzf8nQw2Znwq1f9muCebDPbJ6', 3, 300, 'Billing Clerk', '0711111116', 3, 'I', '2019-07-07', 663, '2019-07-06 23:33:27', 663);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_slpa_warehouse`
--

DROP TABLE IF EXISTS `wtyqf_slpa_warehouse`;
CREATE TABLE IF NOT EXISTS `wtyqf_slpa_warehouse` (
  `warehouse_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_code` varchar(50) NOT NULL,
  `warehouse_name` varchar(50) NOT NULL,
  `warehouse_status` varchar(1) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wtyqf_slpa_warehouse`
--

INSERT INTO `wtyqf_slpa_warehouse` (`warehouse_id`, `warehouse_code`, `warehouse_name`, `warehouse_status`, `created_date`, `user_id`) VALUES
(1, 'BQ', 'BQ', 'A', '2018-11-15 04:21:20', 1),
(2, 'CFS1', 'CFS1', 'A', '2018-11-15 04:21:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_tags`
--

DROP TABLE IF EXISTS `wtyqf_tags`;
CREATE TABLE IF NOT EXISTS `wtyqf_tags` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_tags`
--

INSERT INTO `wtyqf_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 663, '2018-07-10 09:54:18', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_template_styles`
--

DROP TABLE IF EXISTS `wtyqf_template_styles`;
CREATE TABLE IF NOT EXISTS `wtyqf_template_styles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_template_styles`
--

INSERT INTO `wtyqf_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{\"templateColor\":\"#0088cc\",\"templateBackgroundColor\":\"#f4f6f7\",\"logoFile\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_ucm_base`
--

DROP TABLE IF EXISTS `wtyqf_ucm_base`;
CREATE TABLE IF NOT EXISTS `wtyqf_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_ucm_content`
--

DROP TABLE IF EXISTS `wtyqf_ucm_content`;
CREATE TABLE IF NOT EXISTS `wtyqf_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_ucm_history`
--

DROP TABLE IF EXISTS `wtyqf_ucm_history`;
CREATE TABLE IF NOT EXISTS `wtyqf_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_ucm_history`
--

INSERT INTO `wtyqf_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2018-07-10 11:46:09', 663, 1749, '74495299c10f1e5271a0a43ab04706b0b361727c', '{\"id\":1,\"asset_id\":56,\"title\":\"admin\",\"alias\":\"admin\",\"introtext\":\"<p>admin<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-07-10 11:46:09\",\"created_by\":\"663\",\"created_by_alias\":\"\",\"modified\":\"2018-07-10 11:46:09\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-07-10 11:46:09\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(2, 1, 1, '', '2018-07-11 05:08:19', 663, 1774, 'eaf88f3fa554381e10ffc445b9c8f207a6002218', '{\"id\":1,\"asset_id\":\"56\",\"title\":\"admin\",\"alias\":\"admin\",\"introtext\":\"<p>admin panel<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2018-07-10 11:46:09\",\"created_by\":\"663\",\"created_by_alias\":\"\",\"modified\":\"2018-07-11 05:08:19\",\"modified_by\":\"663\",\"checked_out\":\"663\",\"checked_out_time\":\"2018-07-11 05:07:59\",\"publish_up\":\"2018-07-10 11:46:09\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_updates`
--

DROP TABLE IF EXISTS `wtyqf_updates`;
CREATE TABLE IF NOT EXISTS `wtyqf_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `wtyqf_updates`
--

INSERT INTO `wtyqf_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(2, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(3, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(4, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(5, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(6, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(7, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.9.7.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(8, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(9, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(10, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(11, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(12, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(13, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(14, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(15, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', ''),
(16, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(17, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(18, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(19, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(20, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(21, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.9.5.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(22, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(23, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(24, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(25, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(26, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(27, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(28, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(29, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(30, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(31, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(32, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(33, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(34, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(35, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(36, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(37, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(38, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(39, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.9.5.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(40, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(41, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(42, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(43, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(44, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(45, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(46, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(47, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(48, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(49, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(50, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(51, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(52, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(53, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.13.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(54, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(55, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(56, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(57, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(58, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(59, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(60, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(61, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(62, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/kk-KZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_update_sites`
--

DROP TABLE IF EXISTS `wtyqf_update_sites`;
CREATE TABLE IF NOT EXISTS `wtyqf_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `wtyqf_update_sites`
--

INSERT INTO `wtyqf_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 0, 0, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1562512269, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1562512270, '');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_update_sites_extensions`
--

DROP TABLE IF EXISTS `wtyqf_update_sites_extensions`;
CREATE TABLE IF NOT EXISTS `wtyqf_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `wtyqf_update_sites_extensions`
--

INSERT INTO `wtyqf_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_usergroups`
--

DROP TABLE IF EXISTS `wtyqf_usergroups`;
CREATE TABLE IF NOT EXISTS `wtyqf_usergroups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_usergroups`
--

INSERT INTO `wtyqf_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 4, 13, 'Agent'),
(3, 2, 5, 10, 'Billing Clerk'),
(4, 3, 6, 9, 'Head Clerk'),
(5, 4, 7, 8, 'Publisher'),
(6, 1, 16, 19, 'Manager'),
(7, 6, 17, 18, 'Administrator'),
(8, 1, 2, 3, 'Administrator lower'),
(9, 1, 14, 15, 'Guest'),
(10, 2, 11, 12, 'Warehouse Clerk');

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_users`
--

DROP TABLE IF EXISTS `wtyqf_users`;
CREATE TABLE IF NOT EXISTS `wtyqf_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=722 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_users`
--

INSERT INTO `wtyqf_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(663, 'Super User', 'admin', 'test@gmail.com', '$2y$10$yCAmMowlyVaWmN5MS6hzuuAXANrAvWQa08OEwL/fzCNJnGtw3TVFS', 0, 1, '2018-07-10 09:54:19', '2019-07-07 21:04:34', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(707, 'M.H.C.D.JAYAWICKRAMA', 'chamika', 'chamika@slpa.lk', '$2y$10$EXFJO0uJzepivOkJqR0oLORirEsSQi2q2s1IKJedALzVPjd1uK2Q.', 0, 0, '2019-02-27 09:04:20', '2019-02-27 08:14:01', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(708, 'A.C.M. NISTHAR', 'ACMN', 'logisticbilling@slpa.lk', '$2y$10$OWKYq1DyddpI76VhNpEqVuc76Ak/OufYLZBmcThLRkQzVP7FyViU.', 0, 0, '2019-02-27 09:05:24', '2019-02-27 09:36:04', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(709, 'M.I.A. CAREEM', 'MIAC', 'logisticbilling@slpa.lk', '$2y$10$9GNNB2bomT.0zewR9vBpIOwVICr4Ti8b9DIsuyyTkfw55YokMIASm', 0, 0, '2019-02-27 09:05:54', '2019-02-27 09:36:10', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(710, 'M.I.M. AZMY', 'MIMA', 'logisticbilling@slpa.lk', '$2y$10$f5A27l0WFLHyk.JP5SbniOlkWzK9LvJtvchA.IF/ckWcn8CQdnULK', 0, 0, '2019-02-27 09:06:18', '2019-03-11 07:38:29', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(711, 'S.D.S. WEERASINGHE', 'SDSW', 'logisticbilling@slpa.lk', '$2y$10$N.E3SYn/.v78jntnTLzLduypmD9gVmCSZHP2n645n2dA6RkA7Ay1S', 0, 0, '2019-02-27 09:07:02', '2019-02-27 01:58:00', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(712, 'M.M.A. FATHAH', 'MMAF', 'logisticbilling@slpa.lk', '$2y$10$MFpWt5EigGgq03dDhrixyezK24PlWr/VDIUAdxo8F1G8zsfzxxM42', 0, 0, '2019-02-27 09:07:24', '2019-02-27 01:59:55', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(713, 'M.B. LUKMAAN ', 'MBLM', 'logisticbilling@slpa.lk', '$2y$10$KjIAPXiiC.0xF8tdg9OEZOSuMTVd6INR6LjUjZPwyBas8uwkxjGCu', 0, 0, '2019-02-27 09:07:44', '2019-02-27 02:00:06', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(714, 'A.B.C', 'admin111', 'Ruvin@gmail.com', '$2y$10$Ji4KuNK1l47WAZEvXPUSz.pCVoaYRVGZ5XK0BllNDxRlHfeSEk.uW', 0, 0, '2019-05-30 04:47:43', '2019-05-30 04:47:43', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(715, 'Agent', 'agent', 'agent@email.com', '$2y$10$zF75XB.FdPuU849rOPxUhOLRXPgRNRsh8RlIvo1DbG56FQ7iu788m', 0, 0, '2019-07-05 02:37:36', '2019-07-06 16:47:39', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(716, 'A.B. Saman', 'saman', 'saman@email.com', '$2y$10$5/z191K2X7ypXcEiWbltH.tQ2mi1Y/cZPVYoWI9MwpjAG2bEIuoNm', 0, 0, '2019-07-07 10:50:47', '2019-07-07 13:30:50', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(717, 'A.B. Kamal', 'kamal', 'kamal@email.com', '$2y$10$NTIfBA53iyOM9lF8KFxLZeaPQqn.BAoMxBEjOQTViAppwQF/Q/18S', 0, 0, '2019-07-07 10:53:40', '2019-07-07 12:50:26', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(718, 'A.B. Sampath', 'sampath', 'sampath@email.com', '$2y$10$D473IZBi0PjkTx5bEMl.WeuBmd1Ong2fEy2.pUsJbYTyz9rJ7TmLG', 0, 0, '2019-07-07 11:07:55', '2019-07-07 13:12:48', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(719, 'A.B. Ajith', 'ajith', 'ajith@email.com', '$2y$10$G28qIPweMh8N7iSIe0aLkuiREyuOlwYIj1tP8JoOjG2p35o6Lwi/G', 0, 0, '2019-07-07 11:09:00', '2019-07-07 13:07:13', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(720, 'A.B. Nimal', 'nimal', 'nimal@email.com', '$2y$10$GSMnrgRiELqZsBYzfhNhG.z65Eydxzf8nQw2Znwq1f9muCebDPbJ6', 0, 0, '2019-07-07 11:31:39', '2019-07-07 13:02:16', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(721, 'A.B. Gajith', 'gajith', 'gajith@email.com', '$2y$10$aVs5zvDnDx.r0X.vxXlive0c1Lm/gSdx0S/4ljO1U1aprdEHrniQ.', 0, 0, '2019-07-07 11:32:57', '2019-07-07 13:18:35', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_user_keys`
--

DROP TABLE IF EXISTS `wtyqf_user_keys`;
CREATE TABLE IF NOT EXISTS `wtyqf_user_keys` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_user_notes`
--

DROP TABLE IF EXISTS `wtyqf_user_notes`;
CREATE TABLE IF NOT EXISTS `wtyqf_user_notes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_user_profiles`
--

DROP TABLE IF EXISTS `wtyqf_user_profiles`;
CREATE TABLE IF NOT EXISTS `wtyqf_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_user_usergroup_map`
--

DROP TABLE IF EXISTS `wtyqf_user_usergroup_map`;
CREATE TABLE IF NOT EXISTS `wtyqf_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_user_usergroup_map`
--

INSERT INTO `wtyqf_user_usergroup_map` (`user_id`, `group_id`) VALUES
(663, 7),
(707, 6),
(708, 7),
(709, 4),
(710, 4),
(711, 4),
(712, 4),
(713, 4),
(714, 7),
(715, 2),
(716, 7),
(717, 4),
(718, 2),
(719, 6),
(720, 3),
(721, 10);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_utf8_conversion`
--

DROP TABLE IF EXISTS `wtyqf_utf8_conversion`;
CREATE TABLE IF NOT EXISTS `wtyqf_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_utf8_conversion`
--

INSERT INTO `wtyqf_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `wtyqf_viewlevels`
--

DROP TABLE IF EXISTS `wtyqf_viewlevels`;
CREATE TABLE IF NOT EXISTS `wtyqf_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wtyqf_viewlevels`
--

INSERT INTO `wtyqf_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[2,3,4,10,6,7,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
