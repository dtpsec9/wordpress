-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 25, 2021 at 10:39 AM
-- Server version: 5.7.33-0ubuntu0.16.04.1
-- PHP Version: 7.3.27-9+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omizzy-blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `owpz_commentmeta`
--

CREATE TABLE `owpz_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `owpz_comments`
--

CREATE TABLE `owpz_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `owpz_comments`
--

INSERT INTO `owpz_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-11-16 07:16:52', '2021-11-16 07:16:52', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `owpz_links`
--

CREATE TABLE `owpz_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `owpz_options`
--

CREATE TABLE `owpz_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `owpz_options`
--

INSERT INTO `owpz_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/omizzy-blog', 'yes'),
(2, 'home', 'http://localhost/omizzy-blog', 'yes'),
(3, 'blogname', 'Omizzy', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dottech28@gmail.com', 'yes'),
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
(22, 'posts_per_page', '1', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=87&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:33:"classic-editor/classic-editor.php";i:1;s:35:"classic-widgets/classic-widgets.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyone', 'yes'),
(41, 'stylesheet', 'twentytwentyone-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '87', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1652599004', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'owpz_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:7:{s:12:"main-sidebar";a:1:{i:0;s:8:"search-2";}s:14:"your-sidebar-1";a:1:{i:0;s:8:"search-4";}s:11:"new_sidebar";a:1:{i:0;s:8:"search-5";}s:19:"wp_inactive_widgets";a:0:{}s:14:"custom-sidebar";a:1:{i:0;s:8:"search-7";}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1637817413;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1637824613;a:4:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1637824614;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1637824621;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1637824624;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1638343013;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_search', 'a:5:{i:2;a:1:{s:5:"title";s:0:"";}i:4;a:1:{s:5:"title";s:0:"";}i:5;a:1:{s:5:"title";s:0:"";}i:7;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:1:{s:22:"uEFLyYvsZiD3vl5h0lwQQU";a:2:{s:10:"hashed_key";s:34:"$P$BB8PETuYaBj9VTXAvWJS16HBm.iRTm0";s:10:"created_at";i:1637734416;}}', 'yes'),
(119, 'https_detection_errors', 'a:1:{s:20:"https_request_failed";a:1:{i:0;s:21:"HTTPS request failed.";}}', 'yes'),
(120, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.8.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.8.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"5.8.2";s:7:"version";s:5:"5.8.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.6";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1637814472;s:15:"version_checked";s:5:"5.8.2";s:12:"translations";a:0:{}}', 'no'),
(121, 'theme_mods_twentytwentyone', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1637048871;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'yes'),
(126, '_site_transient_update_themes', 'O:8:"stdClass":5:{s:12:"last_checked";i:1637814478;s:7:"checked";a:4:{s:14:"twentynineteen";s:3:"2.1";s:12:"twentytwenty";s:3:"1.8";s:21:"twentytwentyone-child";s:5:"1.0.0";s:15:"twentytwentyone";s:3:"1.4";}s:8:"response";a:0:{}s:9:"no_update";a:3:{s:14:"twentynineteen";a:6:{s:5:"theme";s:14:"twentynineteen";s:11:"new_version";s:3:"2.1";s:3:"url";s:44:"https://wordpress.org/themes/twentynineteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip";s:8:"requires";s:5:"4.9.6";s:12:"requires_php";s:5:"5.2.4";}s:12:"twentytwenty";a:6:{s:5:"theme";s:12:"twentytwenty";s:11:"new_version";s:3:"1.8";s:3:"url";s:42:"https://wordpress.org/themes/twentytwenty/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip";s:8:"requires";s:3:"4.7";s:12:"requires_php";s:5:"5.2.4";}s:15:"twentytwentyone";a:6:{s:5:"theme";s:15:"twentytwentyone";s:11:"new_version";s:3:"1.4";s:3:"url";s:45:"https://wordpress.org/themes/twentytwentyone/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip";s:8:"requires";s:3:"5.3";s:12:"requires_php";s:3:"5.6";}}s:12:"translations";a:0:{}}', 'no'),
(132, 'can_compress_scripts', '0', 'no'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(148, 'current_theme', 'Twenty Twentyone Child', 'yes'),
(149, 'theme_mods_twentytwentyone-child', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(151, 'recovery_mode_email_last_sent', '1637734416', 'yes'),
(156, '_site_transient_timeout_php_check_7ae7700b3cdc44c8d288655704250896', '1637745676', 'no'),
(157, '_site_transient_php_check_7ae7700b3cdc44c8d288655704250896', 'a:5:{s:19:"recommended_version";s:3:"7.4";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:0;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'),
(158, '_transient_health-check-site-status-result', '{"good":12,"recommended":6,"critical":1}', 'yes'),
(163, '_site_transient_timeout_browser_a0189b5efcdf157cdd11c72049b2bf30', '1637819208', 'no'),
(164, '_site_transient_browser_a0189b5efcdf157cdd11c72049b2bf30', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"94.0.4606.54";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(177, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(271, 'recently_activated', 'a:0:{}', 'yes'),
(312, 'category_children', 'a:0:{}', 'yes'),
(338, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(339, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(347, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1637814478;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":10:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.2.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"5.0";}s:33:"classic-editor/classic-editor.php";O:8:"stdClass":10:{s:2:"id";s:28:"w.org/plugins/classic-editor";s:4:"slug";s:14:"classic-editor";s:6:"plugin";s:33:"classic-editor/classic-editor.php";s:11:"new_version";s:5:"1.6.2";s:3:"url";s:45:"https://wordpress.org/plugins/classic-editor/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671";s:2:"1x";s:67:"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671";s:2:"1x";s:69:"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.9";}s:35:"classic-widgets/classic-widgets.php";O:8:"stdClass":10:{s:2:"id";s:29:"w.org/plugins/classic-widgets";s:4:"slug";s:15:"classic-widgets";s:6:"plugin";s:35:"classic-widgets/classic-widgets.php";s:11:"new_version";s:3:"0.2";s:3:"url";s:46:"https://wordpress.org/plugins/classic-widgets/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/classic-widgets.0.2.zip";s:5:"icons";a:1:{s:7:"default";s:59:"https://s.w.org/plugins/geopattern-icon/classic-widgets.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.9";}s:9:"hello.php";O:8:"stdClass":10:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:5:"1.7.2";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855";s:2:"1x";s:64:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855";}s:7:"banners";a:1:{s:2:"1x";s:66:"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.6";}}s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"4.2.1";s:33:"classic-editor/classic-editor.php";s:5:"1.6.2";s:35:"classic-widgets/classic-widgets.php";s:3:"0.2";s:9:"hello.php";s:5:"1.7.2";}}', 'no'),
(361, '_site_transient_timeout_theme_roots', '1637816276', 'no'),
(362, '_site_transient_theme_roots', 'a:4:{s:14:"twentynineteen";s:7:"/themes";s:12:"twentytwenty";s:7:"/themes";s:21:"twentytwentyone-child";s:7:"/themes";s:15:"twentytwentyone";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `owpz_postmeta`
--

CREATE TABLE `owpz_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `owpz_postmeta`
--

INSERT INTO `owpz_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/omizzy-blog/'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(21, 7, '_wp_attached_file', '2021/11/tw.png'),
(22, 7, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:20;s:6:"height";i:17;s:4:"file";s:14:"2021/11/tw.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(23, 8, '_wp_attached_file', '2021/11/sn3-836x340-1.jpg'),
(24, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:836;s:6:"height";i:340;s:4:"file";s:25:"2021/11/sn3-836x340-1.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:25:"sn3-836x340-1-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:25:"sn3-836x340-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"sn3-836x340-1-768x312.jpg";s:5:"width";i:768;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 9, '_wp_attached_file', '2021/11/sn2-836x340-1.jpg'),
(26, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:836;s:6:"height";i:340;s:4:"file";s:25:"2021/11/sn2-836x340-1.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:25:"sn2-836x340-1-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:25:"sn2-836x340-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"sn2-836x340-1-768x312.jpg";s:5:"width";i:768;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(27, 10, '_wp_attached_file', '2021/11/sdf.png'),
(28, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:120;s:6:"height";i:95;s:4:"file";s:15:"2021/11/sdf.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(29, 11, '_wp_attached_file', '2021/11/r2.jpg'),
(30, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:101;s:6:"height";i:101;s:4:"file";s:14:"2021/11/r2.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(31, 12, '_wp_attached_file', '2021/11/r1.jpg'),
(32, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:101;s:6:"height";i:101;s:4:"file";s:14:"2021/11/r1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(33, 13, '_wp_attached_file', '2021/11/parallax3.jpg'),
(34, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:655;s:4:"file";s:21:"2021/11/parallax3.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:21:"parallax3-300x102.jpg";s:5:"width";i:300;s:6:"height";i:102;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"parallax3-1024x349.jpg";s:5:"width";i:1024;s:6:"height";i:349;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"parallax3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"parallax3-768x262.jpg";s:5:"width";i:768;s:6:"height";i:262;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:22:"parallax3-1536x524.jpg";s:5:"width";i:1536;s:6:"height";i:524;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"parallax3-1568x535.jpg";s:5:"width";i:1568;s:6:"height";i:535;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(35, 14, '_wp_attached_file', '2021/11/parallax2.jpg'),
(36, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:800;s:4:"file";s:21:"2021/11/parallax2.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:21:"parallax2-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"parallax2-1024x427.jpg";s:5:"width";i:1024;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"parallax2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"parallax2-768x320.jpg";s:5:"width";i:768;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:22:"parallax2-1536x640.jpg";s:5:"width";i:1536;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"parallax2-1568x653.jpg";s:5:"width";i:1568;s:6:"height";i:653;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(37, 15, '_wp_attached_file', '2021/11/p4.jpg'),
(38, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:165;s:6:"height";i:115;s:4:"file";s:14:"2021/11/p4.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"p4-150x115.jpg";s:5:"width";i:150;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(39, 16, '_wp_attached_file', '2021/11/p3.jpg'),
(40, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:165;s:6:"height";i:115;s:4:"file";s:14:"2021/11/p3.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"p3-150x115.jpg";s:5:"width";i:150;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(41, 17, '_wp_attached_file', '2021/11/p2.jpg'),
(42, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:165;s:6:"height";i:115;s:4:"file";s:14:"2021/11/p2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"p2-150x115.jpg";s:5:"width";i:150;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(43, 18, '_wp_attached_file', '2021/11/p1.jpg'),
(44, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:165;s:6:"height";i:115;s:4:"file";s:14:"2021/11/p1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"p1-150x115.jpg";s:5:"width";i:150;s:6:"height";i:115;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(45, 19, '_wp_attached_file', '2021/11/mslider3.jpg'),
(46, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:800;s:4:"file";s:20:"2021/11/mslider3.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"mslider3-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"mslider3-1024x427.jpg";s:5:"width";i:1024;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"mslider3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"mslider3-768x320.jpg";s:5:"width";i:768;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:21:"mslider3-1536x640.jpg";s:5:"width";i:1536;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"mslider3-1568x653.jpg";s:5:"width";i:1568;s:6:"height";i:653;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(47, 20, '_wp_attached_file', '2021/11/mslider2.jpg'),
(48, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:800;s:4:"file";s:20:"2021/11/mslider2.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"mslider2-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"mslider2-1024x427.jpg";s:5:"width";i:1024;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"mslider2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"mslider2-768x320.jpg";s:5:"width";i:768;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:21:"mslider2-1536x640.jpg";s:5:"width";i:1536;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"mslider2-1568x653.jpg";s:5:"width";i:1568;s:6:"height";i:653;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(49, 21, '_wp_attached_file', '2021/11/mslider1.jpg'),
(50, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:800;s:4:"file";s:20:"2021/11/mslider1.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:20:"mslider1-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"mslider1-1024x427.jpg";s:5:"width";i:1024;s:6:"height";i:427;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:20:"mslider1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"mslider1-768x320.jpg";s:5:"width";i:768;s:6:"height";i:320;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:21:"mslider1-1536x640.jpg";s:5:"width";i:1536;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"mslider1-1568x653.jpg";s:5:"width";i:1568;s:6:"height";i:653;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(51, 22, '_wp_attached_file', '2021/11/logo10.png'),
(52, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:210;s:6:"height";i:50;s:4:"file";s:18:"2021/11/logo10.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"logo10-150x50.png";s:5:"width";i:150;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(53, 23, '_wp_attached_file', '2021/11/logo.png'),
(54, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:210;s:6:"height";i:50;s:4:"file";s:16:"2021/11/logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"logo-150x50.png";s:5:"width";i:150;s:6:"height";i:50;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(55, 24, '_wp_attached_file', '2021/11/loader.gif'),
(56, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:18:"2021/11/loader.gif";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:18:"loader-300x225.gif";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:9:"image/gif";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"loader-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(57, 25, '_wp_attached_file', '2021/11/lines.png'),
(58, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:255;s:6:"height";i:193;s:4:"file";s:17:"2021/11/lines.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"lines-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(59, 26, '_wp_attached_file', '2021/11/l6.png'),
(60, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:51;s:4:"file";s:14:"2021/11/l6.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(61, 27, '_wp_attached_file', '2021/11/l5.png'),
(62, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:51;s:4:"file";s:14:"2021/11/l5.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(63, 28, '_wp_attached_file', '2021/11/l4.png'),
(64, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:51;s:4:"file";s:14:"2021/11/l4.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(65, 29, '_wp_attached_file', '2021/11/l3.png'),
(66, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:51;s:4:"file";s:14:"2021/11/l3.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(67, 30, '_wp_attached_file', '2021/11/l2.png'),
(68, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:51;s:4:"file";s:14:"2021/11/l2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(69, 31, '_wp_attached_file', '2021/11/l1.png'),
(70, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:51;s:4:"file";s:14:"2021/11/l1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(71, 32, '_wp_attached_file', '2021/11/icon2.png'),
(72, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:19;s:6:"height";i:19;s:4:"file";s:17:"2021/11/icon2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(73, 33, '_wp_attached_file', '2021/11/icon.png'),
(74, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:26;s:6:"height";i:19;s:4:"file";s:16:"2021/11/icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(75, 34, '_wp_attached_file', '2021/11/gl.png'),
(76, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:20;s:6:"height";i:20;s:4:"file";s:14:"2021/11/gl.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(77, 35, '_wp_attached_file', '2021/11/fb.png'),
(78, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:18;s:6:"height";i:18;s:4:"file";s:14:"2021/11/fb.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(79, 36, '_wp_attached_file', '2021/11/es1.jpg'),
(80, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:145;s:6:"height";i:145;s:4:"file";s:15:"2021/11/es1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(81, 37, '_wp_attached_file', '2021/11/em7.jpg'),
(82, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:80;s:4:"file";s:15:"2021/11/em7.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(83, 38, '_wp_attached_file', '2021/11/em6.jpg'),
(84, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:80;s:4:"file";s:15:"2021/11/em6.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(85, 39, '_wp_attached_file', '2021/11/em5.jpg'),
(86, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:80;s:4:"file";s:15:"2021/11/em5.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(87, 40, '_wp_attached_file', '2021/11/em4.jpg'),
(88, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:80;s:4:"file";s:15:"2021/11/em4.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(89, 41, '_wp_attached_file', '2021/11/em3.jpg'),
(90, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:80;s:4:"file";s:15:"2021/11/em3.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(91, 42, '_wp_attached_file', '2021/11/em2.jpg'),
(92, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:80;s:4:"file";s:15:"2021/11/em2.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(93, 43, '_wp_attached_file', '2021/11/em1.jpg'),
(94, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:80;s:4:"file";s:15:"2021/11/em1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(95, 44, '_wp_attached_file', '2021/11/dw2.png'),
(96, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:65;s:4:"file";s:15:"2021/11/dw2.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"dw2-150x65.png";s:5:"width";i:150;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(97, 45, '_wp_attached_file', '2021/11/dw1.png'),
(98, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:65;s:4:"file";s:15:"2021/11/dw1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"dw1-150x65.png";s:5:"width";i:150;s:6:"height";i:65;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(99, 46, '_wp_attached_file', '2021/11/cc5.jpg'),
(100, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:80;s:4:"file";s:15:"2021/11/cc5.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"cc5-150x80.jpg";s:5:"width";i:150;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(101, 47, '_wp_attached_file', '2021/11/cc4.jpg'),
(102, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:80;s:4:"file";s:15:"2021/11/cc4.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"cc4-150x80.jpg";s:5:"width";i:150;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(103, 48, '_wp_attached_file', '2021/11/cc3.jpg'),
(104, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:80;s:4:"file";s:15:"2021/11/cc3.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"cc3-150x80.jpg";s:5:"width";i:150;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(105, 49, '_wp_attached_file', '2021/11/cc2.jpg'),
(106, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:80;s:4:"file";s:15:"2021/11/cc2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"cc2-150x80.jpg";s:5:"width";i:150;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(107, 50, '_wp_attached_file', '2021/11/cc1.jpg'),
(108, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:180;s:6:"height";i:80;s:4:"file";s:15:"2021/11/cc1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"cc1-150x80.jpg";s:5:"width";i:150;s:6:"height";i:80;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(109, 51, '_wp_attached_file', '2021/11/blog-4-836x340-1.jpg'),
(110, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:836;s:6:"height";i:340;s:4:"file";s:28:"2021/11/blog-4-836x340-1.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:28:"blog-4-836x340-1-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"blog-4-836x340-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"blog-4-836x340-1-768x312.jpg";s:5:"width";i:768;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(111, 52, '_wp_attached_file', '2021/11/blog-4-150x150-1.jpg'),
(112, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:28:"2021/11/blog-4-150x150-1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(113, 53, '_wp_attached_file', '2021/11/blog-3-836x340-1.jpg'),
(114, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:836;s:6:"height";i:340;s:4:"file";s:28:"2021/11/blog-3-836x340-1.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:28:"blog-3-836x340-1-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"blog-3-836x340-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"blog-3-836x340-1-768x312.jpg";s:5:"width";i:768;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(115, 54, '_wp_attached_file', '2021/11/blog-3-150x150-1.jpg'),
(116, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:28:"2021/11/blog-3-150x150-1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(117, 55, '_wp_attached_file', '2021/11/blog-2-836x340-1.jpg'),
(118, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:836;s:6:"height";i:340;s:4:"file";s:28:"2021/11/blog-2-836x340-1.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:28:"blog-2-836x340-1-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"blog-2-836x340-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"blog-2-836x340-1-768x312.jpg";s:5:"width";i:768;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(119, 56, '_wp_attached_file', '2021/11/blog-2-150x150-1.jpg'),
(120, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:28:"2021/11/blog-2-150x150-1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(121, 57, '_wp_attached_file', '2021/11/blog-1-836x340-1.jpg'),
(122, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:836;s:6:"height";i:340;s:4:"file";s:28:"2021/11/blog-1-836x340-1.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:28:"blog-1-836x340-1-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:28:"blog-1-836x340-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"blog-1-836x340-1-768x312.jpg";s:5:"width";i:768;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 58, '_wp_attached_file', '2021/11/blog-1-150x150-1.jpg'),
(124, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:28:"2021/11/blog-1-150x150-1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(125, 59, '_wp_attached_file', '2021/11/blog3-836x340-1.jpg'),
(126, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:836;s:6:"height";i:340;s:4:"file";s:27:"2021/11/blog3-836x340-1.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:27:"blog3-836x340-1-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:27:"blog3-836x340-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"blog3-836x340-1-768x312.jpg";s:5:"width";i:768;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(127, 60, '_wp_attached_file', '2021/11/blog2-836x340-1.jpg'),
(128, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:836;s:6:"height";i:340;s:4:"file";s:27:"2021/11/blog2-836x340-1.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:27:"blog2-836x340-1-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:27:"blog2-836x340-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"blog2-836x340-1-768x312.jpg";s:5:"width";i:768;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(129, 61, '_wp_attached_file', '2021/11/blog2-150x150-1.jpg'),
(130, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:150;s:4:"file";s:27:"2021/11/blog2-150x150-1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(131, 62, '_wp_attached_file', '2021/11/blog1-836x340-1.jpg'),
(132, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:836;s:6:"height";i:340;s:4:"file";s:27:"2021/11/blog1-836x340-1.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:27:"blog1-836x340-1-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:27:"blog1-836x340-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"blog1-836x340-1-768x312.jpg";s:5:"width";i:768;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(133, 63, '_wp_attached_file', '2021/11/b3.jpg'),
(134, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:370;s:6:"height";i:210;s:4:"file";s:14:"2021/11/b3.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:14:"b3-300x170.jpg";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:14:"b3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(135, 64, '_wp_attached_file', '2021/11/b2.png'),
(136, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:369;s:6:"height";i:210;s:4:"file";s:14:"2021/11/b2.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:14:"b2-300x171.png";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:14:"b2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(137, 65, '_wp_attached_file', '2021/11/b2.jpg'),
(138, 65, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:369;s:6:"height";i:210;s:4:"file";s:14:"2021/11/b2.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:14:"b2-300x171.jpg";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:14:"b2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(139, 66, '_wp_attached_file', '2021/11/b1.jpg'),
(140, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:371;s:6:"height";i:210;s:4:"file";s:14:"2021/11/b1.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:14:"b1-300x170.jpg";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:14:"b1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(141, 67, '_wp_attached_file', '2021/11/andre.jpg'),
(142, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:179;s:6:"height";i:179;s:4:"file";s:17:"2021/11/andre.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"andre-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(143, 68, '_wp_attached_file', '2021/11/66f865ee03bc019d2f06af6ec0c434ce.jpeg'),
(144, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:45:"2021/11/66f865ee03bc019d2f06af6ec0c434ce.jpeg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(145, 69, '_wp_attached_file', '2021/11/4fdb3b572ac7dd8d7a58ba70317efa14.jpeg'),
(146, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:45:"2021/11/4fdb3b572ac7dd8d7a58ba70317efa14.jpeg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(147, 70, '_edit_lock', '1637221901:1'),
(148, 72, '_edit_lock', '1637572581:1'),
(149, 72, '_wp_page_template', 'custom-page.php'),
(168, 5, '_wp_old_date', '2021-11-18'),
(169, 6, '_wp_old_date', '2021-11-18'),
(170, 72, '_wp_trash_meta_status', 'publish'),
(171, 72, '_wp_trash_meta_time', '1637572721'),
(172, 72, '_wp_desired_post_slug', 'blogs'),
(173, 76, '_edit_lock', '1637572601:1'),
(174, 77, '_edit_lock', '1637573296:1'),
(175, 78, '_edit_lock', '1637573409:1'),
(176, 79, '_edit_lock', '1637573765:1'),
(177, 80, '_edit_lock', '1637573813:1'),
(178, 81, '_edit_lock', '1637574178:1'),
(179, 82, '_edit_lock', '1637575104:1'),
(180, 2, '_edit_lock', '1637575932:1'),
(181, 83, '_edit_last', '1'),
(182, 83, '_edit_lock', '1637579499:1'),
(183, 83, '_wp_page_template', 'default'),
(184, 83, '_wp_trash_meta_status', 'publish'),
(185, 83, '_wp_trash_meta_time', '1637579653'),
(186, 83, '_wp_desired_post_slug', 'blogs'),
(187, 87, '_edit_last', '1'),
(188, 87, '_edit_lock', '1637580515:1'),
(189, 87, '_wp_page_template', 'PageWithoutSidebar.php'),
(190, 89, '_menu_item_type', 'post_type'),
(191, 89, '_menu_item_menu_item_parent', '0'),
(192, 89, '_menu_item_object_id', '87'),
(193, 89, '_menu_item_object', 'page'),
(194, 89, '_menu_item_target', ''),
(195, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(196, 89, '_menu_item_xfn', ''),
(197, 89, '_menu_item_url', ''),
(199, 90, '_edit_last', '1'),
(200, 90, '_edit_lock', '1637652125:1'),
(201, 90, '_thumbnail_id', '66'),
(204, 93, '_edit_last', '1'),
(205, 93, '_thumbnail_id', '62'),
(208, 93, '_edit_lock', '1637660389:1'),
(209, 96, '_edit_last', '1'),
(210, 96, '_edit_lock', '1637749693:1'),
(211, 96, '_thumbnail_id', '55');

-- --------------------------------------------------------

--
-- Table structure for table `owpz_posts`
--

CREATE TABLE `owpz_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `owpz_posts`
--

INSERT INTO `owpz_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-11-16 07:16:52', '2021-11-16 07:16:52', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-11-16 07:16:52', '2021-11-16 07:16:52', '', 0, 'http://localhost/omizzy-blog/?p=1', 0, 'post', '', 1),
(2, 1, '2021-11-16 07:16:52', '2021-11-16 07:16:52', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost/omizzy-blog/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-11-16 07:16:52', '2021-11-16 07:16:52', '', 0, 'http://localhost/omizzy-blog/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-11-16 07:16:52', '2021-11-16 07:16:52', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://localhost/omizzy-blog.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-11-16 07:16:52', '2021-11-16 07:16:52', '', 0, 'http://localhost/omizzy-blog/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-11-22 11:18:49', '2021-11-18 06:11:37', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-11-22 11:18:49', '2021-11-22 11:18:49', '', 0, 'http://localhost/omizzy-blog/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2021-11-22 11:18:49', '2021-11-18 06:11:37', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2021-11-22 11:18:49', '2021-11-22 11:18:49', '', 0, 'http://localhost/omizzy-blog/?p=6', 2, 'nav_menu_item', '', 0),
(7, 1, '2021-11-18 07:43:28', '2021-11-18 07:43:28', '', 'tw', '', 'inherit', 'open', 'closed', '', 'tw', '', '', '2021-11-18 07:43:28', '2021-11-18 07:43:28', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/tw.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2021-11-18 07:43:28', '2021-11-18 07:43:28', '', 'sn3-836x340', '', 'inherit', 'open', 'closed', '', 'sn3-836x340', '', '', '2021-11-18 07:43:28', '2021-11-18 07:43:28', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/sn3-836x340-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2021-11-18 07:43:28', '2021-11-18 07:43:28', '', 'sn2-836x340', '', 'inherit', 'open', 'closed', '', 'sn2-836x340', '', '', '2021-11-18 07:43:28', '2021-11-18 07:43:28', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/sn2-836x340-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2021-11-18 07:43:29', '2021-11-18 07:43:29', '', 'sdf', '', 'inherit', 'open', 'closed', '', 'sdf', '', '', '2021-11-18 07:43:29', '2021-11-18 07:43:29', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/sdf.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2021-11-18 07:43:29', '2021-11-18 07:43:29', '', 'r2', '', 'inherit', 'open', 'closed', '', 'r2', '', '', '2021-11-18 07:43:29', '2021-11-18 07:43:29', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/r2.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2021-11-18 07:43:29', '2021-11-18 07:43:29', '', 'r1', '', 'inherit', 'open', 'closed', '', 'r1', '', '', '2021-11-18 07:43:29', '2021-11-18 07:43:29', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/r1.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2021-11-18 07:43:29', '2021-11-18 07:43:29', '', 'parallax3', '', 'inherit', 'open', 'closed', '', 'parallax3', '', '', '2021-11-18 07:43:29', '2021-11-18 07:43:29', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/parallax3.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2021-11-18 07:43:30', '2021-11-18 07:43:30', '', 'parallax2', '', 'inherit', 'open', 'closed', '', 'parallax2', '', '', '2021-11-18 07:43:30', '2021-11-18 07:43:30', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/parallax2.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2021-11-18 07:43:31', '2021-11-18 07:43:31', '', 'p4', '', 'inherit', 'open', 'closed', '', 'p4', '', '', '2021-11-18 07:43:31', '2021-11-18 07:43:31', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/p4.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2021-11-18 07:43:32', '2021-11-18 07:43:32', '', 'p3', '', 'inherit', 'open', 'closed', '', 'p3', '', '', '2021-11-18 07:43:32', '2021-11-18 07:43:32', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/p3.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2021-11-18 07:43:32', '2021-11-18 07:43:32', '', 'p2', '', 'inherit', 'open', 'closed', '', 'p2', '', '', '2021-11-18 07:43:32', '2021-11-18 07:43:32', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/p2.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2021-11-18 07:43:32', '2021-11-18 07:43:32', '', 'p1', '', 'inherit', 'open', 'closed', '', 'p1', '', '', '2021-11-18 07:43:32', '2021-11-18 07:43:32', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/p1.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2021-11-18 07:43:32', '2021-11-18 07:43:32', '', 'mslider3', '', 'inherit', 'open', 'closed', '', 'mslider3', '', '', '2021-11-18 07:43:32', '2021-11-18 07:43:32', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/mslider3.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2021-11-18 07:43:33', '2021-11-18 07:43:33', '', 'mslider2', '', 'inherit', 'open', 'closed', '', 'mslider2', '', '', '2021-11-18 07:43:33', '2021-11-18 07:43:33', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/mslider2.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2021-11-18 07:43:35', '2021-11-18 07:43:35', '', 'mslider1', '', 'inherit', 'open', 'closed', '', 'mslider1', '', '', '2021-11-18 07:43:35', '2021-11-18 07:43:35', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/mslider1.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2021-11-18 07:43:36', '2021-11-18 07:43:36', '', 'logo10', '', 'inherit', 'open', 'closed', '', 'logo10', '', '', '2021-11-18 07:43:36', '2021-11-18 07:43:36', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/logo10.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2021-11-18 07:43:36', '2021-11-18 07:43:36', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2021-11-18 07:43:36', '2021-11-18 07:43:36', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/logo.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2021-11-18 07:43:36', '2021-11-18 07:43:36', '', 'loader', '', 'inherit', 'open', 'closed', '', 'loader', '', '', '2021-11-18 07:43:36', '2021-11-18 07:43:36', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/loader.gif', 0, 'attachment', 'image/gif', 0),
(25, 1, '2021-11-18 07:43:36', '2021-11-18 07:43:36', '', 'lines', '', 'inherit', 'open', 'closed', '', 'lines', '', '', '2021-11-18 07:43:36', '2021-11-18 07:43:36', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/lines.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2021-11-18 07:43:37', '2021-11-18 07:43:37', '', 'l6', '', 'inherit', 'open', 'closed', '', 'l6', '', '', '2021-11-18 07:43:37', '2021-11-18 07:43:37', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/l6.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2021-11-18 07:43:37', '2021-11-18 07:43:37', '', 'l5', '', 'inherit', 'open', 'closed', '', 'l5', '', '', '2021-11-18 07:43:37', '2021-11-18 07:43:37', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/l5.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2021-11-18 07:43:37', '2021-11-18 07:43:37', '', 'l4', '', 'inherit', 'open', 'closed', '', 'l4', '', '', '2021-11-18 07:43:37', '2021-11-18 07:43:37', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/l4.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2021-11-18 07:43:37', '2021-11-18 07:43:37', '', 'l3', '', 'inherit', 'open', 'closed', '', 'l3', '', '', '2021-11-18 07:43:37', '2021-11-18 07:43:37', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/l3.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2021-11-18 07:43:38', '2021-11-18 07:43:38', '', 'l2', '', 'inherit', 'open', 'closed', '', 'l2', '', '', '2021-11-18 07:43:38', '2021-11-18 07:43:38', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/l2.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2021-11-18 07:43:38', '2021-11-18 07:43:38', '', 'l1', '', 'inherit', 'open', 'closed', '', 'l1', '', '', '2021-11-18 07:43:38', '2021-11-18 07:43:38', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/l1.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2021-11-18 07:43:38', '2021-11-18 07:43:38', '', 'icon2', '', 'inherit', 'open', 'closed', '', 'icon2', '', '', '2021-11-18 07:43:38', '2021-11-18 07:43:38', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/icon2.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2021-11-18 07:43:38', '2021-11-18 07:43:38', '', 'icon', '', 'inherit', 'open', 'closed', '', 'icon', '', '', '2021-11-18 07:43:38', '2021-11-18 07:43:38', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/icon.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2021-11-18 07:43:38', '2021-11-18 07:43:38', '', 'gl', '', 'inherit', 'open', 'closed', '', 'gl', '', '', '2021-11-18 07:43:38', '2021-11-18 07:43:38', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/gl.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2021-11-18 07:43:38', '2021-11-18 07:43:38', '', 'fb', '', 'inherit', 'open', 'closed', '', 'fb', '', '', '2021-11-18 07:43:38', '2021-11-18 07:43:38', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/fb.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2021-11-18 07:43:39', '2021-11-18 07:43:39', '', 'es1', '', 'inherit', 'open', 'closed', '', 'es1', '', '', '2021-11-18 07:43:39', '2021-11-18 07:43:39', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/es1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2021-11-18 07:43:39', '2021-11-18 07:43:39', '', 'em7', '', 'inherit', 'open', 'closed', '', 'em7', '', '', '2021-11-18 07:43:39', '2021-11-18 07:43:39', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/em7.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2021-11-18 07:43:39', '2021-11-18 07:43:39', '', 'em6', '', 'inherit', 'open', 'closed', '', 'em6', '', '', '2021-11-18 07:43:39', '2021-11-18 07:43:39', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/em6.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2021-11-18 07:43:39', '2021-11-18 07:43:39', '', 'em5', '', 'inherit', 'open', 'closed', '', 'em5', '', '', '2021-11-18 07:43:39', '2021-11-18 07:43:39', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/em5.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2021-11-18 07:43:39', '2021-11-18 07:43:39', '', 'em4', '', 'inherit', 'open', 'closed', '', 'em4', '', '', '2021-11-18 07:43:39', '2021-11-18 07:43:39', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/em4.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2021-11-18 07:43:40', '2021-11-18 07:43:40', '', 'em3', '', 'inherit', 'open', 'closed', '', 'em3', '', '', '2021-11-18 07:43:40', '2021-11-18 07:43:40', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/em3.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2021-11-18 07:43:40', '2021-11-18 07:43:40', '', 'em2', '', 'inherit', 'open', 'closed', '', 'em2', '', '', '2021-11-18 07:43:40', '2021-11-18 07:43:40', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/em2.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2021-11-18 07:43:40', '2021-11-18 07:43:40', '', 'em1', '', 'inherit', 'open', 'closed', '', 'em1', '', '', '2021-11-18 07:43:40', '2021-11-18 07:43:40', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/em1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-11-18 07:43:40', '2021-11-18 07:43:40', '', 'dw2', '', 'inherit', 'open', 'closed', '', 'dw2', '', '', '2021-11-18 07:43:40', '2021-11-18 07:43:40', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/dw2.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2021-11-18 07:43:40', '2021-11-18 07:43:40', '', 'dw1', '', 'inherit', 'open', 'closed', '', 'dw1', '', '', '2021-11-18 07:43:40', '2021-11-18 07:43:40', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/dw1.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2021-11-18 07:43:41', '2021-11-18 07:43:41', '', 'cc5', '', 'inherit', 'open', 'closed', '', 'cc5', '', '', '2021-11-18 07:43:41', '2021-11-18 07:43:41', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/cc5.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2021-11-18 07:43:41', '2021-11-18 07:43:41', '', 'cc4', '', 'inherit', 'open', 'closed', '', 'cc4', '', '', '2021-11-18 07:43:41', '2021-11-18 07:43:41', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/cc4.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2021-11-18 07:43:41', '2021-11-18 07:43:41', '', 'cc3', '', 'inherit', 'open', 'closed', '', 'cc3', '', '', '2021-11-18 07:43:41', '2021-11-18 07:43:41', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/cc3.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2021-11-18 07:43:41', '2021-11-18 07:43:41', '', 'cc2', '', 'inherit', 'open', 'closed', '', 'cc2', '', '', '2021-11-18 07:43:41', '2021-11-18 07:43:41', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/cc2.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2021-11-18 07:43:42', '2021-11-18 07:43:42', '', 'cc1', '', 'inherit', 'open', 'closed', '', 'cc1', '', '', '2021-11-18 07:43:42', '2021-11-18 07:43:42', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/cc1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2021-11-18 07:43:42', '2021-11-18 07:43:42', '', 'blog-4-836x340', '', 'inherit', 'open', 'closed', '', 'blog-4-836x340', '', '', '2021-11-18 07:43:42', '2021-11-18 07:43:42', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/blog-4-836x340-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2021-11-18 07:43:42', '2021-11-18 07:43:42', '', 'blog-4-150x150', '', 'inherit', 'open', 'closed', '', 'blog-4-150x150', '', '', '2021-11-18 07:43:42', '2021-11-18 07:43:42', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/blog-4-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2021-11-18 07:43:42', '2021-11-18 07:43:42', '', 'blog-3-836x340', '', 'inherit', 'open', 'closed', '', 'blog-3-836x340', '', '', '2021-11-18 07:43:42', '2021-11-18 07:43:42', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/blog-3-836x340-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2021-11-18 07:43:43', '2021-11-18 07:43:43', '', 'blog-3-150x150', '', 'inherit', 'open', 'closed', '', 'blog-3-150x150', '', '', '2021-11-18 07:43:43', '2021-11-18 07:43:43', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/blog-3-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2021-11-18 07:43:43', '2021-11-18 07:43:43', '', 'blog-2-836x340', '', 'inherit', 'open', 'closed', '', 'blog-2-836x340', '', '', '2021-11-18 07:43:43', '2021-11-18 07:43:43', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/blog-2-836x340-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2021-11-18 07:43:43', '2021-11-18 07:43:43', '', 'blog-2-150x150', '', 'inherit', 'open', 'closed', '', 'blog-2-150x150', '', '', '2021-11-18 07:43:43', '2021-11-18 07:43:43', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/blog-2-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2021-11-18 07:43:43', '2021-11-18 07:43:43', '', 'blog-1-836x340', '', 'inherit', 'open', 'closed', '', 'blog-1-836x340', '', '', '2021-11-18 07:43:43', '2021-11-18 07:43:43', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/blog-1-836x340-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2021-11-18 07:43:44', '2021-11-18 07:43:44', '', 'blog-1-150x150', '', 'inherit', 'open', 'closed', '', 'blog-1-150x150', '', '', '2021-11-18 07:43:44', '2021-11-18 07:43:44', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/blog-1-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2021-11-18 07:43:44', '2021-11-18 07:43:44', '', 'blog3-836x340', '', 'inherit', 'open', 'closed', '', 'blog3-836x340', '', '', '2021-11-18 07:43:44', '2021-11-18 07:43:44', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/blog3-836x340-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2021-11-18 07:43:45', '2021-11-18 07:43:45', '', 'blog2-836x340', '', 'inherit', 'open', 'closed', '', 'blog2-836x340', '', '', '2021-11-18 07:43:45', '2021-11-18 07:43:45', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/blog2-836x340-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2021-11-18 07:43:45', '2021-11-18 07:43:45', '', 'blog2-150x150', '', 'inherit', 'open', 'closed', '', 'blog2-150x150', '', '', '2021-11-18 07:43:45', '2021-11-18 07:43:45', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/blog2-150x150-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2021-11-18 07:43:45', '2021-11-18 07:43:45', '', 'blog1-836x340', '', 'inherit', 'open', 'closed', '', 'blog1-836x340', '', '', '2021-11-18 07:43:45', '2021-11-18 07:43:45', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/blog1-836x340-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2021-11-18 07:43:46', '2021-11-18 07:43:46', '', 'b3', '', 'inherit', 'open', 'closed', '', 'b3', '', '', '2021-11-18 07:43:46', '2021-11-18 07:43:46', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/b3.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2021-11-18 07:43:46', '2021-11-18 07:43:46', '', 'b2', '', 'inherit', 'open', 'closed', '', 'b2', '', '', '2021-11-18 07:43:46', '2021-11-18 07:43:46', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/b2.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2021-11-18 07:43:46', '2021-11-18 07:43:46', '', 'b2', '', 'inherit', 'open', 'closed', '', 'b2-2', '', '', '2021-11-18 07:43:46', '2021-11-18 07:43:46', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/b2.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2021-11-18 07:43:46', '2021-11-18 07:43:46', '', 'b1', '', 'inherit', 'open', 'closed', '', 'b1', '', '', '2021-11-18 07:43:46', '2021-11-18 07:43:46', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/b1.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2021-11-18 07:43:47', '2021-11-18 07:43:47', '', 'andre', '', 'inherit', 'open', 'closed', '', 'andre', '', '', '2021-11-18 07:43:47', '2021-11-18 07:43:47', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/andre.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2021-11-18 07:43:47', '2021-11-18 07:43:47', '', '66f865ee03bc019d2f06af6ec0c434ce', '', 'inherit', 'open', 'closed', '', '66f865ee03bc019d2f06af6ec0c434ce', '', '', '2021-11-18 07:43:47', '2021-11-18 07:43:47', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/66f865ee03bc019d2f06af6ec0c434ce.jpeg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2021-11-18 07:43:48', '2021-11-18 07:43:48', '', '4fdb3b572ac7dd8d7a58ba70317efa14', '', 'inherit', 'open', 'closed', '', '4fdb3b572ac7dd8d7a58ba70317efa14', '', '', '2021-11-18 07:43:48', '2021-11-18 07:43:48', '', 0, 'http://localhost/omizzy-blog/wp-content/uploads/2021/11/4fdb3b572ac7dd8d7a58ba70317efa14.jpeg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2021-11-18 07:53:35', '2021-11-18 07:53:35', '', 'about us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2021-11-18 07:53:35', '2021-11-18 07:53:35', '', 0, 'http://localhost/omizzy-blog/?page_id=70', 0, 'page', '', 0),
(71, 1, '2021-11-18 07:53:35', '2021-11-18 07:53:35', '', 'about us', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2021-11-18 07:53:35', '2021-11-18 07:53:35', '', 70, 'http://localhost/omizzy-blog/?p=71', 0, 'revision', '', 0),
(72, 1, '2021-11-22 07:42:15', '2021-11-22 07:42:15', '', 'Blogs', '', 'trash', 'closed', 'closed', '', 'blogs__trashed', '', '', '2021-11-22 09:18:41', '2021-11-22 09:18:41', '', 0, 'http://localhost/omizzy-blog/?page_id=72', 0, 'page', '', 0),
(73, 1, '2021-11-22 07:42:15', '2021-11-22 07:42:15', '', 'Blogs', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-11-22 07:42:15', '2021-11-22 07:42:15', '', 72, 'http://localhost/omizzy-blog/?p=73', 0, 'revision', '', 0),
(76, 1, '2021-11-22 09:18:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-11-22 09:18:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/omizzy-blog/?page_id=76', 0, 'page', '', 0),
(77, 1, '2021-11-22 09:27:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-11-22 09:27:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/omizzy-blog/?page_id=77', 0, 'page', '', 0),
(78, 1, '2021-11-22 09:32:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-11-22 09:32:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/omizzy-blog/?page_id=78', 0, 'page', '', 0),
(79, 1, '2021-11-22 09:37:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-11-22 09:37:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/omizzy-blog/?page_id=79', 0, 'page', '', 0),
(80, 1, '2021-11-22 09:38:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-11-22 09:38:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/omizzy-blog/?page_id=80', 0, 'page', '', 0),
(81, 1, '2021-11-22 09:39:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-11-22 09:39:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/omizzy-blog/?page_id=81', 0, 'page', '', 0),
(82, 1, '2021-11-22 09:57:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-11-22 09:57:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/omizzy-blog/?page_id=82', 0, 'page', '', 0),
(83, 1, '2021-11-22 10:13:12', '2021-11-22 10:13:12', '', 'Blogs', '', 'trash', 'closed', 'closed', '', 'blogs__trashed-2', '', '', '2021-11-22 11:14:13', '2021-11-22 11:14:13', '', 0, 'http://localhost/omizzy-blog/?page_id=83', 0, 'page', '', 0),
(84, 1, '2021-11-22 10:13:12', '2021-11-22 10:13:12', '', 'Blogs', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2021-11-22 10:13:12', '2021-11-22 10:13:12', '', 83, 'http://localhost/omizzy-blog/?p=84', 0, 'revision', '', 0),
(85, 1, '2021-11-22 11:14:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-11-22 11:14:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/omizzy-blog/?page_id=85', 0, 'page', '', 0),
(86, 1, '2021-11-22 11:16:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-11-22 11:16:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/omizzy-blog/?page_id=86', 0, 'page', '', 0),
(87, 1, '2021-11-22 11:16:24', '2021-11-22 11:16:24', '', 'Blogs', '', 'publish', 'closed', 'closed', '', 'blogs', '', '', '2021-11-22 11:22:23', '2021-11-22 11:22:23', '', 0, 'http://localhost/omizzy-blog/?page_id=87', 0, 'page', '', 0),
(88, 1, '2021-11-22 11:16:24', '2021-11-22 11:16:24', '', 'Blogs', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2021-11-22 11:16:24', '2021-11-22 11:16:24', '', 87, 'http://localhost/omizzy-blog/?p=88', 0, 'revision', '', 0),
(89, 1, '2021-11-22 11:18:49', '2021-11-22 11:18:49', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2021-11-22 11:18:49', '2021-11-22 11:18:49', '', 0, 'http://localhost/omizzy-blog/?p=89', 3, 'nav_menu_item', '', 0),
(90, 1, '2021-11-22 12:03:12', '2021-11-22 12:03:12', 'Once you’ve output all your posts and navigation, you can use <code>wp_reset_query()</code> to reset the <code>query_posts()</code> results that you created earlier. In lamens terms, you’ve now reset the query to what it was before you called <code>query_posts()</code>.', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2021-11-23 07:24:25', '2021-11-23 07:24:25', '', 0, 'http://localhost/omizzy-blog/?p=90', 0, 'post', '', 0),
(91, 1, '2021-11-22 12:03:12', '2021-11-22 12:03:12', 'Once you’ve output all your posts and navigation, you can use <code>wp_reset_query()</code> to reset the <code>query_posts()</code> results that you created earlier. In lamens terms, you’ve now reset the query to what it was before you called <code>query_posts()</code>.', 'test', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2021-11-22 12:03:12', '2021-11-22 12:03:12', '', 90, 'http://localhost/omizzy-blog/?p=91', 0, 'revision', '', 0),
(92, 1, '2021-11-23 07:23:59', '2021-11-23 07:23:59', 'Once you’ve output all your posts and navigation, you can use <code>wp_reset_query()</code> to reset the <code>query_posts()</code> results that you created earlier. In lamens terms, you’ve now reset the query to what it was before you called <code>query_posts()</code>.', 'test', '', 'inherit', 'closed', 'closed', '', '90-autosave-v1', '', '', '2021-11-23 07:23:59', '2021-11-23 07:23:59', '', 90, 'http://localhost/omizzy-blog/?p=92', 0, 'revision', '', 0),
(93, 1, '2021-11-23 09:42:08', '2021-11-23 09:42:08', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'test1', '', 'publish', 'open', 'open', '', 'test1', '', '', '2021-11-23 09:42:08', '2021-11-23 09:42:08', '', 0, 'http://localhost/omizzy-blog/?p=93', 0, 'post', '', 0),
(94, 1, '2021-11-23 09:42:08', '2021-11-23 09:42:08', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'test1', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2021-11-23 09:42:08', '2021-11-23 09:42:08', '', 93, 'http://localhost/omizzy-blog/?p=94', 0, 'revision', '', 0),
(95, 1, '2021-11-23 10:45:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-11-23 10:45:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/omizzy-blog/?p=95', 0, 'post', '', 0),
(96, 1, '2021-11-23 11:35:51', '2021-11-23 11:35:51', 'After you’ve added this function, you simply need to add it to your actual template. To do so, go to the template where you want to add pagination, typically your index.php file, and scroll down to just before the end of the loop. This is after the “endwhile” statement but before any “else” statements <a href="https://www.elegantthemes.com/blog/tips-tricks/the-wordpress-loop-explained-for-beginners">within the loop</a>. Then, add this single line:', 'twst2', '', 'publish', 'open', 'open', '', 'twst2', '', '', '2021-11-24 09:31:36', '2021-11-24 09:31:36', '', 0, 'http://localhost/omizzy-blog/?p=96', 0, 'post', '', 0),
(97, 1, '2021-11-23 11:35:51', '2021-11-23 11:35:51', 'After you’ve added this function, you simply need to add it to your actual template. To do so, go to the template where you want to add pagination, typically your index.php file, and scroll down to just before the end of the loop. This is after the “endwhile” statement but before any “else” statements <a href="https://www.elegantthemes.com/blog/tips-tricks/the-wordpress-loop-explained-for-beginners">within the loop</a>. Then, add this single line:', 'twst2', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2021-11-23 11:35:51', '2021-11-23 11:35:51', '', 96, 'http://localhost/omizzy-blog/?p=97', 0, 'revision', '', 0),
(98, 1, '2021-11-24 09:31:20', '2021-11-24 09:31:20', 'After you’ve added this function, you simply need to add it to your actual template. To do so, go to the template where you want to add pagination, typically your index.php file, and scroll down to just before the end of the loop. This is after the “endwhile” statement but before any “else” statements <a href="https://www.elegantthemes.com/blog/tips-tricks/the-wordpress-loop-explained-for-beginners">within the loop</a>. Then, add this single line:', 'twst2', '', 'inherit', 'closed', 'closed', '', '96-autosave-v1', '', '', '2021-11-24 09:31:20', '2021-11-24 09:31:20', '', 96, 'http://localhost/omizzy-blog/?p=98', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `owpz_termmeta`
--

CREATE TABLE `owpz_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `owpz_terms`
--

CREATE TABLE `owpz_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `owpz_terms`
--

INSERT INTO `owpz_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main menu', 'main-menu', 0),
(3, 'test', 'test', 0),
(4, 'yest', 'yest', 0),
(5, 'ttt', 'ttt', 0),
(6, 'egdsd', 'egdsd', 0),
(7, 'dddd', 'dddd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `owpz_term_relationships`
--

CREATE TABLE `owpz_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `owpz_term_relationships`
--

INSERT INTO `owpz_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(6, 2, 0),
(89, 2, 0),
(90, 1, 0),
(93, 1, 0),
(96, 1, 0),
(96, 3, 0),
(96, 4, 0),
(96, 5, 0),
(96, 6, 0),
(96, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `owpz_term_taxonomy`
--

CREATE TABLE `owpz_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `owpz_term_taxonomy`
--

INSERT INTO `owpz_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'post_tag', '', 0, 1),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `owpz_usermeta`
--

CREATE TABLE `owpz_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `owpz_usermeta`
--

INSERT INTO `owpz_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'omizzy_admin'),
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
(12, 1, 'owpz_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'owpz_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"95b3fcac7adb61e6a096bd13b34d15b7134c26af9caeb52e8661d16c328f77fe";a:4:{s:10:"expiration";i:1637219821;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:86.0) Gecko/20100101 Firefox/86.0";s:5:"login";i:1637047021;}s:64:"355ff782719330bda4cb44f781537db85bddbd96986bed94882b78890b5758a6";a:4:{s:10:"expiration";i:1638424007;s:2:"ip";s:3:"::1";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36";s:5:"login";i:1637214407;}}'),
(17, 1, 'owpz_dashboard_quick_press_last_post_id', '95'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:11:"css-classes";i:3;s:3:"xfn";i:4;s:11:"description";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'owpz_user-settings', 'libraryContent=browse'),
(23, 1, 'owpz_user-settings-time', '1637652261');

-- --------------------------------------------------------

--
-- Table structure for table `owpz_users`
--

CREATE TABLE `owpz_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `owpz_users`
--

INSERT INTO `owpz_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'omizzy_admin', '$P$BPn7o6A/viz4SYX19VsLmpwV3AFqK2/', 'omizzy_admin', 'dottech28@gmail.com', 'http://localhost/omizzy-blog', '2021-11-16 07:16:50', '', 0, 'omizzy_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `owpz_commentmeta`
--
ALTER TABLE `owpz_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `owpz_comments`
--
ALTER TABLE `owpz_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `owpz_links`
--
ALTER TABLE `owpz_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `owpz_options`
--
ALTER TABLE `owpz_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `owpz_postmeta`
--
ALTER TABLE `owpz_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `owpz_posts`
--
ALTER TABLE `owpz_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `owpz_termmeta`
--
ALTER TABLE `owpz_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `owpz_terms`
--
ALTER TABLE `owpz_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `owpz_term_relationships`
--
ALTER TABLE `owpz_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `owpz_term_taxonomy`
--
ALTER TABLE `owpz_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `owpz_usermeta`
--
ALTER TABLE `owpz_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `owpz_users`
--
ALTER TABLE `owpz_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `owpz_commentmeta`
--
ALTER TABLE `owpz_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `owpz_comments`
--
ALTER TABLE `owpz_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `owpz_links`
--
ALTER TABLE `owpz_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `owpz_options`
--
ALTER TABLE `owpz_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;
--
-- AUTO_INCREMENT for table `owpz_postmeta`
--
ALTER TABLE `owpz_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `owpz_posts`
--
ALTER TABLE `owpz_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `owpz_termmeta`
--
ALTER TABLE `owpz_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `owpz_terms`
--
ALTER TABLE `owpz_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `owpz_term_taxonomy`
--
ALTER TABLE `owpz_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `owpz_usermeta`
--
ALTER TABLE `owpz_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `owpz_users`
--
ALTER TABLE `owpz_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
