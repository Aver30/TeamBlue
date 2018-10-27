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
CREATE DATABASE IF NOT EXISTS `teamblue` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `teamblue`;

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
	(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-10-27 03:30:21', '2018-10-27 03:30:21', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);
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
) ENGINE=MyISAM AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_options: 144 rows
DELETE FROM `wp_options`;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'siteurl', 'http://localhost:3157/teamblue', 'yes'),
	(2, 'home', 'http://localhost:3157/teamblue', 'yes'),
	(3, 'blogname', 'TeamBlue', 'yes'),
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
	(33, 'active_plugins', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:2;s:38:"post-duplicator/m4c-postduplicator.php";}', 'yes'),
	(34, 'category_base', '', 'yes'),
	(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
	(36, 'comment_max_links', '2', 'yes'),
	(37, 'gmt_offset', '0', 'yes'),
	(38, 'default_email_category', '1', 'yes'),
	(39, 'recently_edited', '', 'no'),
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
	(79, 'widget_text', 'a:0:{}', 'yes'),
	(80, 'widget_rss', 'a:0:{}', 'yes'),
	(81, 'uninstall_plugins', 'a:0:{}', 'no'),
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
	(111, 'cron', 'a:5:{i:1540621837;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1540654237;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1540697453;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1540698100;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
	(119, '_site_transient_timeout_browser_8651940b33fd1e958c905441aa40a03d', '1541215851', 'no'),
	(113, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1540612540;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no'),
	(120, '_site_transient_browser_8651940b33fd1e958c905441aa40a03d', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"69.0.3497.100";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
	(116, '_site_transient_timeout_theme_roots', '1540613451', 'no'),
	(117, '_site_transient_theme_roots', 'a:5:{s:13:"Ass3_TeamBlue";s:7:"/themes";s:21:"fit3157-example-theme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
	(118, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1540612543;s:7:"checked";a:5:{s:13:"Ass3_TeamBlue";s:0:"";s:21:"fit3157-example-theme";s:3:"0.0";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
	(124, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1540654260', 'no'),
	(122, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1540654256', 'no'),
	(123, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:5:{i:0;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:36:"WordPress Bloggers Meetup - Brisbane";s:3:"url";s:59:"https://www.meetup.com/WordPress-Brisbane/events/255290409/";s:6:"meetup";s:18:"WordPress Brisbane";s:10:"meetup_url";s:42:"https://www.meetup.com/WordPress-Brisbane/";s:4:"date";s:19:"2018-10-25 10:45:00";s:8:"location";a:4:{s:8:"location";s:19:"Brisbane, Australia";s:7:"country";s:2:"au";s:8:"latitude";d:-27.470635999999999;s:9:"longitude";d:153.0223;}}i:1;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:57:"10 Mistakes Beginners Make When Setting Up Their Websites";s:3:"url";s:52:"https://www.meetup.com/WPGoldCoast/events/254027238/";s:6:"meetup";s:20:"WordPress Gold Coast";s:10:"meetup_url";s:35:"https://www.meetup.com/WPGoldCoast/";s:4:"date";s:19:"2018-10-25 18:00:00";s:8:"location";a:4:{s:8:"location";s:20:"Southport, Australia";s:7:"country";s:2:"au";s:8:"latitude";d:-27.989121999999998;s:9:"longitude";d:153.39920000000001;}}i:2;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:19:"Welcome To WordCamp";s:3:"url";s:59:"https://www.meetup.com/WordPress-Brisbane/events/255823231/";s:6:"meetup";s:18:"WordPress Brisbane";s:10:"meetup_url";s:42:"https://www.meetup.com/WordPress-Brisbane/";s:4:"date";s:19:"2018-10-26 19:00:00";s:8:"location";a:4:{s:8:"location";s:25:"South Brisbane, Australia";s:7:"country";s:2:"au";s:8:"latitude";d:-27.474491;s:9:"longitude";d:153.01740000000001;}}i:3;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:17:"WordCamp Brisbane";s:3:"url";s:35:"https://2018.brisbane.wordcamp.org/";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2018-10-27 00:00:00";s:8:"location";a:4:{s:8:"location";s:31:"Brisbane, Queensland, Australia";s:7:"country";s:2:"AU";s:8:"latitude";d:-27.477357000000001;s:9:"longitude";d:153.028415;}}i:4;a:7:{s:4:"type";s:6:"meetup";s:5:"title";s:23:"WordCamp Brisbane 2018!";s:3:"url";s:59:"https://www.meetup.com/WordPress-Brisbane/events/253773010/";s:6:"meetup";s:18:"WordPress Brisbane";s:10:"meetup_url";s:42:"https://www.meetup.com/WordPress-Brisbane/";s:4:"date";s:19:"2018-10-27 09:00:00";s:8:"location";a:4:{s:8:"location";s:19:"Brisbane, Australia";s:7:"country";s:2:"au";s:8:"latitude";d:-27.477747000000001;s:9:"longitude";d:153.02753999999999;}}}}', 'no'),
	(125, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1540654260', 'no'),
	(126, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1540611060', 'no'),
	(127, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1540654262', 'no'),
	(128, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1540654262', 'no'),
	(129, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1540611062', 'no'),
	(130, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1540654262', 'no'),
	(131, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2018/10/wordpress-5-0-beta-1/\'>WordPress 5.0 Beta 1</a></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/woocommerce-3-5-introduces-rest-api-v3-improves-transactional-emails\'>WPTavern: WooCommerce 3.5 Introduces REST API v3, Improves Transactional Emails</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wp-engine-acquires-array-themes\'>WPTavern: WP Engine Acquires Array Themes</a></li><li><a class=\'rsswidget\' href=\'https://pento.net/2018/10/26/iterating-on-merge-proposals/\'>Gary: Iterating on Merge Proposals</a></li></ul></div>', 'no'),
	(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(132, 'can_compress_scripts', '1', 'no'),
	(133, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1540611660;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
	(135, 'current_theme', 'TeamBlue_Ass3', 'yes'),
	(136, 'theme_mods_Ass3_TeamBlue', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
	(137, 'theme_switched', '', 'yes'),
	(139, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
	(154, 'acf_version', '5.7.7', 'yes'),
	(155, 'cptui_taxonomies', 'a:4:{s:4:"city";a:24:{s:4:"name";s:4:"city";s:5:"label";s:6:"Cities";s:14:"singular_label";s:4:"City";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:12:"hierarchical";s:5:"false";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:5:"false";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:6:"labels";a:18:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:11:"meta_box_cb";s:0:"";s:12:"object_types";a:2:{i:0;s:9:"eventcard";i:1;s:5:"event";}}s:5:"topic";a:24:{s:4:"name";s:5:"topic";s:5:"label";s:6:"topics";s:14:"singular_label";s:5:"Topic";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:12:"hierarchical";s:5:"false";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:5:"false";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:6:"labels";a:18:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:11:"meta_box_cb";s:0:"";s:12:"object_types";a:2:{i:0;s:9:"eventcard";i:1;s:5:"event";}}s:4:"date";a:24:{s:4:"name";s:4:"date";s:5:"label";s:5:"dates";s:14:"singular_label";s:4:"Date";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:12:"hierarchical";s:5:"false";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:5:"false";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:6:"labels";a:18:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:11:"meta_box_cb";s:0:"";s:12:"object_types";a:2:{i:0;s:9:"eventcard";i:1;s:5:"event";}}s:10:"event_type";a:24:{s:4:"name";s:10:"event_type";s:5:"label";s:11:"Event_types";s:14:"singular_label";s:11:"Event_types";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:12:"hierarchical";s:5:"false";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:5:"false";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:6:"labels";a:18:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";}s:11:"meta_box_cb";s:0:"";s:12:"object_types";a:1:{i:0;s:5:"event";}}}', 'yes'),
	(140, '_transient_timeout_plugin_slugs', '1540698980', 'no'),
	(141, '_transient_plugin_slugs', 'a:10:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:9:"hello.php";i:4;s:35:"insert-headers-and-footers/ihaf.php";i:5;s:21:"megamenu/megamenu.php";i:6;s:47:"participants-database/participants-database.php";i:7;s:38:"post-duplicator/m4c-postduplicator.php";i:8;s:35:"responsive-menu/responsive-menu.php";i:9;s:41:"wp-database-backup/wp-database-backup.php";}', 'no'),
	(142, 'recently_activated', 'a:0:{}', 'yes'),
	(145, 'cptui_new_install', 'false', 'yes'),
	(146, 'cptui_post_types', 'a:2:{s:9:"eventcard";a:29:{s:4:"name";s:9:"eventcard";s:5:"label";s:9:"eventcard";s:14:"singular_label";s:9:"eventcard";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:24:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";}s:15:"custom_supports";s:0:"";}s:5:"event";a:29:{s:4:"name";s:5:"event";s:5:"label";s:5:"event";s:14:"singular_label";s:5:"event";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:24:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
	(149, 'mtphr_post_duplicator_settings', '', 'yes'),
	(150, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1540623297', 'no'),
	(151, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4513;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:3087;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2596;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2454;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1887;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1687;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1677;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1461;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1409;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1405;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1405;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1338;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1285;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1254;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1119;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1080;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1053;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1042;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:941;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:898;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:836;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:819;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:811;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:741;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:711;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:700;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:690;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:689;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:686;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:670;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:669;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:660;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:651;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:646;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:624;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:622;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:617;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:608;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:602;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:601;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:574;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:556;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:548;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:545;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:534;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:526;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:526;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:518;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:516;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:514;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:510;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:500;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:493;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:490;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:485;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:482;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:464;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:462;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:457;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:452;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:445;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:437;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:430;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:424;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:422;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:421;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:418;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:418;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:411;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:392;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:389;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:383;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:374;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:372;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:370;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:370;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:367;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:363;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:355;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:354;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:351;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:350;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:345;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:342;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:340;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:338;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:334;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:332;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:315;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:312;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:310;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:309;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:306;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:305;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:303;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:303;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:302;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:301;}s:14:"contact-form-7";a:3:{s:4:"name";s:14:"contact form 7";s:4:"slug";s:14:"contact-form-7";s:5:"count";i:300;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:299;}}', 'no'),
	(153, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1540612577;s:7:"checked";a:10:{s:30:"advanced-custom-fields/acf.php";s:5:"5.7.7";s:19:"akismet/akismet.php";s:5:"4.0.8";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.6.0";s:9:"hello.php";s:3:"1.7";s:35:"insert-headers-and-footers/ihaf.php";s:5:"1.4.3";s:21:"megamenu/megamenu.php";s:5:"2.5.2";s:47:"participants-database/participants-database.php";s:3:"1.8";s:38:"post-duplicator/m4c-postduplicator.php";s:4:"2.20";s:35:"responsive-menu/responsive-menu.php";s:6:"3.1.17";s:41:"wp-database-backup/wp-database-backup.php";s:5:"4.6.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:10:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"5.7.7";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":9:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.6.0";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.0.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";s:2:"1x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557";}s:7:"banners";a:2:{s:2:"2x";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";s:2:"1x";s:74:"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:35:"insert-headers-and-footers/ihaf.php";O:8:"stdClass":9:{s:2:"id";s:40:"w.org/plugins/insert-headers-and-footers";s:4:"slug";s:26:"insert-headers-and-footers";s:6:"plugin";s:35:"insert-headers-and-footers/ihaf.php";s:11:"new_version";s:5:"1.4.3";s:3:"url";s:57:"https://wordpress.org/plugins/insert-headers-and-footers/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/insert-headers-and-footers.1.4.3.zip";s:5:"icons";a:2:{s:2:"2x";s:79:"https://ps.w.org/insert-headers-and-footers/assets/icon-256x256.png?rev=1610266";s:2:"1x";s:79:"https://ps.w.org/insert-headers-and-footers/assets/icon-128x128.png?rev=1610266";}s:7:"banners";a:1:{s:2:"1x";s:81:"https://ps.w.org/insert-headers-and-footers/assets/banner-772x250.png?rev=1610266";}s:11:"banners_rtl";a:0:{}}s:21:"megamenu/megamenu.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/megamenu";s:4:"slug";s:8:"megamenu";s:6:"plugin";s:21:"megamenu/megamenu.php";s:11:"new_version";s:5:"2.5.2";s:3:"url";s:39:"https://wordpress.org/plugins/megamenu/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/megamenu.2.5.2.zip";s:5:"icons";a:1:{s:2:"1x";s:61:"https://ps.w.org/megamenu/assets/icon-128x128.png?rev=1489843";}s:7:"banners";a:2:{s:2:"2x";s:64:"https://ps.w.org/megamenu/assets/banner-1544x500.png?rev=1933092";s:2:"1x";s:63:"https://ps.w.org/megamenu/assets/banner-772x250.png?rev=1933095";}s:11:"banners_rtl";a:0:{}}s:47:"participants-database/participants-database.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/participants-database";s:4:"slug";s:21:"participants-database";s:6:"plugin";s:47:"participants-database/participants-database.php";s:11:"new_version";s:3:"1.8";s:3:"url";s:52:"https://wordpress.org/plugins/participants-database/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/participants-database.1.8.zip";s:5:"icons";a:2:{s:2:"2x";s:74:"https://ps.w.org/participants-database/assets/icon-256x256.jpg?rev=1389807";s:2:"1x";s:74:"https://ps.w.org/participants-database/assets/icon-128x128.jpg?rev=1389620";}s:7:"banners";a:2:{s:2:"2x";s:77:"https://ps.w.org/participants-database/assets/banner-1544x500.jpg?rev=1494923";s:2:"1x";s:76:"https://ps.w.org/participants-database/assets/banner-772x250.jpg?rev=1388873";}s:11:"banners_rtl";a:0:{}}s:38:"post-duplicator/m4c-postduplicator.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/post-duplicator";s:4:"slug";s:15:"post-duplicator";s:6:"plugin";s:38:"post-duplicator/m4c-postduplicator.php";s:11:"new_version";s:4:"2.20";s:3:"url";s:46:"https://wordpress.org/plugins/post-duplicator/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/post-duplicator.zip";s:5:"icons";a:1:{s:2:"1x";s:68:"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588";}s:7:"banners";a:2:{s:2:"2x";s:71:"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588";s:2:"1x";s:70:"https://ps.w.org/post-duplicator/assets/banner-772x250.png?rev=1587588";}s:11:"banners_rtl";a:0:{}}s:35:"responsive-menu/responsive-menu.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/responsive-menu";s:4:"slug";s:15:"responsive-menu";s:6:"plugin";s:35:"responsive-menu/responsive-menu.php";s:11:"new_version";s:6:"3.1.17";s:3:"url";s:46:"https://wordpress.org/plugins/responsive-menu/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/responsive-menu.3.1.17.zip";s:5:"icons";a:2:{s:2:"2x";s:68:"https://ps.w.org/responsive-menu/assets/icon-256x256.png?rev=1782326";s:2:"1x";s:68:"https://ps.w.org/responsive-menu/assets/icon-128x128.png?rev=1782326";}s:7:"banners";a:1:{s:2:"1x";s:70:"https://ps.w.org/responsive-menu/assets/banner-772x250.png?rev=1782326";}s:11:"banners_rtl";a:0:{}}s:41:"wp-database-backup/wp-database-backup.php";O:8:"stdClass":9:{s:2:"id";s:32:"w.org/plugins/wp-database-backup";s:4:"slug";s:18:"wp-database-backup";s:6:"plugin";s:41:"wp-database-backup/wp-database-backup.php";s:11:"new_version";s:5:"4.6.3";s:3:"url";s:49:"https://wordpress.org/plugins/wp-database-backup/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/wp-database-backup.zip";s:5:"icons";a:1:{s:2:"1x";s:71:"https://ps.w.org/wp-database-backup/assets/icon-128x128.png?rev=1456861";}s:7:"banners";a:2:{s:2:"2x";s:74:"https://ps.w.org/wp-database-backup/assets/banner-1544x500.png?rev=1456043";s:2:"1x";s:73:"https://ps.w.org/wp-database-backup/assets/banner-772x250.png?rev=1456043";}s:11:"banners_rtl";a:0:{}}}}', 'no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_postmeta: 183 rows
DELETE FROM `wp_postmeta`;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(1, 2, '_wp_page_template', 'default'),
	(2, 3, '_wp_page_template', 'default'),
	(3, 2, '_wp_trash_meta_status', 'publish'),
	(4, 2, '_wp_trash_meta_time', '1540611694'),
	(5, 2, '_wp_desired_post_slug', 'sample-page'),
	(6, 6, '_edit_last', '1'),
	(7, 6, '_edit_lock', '1540611598:1'),
	(8, 6, '_wp_page_template', 'default'),
	(9, 8, '_menu_item_type', 'custom'),
	(10, 8, '_menu_item_menu_item_parent', '0'),
	(11, 8, '_menu_item_object_id', '8'),
	(12, 8, '_menu_item_object', 'custom'),
	(13, 8, '_menu_item_target', ''),
	(14, 8, '_menu_item_classes', 'a:1:{i:0;s:8:"nav-link";}'),
	(15, 8, '_menu_item_xfn', ''),
	(16, 8, '_menu_item_url', 'http://localhost:3157/teamblue/'),
	(18, 9, '_menu_item_type', 'post_type'),
	(19, 9, '_menu_item_menu_item_parent', '0'),
	(20, 9, '_menu_item_object_id', '6'),
	(21, 9, '_menu_item_object', 'page'),
	(22, 9, '_menu_item_target', ''),
	(23, 9, '_menu_item_classes', 'a:1:{i:0;s:8:"nav-link";}'),
	(24, 9, '_menu_item_xfn', ''),
	(25, 9, '_menu_item_url', ''),
	(27, 12, '_edit_last', '1'),
	(28, 12, '_edit_lock', '1540612424:1'),
	(29, 12, '_wp_trash_meta_status', 'draft'),
	(30, 12, '_wp_trash_meta_time', '1540612443'),
	(31, 12, '_wp_desired_post_slug', ''),
	(32, 16, '_edit_last', '1'),
	(33, 16, '_edit_lock', '1540614430:1'),
	(34, 1, '_wp_trash_meta_status', 'publish'),
	(35, 1, '_wp_trash_meta_time', '1540614241'),
	(36, 1, '_wp_desired_post_slug', 'hello-world'),
	(37, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
	(38, 30, '_wp_attached_file', '2018/10/after_the_apology.jpg'),
	(39, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:200;s:4:"file";s:29:"2018/10/after_the_apology.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"after_the_apology-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"after_the_apology-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(40, 29, '_edit_last', '1'),
	(41, 29, 'event_name', 'After The Apology'),
	(42, 29, '_event_name', 'field_5bd3e3b00d7d3'),
	(43, 29, 'event_date', '20190529'),
	(44, 29, '_event_date', 'field_5bd3e3cb0d7d4'),
	(45, 29, 'event_description', 'A redemptive documentary about four grandmothers who start a national movement to place Indigenous children with extended families.\r\n'),
	(46, 29, '_event_description', 'field_5bd3e4160d7d5'),
	(47, 29, 'event_image', '30'),
	(48, 29, '_event_image', 'field_5bd3e46a0d7d6'),
	(49, 29, 'event_topic', 'Conflict'),
	(50, 29, '_event_topic', 'field_5bd3e49b0d7d7'),
	(51, 29, 'event_type', 'Film'),
	(52, 29, '_event_type', 'field_5bd3e4d60d7d8'),
	(53, 29, 'event_city', 'Canberra'),
	(54, 29, '_event_city', 'field_5bd3e4e50d7d9'),
	(55, 29, '_edit_lock', '1540615085:1'),
	(56, 31, '_edit_last', '1'),
	(57, 31, '_edit_lock', '1540615025:1'),
	(58, 32, '_wp_attached_file', '2018/10/food_fighter.jpg'),
	(59, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:200;s:4:"file";s:24:"2018/10/food_fighter.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"food_fighter-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"food_fighter-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(60, 33, '_wp_attached_file', '2018/10/her_sound_her_story.jpg'),
	(61, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:200;s:4:"file";s:31:"2018/10/her_sound_her_story.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"her_sound_her_story-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"her_sound_her_story-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(62, 34, '_wp_attached_file', '2018/10/jahas_promise.jpg'),
	(63, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:200;s:4:"file";s:25:"2018/10/jahas_promise.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"jahas_promise-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"jahas_promise-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(64, 35, '_wp_attached_file', '2018/10/last_men_in_aleppo.jpg'),
	(65, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:200;s:4:"file";s:30:"2018/10/last_men_in_aleppo.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"last_men_in_aleppo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"last_men_in_aleppo-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(66, 36, '_wp_attached_file', '2018/10/Step.jpg'),
	(67, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:200;s:4:"file";s:16:"2018/10/Step.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"Step-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"Step-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(68, 37, '_wp_attached_file', '2018/10/the_clearners.jpg'),
	(69, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:200;s:4:"file";s:25:"2018/10/the_clearners.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"the_clearners-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"the_clearners-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(70, 38, '_wp_attached_file', '2018/10/the_song_keepers.jpg'),
	(71, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:200;s:4:"file";s:28:"2018/10/the_song_keepers.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"the_song_keepers-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"the_song_keepers-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(72, 39, '_wp_attached_file', '2018/10/A_woman_captured.jpg'),
	(73, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:200;s:4:"file";s:28:"2018/10/A_woman_captured.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"A_woman_captured-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"A_woman_captured-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(74, 40, '_wp_attached_file', '2018/10/border_politics.jpg'),
	(75, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:200;s:4:"file";s:27:"2018/10/border_politics.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"border_politics-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"border_politics-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(76, 31, 'event_name', 'The Song Keepers'),
	(77, 31, '_event_name', 'field_5bd3e3b00d7d3'),
	(78, 31, 'event_date', '20181029'),
	(79, 31, '_event_date', 'field_5bd3e3cb0d7d4'),
	(80, 31, 'event_description', 'A simple classroom is setting for this complex exploration of the starkly relevant topic of mass global immigration\r\n'),
	(81, 31, '_event_description', 'field_5bd3e4160d7d5'),
	(82, 31, 'event_image', '38'),
	(83, 31, '_event_image', 'field_5bd3e46a0d7d6'),
	(84, 31, 'event_topic', 'Music'),
	(85, 31, '_event_topic', 'field_5bd3e49b0d7d7'),
	(86, 31, 'event_type', 'Film'),
	(87, 31, '_event_type', 'field_5bd3e4d60d7d8'),
	(88, 31, 'event_city', 'Canberra'),
	(89, 31, '_event_city', 'field_5bd3e4e50d7d9'),
	(90, 42, '_edit_last', '1'),
	(91, 42, '_edit_lock', '1540615196:1'),
	(92, 42, 'event_name', 'Food Fighter'),
	(93, 42, '_event_name', 'field_5bd3e3b00d7d3'),
	(94, 42, 'event_date', '20181029'),
	(95, 42, '_event_date', 'field_5bd3e3cb0d7d4'),
	(96, 42, 'event_description', 'Food Fighter\' is the inspirational story of one OzHarvest CEO Ronni Kahn crusade to save perfectly edible food\r\n'),
	(97, 42, '_event_description', 'field_5bd3e4160d7d5'),
	(98, 42, 'event_image', '32'),
	(99, 42, '_event_image', 'field_5bd3e46a0d7d6'),
	(100, 42, 'event_topic', 'Conflict'),
	(101, 42, '_event_topic', 'field_5bd3e49b0d7d7'),
	(102, 42, 'event_type', 'Film'),
	(103, 42, '_event_type', 'field_5bd3e4d60d7d8'),
	(104, 42, 'event_city', 'Canberra'),
	(105, 42, '_event_city', 'field_5bd3e4e50d7d9'),
	(106, 43, '_edit_last', '1'),
	(107, 43, '_edit_lock', '1540615335:1'),
	(108, 43, 'event_name', 'Jaha\'s Promise'),
	(109, 43, '_event_name', 'field_5bd3e3b00d7d3'),
	(110, 43, 'event_date', '20181029'),
	(111, 43, '_event_date', 'field_5bd3e3cb0d7d4'),
	(112, 43, 'event_description', 'As one of the countless victims of female genital mutilation, aha\'s Promise is not only a commitment to her daughter but also a successful campaign against the relentless female genital mutilation\r\n'),
	(113, 43, '_event_description', 'field_5bd3e4160d7d5'),
	(114, 43, 'event_image', '34'),
	(115, 43, '_event_image', 'field_5bd3e46a0d7d6'),
	(116, 43, 'event_topic', 'Woman Rights'),
	(117, 43, '_event_topic', 'field_5bd3e49b0d7d7'),
	(118, 43, 'event_type', 'Film'),
	(119, 43, '_event_type', 'field_5bd3e4d60d7d8'),
	(120, 43, 'event_city', 'Canberra'),
	(121, 43, '_event_city', 'field_5bd3e4e50d7d9'),
	(122, 44, '_edit_last', '1'),
	(123, 44, '_edit_lock', '1540615432:1'),
	(124, 44, 'event_name', 'Border Politics'),
	(125, 44, '_event_name', 'field_5bd3e3b00d7d3'),
	(126, 44, 'event_date', '20181030'),
	(127, 44, '_event_date', 'field_5bd3e3cb0d7d4'),
	(128, 44, 'event_description', 'Having made its World Premiere at HRAFF, Border Politics questions whether the West has lost its moral compass adopting ideas that reject humanity and undermine democracy.\r\n'),
	(129, 44, '_event_description', 'field_5bd3e4160d7d5'),
	(130, 44, 'event_image', '40'),
	(131, 44, '_event_image', 'field_5bd3e46a0d7d6'),
	(132, 44, 'event_topic', 'Conflict'),
	(133, 44, '_event_topic', 'field_5bd3e49b0d7d7'),
	(134, 44, 'event_type', 'Film'),
	(135, 44, '_event_type', 'field_5bd3e4d60d7d8'),
	(136, 44, 'event_city', 'Canberra'),
	(137, 44, '_event_city', 'field_5bd3e4e50d7d9'),
	(138, 45, '_edit_last', '1'),
	(139, 45, '_edit_lock', '1540615632:1'),
	(140, 45, 'event_name', 'Last Men In Aleppo'),
	(141, 45, '_event_name', 'field_5bd3e3b00d7d3'),
	(142, 45, 'event_date', '20181031'),
	(143, 45, '_event_date', 'field_5bd3e3cb0d7d4'),
	(144, 45, 'event_description', 'Through the volunteers from the White Helmets we experience the daily life, death and struggle in the streets, where they are fighting for sanity in a city where war has become the norm\r\n'),
	(145, 45, '_event_description', 'field_5bd3e4160d7d5'),
	(146, 45, 'event_image', '35'),
	(147, 45, '_event_image', 'field_5bd3e46a0d7d6'),
	(148, 45, 'event_topic', 'Conflict'),
	(149, 45, '_event_topic', 'field_5bd3e49b0d7d7'),
	(150, 45, 'event_type', 'Film'),
	(151, 45, '_event_type', 'field_5bd3e4d60d7d8'),
	(152, 45, 'event_city', 'Canberra'),
	(153, 45, '_event_city', 'field_5bd3e4e50d7d9'),
	(154, 46, '_edit_last', '1'),
	(155, 46, '_edit_lock', '1540615728:1'),
	(156, 46, 'event_name', 'Her Sound Her Story'),
	(157, 46, '_event_name', 'field_5bd3e3b00d7d3'),
	(158, 46, 'event_date', '20181031'),
	(159, 46, '_event_date', 'field_5bd3e3cb0d7d4'),
	(160, 46, 'event_description', 'Making its world premiere at HRAFF, the film features an intimate conversation with an exclusively female line-up to tell their stories, and look for solutions to ensuing a more inclusive, diverse future\r\n'),
	(161, 46, '_event_description', 'field_5bd3e4160d7d5'),
	(162, 46, 'event_image', '33'),
	(163, 46, '_event_image', 'field_5bd3e46a0d7d6'),
	(164, 46, 'event_topic', 'Woman Rights'),
	(165, 46, '_event_topic', 'field_5bd3e49b0d7d7'),
	(166, 46, 'event_type', 'Film'),
	(167, 46, '_event_type', 'field_5bd3e4d60d7d8'),
	(168, 46, 'event_city', 'Canberra'),
	(169, 46, '_event_city', 'field_5bd3e4e50d7d9'),
	(170, 47, '_edit_last', '1'),
	(171, 47, '_edit_lock', '1540615839:1'),
	(172, 47, 'event_name', 'Step'),
	(173, 47, '_event_name', 'field_5bd3e3b00d7d3'),
	(174, 47, 'event_date', '20181031'),
	(175, 47, '_event_date', 'field_5bd3e3cb0d7d4'),
	(176, 47, 'event_description', 'Not only are they a competitive step team headed for a showdown, these girls are also aiming to break barriers as the first graduates of their school\r\n'),
	(177, 47, '_event_description', 'field_5bd3e4160d7d5'),
	(178, 47, 'event_image', '36'),
	(179, 47, '_event_image', 'field_5bd3e46a0d7d6'),
	(180, 47, 'event_topic', 'Woman '),
	(181, 47, '_event_topic', 'field_5bd3e49b0d7d7'),
	(182, 47, 'event_type', 'Film'),
	(183, 47, '_event_type', 'field_5bd3e4d60d7d8'),
	(184, 47, 'event_city', 'Canberra'),
	(185, 47, '_event_city', 'field_5bd3e4e50d7d9');
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
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_posts: 46 rows
DELETE FROM `wp_posts`;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(1, 1, '2018-10-27 03:30:21', '2018-10-27 03:30:21', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-10-27 04:24:01', '2018-10-27 04:24:01', '', 0, 'http://localhost:3157/teamblue/?p=1', 0, 'post', '', 1),
	(2, 1, '2018-10-27 03:30:21', '2018-10-27 03:30:21', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:3157/teamblue/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-10-27 03:41:34', '2018-10-27 03:41:34', '', 0, 'http://localhost:3157/teamblue/?page_id=2', 0, 'page', '', 0),
	(3, 1, '2018-10-27 03:30:21', '2018-10-27 03:30:21', '<h2>Who we are</h2><p>Our website address is: http://localhost:3157/teamblue.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-10-27 03:30:21', '2018-10-27 03:30:21', '', 0, 'http://localhost:3157/teamblue/?page_id=3', 0, 'page', '', 0),
	(4, 1, '2018-10-27 03:30:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-27 03:30:54', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/teamblue/?p=4', 0, 'post', '', 0),
	(5, 1, '2018-10-27 03:41:34', '2018-10-27 03:41:34', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:3157/teamblue/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-10-27 03:41:34', '2018-10-27 03:41:34', '', 2, 'http://localhost:3157/teamblue/?p=5', 0, 'revision', '', 0),
	(6, 1, '2018-10-27 03:42:01', '2018-10-27 03:42:01', '', 'SpecificEvent', '', 'publish', 'closed', 'closed', '', 'specificevent', '', '', '2018-10-27 03:42:17', '2018-10-27 03:42:17', '', 0, 'http://localhost:3157/teamblue/?page_id=6', 0, 'page', '', 0),
	(7, 1, '2018-10-27 03:42:01', '2018-10-27 03:42:01', '', 'SpecificEvent', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-10-27 03:42:01', '2018-10-27 03:42:01', '', 6, 'http://localhost:3157/teamblue/?p=7', 0, 'revision', '', 0),
	(8, 1, '2018-10-27 03:42:34', '2018-10-27 03:42:34', '', 'AllEvents', '', 'publish', 'closed', 'closed', '', 'allevents', '', '', '2018-10-27 03:47:36', '2018-10-27 03:47:36', '', 0, 'http://localhost:3157/teamblue/?p=8', 1, 'nav_menu_item', '', 0),
	(9, 1, '2018-10-27 03:42:34', '2018-10-27 03:42:34', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2018-10-27 03:47:36', '2018-10-27 03:47:36', '', 0, 'http://localhost:3157/teamblue/?p=9', 2, 'nav_menu_item', '', 0),
	(10, 1, '2018-10-27 03:52:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-27 03:52:31', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/teamblue/?post_type=eventcard&p=10', 0, 'eventcard', '', 0),
	(11, 1, '2018-10-27 03:53:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-27 03:53:38', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/teamblue/?post_type=eventcard&p=11', 0, 'eventcard', '', 0),
	(12, 1, '2018-10-27 03:54:03', '2018-10-27 03:54:03', '', 'event', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-10-27 03:54:03', '2018-10-27 03:54:03', '', 0, 'http://localhost:3157/teamblue/?post_type=eventcard&#038;p=12', 0, 'eventcard', '', 0),
	(13, 1, '2018-10-27 03:56:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-27 03:56:32', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/teamblue/?post_type=acf-field-group&p=13', 0, 'acf-field-group', '', 0),
	(14, 1, '2018-10-27 03:57:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-27 03:57:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/teamblue/?post_type=acf-field-group&p=14', 0, 'acf-field-group', '', 0),
	(15, 1, '2018-10-27 03:57:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-27 03:57:26', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/teamblue/?post_type=acf-field-group&p=15', 0, 'acf-field-group', '', 0),
	(16, 1, '2018-10-27 04:10:47', '2018-10-27 04:10:47', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"event";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'EventCardFields', 'eventcardfields', 'publish', 'closed', 'closed', '', 'group_5bd3e2fd9e3ec', '', '', '2018-10-27 04:29:13', '2018-10-27 04:29:13', '', 0, 'http://localhost:3157/teamblue/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
	(17, 1, '2018-10-27 04:10:47', '2018-10-27 04:10:47', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:19:"Enter Name of event";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'event_name', 'event_name', 'publish', 'closed', 'closed', '', 'field_5bd3e3b00d7d3', '', '', '2018-10-27 04:10:47', '2018-10-27 04:10:47', '', 16, 'http://localhost:3157/teamblue/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
	(18, 1, '2018-10-27 04:10:47', '2018-10-27 04:10:47', 'a:8:{s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:6:"F j, Y";s:13:"return_format";s:6:"F j, Y";s:9:"first_day";i:1;}', 'event_date', 'event_date', 'publish', 'closed', 'closed', '', 'field_5bd3e3cb0d7d4', '', '', '2018-10-27 04:10:47', '2018-10-27 04:10:47', '', 16, 'http://localhost:3157/teamblue/?post_type=acf-field&p=18', 1, 'acf-field', '', 0),
	(19, 1, '2018-10-27 04:10:47', '2018-10-27 04:10:47', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"new_lines";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:4:"rows";s:0:"";}', 'event_description', 'event_description', 'publish', 'closed', 'closed', '', 'field_5bd3e4160d7d5', '', '', '2018-10-27 04:29:13', '2018-10-27 04:29:13', '', 16, 'http://localhost:3157/teamblue/?post_type=acf-field&#038;p=19', 2, 'acf-field', '', 0),
	(20, 1, '2018-10-27 04:10:47', '2018-10-27 04:10:47', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:5:"large";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'event_image', 'event_image', 'publish', 'closed', 'closed', '', 'field_5bd3e46a0d7d6', '', '', '2018-10-27 04:10:47', '2018-10-27 04:10:47', '', 16, 'http://localhost:3157/teamblue/?post_type=acf-field&p=20', 3, 'acf-field', '', 0),
	(21, 1, '2018-10-27 04:10:47', '2018-10-27 04:10:47', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:13:"type of event";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'event_topic', 'event_topic', 'publish', 'closed', 'closed', '', 'field_5bd3e49b0d7d7', '', '', '2018-10-27 04:10:47', '2018-10-27 04:10:47', '', 16, 'http://localhost:3157/teamblue/?post_type=acf-field&p=21', 4, 'acf-field', '', 0),
	(22, 1, '2018-10-27 04:10:47', '2018-10-27 04:10:47', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:13:"type of event";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'event_type', 'event_type', 'publish', 'closed', 'closed', '', 'field_5bd3e4d60d7d8', '', '', '2018-10-27 04:10:47', '2018-10-27 04:10:47', '', 16, 'http://localhost:3157/teamblue/?post_type=acf-field&p=22', 5, 'acf-field', '', 0),
	(23, 1, '2018-10-27 04:10:48', '2018-10-27 04:10:48', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:10:"Enter City";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'event_city', 'event_city', 'publish', 'closed', 'closed', '', 'field_5bd3e4e50d7d9', '', '', '2018-10-27 04:10:48', '2018-10-27 04:10:48', '', 16, 'http://localhost:3157/teamblue/?post_type=acf-field&p=23', 6, 'acf-field', '', 0),
	(25, 1, '2018-10-27 04:17:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-27 04:17:58', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/teamblue/?post_type=eventcard&p=25', 0, 'eventcard', '', 0),
	(26, 1, '2018-10-27 04:24:01', '2018-10-27 04:24:01', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-10-27 04:24:01', '2018-10-27 04:24:01', '', 1, 'http://localhost:3157/teamblue/?p=26', 0, 'revision', '', 0),
	(27, 1, '2018-10-27 04:26:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-27 04:26:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/teamblue/?post_type=event&p=27', 0, 'event', '', 0),
	(28, 1, '2018-10-27 04:27:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-27 04:27:15', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/teamblue/?post_type=event&p=28', 0, 'event', '', 0),
	(29, 1, '2018-10-27 04:32:21', '2018-10-27 04:32:21', '', 'After The Apology', '', 'publish', 'closed', 'closed', '', 'after-the-apology', '', '', '2018-10-27 04:40:21', '2018-10-27 04:40:21', '', 0, 'http://localhost:3157/teamblue/?post_type=event&#038;p=29', 0, 'event', '', 0),
	(30, 1, '2018-10-27 04:30:56', '2018-10-27 04:30:56', '', 'after_the_apology', '', 'inherit', 'open', 'closed', '', 'after_the_apology', '', '', '2018-10-27 04:30:56', '2018-10-27 04:30:56', '', 29, 'http://localhost:3157/teamblue/wp-content/uploads/2018/10/after_the_apology.jpg', 0, 'attachment', 'image/jpeg', 0),
	(31, 1, '2018-10-27 04:36:49', '2018-10-27 04:36:49', '', 'The Song Keepers', '', 'publish', 'closed', 'closed', '', 'the-song-keepers', '', '', '2018-10-27 04:39:22', '2018-10-27 04:39:22', '', 0, 'http://localhost:3157/teamblue/?post_type=event&#038;p=31', 0, 'event', '', 0),
	(32, 1, '2018-10-27 04:33:47', '2018-10-27 04:33:47', '', 'food_fighter', '', 'inherit', 'open', 'closed', '', 'food_fighter', '', '', '2018-10-27 04:33:47', '2018-10-27 04:33:47', '', 31, 'http://localhost:3157/teamblue/wp-content/uploads/2018/10/food_fighter.jpg', 0, 'attachment', 'image/jpeg', 0),
	(33, 1, '2018-10-27 04:33:49', '2018-10-27 04:33:49', '', 'her_sound_her_story', '', 'inherit', 'open', 'closed', '', 'her_sound_her_story', '', '', '2018-10-27 04:33:49', '2018-10-27 04:33:49', '', 31, 'http://localhost:3157/teamblue/wp-content/uploads/2018/10/her_sound_her_story.jpg', 0, 'attachment', 'image/jpeg', 0),
	(34, 1, '2018-10-27 04:33:51', '2018-10-27 04:33:51', '', 'jahas_promise', '', 'inherit', 'open', 'closed', '', 'jahas_promise', '', '', '2018-10-27 04:33:51', '2018-10-27 04:33:51', '', 31, 'http://localhost:3157/teamblue/wp-content/uploads/2018/10/jahas_promise.jpg', 0, 'attachment', 'image/jpeg', 0),
	(35, 1, '2018-10-27 04:33:53', '2018-10-27 04:33:53', '', 'last_men_in_aleppo', '', 'inherit', 'open', 'closed', '', 'last_men_in_aleppo', '', '', '2018-10-27 04:33:53', '2018-10-27 04:33:53', '', 31, 'http://localhost:3157/teamblue/wp-content/uploads/2018/10/last_men_in_aleppo.jpg', 0, 'attachment', 'image/jpeg', 0),
	(36, 1, '2018-10-27 04:33:55', '2018-10-27 04:33:55', '', 'Step', '', 'inherit', 'open', 'closed', '', 'step', '', '', '2018-10-27 04:33:55', '2018-10-27 04:33:55', '', 31, 'http://localhost:3157/teamblue/wp-content/uploads/2018/10/Step.jpg', 0, 'attachment', 'image/jpeg', 0),
	(37, 1, '2018-10-27 04:33:57', '2018-10-27 04:33:57', '', 'the_clearners', '', 'inherit', 'open', 'closed', '', 'the_clearners', '', '', '2018-10-27 04:33:57', '2018-10-27 04:33:57', '', 31, 'http://localhost:3157/teamblue/wp-content/uploads/2018/10/the_clearners.jpg', 0, 'attachment', 'image/jpeg', 0),
	(38, 1, '2018-10-27 04:33:58', '2018-10-27 04:33:58', '', 'the_song_keepers', '', 'inherit', 'open', 'closed', '', 'the_song_keepers', '', '', '2018-10-27 04:33:58', '2018-10-27 04:33:58', '', 31, 'http://localhost:3157/teamblue/wp-content/uploads/2018/10/the_song_keepers.jpg', 0, 'attachment', 'image/jpeg', 0),
	(39, 1, '2018-10-27 04:34:01', '2018-10-27 04:34:01', '', 'A_woman_captured', '', 'inherit', 'open', 'closed', '', 'a_woman_captured', '', '', '2018-10-27 04:34:01', '2018-10-27 04:34:01', '', 31, 'http://localhost:3157/teamblue/wp-content/uploads/2018/10/A_woman_captured.jpg', 0, 'attachment', 'image/jpeg', 0),
	(40, 1, '2018-10-27 04:34:02', '2018-10-27 04:34:02', '', 'border_politics', '', 'inherit', 'open', 'closed', '', 'border_politics', '', '', '2018-10-27 04:34:02', '2018-10-27 04:34:02', '', 31, 'http://localhost:3157/teamblue/wp-content/uploads/2018/10/border_politics.jpg', 0, 'attachment', 'image/jpeg', 0),
	(41, 1, '2018-10-27 04:37:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-27 04:37:11', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/teamblue/?post_type=event&p=41', 0, 'event', '', 0),
	(42, 1, '2018-10-27 04:42:07', '2018-10-27 04:42:07', '', 'Food Fighter', '', 'publish', 'closed', 'closed', '', 'food-fighter', '', '', '2018-10-27 04:42:07', '2018-10-27 04:42:07', '', 0, 'http://localhost:3157/teamblue/?post_type=event&#038;p=42', 0, 'event', '', 0),
	(43, 1, '2018-10-27 04:44:33', '2018-10-27 04:44:33', '', 'Jaha\'s Promise', '', 'publish', 'closed', 'closed', '', 'jahas-promise', '', '', '2018-10-27 04:44:33', '2018-10-27 04:44:33', '', 0, 'http://localhost:3157/teamblue/?post_type=event&#038;p=43', 0, 'event', '', 0),
	(44, 1, '2018-10-27 04:46:05', '2018-10-27 04:46:05', '', 'Border Politics', '', 'publish', 'closed', 'closed', '', 'border-politics', '', '', '2018-10-27 04:46:05', '2018-10-27 04:46:05', '', 0, 'http://localhost:3157/teamblue/?post_type=event&#038;p=44', 0, 'event', '', 0),
	(45, 1, '2018-10-27 04:49:29', '2018-10-27 04:49:29', '', 'Last Men In Aleppo', '', 'publish', 'closed', 'closed', '', 'last-men-in-aleppo', '', '', '2018-10-27 04:49:29', '2018-10-27 04:49:29', '', 0, 'http://localhost:3157/teamblue/?post_type=event&#038;p=45', 0, 'event', '', 0),
	(46, 1, '2018-10-27 04:51:00', '2018-10-27 04:51:00', '', 'Her Sound Her Story', '', 'publish', 'closed', 'closed', '', 'her-sound-her-story', '', '', '2018-10-27 04:51:00', '2018-10-27 04:51:00', '', 0, 'http://localhost:3157/teamblue/?post_type=event&#038;p=46', 0, 'event', '', 0),
	(47, 1, '2018-10-27 04:52:20', '2018-10-27 04:52:20', '', 'Step', '', 'publish', 'closed', 'closed', '', 'step', '', '', '2018-10-27 04:52:20', '2018-10-27 04:52:20', '', 0, 'http://localhost:3157/teamblue/?post_type=event&#038;p=47', 0, 'event', '', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_terms: 15 rows
DELETE FROM `wp_terms`;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Uncategorized', 'uncategorized', 0),
	(2, 'Menu 1', 'menu-1', 0),
	(3, 'Canberra', 'canberra', 0),
	(4, 'Conflict', 'conflict', 0),
	(5, 'May 29', 'may-29', 0),
	(6, '2019', '2019', 0),
	(7, 'October 29', 'october-29', 0),
	(8, '2018', '2018', 0),
	(9, 'Immigration', 'immigration', 0),
	(10, 'Film', 'film', 0),
	(11, 'Film', 'film', 0),
	(12, 'Woman Rights', 'woman-rights', 0),
	(13, 'October 30', 'october-30', 0),
	(14, 'October 31', 'october-31', 0),
	(15, 'Woman', 'woman', 0);
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

-- Dumping data for table teamblue.wp_term_relationships: 43 rows
DELETE FROM `wp_term_relationships`;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(1, 1, 0),
	(8, 2, 0),
	(9, 2, 0),
	(29, 3, 0),
	(29, 4, 0),
	(29, 5, 0),
	(29, 6, 0),
	(31, 7, 0),
	(31, 8, 0),
	(31, 3, 0),
	(31, 9, 0),
	(31, 10, 0),
	(29, 10, 0),
	(42, 3, 0),
	(42, 11, 0),
	(42, 7, 0),
	(42, 8, 0),
	(42, 10, 0),
	(43, 3, 0),
	(43, 12, 0),
	(43, 7, 0),
	(43, 8, 0),
	(43, 10, 0),
	(44, 3, 0),
	(44, 4, 0),
	(44, 13, 0),
	(44, 8, 0),
	(44, 10, 0),
	(45, 3, 0),
	(45, 4, 0),
	(45, 14, 0),
	(45, 8, 0),
	(45, 10, 0),
	(46, 3, 0),
	(46, 12, 0),
	(46, 14, 0),
	(46, 8, 0),
	(46, 10, 0),
	(47, 3, 0),
	(47, 15, 0),
	(47, 14, 0),
	(47, 8, 0),
	(47, 10, 0);
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_term_taxonomy: 15 rows
DELETE FROM `wp_term_taxonomy`;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 0),
	(2, 2, 'nav_menu', '', 0, 2),
	(3, 3, 'city', '', 0, 8),
	(4, 4, 'topic', '', 0, 3),
	(5, 5, 'date', '', 0, 1),
	(6, 6, 'date', '', 0, 1),
	(7, 7, 'date', '', 0, 3),
	(8, 8, 'date', '', 0, 7),
	(9, 9, 'topic', '', 0, 1),
	(10, 10, 'event_type', '', 0, 8),
	(11, 11, 'topic', '', 0, 1),
	(12, 12, 'topic', '', 0, 2),
	(13, 13, 'date', '', 0, 1),
	(14, 14, 'date', '', 0, 3),
	(15, 15, 'topic', '', 0, 1);
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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_usermeta: 25 rows
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
	(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
	(15, 1, 'show_welcome_panel', '1'),
	(16, 1, 'session_tokens', 'a:2:{s:64:"6129386584cf314ddcc7479b3b1af4b0d9cbaa28e57ba3e29e36e714ae153fe7";a:4:{s:10:"expiration";i:1540783845;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1540611045;}s:64:"dad1b79b3caee72dd748d9495aedf5f492753c10975a6850b44f9be7ad574b49";a:4:{s:10:"expiration";i:1540783852;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1540611052;}}'),
	(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
	(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
	(19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
	(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
	(21, 1, 'nav_menu_recently_edited', '2'),
	(22, 1, 'wp_user-settings', 'unfold=1&mfold=o&libraryContent=browse'),
	(23, 1, 'wp_user-settings-time', '1540614739'),
	(24, 1, 'closedpostboxes_event', 'a:0:{}'),
	(25, 1, 'metaboxhidden_event', 'a:1:{i:0;s:7:"slugdiv";}');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table teamblue.wp_users: 1 rows
DELETE FROM `wp_users`;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'admin', '$P$BYQ8vwMELNLnnpCkP3LNX53xEvpiln/', 'admin', 'aver30@student.monash.edu', '', '2018-10-27 03:30:21', '', 0, 'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
