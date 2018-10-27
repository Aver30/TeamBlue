-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.1.72-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for teamblue
DROP DATABASE IF EXISTS `teamblue`;
CREATE DATABASE IF NOT EXISTS `teamblue` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `teamblue`;

-- Dumping structure for table teamblue.teamblue_database
DROP TABLE IF EXISTS `teamblue_database`;
CREATE TABLE IF NOT EXISTS `teamblue_database` (
  `event_name` tinytext COLLATE utf8_unicode_ci,
  `event_date` date DEFAULT NULL,
  `event_topic` tinytext COLLATE utf8_unicode_ci,
  `event_type` tinytext COLLATE utf8_unicode_ci,
  `event_image` text COLLATE utf8_unicode_ci,
  `event_city` tinytext COLLATE utf8_unicode_ci,
  `event_description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table teamblue.teamblue_database: ~10 rows (approximately)
DELETE FROM `teamblue_database`;
/*!40000 ALTER TABLE `teamblue_database` DISABLE KEYS */;
INSERT INTO `teamblue_database` (`event_name`, `event_date`, `event_topic`, `event_type`, `event_image`, `event_city`, `event_description`) VALUES
	('A Woman Captured', '0000-00-00', 'Woman', 'Film', 'a_woman_captured.jpg', 'Syndey', 'Marish has been exploited and abused for more than 10 years by the woman for whom she toils as a housekeeper—entirely unpaid. She even has to hand over the money she earns with an extra job as a cleaner in a factory. She’s forbidden to do anything without permission. Marish’s 18-year-old daughter couldn’t stand it anymore and ran away a couple of years ago, but Marish lives with too much fear in her heart. Can she ever learn to trust people again? She dreams of seeing her daughter again but will she find the courage to take a step forward in her life?'),
	('After The Apology', '0000-00-00', 'Conflict', 'Film', 'after_the_apology.jpg', 'Canberra', 'A redemptive documentatry about four grandmothers who start a national movement to place Indigenous children with extended families.'),
	('The Song Keepers', '0000-00-00', 'Conflict', 'Film', 'the_song_keepers.jpg', 'Canberra', 'A simple classroom is setting for this complex exploration of the starkly releant topic of mass global immigration'),
	('Food Fighter', '0000-00-00', 'Conflict', 'Film', 'food_fighter.jpg', 'Canberra', 'Food Fighter\' is the inspirational story of one OzHarvest CEO Ronni Kahn crusade to save perfectly edible food'),
	('Jaha\'s Promise', '0000-00-00', 'Woman Rights', 'Film', 'jahas_promise.jpg', 'Canberra', 'As one of the countless victims of female genital mutilation, aha\'s Promise is not only a commitment to her daugher but also a successful campaign against the relenless female genital mutilation'),
	('Border Politics', '0000-00-00', 'Conflict', 'Film', 'border_politics.jpg', 'Canberra', 'Having made its World Premiere at HRAFF, Border Politics questions whether the West has lost its moral compass adopting ideas that rject humanity and undermine democracy.'),
	('Last Men In Aleppo', '0000-00-00', 'Conflict', 'Film', 'last_men_in_aleppo.jpg', 'Canberra', 'Through the volunteers from the White Helmets we xperience the daily life, death and struggle in the streets, where they are fighting for sanity in a city wherewar has become the norm'),
	('Her Sound Her Story', '0000-00-00', 'Woman Rights', 'Film', 'her_sound_her_story.jpg', 'Canberra', 'Making its world premiere at HRAFF, the film features an intimate conversation with an exclusively female line-up to tell their stories, and look for solutions to ensuing a more inclusive, diverse future'),
	('Step', '0000-00-00', 'Woman', 'Film', 'step.jpg', 'Canberra', 'Not only are they a competitive step team headed for a showdown, these girls are also aiming to break barriers as the first graduates of their school'),
	('A Woman Captured', '0000-00-00', 'Woman', 'Film', 'a_woman_captured.jpg', 'Syndey', 'Marish has been exploited and abused for more than 10 years by the woman for whom she toils as a housekeeper—entirely unpaid. She even has to hand over the money she earns with an extra job as a cleaner in a factory. She’s forbidden to do anything without permission. Marish’s 18-year-old daughter couldn’t stand it anymore and ran away a couple of years ago, but Marish lives with too much fear in her heart. Can she ever learn to trust people again? She dreams of seeing her daughter again but will she find the courage to take a step forward in her life?');
/*!40000 ALTER TABLE `teamblue_database` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_commentmeta
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_commentmeta: 0 rows
DELETE FROM `wp_commentmeta`;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_comments
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_comments: 1 rows
DELETE FROM `wp_comments`;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
	(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-10-21 04:26:51', '2018-10-21 04:26:51', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_links
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_links: 0 rows
DELETE FROM `wp_links`;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_options
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_options: 164 rows
DELETE FROM `wp_options`;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'siteurl', 'http://localhost:3157/fit3157', 'yes'),
	(2, 'home', 'http://localhost:3157/fit3157', 'yes'),
	(3, 'blogname', 'FIT3157 Advanced Web Design', 'yes'),
	(4, 'blogdescription', 'Just another WordPress site', 'yes'),
	(5, 'users_can_register', '0', 'yes'),
	(6, 'admin_email', 'aver30@student.monash.edu', 'yes'),
	(7, 'start_of_week', '1', 'yes'),
	(8, 'use_balanceTags', '0', 'yes'),
	(9, 'use_smilies', '1', 'yes'),
	(10, 'require_name_email', '1', 'yes'),
	(11, 'comments_notify', '1', 'yes'),
	(12, 'posts_per_rss', '10', 'yes'),
	(13, 'rss_use_excerpt', '0', 'yes'),
	(14, 'mailserver_url', 'mail.example.com', 'yes'),
	(15, 'mailserver_login', 'login@example.com', 'yes'),
	(16, 'mailserver_pass', 'password', 'yes'),
	(17, 'mailserver_port', '110', 'yes'),
	(18, 'default_category', '1', 'yes'),
	(19, 'default_comment_status', 'open', 'yes'),
	(20, 'default_ping_status', 'open', 'yes'),
	(21, 'default_pingback_flag', '1', 'yes'),
	(22, 'posts_per_page', '10', 'yes'),
	(23, 'date_format', 'F j, Y', 'yes'),
	(24, 'time_format', 'g:i a', 'yes'),
	(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
	(26, 'comment_moderation', '0', 'yes'),
	(27, 'moderation_notify', '1', 'yes'),
	(28, 'permalink_structure', '', 'yes'),
	(29, 'rewrite_rules', '', 'yes'),
	(30, 'hack_file', '0', 'yes'),
	(31, 'blog_charset', 'UTF-8', 'yes'),
	(32, 'moderation_keys', '', 'no'),
	(33, 'active_plugins', 'a:3:{i:0;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:1;s:47:"participants-database/participants-database.php";i:2;s:41:"wp-database-backup/wp-database-backup.php";}', 'yes'),
	(34, 'category_base', '', 'yes'),
	(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
	(36, 'comment_max_links', '2', 'yes'),
	(37, 'gmt_offset', '0', 'yes'),
	(38, 'default_email_category', '1', 'yes'),
	(39, 'recently_edited', 'a:3:{i:0;s:90:"C:\\Users\\aakas\\OneDrive\\Documents\\Laragon\\www\\FIT3157/wp-content/plugins/akismet/index.php";i:1;s:92:"C:\\Users\\aakas\\OneDrive\\Documents\\Laragon\\www\\FIT3157/wp-content/plugins/akismet/akismet.php";i:2;s:0:"";}', 'no'),
	(40, 'template', 'Ass3_TeamBlue', 'yes'),
	(41, 'stylesheet', 'Ass3_TeamBlue', 'yes'),
	(42, 'comment_whitelist', '1', 'yes'),
	(43, 'blacklist_keys', '', 'no'),
	(44, 'comment_registration', '0', 'yes'),
	(45, 'html_type', 'text/html', 'yes'),
	(46, 'use_trackback', '0', 'yes'),
	(47, 'default_role', 'subscriber', 'yes'),
	(48, 'db_version', '38590', 'yes'),
	(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
	(50, 'upload_path', '', 'yes'),
	(51, 'blog_public', '1', 'yes'),
	(52, 'default_link_category', '2', 'yes'),
	(53, 'show_on_front', 'posts', 'yes'),
	(54, 'tag_base', '', 'yes'),
	(55, 'show_avatars', '1', 'yes'),
	(56, 'avatar_rating', 'G', 'yes'),
	(57, 'upload_url_path', '', 'yes'),
	(58, 'thumbnail_size_w', '150', 'yes'),
	(59, 'thumbnail_size_h', '150', 'yes'),
	(60, 'thumbnail_crop', '1', 'yes'),
	(61, 'medium_size_w', '300', 'yes'),
	(62, 'medium_size_h', '300', 'yes'),
	(63, 'avatar_default', 'mystery', 'yes'),
	(64, 'large_size_w', '1024', 'yes'),
	(65, 'large_size_h', '1024', 'yes'),
	(66, 'image_default_link_type', 'none', 'yes'),
	(67, 'image_default_size', '', 'yes'),
	(68, 'image_default_align', '', 'yes'),
	(69, 'close_comments_for_old_posts', '0', 'yes'),
	(70, 'close_comments_days_old', '14', 'yes'),
	(71, 'thread_comments', '1', 'yes'),
	(72, 'thread_comments_depth', '5', 'yes'),
	(73, 'page_comments', '0', 'yes'),
	(74, 'comments_per_page', '50', 'yes'),
	(75, 'default_comments_page', 'newest', 'yes'),
	(76, 'comment_order', 'asc', 'yes'),
	(77, 'sticky_posts', 'a:0:{}', 'yes'),
	(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(81, 'uninstall_plugins', 'a:1:{s:47:"participants-database/participants-database.php";a:2:{i:0;s:8:"PDb_Init";i:1;s:12:"on_uninstall";}}', 'no'),
	(82, 'timezone_string', '', 'yes'),
	(83, 'page_for_posts', '0', 'yes'),
	(84, 'page_on_front', '0', 'yes'),
	(85, 'default_post_format', '0', 'yes'),
	(86, 'link_manager_enabled', '0', 'yes'),
	(87, 'finished_splitting_shared_terms', '1', 'yes'),
	(88, 'site_icon', '0', 'yes'),
	(89, 'medium_large_size_w', '768', 'yes'),
	(90, 'medium_large_size_h', '0', 'yes'),
	(91, 'wp_page_for_privacy_policy', '3', 'yes'),
	(92, 'show_comments_cookies_opt_in', '0', 'yes'),
	(93, 'initial_db_version', '38590', 'yes'),
	(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
	(95, 'fresh_site', '0', 'yes'),
	(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
	(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
	(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
	(101, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
	(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(111, 'cron', 'a:5:{i:1540610818;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1540614418;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1540615630;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1540617417;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
	(119, '_site_transient_timeout_browser_8651940b33fd1e958c905441aa40a03d', '1540700845', 'no'),
	(113, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1540605107;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no'),
	(120, '_site_transient_browser_8651940b33fd1e958c905441aa40a03d', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"69.0.3497.100";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
	(265, '_site_transient_timeout_theme_roots', '1540611021', 'no'),
	(266, '_site_transient_theme_roots', 'a:5:{s:13:"Ass3_TeamBlue";s:7:"/themes";s:21:"fit3157-example-theme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
	(118, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1540609222;s:7:"checked";a:5:{s:13:"Ass3_TeamBlue";s:0:"";s:21:"fit3157-example-theme";s:3:"0.0";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
	(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(262, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1540609210', 'no'),
	(260, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1540652410', 'no'),
	(261, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1540652410', 'no'),
	(132, 'can_compress_scripts', '1', 'no'),
	(133, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1540097250;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
	(169, 'theme_mods_Ass3_TeamBlue', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
	(136, 'current_theme', 'TeamBlue_Ass3', 'yes'),
	(137, 'theme_mods_fit3157-example-theme', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1540113947;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
	(138, 'theme_switched', '', 'yes'),
	(150, 'category_children', 'a:0:{}', 'yes'),
	(143, 'recently_activated', 'a:2:{s:35:"insert-headers-and-footers/ihaf.php";i:1540477543;s:21:"megamenu/megamenu.php";i:1540466484;}', 'yes'),
	(238, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1540579177', 'no'),
	(239, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4513;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:3085;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2596;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2454;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1887;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1687;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1677;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1461;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1409;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1405;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1405;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1337;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1285;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1254;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1119;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1080;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1053;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1042;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:941;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:897;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:836;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:819;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:811;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:740;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:711;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:700;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:690;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:689;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:686;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:670;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:669;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:660;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:651;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:646;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:624;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:622;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:617;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:608;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:602;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:601;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:574;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:556;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:548;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:545;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:534;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:526;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:526;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:518;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:516;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:514;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:510;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:500;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:493;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:490;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:485;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:482;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:464;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:462;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:457;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:452;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:445;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:437;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:430;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:424;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:422;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:421;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:418;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:418;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:411;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:392;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:389;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:383;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:374;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:372;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:370;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:370;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:367;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:363;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:355;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:354;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:351;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:350;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:345;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:342;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:340;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:338;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:334;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:332;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:315;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:312;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:310;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:309;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:306;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:305;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:303;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:303;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:302;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:301;}s:14:"contact-form-7";a:3:{s:4:"name";s:14:"contact form 7";s:4:"slug";s:14:"contact-form-7";s:5:"count";i:299;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:299;}}', 'no'),
	(212, 'PDb_Db_version', '1.0', 'yes'),
	(213, 'pdb-default_options', 'a:92:{s:21:"image_upload_location";s:41:"wp-content/uploads/participants-database/";s:18:"image_upload_limit";s:3:"100";s:18:"allowed_file_types";s:58:"txt,pdf,mp3,mp4a,ogg,doc,docx,odt,rtf,zip,jpg,jpeg,gif,png";s:13:"default_image";s:57:"/wp-content/plugins/participants-database/ui/no-image.png";s:10:"image_link";i:0;s:11:"file_delete";i:0;s:10:"allow_tags";i:0;s:10:"make_links";i:0;s:13:"email_protect";i:0;s:19:"empty_field_message";s:25:"The %s field is required.";s:21:"invalid_field_message";s:37:"The %s field appears to be incorrect.";s:25:"nonmatching_field_message";s:37:"The %s field must match the %s field.";s:21:"captcha_field_message";s:33:"Pleast try the %s question again.";s:17:"field_error_style";s:21:"border: 1px solid red";s:20:"mark_required_fields";i:0;s:21:"required_field_marker";s:29:"%s<span class="reqd">*</span>";s:18:"signup_button_text";s:7:"Sign Up";s:18:"signup_thanks_page";s:4:"none";s:30:"signup_show_group_descriptions";i:0;s:12:"unique_field";s:5:"email";s:12:"unique_email";i:1;s:23:"duplicate_field_message";s:60:"A record with that %s already exists. Please choose another.";s:25:"send_signup_receipt_email";i:1;s:20:"receipt_from_address";s:25:"aver30@student.monash.edu";s:17:"receipt_from_name";s:27:"FIT3157 Advanced Web Design";s:28:"signup_receipt_email_subject";s:52:"You\'ve just signed up on FIT3157 Advanced Web Design";s:25:"signup_receipt_email_body";s:262:"<p>Thank you, [first_name], for signing up with FIT3157 Advanced Web Design.</p><p>You may complete your registration with additional information or update your information by visiting this private link at any time: <a href="[record_link]">[record_link]</a>.</p>";s:13:"signup_thanks";s:237:"<p>Thank you, [first_name] for signing up!</p><p>You will receive an email acknowledgement shortly. You may complete your registration with additional information or update your information by visiting the link provided in the email.</p>";s:24:"send_signup_notify_email";i:1;s:29:"email_signup_notify_addresses";s:25:"aver30@student.monash.edu";s:27:"email_signup_notify_subject";s:41:"New signup on FIT3157 Advanced Web Design";s:24:"email_signup_notify_body";s:196:"<p>A new signup has been submitted</p><ul><li>Name: [first_name] [last_name]</li><li>Email: [email]</li></ul><p>Edit this new record here: <a href="[admin_record_link]">[admin_record_link]</a></p>";s:17:"registration_page";s:0:"";s:23:"show_group_descriptions";i:0;s:18:"save_changes_label";s:17:"Save Your Changes";s:19:"save_changes_button";s:4:"Save";s:22:"record_updated_message";s:33:"Your information has been updated";s:23:"no_record_error_message";s:20:"No record was found.";s:22:"no_record_use_template";i:0;s:31:"send_record_update_notify_email";i:0;s:27:"record_update_email_subject";s:61:"A record has just been updated on FIT3157 Advanced Web Design";s:24:"record_update_email_body";s:269:"<p>The following record was updated on [date]:</p><ul><li>Name: [first_name] [last_name]</li><li>Address: [address]</li><li>[city], [state], [country]</li><li>Phone: [phone]</li><li>Email: [email]</li></ul><p>Edit this record <a href="[admin_record_link]">here.</a></p>";s:10:"list_limit";i:10;s:24:"single_record_link_field";s:0:"";s:18:"single_record_page";s:0:"";s:18:"no_records_message";s:16:"No Records Found";s:10:"show_count";i:0;s:14:"count_template";s:48:"Total Records Found: %1$s, showing %2$s per page";s:17:"list_default_sort";s:12:"date_updated";s:23:"list_default_sort_order";s:4:"desc";s:12:"empty_search";i:0;s:13:"strict_search";i:0;s:18:"show_retrieve_link";i:0;s:18:"retrieve_link_text";s:63:"Forget your private link? Click here to have it emailed to you.";s:19:"link_retrieval_page";s:4:"none";s:24:"retrieve_link_identifier";s:5:"email";s:15:"id_field_prompt";s:58:"Type in your %s, your private link will be emailed to you.";s:27:"retrieve_link_email_subject";s:56:"Here is your private link on FIT3157 Advanced Web Design";s:24:"retrieve_link_email_body";s:128:"<p>Here is the private link you requested from FIT3157 Advanced Web Design:</p><p><a href="[record_link]">[record_link]</a>.</p>";s:31:"send_retrieve_link_notify_email";i:0;s:28:"retrieve_link_notify_subject";s:69:"A Lost Private Link has been requested on FIT3157 Advanced Web Design";s:25:"retrieve_link_notify_body";s:120:"<p>A lost private link has been requested by:</p><ul><li>Name: [first_name] [last_name]</li><li>Email: [email]</li></ul>";s:24:"identifier_field_message";s:42:"A record matching that %s cannot be found.";s:14:"use_plugin_css";i:1;s:16:"rich_text_editor";i:1;s:14:"enable_wpautop";s:11:"the_content";s:16:"strip_linebreaks";i:0;s:28:"use_pagination_scroll_anchor";i:1;s:27:"primary_email_address_field";s:5:"email";s:10:"html_email";i:1;s:12:"strict_dates";i:0;s:17:"input_date_format";s:6:"F j, Y";s:11:"ajax_search";i:1;s:16:"use_php_sessions";i:0;s:11:"cookie_name";s:14:"pdb_wp_session";s:26:"disable_live_notifications";i:0;s:27:"files_use_content_base_path";i:0;s:27:"allow_record_timestamp_edit";i:0;s:9:"pdb_debug";i:0;s:18:"admin_default_sort";s:12:"date_updated";s:24:"admin_default_sort_order";s:4:"desc";s:16:"admin_thumbnails";i:0;s:18:"admin_horiz_scroll";i:0;s:22:"record_edit_capability";s:17:"edit_others_posts";s:23:"plugin_admin_capability";s:14:"manage_options";s:21:"admin_edits_validated";i:0;s:25:"editor_allowed_csv_export";s:1:"0";s:9:"show_time";i:0;s:17:"clear_pdb_notices";s:1:"0";s:10:"custom_css";s:0:"";s:9:"print_css";s:88:"/* this prevents the search controls from printing */\r.pdb-searchform {\r	display:none;\r}";s:16:"custom_admin_css";s:0:"";}', 'yes'),
	(163, 'cptui_new_install', 'false', 'yes'),
	(194, 'widget_maxmegamenu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(195, 'megamenu_version', '2.5.2', 'yes'),
	(175, '_transient_timeout_plugin_slugs', '1540654852', 'no'),
	(176, '_transient_plugin_slugs', 'a:9:{i:0;s:19:"akismet/akismet.php";i:1;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:2;s:9:"hello.php";i:3;s:35:"insert-headers-and-footers/ihaf.php";i:4;s:21:"megamenu/megamenu.php";i:5;s:47:"participants-database/participants-database.php";i:6;s:38:"post-duplicator/m4c-postduplicator.php";i:7;s:35:"responsive-menu/responsive-menu.php";i:8;s:41:"wp-database-backup/wp-database-backup.php";}', 'no'),
	(214, 'sm_session_db_version', '0.1', 'no'),
	(215, 'pdb_admin_notices', 'a:1:{s:10:"1-aacd2e0f";O:24:"pdb_admin_notice_message":8:{s:30:"\0pdb_admin_notice_message\0type";s:7:"warning";s:33:"\0pdb_admin_notice_message\0message";s:271:"<p><span class="dashicons dashicons-warning"></span>Participants Database will require PHP version 5.6 in future releases, you have PHP version 5.4.9. Please update your php version, future versions of Participants Database may not run without minimum php version 5.6</p>";s:33:"\0pdb_admin_notice_message\0context";s:0:"";s:36:"\0pdb_admin_notice_message\0persistent";b:0;s:32:"\0pdb_admin_notice_message\0global";b:0;s:35:"\0pdb_admin_notice_message\0dismissed";b:0;s:28:"\0pdb_admin_notice_message\0id";s:10:"1-aacd2e0f";s:40:"\0pdb_admin_notice_message\0context_joiner";s:1:"/";}}', 'yes'),
	(216, 'pdb-one-time-notice-shown', '1', 'yes'),
	(248, 'wp_db_backup_backups', 'a:1:{i:0;a:8:{s:4:"date";i:1540568480;s:8:"filename";s:66:"FIT3157_Advanced_Web_Design_2018_10_26_1540568479_405cc4d_wpdb.zip";s:3:"url";s:125:"http://localhost:3157/fit3157/wp-content/uploads/db-backup/FIT3157_Advanced_Web_Design_2018_10_26_1540568479_405cc4d_wpdb.zip";s:3:"dir";s:149:"C:\\Users\\aakas\\OneDrive\\Documents\\Laragon\\www\\FIT3157/wp-content/uploads/db-backup/FIT3157_Advanced_Web_Design_2018_10_26_1540568479_405cc4d_wpdb.zip";s:3:"log";s:0:"";s:7:"sqlfile";s:149:"C:\\Users\\aakas\\OneDrive\\Documents\\Laragon\\www\\FIT3157/wp-content/uploads/db-backup/FIT3157_Advanced_Web_Design_2018_10_26_1540568479_405cc4d_wpdb.sql";s:4:"size";i:20331;s:11:"destination";s:7:"Local, ";}}', 'yes'),
	(217, 'pdb-option_version', '9', 'yes'),
	(218, 'participants-database_options', 'a:89:{s:21:"image_upload_location";s:41:"wp-content/uploads/participants-database/";s:18:"image_upload_limit";s:3:"100";s:18:"allowed_file_types";s:58:"txt,pdf,mp3,mp4a,ogg,doc,docx,odt,rtf,zip,jpg,jpeg,gif,png";s:13:"default_image";s:57:"/wp-content/plugins/participants-database/ui/no-image.png";s:10:"image_link";i:0;s:11:"file_delete";i:0;s:10:"allow_tags";i:0;s:10:"make_links";i:0;s:13:"email_protect";i:0;s:19:"empty_field_message";s:25:"The %s field is required.";s:21:"invalid_field_message";s:37:"The %s field appears to be incorrect.";s:25:"nonmatching_field_message";s:37:"The %s field must match the %s field.";s:21:"captcha_field_message";s:33:"Pleast try the %s question again.";s:17:"field_error_style";s:22:"border: 1px solid red;";s:20:"mark_required_fields";i:0;s:21:"required_field_marker";s:29:"%s<span class="reqd">*</span>";s:18:"signup_button_text";s:7:"Sign Up";s:18:"signup_thanks_page";s:4:"none";s:30:"signup_show_group_descriptions";i:0;s:12:"unique_field";s:5:"email";s:12:"unique_email";i:1;s:23:"duplicate_field_message";s:60:"A record with that %s already exists. Please choose another.";s:25:"send_signup_receipt_email";i:1;s:20:"receipt_from_address";s:25:"aver30@student.monash.edu";s:17:"receipt_from_name";s:27:"FIT3157 Advanced Web Design";s:28:"signup_receipt_email_subject";s:52:"You\'ve just signed up on FIT3157 Advanced Web Design";s:25:"signup_receipt_email_body";s:262:"<p>Thank you, [first_name], for signing up with FIT3157 Advanced Web Design.</p><p>You may complete your registration with additional information or update your information by visiting this private link at any time: <a href="[record_link]">[record_link]</a>.</p>";s:13:"signup_thanks";s:237:"<p>Thank you, [first_name] for signing up!</p><p>You will receive an email acknowledgement shortly. You may complete your registration with additional information or update your information by visiting the link provided in the email.</p>";s:24:"send_signup_notify_email";i:1;s:29:"email_signup_notify_addresses";s:25:"aver30@student.monash.edu";s:27:"email_signup_notify_subject";s:41:"New signup on FIT3157 Advanced Web Design";s:24:"email_signup_notify_body";s:196:"<p>A new signup has been submitted</p><ul><li>Name: [first_name] [last_name]</li><li>Email: [email]</li></ul><p>Edit this new record here: <a href="[admin_record_link]">[admin_record_link]</a></p>";s:23:"show_group_descriptions";i:0;s:18:"save_changes_label";s:17:"Save Your Changes";s:19:"save_changes_button";s:4:"Save";s:22:"record_updated_message";s:33:"Your information has been updated";s:23:"no_record_error_message";s:20:"No record was found.";s:22:"no_record_use_template";i:0;s:31:"send_record_update_notify_email";i:0;s:27:"record_update_email_subject";s:61:"A record has just been updated on FIT3157 Advanced Web Design";s:24:"record_update_email_body";s:269:"<p>The following record was updated on [date]:</p><ul><li>Name: [first_name] [last_name]</li><li>Address: [address]</li><li>[city], [state], [country]</li><li>Phone: [phone]</li><li>Email: [email]</li></ul><p>Edit this record <a href="[admin_record_link]">here.</a></p>";s:10:"list_limit";i:10;s:18:"no_records_message";s:16:"No Records Found";s:10:"show_count";i:0;s:14:"count_template";s:48:"Total Records Found: %1$s, showing %2$s per page";s:17:"list_default_sort";s:12:"date_updated";s:23:"list_default_sort_order";s:4:"desc";s:12:"empty_search";i:0;s:13:"strict_search";i:0;s:18:"show_retrieve_link";i:0;s:18:"retrieve_link_text";s:63:"Forget your private link? Click here to have it emailed to you.";s:19:"link_retrieval_page";s:4:"none";s:24:"retrieve_link_identifier";s:5:"email";s:15:"id_field_prompt";s:58:"Type in your %s, your private link will be emailed to you.";s:27:"retrieve_link_email_subject";s:56:"Here is your private link on FIT3157 Advanced Web Design";s:24:"retrieve_link_email_body";s:128:"<p>Here is the private link you requested from FIT3157 Advanced Web Design:</p><p><a href="[record_link]">[record_link]</a>.</p>";s:31:"send_retrieve_link_notify_email";i:0;s:28:"retrieve_link_notify_subject";s:69:"A Lost Private Link has been requested on FIT3157 Advanced Web Design";s:25:"retrieve_link_notify_body";s:120:"<p>A lost private link has been requested by:</p><ul><li>Name: [first_name] [last_name]</li><li>Email: [email]</li></ul>";s:24:"identifier_field_message";s:42:"A record matching that %s cannot be found.";s:14:"use_plugin_css";i:1;s:16:"rich_text_editor";i:1;s:14:"enable_wpautop";s:11:"the_content";s:16:"strip_linebreaks";i:0;s:28:"use_pagination_scroll_anchor";i:1;s:27:"primary_email_address_field";s:5:"email";s:10:"html_email";i:1;s:12:"strict_dates";i:0;s:17:"input_date_format";s:6:"F j, Y";s:11:"ajax_search";i:1;s:16:"use_php_sessions";i:0;s:11:"cookie_name";s:14:"pdb_wp_session";s:26:"disable_live_notifications";i:0;s:27:"files_use_content_base_path";i:0;s:27:"allow_record_timestamp_edit";i:0;s:9:"pdb_debug";i:0;s:18:"admin_default_sort";s:12:"date_updated";s:24:"admin_default_sort_order";s:4:"desc";s:16:"admin_thumbnails";i:0;s:18:"admin_horiz_scroll";i:0;s:22:"record_edit_capability";s:17:"edit_others_posts";s:23:"plugin_admin_capability";s:14:"manage_options";s:21:"admin_edits_validated";i:0;s:25:"editor_allowed_csv_export";s:1:"0";s:9:"show_time";i:0;s:17:"clear_pdb_notices";s:1:"0";s:10:"custom_css";s:0:"";s:9:"print_css";s:88:"/* this prevents the search controls from printing */\r.pdb-searchform {\r	display:none;\r}";s:16:"custom_admin_css";s:0:"";}', 'yes'),
	(181, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
	(196, 'megamenu_initial_version', '2.5.2', 'yes'),
	(197, 'megamenu_multisite_share_themes', 'false', 'yes'),
	(198, 'megamenu_settings', 'a:2:{s:6:"prefix";s:8:"disabled";s:12:"descriptions";s:7:"enabled";}', 'yes'),
	(249, 'wp_db_backup_options', '', 'yes'),
	(221, 'pdb-csv_import_params', 'a:4:{s:19:"delimiter_character";s:4:"auto";s:19:"enclosure_character";s:4:"auto";s:11:"match_field";s:5:"email";s:16:"match_preference";i:1;}', 'yes'),
	(257, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1540652409', 'no'),
	(258, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1540652409', 'no'),
	(259, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1540609209', 'no'),
	(263, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1540652410', 'no'),
	(264, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2018/10/wordpress-5-0-beta-1/\'>WordPress 5.0 Beta 1</a></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/woocommerce-3-5-introduces-rest-api-v3-improves-transactional-emails\'>WPTavern: WooCommerce 3.5 Introduces REST API v3, Improves Transactional Emails</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wp-engine-acquires-array-themes\'>WPTavern: WP Engine Acquires Array Themes</a></li><li><a class=\'rsswidget\' href=\'https://pento.net/2018/10/26/iterating-on-merge-proposals/\'>Gary: Iterating on Merge Proposals</a></li></ul></div>', 'no'),
	(255, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1540652407', 'no'),
	(256, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:5:{i:0;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:36:"WordPress Bloggers Meetup - Brisbane";s:3:"url";s:59:"https://www.meetup.com/WordPress-Brisbane/events/255290409/";s:6:"meetup";s:18:"WordPress Brisbane";s:10:"meetup_url";s:42:"https://www.meetup.com/WordPress-Brisbane/";s:4:"date";s:19:"2018-10-25 10:45:00";s:8:"location";a:4:{s:8:"location";s:19:"Brisbane, Australia";s:7:"country";s:2:"au";s:8:"latitude";d:-27.470635999999999;s:9:"longitude";d:153.0223;}}i:1;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:57:"10 Mistakes Beginners Make When Setting Up Their Websites";s:3:"url";s:52:"https://www.meetup.com/WPGoldCoast/events/254027238/";s:6:"meetup";s:20:"WordPress Gold Coast";s:10:"meetup_url";s:35:"https://www.meetup.com/WPGoldCoast/";s:4:"date";s:19:"2018-10-25 18:00:00";s:8:"location";a:4:{s:8:"location";s:20:"Southport, Australia";s:7:"country";s:2:"au";s:8:"latitude";d:-27.989121999999998;s:9:"longitude";d:153.39920000000001;}}i:2;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:19:"Welcome To WordCamp";s:3:"url";s:59:"https://www.meetup.com/WordPress-Brisbane/events/255823231/";s:6:"meetup";s:18:"WordPress Brisbane";s:10:"meetup_url";s:42:"https://www.meetup.com/WordPress-Brisbane/";s:4:"date";s:19:"2018-10-26 19:00:00";s:8:"location";a:4:{s:8:"location";s:25:"South Brisbane, Australia";s:7:"country";s:2:"au";s:8:"latitude";d:-27.474491;s:9:"longitude";d:153.01740000000001;}}i:3;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:17:"WordCamp Brisbane";s:3:"url";s:35:"https://2018.brisbane.wordcamp.org/";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2018-10-27 00:00:00";s:8:"location";a:4:{s:8:"location";s:31:"Brisbane, Queensland, Australia";s:7:"country";s:2:"AU";s:8:"latitude";d:-27.477357000000001;s:9:"longitude";d:153.028415;}}i:4;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:23:"WordCamp Brisbane 2018!";s:3:"url";s:59:"https://www.meetup.com/WordPress-Brisbane/events/253773010/";s:6:"meetup";s:18:"WordPress Brisbane";s:10:"meetup_url";s:42:"https://www.meetup.com/WordPress-Brisbane/";s:4:"date";s:19:"2018-10-27 09:00:00";s:8:"location";a:4:{s:8:"location";s:19:"Brisbane, Australia";s:7:"country";s:2:"au";s:8:"latitude";d:-27.477747000000001;s:9:"longitude";d:153.02753999999999;}}}}', 'no'),
	(243, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1540605111;s:7:"checked";a:9:{s:19:"akismet/akismet.php";s:5:"4.0.8";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.6.0";s:9:"hello.php";s:3:"1.7";s:35:"insert-headers-and-footers/ihaf.php";s:5:"1.4.3";s:21:"megamenu/megamenu.php";s:5:"2.5.2";s:47:"participants-database/participants-database.php";s:3:"1.8";s:38:"post-duplicator/m4c-postduplicator.php";s:4:"2.20";s:35:"responsive-menu/responsive-menu.php";s:6:"3.1.17";s:41:"wp-database-backup/wp-database-backup.php";s:5:"4.6.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:9:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":9:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.6.0";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.0.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";s:2:"1x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557";}s:7:"banners";a:2:{s:2:"2x";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";s:2:"1x";s:74:"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:35:"insert-headers-and-footers/ihaf.php";O:8:"stdClass":9:{s:2:"id";s:40:"w.org/plugins/insert-headers-and-footers";s:4:"slug";s:26:"insert-headers-and-footers";s:6:"plugin";s:35:"insert-headers-and-footers/ihaf.php";s:11:"new_version";s:5:"1.4.3";s:3:"url";s:57:"https://wordpress.org/plugins/insert-headers-and-footers/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/insert-headers-and-footers.1.4.3.zip";s:5:"icons";a:2:{s:2:"2x";s:79:"https://ps.w.org/insert-headers-and-footers/assets/icon-256x256.png?rev=1610266";s:2:"1x";s:79:"https://ps.w.org/insert-headers-and-footers/assets/icon-128x128.png?rev=1610266";}s:7:"banners";a:1:{s:2:"1x";s:81:"https://ps.w.org/insert-headers-and-footers/assets/banner-772x250.png?rev=1610266";}s:11:"banners_rtl";a:0:{}}s:21:"megamenu/megamenu.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/megamenu";s:4:"slug";s:8:"megamenu";s:6:"plugin";s:21:"megamenu/megamenu.php";s:11:"new_version";s:5:"2.5.2";s:3:"url";s:39:"https://wordpress.org/plugins/megamenu/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/megamenu.2.5.2.zip";s:5:"icons";a:1:{s:2:"1x";s:61:"https://ps.w.org/megamenu/assets/icon-128x128.png?rev=1489843";}s:7:"banners";a:2:{s:2:"2x";s:64:"https://ps.w.org/megamenu/assets/banner-1544x500.png?rev=1933092";s:2:"1x";s:63:"https://ps.w.org/megamenu/assets/banner-772x250.png?rev=1933095";}s:11:"banners_rtl";a:0:{}}s:47:"participants-database/participants-database.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/participants-database";s:4:"slug";s:21:"participants-database";s:6:"plugin";s:47:"participants-database/participants-database.php";s:11:"new_version";s:3:"1.8";s:3:"url";s:52:"https://wordpress.org/plugins/participants-database/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/participants-database.1.8.zip";s:5:"icons";a:2:{s:2:"2x";s:74:"https://ps.w.org/participants-database/assets/icon-256x256.jpg?rev=1389807";s:2:"1x";s:74:"https://ps.w.org/participants-database/assets/icon-128x128.jpg?rev=1389620";}s:7:"banners";a:2:{s:2:"2x";s:77:"https://ps.w.org/participants-database/assets/banner-1544x500.jpg?rev=1494923";s:2:"1x";s:76:"https://ps.w.org/participants-database/assets/banner-772x250.jpg?rev=1388873";}s:11:"banners_rtl";a:0:{}}s:38:"post-duplicator/m4c-postduplicator.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/post-duplicator";s:4:"slug";s:15:"post-duplicator";s:6:"plugin";s:38:"post-duplicator/m4c-postduplicator.php";s:11:"new_version";s:4:"2.20";s:3:"url";s:46:"https://wordpress.org/plugins/post-duplicator/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/post-duplicator.zip";s:5:"icons";a:1:{s:2:"1x";s:68:"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588";}s:7:"banners";a:2:{s:2:"2x";s:71:"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588";s:2:"1x";s:70:"https://ps.w.org/post-duplicator/assets/banner-772x250.png?rev=1587588";}s:11:"banners_rtl";a:0:{}}s:35:"responsive-menu/responsive-menu.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/responsive-menu";s:4:"slug";s:15:"responsive-menu";s:6:"plugin";s:35:"responsive-menu/responsive-menu.php";s:11:"new_version";s:6:"3.1.17";s:3:"url";s:46:"https://wordpress.org/plugins/responsive-menu/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/responsive-menu.3.1.17.zip";s:5:"icons";a:2:{s:2:"2x";s:68:"https://ps.w.org/responsive-menu/assets/icon-256x256.png?rev=1782326";s:2:"1x";s:68:"https://ps.w.org/responsive-menu/assets/icon-128x128.png?rev=1782326";}s:7:"banners";a:1:{s:2:"1x";s:70:"https://ps.w.org/responsive-menu/assets/banner-772x250.png?rev=1782326";}s:11:"banners_rtl";a:0:{}}s:41:"wp-database-backup/wp-database-backup.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/wp-database-backup";s:4:"slug";s:18:"wp-database-backup";s:6:"plugin";s:41:"wp-database-backup/wp-database-backup.php";s:11:"new_version";s:5:"4.6.3";s:3:"url";s:49:"https://wordpress.org/plugins/wp-database-backup/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/wp-database-backup.zip";s:5:"icons";a:1:{s:2:"1x";s:71:"https://ps.w.org/wp-database-backup/assets/icon-128x128.png?rev=1456861";}s:7:"banners";a:2:{s:2:"2x";s:74:"https://ps.w.org/wp-database-backup/assets/banner-1544x500.png?rev=1456043";s:2:"1x";s:73:"https://ps.w.org/wp-database-backup/assets/banner-772x250.png?rev=1456043";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
	(244, 'wp_db_backup_destination_FTP', '1', 'yes'),
	(245, 'wp_db_backup_destination_Email', '1', 'yes'),
	(246, 'wp_db_backup_destination_s3', '1', 'yes'),
	(247, 'wp_db_remove_local_backup', '0', 'yes'),
	(153, 'ihaf_insert_header', '', 'yes'),
	(154, 'ihaf_insert_footer', '', 'yes'),
	(155, 'insert-headers-and-footers_welcome_dismissed_key', '1', 'yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_participants_database
DROP TABLE IF EXISTS `wp_participants_database`;
CREATE TABLE IF NOT EXISTS `wp_participants_database` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `private_id` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` tinytext COLLATE utf8_unicode_ci,
  `last_name` tinytext COLLATE utf8_unicode_ci,
  `address` tinytext COLLATE utf8_unicode_ci,
  `city` tinytext COLLATE utf8_unicode_ci,
  `state` tinytext COLLATE utf8_unicode_ci,
  `country` tinytext COLLATE utf8_unicode_ci,
  `zip` tinytext COLLATE utf8_unicode_ci,
  `phone` tinytext COLLATE utf8_unicode_ci,
  `email` tinytext COLLATE utf8_unicode_ci,
  `mailing_list` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `interests` text COLLATE utf8_unicode_ci,
  `approved` text COLLATE utf8_unicode_ci,
  `date_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NULL DEFAULT NULL,
  `last_accessed` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table teamblue.wp_participants_database: 1 rows
DELETE FROM `wp_participants_database`;
/*!40000 ALTER TABLE `wp_participants_database` DISABLE KEYS */;
INSERT INTO `wp_participants_database` (`id`, `private_id`, `first_name`, `last_name`, `address`, `city`, `state`, `country`, `zip`, `phone`, `email`, `mailing_list`, `photo`, `website`, `interests`, `approved`, `date_recorded`, `date_updated`, `last_accessed`) VALUES
	(1, 'J6X2C', 'Aakash', 'Verma', '95 Endeavour Drive', 'Cranbourne North', 'VIC', 'Australia', '3977', '469803888', 'axe', 'Yes', '', '', '', 'no', '2018-10-26 01:41:04', '2018-10-26 01:41:04', NULL);
/*!40000 ALTER TABLE `wp_participants_database` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_participants_database_fields
DROP TABLE IF EXISTS `wp_participants_database_fields`;
CREATE TABLE IF NOT EXISTS `wp_participants_database_fields` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `order` int(3) NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `default` tinytext COLLATE utf8_unicode_ci,
  `group` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `help_text` text COLLATE utf8_unicode_ci,
  `form_element` tinytext COLLATE utf8_unicode_ci,
  `values` longtext COLLATE utf8_unicode_ci,
  `validation` tinytext COLLATE utf8_unicode_ci,
  `display_column` int(3) DEFAULT '0',
  `admin_column` int(3) DEFAULT '0',
  `sortable` tinyint(1) DEFAULT '0',
  `CSV` tinyint(1) DEFAULT '0',
  `persistent` tinyint(1) DEFAULT '0',
  `signup` tinyint(1) DEFAULT '0',
  `readonly` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `order` (`order`),
  KEY `group` (`group`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table teamblue.wp_participants_database_fields: 19 rows
DELETE FROM `wp_participants_database_fields`;
/*!40000 ALTER TABLE `wp_participants_database_fields` DISABLE KEYS */;
INSERT INTO `wp_participants_database_fields` (`id`, `order`, `name`, `title`, `default`, `group`, `help_text`, `form_element`, `values`, `validation`, `display_column`, `admin_column`, `sortable`, `CSV`, `persistent`, `signup`, `readonly`) VALUES
	(1, 0, 'first_name', 'First Name', NULL, 'main', NULL, 'text-line', NULL, 'yes', 1, 2, 1, 1, 0, 1, 0),
	(2, 1, 'last_name', 'Last Name', NULL, 'main', NULL, 'text-line', NULL, 'yes', 2, 3, 1, 1, 0, 1, 0),
	(3, 2, 'address', 'Address', NULL, 'main', NULL, 'text-line', NULL, 'no', 0, 0, 0, 1, 0, 0, 0),
	(4, 3, 'city', 'City', NULL, 'main', NULL, 'text-line', NULL, 'no', 3, 0, 1, 1, 1, 0, 0),
	(5, 4, 'state', 'State', NULL, 'main', NULL, 'text-line', NULL, 'no', 4, 0, 1, 1, 1, 0, 0),
	(6, 5, 'country', 'Country', NULL, 'main', NULL, 'text-line', NULL, 'no', 0, 0, 1, 1, 1, 0, 0),
	(7, 6, 'zip', 'Zip Code', NULL, 'main', NULL, 'text-line', NULL, 'no', 0, 0, 1, 1, 1, 0, 0),
	(8, 7, 'phone', 'Phone', NULL, 'main', 'Your primary contact number', 'text-line', NULL, 'no', 0, 0, 0, 1, 0, 0, 0),
	(9, 8, 'email', 'Email', NULL, 'main', NULL, 'text-line', NULL, '#^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}$#i', 0, 4, 0, 1, 0, 1, 0),
	(10, 9, 'mailing_list', 'Mailing List', 'Yes', 'main', 'do you want to receive our newsletter and occasional announcements?', 'checkbox', 'a:2:{i:0;s:3:"Yes";i:1;s:2:"No";}', 'no', 0, 0, 1, 1, 0, 1, 0),
	(11, 10, 'photo', 'Photo', NULL, 'personal', 'Upload a photo of yourself. 300 pixels maximum width or height.', 'image-upload', NULL, 'no', 0, 0, 0, 0, 0, 0, 0),
	(12, 11, 'website', 'Website, Blog or Social Media Link', NULL, 'personal', 'Put the URL in the left box and the link text that will be shown on the right', 'link', NULL, 'no', 0, 0, 0, 0, 0, 0, 0),
	(13, 12, 'interests', 'Interests or Hobbies', NULL, 'personal', NULL, 'multi-select-other', 'a:7:{s:6:"Sports";s:6:"sports";s:11:"Photography";s:11:"photography";s:10:"Art/Crafts";s:6:"crafts";s:8:"Outdoors";s:8:"outdoors";s:4:"Yoga";s:4:"yoga";s:5:"Music";s:5:"music";s:7:"Cuisine";s:7:"cuisine";}', 'no', 0, 0, 0, 0, 0, 0, 0),
	(14, 13, 'approved', 'Approved', 'no', 'admin', NULL, 'checkbox', 'a:2:{i:0;s:3:"yes";i:1;s:2:"no";}', 'no', 0, 0, 1, 0, 0, 0, 0),
	(15, 14, 'id', 'Record ID', NULL, 'internal', NULL, 'text-line', NULL, 'no', 0, 0, 0, 1, 0, 1, 1),
	(16, 15, 'private_id', 'Private ID', 'RPNE2', 'internal', NULL, 'text', NULL, 'no', 0, 90, 0, 0, 0, 1, 1),
	(17, 16, 'date_recorded', 'Date Recorded', NULL, 'internal', NULL, 'timestamp', NULL, 'no', 0, 100, 1, 0, 0, 0, 1),
	(18, 17, 'date_updated', 'Date Updated', NULL, 'internal', NULL, 'timestamp', NULL, 'no', 0, 0, 1, 0, 0, 0, 1),
	(19, 18, 'last_accessed', 'Last Accessed', NULL, 'internal', NULL, 'timestamp', NULL, 'no', 0, 0, 1, 0, 0, 0, 1);
/*!40000 ALTER TABLE `wp_participants_database_fields` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_participants_database_groups
DROP TABLE IF EXISTS `wp_participants_database_groups`;
CREATE TABLE IF NOT EXISTS `wp_participants_database_groups` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `order` int(3) NOT NULL DEFAULT '0',
  `display` tinyint(1) DEFAULT '1',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table teamblue.wp_participants_database_groups: 4 rows
DELETE FROM `wp_participants_database_groups`;
/*!40000 ALTER TABLE `wp_participants_database_groups` DISABLE KEYS */;
INSERT INTO `wp_participants_database_groups` (`id`, `order`, `display`, `admin`, `title`, `name`, `description`) VALUES
	(1, 1, 1, 0, 'Participant Info', 'main', NULL),
	(2, 2, 1, 0, 'Personal Info', 'personal', NULL),
	(3, 3, 0, 0, 'Administrative Info', 'admin', NULL),
	(4, 4, 0, 0, 'Record Info', 'internal', NULL);
/*!40000 ALTER TABLE `wp_participants_database_groups` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_postmeta
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_postmeta: 41 rows
DELETE FROM `wp_postmeta`;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(1, 2, '_wp_page_template', 'default'),
	(2, 3, '_wp_page_template', 'default'),
	(3, 5, '_edit_last', '1'),
	(4, 5, '_edit_lock', '1540479117:1'),
	(5, 1, '_edit_lock', '1540103975:1'),
	(6, 7, '_wp_attached_file', '2018/10/802067.jpg'),
	(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3840;s:6:"height";i:2276;s:4:"file";s:18:"2018/10/802067.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"802067-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"802067-300x178.jpg";s:5:"width";i:300;s:6:"height";i:178;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"802067-768x455.jpg";s:5:"width";i:768;s:6:"height";i:455;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"802067-1024x607.jpg";s:5:"width";i:1024;s:6:"height";i:607;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(8, 8, '_edit_last', '1'),
	(9, 8, '_edit_lock', '1540465700:1'),
	(10, 11, '_menu_item_type', 'custom'),
	(11, 11, '_menu_item_menu_item_parent', '0'),
	(12, 11, '_menu_item_object_id', '11'),
	(13, 11, '_menu_item_object', 'custom'),
	(14, 11, '_menu_item_target', ''),
	(15, 11, '_menu_item_classes', 'a:1:{i:0;s:12:"navbar-brand";}'),
	(16, 11, '_menu_item_xfn', ''),
	(17, 11, '_menu_item_url', 'http://localhost:3157/fit3157'),
	(26, 10, '_wp_trash_meta_status', 'publish'),
	(27, 10, '_wp_trash_meta_time', '1540465741'),
	(28, 13, '_wp_trash_meta_status', 'publish'),
	(29, 13, '_wp_trash_meta_time', '1540465906'),
	(51, 2, '_wp_trash_meta_time', '1540551678'),
	(50, 2, '_wp_trash_meta_status', 'publish'),
	(49, 15, '_wp_page_template', 'page-specificevent.php'),
	(39, 15, '_edit_last', '1'),
	(40, 15, '_edit_lock', '1540476855:1'),
	(41, 16, '_menu_item_type', 'post_type'),
	(42, 16, '_menu_item_menu_item_parent', '0'),
	(43, 16, '_menu_item_object_id', '15'),
	(44, 16, '_menu_item_object', 'page'),
	(45, 16, '_menu_item_target', ''),
	(46, 16, '_menu_item_classes', 'a:1:{i:0;s:12:"navbar-brand";}'),
	(47, 16, '_menu_item_xfn', ''),
	(48, 16, '_menu_item_url', ''),
	(52, 2, '_wp_desired_post_slug', 'sample-page'),
	(53, 8, '_wp_trash_meta_status', 'draft'),
	(54, 8, '_wp_trash_meta_time', '1540551680'),
	(55, 8, '_wp_desired_post_slug', ''),
	(56, 3, '_wp_trash_meta_status', 'draft'),
	(57, 3, '_wp_trash_meta_time', '1540551683'),
	(58, 3, '_wp_desired_post_slug', 'privacy-policy');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_posts
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_posts: 18 rows
DELETE FROM `wp_posts`;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(1, 1, '2018-10-21 04:26:51', '2018-10-21 04:26:51', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-10-21 04:26:51', '2018-10-21 04:26:51', '', 0, 'http://localhost:3157/fit3157/?p=1', 0, 'post', '', 1),
	(2, 1, '2018-10-21 04:26:51', '2018-10-21 04:26:51', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:3157/fit3157/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-10-26 11:01:18', '2018-10-26 11:01:18', '', 0, 'http://localhost:3157/fit3157/?page_id=2', 0, 'page', '', 0),
	(3, 1, '2018-10-21 04:26:51', '2018-10-21 04:26:51', '<h2>Who we are</h2><p>Our website address is: http://localhost:3157/fit3157.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-10-26 11:01:23', '2018-10-26 11:01:23', '', 0, 'http://localhost:3157/fit3157/?page_id=3', 0, 'page', '', 0),
	(4, 1, '2018-10-21 04:27:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-21 04:27:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/fit3157/?p=4', 0, 'post', '', 0),
	(5, 1, '2018-10-21 05:20:05', '0000-00-00 00:00:00', 'hey there this is aakash', 'Hello World 2', '', 'draft', 'open', 'open', '', '', '', '', '2018-10-21 05:20:05', '2018-10-21 05:20:05', '', 0, 'http://localhost:3157/fit3157/?p=5', 0, 'post', '', 0),
	(6, 1, '2018-10-21 05:17:11', '2018-10-21 05:17:11', 'hey there this is aakash', 'Hello World 2', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-10-21 05:17:11', '2018-10-21 05:17:11', '', 5, 'http://localhost:3157/fit3157/?p=6', 0, 'revision', '', 0),
	(7, 1, '2018-10-21 06:23:48', '2018-10-21 06:23:48', '', '802067', '', 'inherit', 'open', 'closed', '', '802067', '', '', '2018-10-21 06:23:48', '2018-10-21 06:23:48', '', 1, 'http://localhost:3157/fit3157/wp-content/uploads/2018/10/802067.jpg', 0, 'attachment', 'image/jpeg', 0),
	(8, 1, '2018-10-26 11:01:20', '2018-10-26 11:01:20', '', 'testingNewPageLink', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-10-26 11:01:20', '2018-10-26 11:01:20', '', 0, 'http://localhost:3157/fit3157/?page_id=8', 0, 'page', '', 0),
	(9, 1, '2018-10-25 11:07:32', '2018-10-25 11:07:32', '', 'testingNewPageLink', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-10-25 11:07:32', '2018-10-25 11:07:32', '', 8, 'http://localhost:3157/fit3157/?p=9', 0, 'revision', '', 0),
	(10, 1, '2018-10-25 11:09:01', '2018-10-25 11:09:01', '{\n    "nav_menu[-570372122]": {\n        "value": {\n            "name": "newMenu",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-25 11:09:01"\n    },\n    "nav_menu_item[-2127356099]": {\n        "value": {\n            "object_id": 0,\n            "object": "",\n            "menu_item_parent": 0,\n            "position": 1,\n            "type": "custom",\n            "title": "Home",\n            "url": "http://localhost:3157/fit3157",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Home",\n            "nav_menu_term_id": -570372122,\n            "_invalid": false,\n            "type_label": "Custom Link"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-25 11:09:01"\n    },\n    "nav_menu_item[-1767592282]": {\n        "value": {\n            "object_id": 2,\n            "object": "page",\n            "menu_item_parent": 0,\n            "position": 2,\n            "type": "post_type",\n            "title": "Sample Page",\n            "url": "http://localhost:3157/fit3157/?page_id=2",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "status": "publish",\n            "original_title": "Sample Page",\n            "nav_menu_term_id": -570372122,\n            "_invalid": false,\n            "type_label": "Page"\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-25 11:09:01"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1c4cbb6b-9a97-4f49-aef2-3c571c6180c8', '', '', '2018-10-25 11:09:01', '2018-10-25 11:09:01', '', 0, 'http://localhost:3157/fit3157/?p=10', 0, 'customize_changeset', '', 0),
	(11, 1, '2018-10-25 11:09:01', '2018-10-25 11:09:01', '', 'All Events', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-10-26 11:01:58', '2018-10-26 11:01:58', '', 0, 'http://localhost:3157/fit3157/?p=11', 1, 'nav_menu_item', '', 0),
	(13, 1, '2018-10-25 11:11:46', '2018-10-25 11:11:46', '{\n    "nav_menu[2]": {\n        "value": {\n            "name": "newMenu",\n            "description": "",\n            "parent": 0,\n            "auto_add": true\n        },\n        "type": "nav_menu",\n        "user_id": 1,\n        "date_modified_gmt": "2018-10-25 11:11:46"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5e6ef2fd-5293-4759-88c5-b2250a3e973c', '', '', '2018-10-25 11:11:46', '2018-10-25 11:11:46', '', 0, 'http://localhost:3157/fit3157/?p=13', 0, 'customize_changeset', '', 0),
	(19, 1, '2018-10-26 11:01:18', '2018-10-26 11:01:18', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:3157/fit3157/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-10-26 11:01:18', '2018-10-26 11:01:18', '', 2, 'http://localhost:3157/fit3157/?p=19', 0, 'revision', '', 0),
	(15, 1, '2018-10-25 11:28:02', '2018-10-25 11:28:02', 'Testing new page', 'Event', '', 'publish', 'closed', 'closed', '', 'event-page', '', '', '2018-10-25 12:36:45', '2018-10-25 12:36:45', '', 0, 'http://localhost:3157/fit3157/?page_id=15', 0, 'page', '', 0),
	(16, 1, '2018-10-25 11:28:02', '2018-10-25 11:28:02', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-10-26 11:01:58', '2018-10-26 11:01:58', '', 0, 'http://localhost:3157/fit3157/?p=16', 2, 'nav_menu_item', '', 0),
	(17, 1, '2018-10-25 11:28:02', '2018-10-25 11:28:02', 'Testing new page', 'Event Page', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-10-25 11:28:02', '2018-10-25 11:28:02', '', 15, 'http://localhost:3157/fit3157/?p=17', 0, 'revision', '', 0),
	(18, 1, '2018-10-25 11:28:12', '2018-10-25 11:28:12', 'Testing new page', 'Event', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-10-25 11:28:12', '2018-10-25 11:28:12', '', 15, 'http://localhost:3157/fit3157/?p=18', 0, 'revision', '', 0),
	(20, 1, '2018-10-26 11:01:23', '2018-10-26 11:01:23', '<h2>Who we are</h2><p>Our website address is: http://localhost:3157/fit3157.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-10-26 11:01:23', '2018-10-26 11:01:23', '', 3, 'http://localhost:3157/fit3157/?p=20', 0, 'revision', '', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_sm_sessions
DROP TABLE IF EXISTS `wp_sm_sessions`;
CREATE TABLE IF NOT EXISTS `wp_sm_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) NOT NULL,
  `session_value` longtext NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_sm_sessions: 2 rows
DELETE FROM `wp_sm_sessions`;
/*!40000 ALTER TABLE `wp_sm_sessions` DISABLE KEYS */;
INSERT INTO `wp_sm_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
	(45, 'dp48q8vea0f2ibfog8jnp02kn5', 'pdb-admin-user-settings-1|a:2:{s:10:"list_limit";i:10;s:17:"csv_base_filename";s:21:"participants-database";}pdb-admin_list_filter-1|a:4:{s:6:"search";a:1:{i:0;a:4:{s:12:"search_field";s:4:"none";s:5:"value";s:0:"";s:8:"operator";s:4:"LIKE";s:5:"logic";s:3:"AND";}}s:6:"sortBy";s:12:"date_updated";s:7:"ascdesc";s:4:"desc";s:17:"list_filter_count";i:1;}pdb-admin_list_query-1|s:70:"SELECT * FROM wp_participants_database p  ORDER BY p.date_updated desc";previous_multipage|N;form_status|s:6:"normal";', 1540516244),
	(165, 'fcc76ees77kken2fpk6713mid5', 'pdb-admin-user-settings-1|a:1:{s:10:"list_limit";i:10;}pdb-admin_list_filter-1|a:4:{s:6:"search";a:1:{i:0;a:4:{s:12:"search_field";s:4:"none";s:5:"value";s:0:"";s:8:"operator";s:4:"LIKE";s:5:"logic";s:3:"AND";}}s:6:"sortBy";s:12:"date_updated";s:7:"ascdesc";s:4:"desc";s:17:"list_filter_count";i:1;}pdb-admin_list_query-1|s:70:"SELECT * FROM wp_participants_database p  ORDER BY p.date_updated desc";', 1540645325);
/*!40000 ALTER TABLE `wp_sm_sessions` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_termmeta
DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_termmeta: 0 rows
DELETE FROM `wp_termmeta`;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_terms
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_terms: 2 rows
DELETE FROM `wp_terms`;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Uncategorized', 'uncategorized', 0),
	(2, 'navBarBootStrap', 'navbarbootstrap', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_term_relationships
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_term_relationships: 4 rows
DELETE FROM `wp_term_relationships`;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(1, 1, 0),
	(5, 1, 0),
	(11, 2, 0),
	(16, 2, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_term_taxonomy
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_term_taxonomy: 2 rows
DELETE FROM `wp_term_taxonomy`;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 1),
	(2, 2, 'nav_menu', '', 0, 2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_usermeta
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_usermeta: 37 rows
DELETE FROM `wp_usermeta`;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
	(1, 1, 'nickname', 'admin'),
	(2, 1, 'first_name', ''),
	(3, 1, 'last_name', ''),
	(4, 1, 'description', ''),
	(5, 1, 'rich_editing', 'true'),
	(6, 1, 'syntax_highlighting', 'true'),
	(7, 1, 'comment_shortcuts', 'false'),
	(8, 1, 'admin_color', 'fresh'),
	(9, 1, 'use_ssl', '0'),
	(10, 1, 'show_admin_bar_front', 'true'),
	(11, 1, 'locale', ''),
	(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(13, 1, 'wp_user_level', '10'),
	(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,plugin_editor_notice'),
	(15, 1, 'show_welcome_panel', '1'),
	(16, 1, 'session_tokens', 'a:3:{s:64:"1baf5933af4c9cb0f060f144b0a567475de78afbe5d06a0205742d75e15f53a9";a:4:{s:10:"expiration";i:1540638162;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1540465362;}s:64:"197790d296a6a86beb2c7554818620db534a8df1761c4253614c2bb848a82b39";a:4:{s:10:"expiration";i:1540724043;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1540551243;}s:64:"b0d77d865dcbb82f81f455ff01a44883a10de83043a8934e0efb2a989ee978ae";a:4:{s:10:"expiration";i:1540724056;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1540551256;}}'),
	(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
	(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
	(19, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&editor=tinymce'),
	(20, 1, 'wp_user-settings-time', '1540479255'),
	(21, 1, 'nav_menu_recently_edited', '2'),
	(22, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
	(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
	(24, 2, 'nickname', 'admin2'),
	(25, 2, 'first_name', 'Deexita Sai'),
	(26, 2, 'last_name', 'Koti Goli'),
	(27, 2, 'description', ''),
	(28, 2, 'rich_editing', 'true'),
	(29, 2, 'syntax_highlighting', 'true'),
	(30, 2, 'comment_shortcuts', 'false'),
	(31, 2, 'admin_color', 'fresh'),
	(32, 2, 'use_ssl', '0'),
	(33, 2, 'show_admin_bar_front', 'true'),
	(34, 2, 'locale', ''),
	(35, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(36, 2, 'wp_user_level', '10'),
	(37, 2, 'dismissed_wp_pointers', 'wp496_privacy');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;

-- Dumping structure for table teamblue.wp_users
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_users: 2 rows
DELETE FROM `wp_users`;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'admin', '$P$BG9wpMJ16nL6aJ/h6QbztctbdTuxsI/', 'admin', 'aver30@student.monash.edu', '', '2018-10-21 04:26:50', '', 0, 'admin'),
	(2, 'admin2', '$P$BlsIa71Q9saajcdOAIvN2AhgmH3bAK0', 'admin2', 'dsgol1@student.monash.edu', '', '2018-10-27 03:01:47', '1540609308:$P$B/eliUiLegEUQ0KNvpl5ydb4XSXMMK/', 0, 'Deexita Sai Koti Goli');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
