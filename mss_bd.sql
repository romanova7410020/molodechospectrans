-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 06 2026 г., 10:39
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mss_bd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Комментатор WordPress', 'wapuu@wordpress.example', 'https://ru.wordpress.org/', '', '2026-02-01 10:40:02', '2026-02-01 07:40:02', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1770370801;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1770370803;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1770406824;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1770410401;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1770412201;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1770450002;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1770450024;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1770450029;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1770542118;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1770570560;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1770622803;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/mss', 'on'),
(3, 'home', 'http://localhost/mss', 'on'),
(4, 'blogname', '', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'romanova7410020@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'd.m.Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'd.m.Y H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '', 'on'),
(30, 'rewrite_rules', '', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:53:\"simple-custom-post-order/simple-custom-post-order.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '3', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', 'a:2:{i:0;s:51:\"C:\\xampp\\htdocs\\mss/wp-content/themes/mss/style.css\";i:1;s:0:\"\";}', 'off'),
(41, 'template', 'mss', 'on'),
(42, 'stylesheet', 'mss', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60717', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:1:{s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:18:\"scporder_uninstall\";}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '10', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1785483601', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'wp_notes_notify', '1', 'on'),
(102, 'initial_db_version', '60717', 'on'),
(103, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(104, 'fresh_site', '0', 'off'),
(105, 'WPLANG', 'ru_RU', 'auto'),
(106, 'user_count', '1', 'off'),
(107, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(123, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.9.1\";s:5:\"files\";a:584:{i:0;s:31:\"accordion-heading/style-rtl.css\";i:1;s:35:\"accordion-heading/style-rtl.min.css\";i:2;s:27:\"accordion-heading/style.css\";i:3;s:31:\"accordion-heading/style.min.css\";i:4;s:28:\"accordion-item/style-rtl.css\";i:5;s:32:\"accordion-item/style-rtl.min.css\";i:6;s:24:\"accordion-item/style.css\";i:7;s:28:\"accordion-item/style.min.css\";i:8;s:29:\"accordion-panel/style-rtl.css\";i:9;s:33:\"accordion-panel/style-rtl.min.css\";i:10;s:25:\"accordion-panel/style.css\";i:11;s:29:\"accordion-panel/style.min.css\";i:12;s:23:\"accordion/style-rtl.css\";i:13;s:27:\"accordion/style-rtl.min.css\";i:14;s:19:\"accordion/style.css\";i:15;s:23:\"accordion/style.min.css\";i:16;s:23:\"archives/editor-rtl.css\";i:17;s:27:\"archives/editor-rtl.min.css\";i:18;s:19:\"archives/editor.css\";i:19;s:23:\"archives/editor.min.css\";i:20;s:22:\"archives/style-rtl.css\";i:21;s:26:\"archives/style-rtl.min.css\";i:22;s:18:\"archives/style.css\";i:23;s:22:\"archives/style.min.css\";i:24;s:20:\"audio/editor-rtl.css\";i:25;s:24:\"audio/editor-rtl.min.css\";i:26;s:16:\"audio/editor.css\";i:27;s:20:\"audio/editor.min.css\";i:28;s:19:\"audio/style-rtl.css\";i:29;s:23:\"audio/style-rtl.min.css\";i:30;s:15:\"audio/style.css\";i:31;s:19:\"audio/style.min.css\";i:32;s:19:\"audio/theme-rtl.css\";i:33;s:23:\"audio/theme-rtl.min.css\";i:34;s:15:\"audio/theme.css\";i:35;s:19:\"audio/theme.min.css\";i:36;s:21:\"avatar/editor-rtl.css\";i:37;s:25:\"avatar/editor-rtl.min.css\";i:38;s:17:\"avatar/editor.css\";i:39;s:21:\"avatar/editor.min.css\";i:40;s:20:\"avatar/style-rtl.css\";i:41;s:24:\"avatar/style-rtl.min.css\";i:42;s:16:\"avatar/style.css\";i:43;s:20:\"avatar/style.min.css\";i:44;s:21:\"button/editor-rtl.css\";i:45;s:25:\"button/editor-rtl.min.css\";i:46;s:17:\"button/editor.css\";i:47;s:21:\"button/editor.min.css\";i:48;s:20:\"button/style-rtl.css\";i:49;s:24:\"button/style-rtl.min.css\";i:50;s:16:\"button/style.css\";i:51;s:20:\"button/style.min.css\";i:52;s:22:\"buttons/editor-rtl.css\";i:53;s:26:\"buttons/editor-rtl.min.css\";i:54;s:18:\"buttons/editor.css\";i:55;s:22:\"buttons/editor.min.css\";i:56;s:21:\"buttons/style-rtl.css\";i:57;s:25:\"buttons/style-rtl.min.css\";i:58;s:17:\"buttons/style.css\";i:59;s:21:\"buttons/style.min.css\";i:60;s:22:\"calendar/style-rtl.css\";i:61;s:26:\"calendar/style-rtl.min.css\";i:62;s:18:\"calendar/style.css\";i:63;s:22:\"calendar/style.min.css\";i:64;s:25:\"categories/editor-rtl.css\";i:65;s:29:\"categories/editor-rtl.min.css\";i:66;s:21:\"categories/editor.css\";i:67;s:25:\"categories/editor.min.css\";i:68;s:24:\"categories/style-rtl.css\";i:69;s:28:\"categories/style-rtl.min.css\";i:70;s:20:\"categories/style.css\";i:71;s:24:\"categories/style.min.css\";i:72;s:19:\"code/editor-rtl.css\";i:73;s:23:\"code/editor-rtl.min.css\";i:74;s:15:\"code/editor.css\";i:75;s:19:\"code/editor.min.css\";i:76;s:18:\"code/style-rtl.css\";i:77;s:22:\"code/style-rtl.min.css\";i:78;s:14:\"code/style.css\";i:79;s:18:\"code/style.min.css\";i:80;s:18:\"code/theme-rtl.css\";i:81;s:22:\"code/theme-rtl.min.css\";i:82;s:14:\"code/theme.css\";i:83;s:18:\"code/theme.min.css\";i:84;s:22:\"columns/editor-rtl.css\";i:85;s:26:\"columns/editor-rtl.min.css\";i:86;s:18:\"columns/editor.css\";i:87;s:22:\"columns/editor.min.css\";i:88;s:21:\"columns/style-rtl.css\";i:89;s:25:\"columns/style-rtl.min.css\";i:90;s:17:\"columns/style.css\";i:91;s:21:\"columns/style.min.css\";i:92;s:33:\"comment-author-name/style-rtl.css\";i:93;s:37:\"comment-author-name/style-rtl.min.css\";i:94;s:29:\"comment-author-name/style.css\";i:95;s:33:\"comment-author-name/style.min.css\";i:96;s:29:\"comment-content/style-rtl.css\";i:97;s:33:\"comment-content/style-rtl.min.css\";i:98;s:25:\"comment-content/style.css\";i:99;s:29:\"comment-content/style.min.css\";i:100;s:26:\"comment-date/style-rtl.css\";i:101;s:30:\"comment-date/style-rtl.min.css\";i:102;s:22:\"comment-date/style.css\";i:103;s:26:\"comment-date/style.min.css\";i:104;s:31:\"comment-edit-link/style-rtl.css\";i:105;s:35:\"comment-edit-link/style-rtl.min.css\";i:106;s:27:\"comment-edit-link/style.css\";i:107;s:31:\"comment-edit-link/style.min.css\";i:108;s:32:\"comment-reply-link/style-rtl.css\";i:109;s:36:\"comment-reply-link/style-rtl.min.css\";i:110;s:28:\"comment-reply-link/style.css\";i:111;s:32:\"comment-reply-link/style.min.css\";i:112;s:30:\"comment-template/style-rtl.css\";i:113;s:34:\"comment-template/style-rtl.min.css\";i:114;s:26:\"comment-template/style.css\";i:115;s:30:\"comment-template/style.min.css\";i:116;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:117;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:118;s:38:\"comments-pagination-numbers/editor.css\";i:119;s:42:\"comments-pagination-numbers/editor.min.css\";i:120;s:34:\"comments-pagination/editor-rtl.css\";i:121;s:38:\"comments-pagination/editor-rtl.min.css\";i:122;s:30:\"comments-pagination/editor.css\";i:123;s:34:\"comments-pagination/editor.min.css\";i:124;s:33:\"comments-pagination/style-rtl.css\";i:125;s:37:\"comments-pagination/style-rtl.min.css\";i:126;s:29:\"comments-pagination/style.css\";i:127;s:33:\"comments-pagination/style.min.css\";i:128;s:29:\"comments-title/editor-rtl.css\";i:129;s:33:\"comments-title/editor-rtl.min.css\";i:130;s:25:\"comments-title/editor.css\";i:131;s:29:\"comments-title/editor.min.css\";i:132;s:23:\"comments/editor-rtl.css\";i:133;s:27:\"comments/editor-rtl.min.css\";i:134;s:19:\"comments/editor.css\";i:135;s:23:\"comments/editor.min.css\";i:136;s:22:\"comments/style-rtl.css\";i:137;s:26:\"comments/style-rtl.min.css\";i:138;s:18:\"comments/style.css\";i:139;s:22:\"comments/style.min.css\";i:140;s:20:\"cover/editor-rtl.css\";i:141;s:24:\"cover/editor-rtl.min.css\";i:142;s:16:\"cover/editor.css\";i:143;s:20:\"cover/editor.min.css\";i:144;s:19:\"cover/style-rtl.css\";i:145;s:23:\"cover/style-rtl.min.css\";i:146;s:15:\"cover/style.css\";i:147;s:19:\"cover/style.min.css\";i:148;s:22:\"details/editor-rtl.css\";i:149;s:26:\"details/editor-rtl.min.css\";i:150;s:18:\"details/editor.css\";i:151;s:22:\"details/editor.min.css\";i:152;s:21:\"details/style-rtl.css\";i:153;s:25:\"details/style-rtl.min.css\";i:154;s:17:\"details/style.css\";i:155;s:21:\"details/style.min.css\";i:156;s:20:\"embed/editor-rtl.css\";i:157;s:24:\"embed/editor-rtl.min.css\";i:158;s:16:\"embed/editor.css\";i:159;s:20:\"embed/editor.min.css\";i:160;s:19:\"embed/style-rtl.css\";i:161;s:23:\"embed/style-rtl.min.css\";i:162;s:15:\"embed/style.css\";i:163;s:19:\"embed/style.min.css\";i:164;s:19:\"embed/theme-rtl.css\";i:165;s:23:\"embed/theme-rtl.min.css\";i:166;s:15:\"embed/theme.css\";i:167;s:19:\"embed/theme.min.css\";i:168;s:19:\"file/editor-rtl.css\";i:169;s:23:\"file/editor-rtl.min.css\";i:170;s:15:\"file/editor.css\";i:171;s:19:\"file/editor.min.css\";i:172;s:18:\"file/style-rtl.css\";i:173;s:22:\"file/style-rtl.min.css\";i:174;s:14:\"file/style.css\";i:175;s:18:\"file/style.min.css\";i:176;s:23:\"footnotes/style-rtl.css\";i:177;s:27:\"footnotes/style-rtl.min.css\";i:178;s:19:\"footnotes/style.css\";i:179;s:23:\"footnotes/style.min.css\";i:180;s:23:\"freeform/editor-rtl.css\";i:181;s:27:\"freeform/editor-rtl.min.css\";i:182;s:19:\"freeform/editor.css\";i:183;s:23:\"freeform/editor.min.css\";i:184;s:22:\"gallery/editor-rtl.css\";i:185;s:26:\"gallery/editor-rtl.min.css\";i:186;s:18:\"gallery/editor.css\";i:187;s:22:\"gallery/editor.min.css\";i:188;s:21:\"gallery/style-rtl.css\";i:189;s:25:\"gallery/style-rtl.min.css\";i:190;s:17:\"gallery/style.css\";i:191;s:21:\"gallery/style.min.css\";i:192;s:21:\"gallery/theme-rtl.css\";i:193;s:25:\"gallery/theme-rtl.min.css\";i:194;s:17:\"gallery/theme.css\";i:195;s:21:\"gallery/theme.min.css\";i:196;s:20:\"group/editor-rtl.css\";i:197;s:24:\"group/editor-rtl.min.css\";i:198;s:16:\"group/editor.css\";i:199;s:20:\"group/editor.min.css\";i:200;s:19:\"group/style-rtl.css\";i:201;s:23:\"group/style-rtl.min.css\";i:202;s:15:\"group/style.css\";i:203;s:19:\"group/style.min.css\";i:204;s:19:\"group/theme-rtl.css\";i:205;s:23:\"group/theme-rtl.min.css\";i:206;s:15:\"group/theme.css\";i:207;s:19:\"group/theme.min.css\";i:208;s:21:\"heading/style-rtl.css\";i:209;s:25:\"heading/style-rtl.min.css\";i:210;s:17:\"heading/style.css\";i:211;s:21:\"heading/style.min.css\";i:212;s:19:\"html/editor-rtl.css\";i:213;s:23:\"html/editor-rtl.min.css\";i:214;s:15:\"html/editor.css\";i:215;s:19:\"html/editor.min.css\";i:216;s:20:\"image/editor-rtl.css\";i:217;s:24:\"image/editor-rtl.min.css\";i:218;s:16:\"image/editor.css\";i:219;s:20:\"image/editor.min.css\";i:220;s:19:\"image/style-rtl.css\";i:221;s:23:\"image/style-rtl.min.css\";i:222;s:15:\"image/style.css\";i:223;s:19:\"image/style.min.css\";i:224;s:19:\"image/theme-rtl.css\";i:225;s:23:\"image/theme-rtl.min.css\";i:226;s:15:\"image/theme.css\";i:227;s:19:\"image/theme.min.css\";i:228;s:29:\"latest-comments/style-rtl.css\";i:229;s:33:\"latest-comments/style-rtl.min.css\";i:230;s:25:\"latest-comments/style.css\";i:231;s:29:\"latest-comments/style.min.css\";i:232;s:27:\"latest-posts/editor-rtl.css\";i:233;s:31:\"latest-posts/editor-rtl.min.css\";i:234;s:23:\"latest-posts/editor.css\";i:235;s:27:\"latest-posts/editor.min.css\";i:236;s:26:\"latest-posts/style-rtl.css\";i:237;s:30:\"latest-posts/style-rtl.min.css\";i:238;s:22:\"latest-posts/style.css\";i:239;s:26:\"latest-posts/style.min.css\";i:240;s:18:\"list/style-rtl.css\";i:241;s:22:\"list/style-rtl.min.css\";i:242;s:14:\"list/style.css\";i:243;s:18:\"list/style.min.css\";i:244;s:22:\"loginout/style-rtl.css\";i:245;s:26:\"loginout/style-rtl.min.css\";i:246;s:18:\"loginout/style.css\";i:247;s:22:\"loginout/style.min.css\";i:248;s:19:\"math/editor-rtl.css\";i:249;s:23:\"math/editor-rtl.min.css\";i:250;s:15:\"math/editor.css\";i:251;s:19:\"math/editor.min.css\";i:252;s:18:\"math/style-rtl.css\";i:253;s:22:\"math/style-rtl.min.css\";i:254;s:14:\"math/style.css\";i:255;s:18:\"math/style.min.css\";i:256;s:25:\"media-text/editor-rtl.css\";i:257;s:29:\"media-text/editor-rtl.min.css\";i:258;s:21:\"media-text/editor.css\";i:259;s:25:\"media-text/editor.min.css\";i:260;s:24:\"media-text/style-rtl.css\";i:261;s:28:\"media-text/style-rtl.min.css\";i:262;s:20:\"media-text/style.css\";i:263;s:24:\"media-text/style.min.css\";i:264;s:19:\"more/editor-rtl.css\";i:265;s:23:\"more/editor-rtl.min.css\";i:266;s:15:\"more/editor.css\";i:267;s:19:\"more/editor.min.css\";i:268;s:30:\"navigation-link/editor-rtl.css\";i:269;s:34:\"navigation-link/editor-rtl.min.css\";i:270;s:26:\"navigation-link/editor.css\";i:271;s:30:\"navigation-link/editor.min.css\";i:272;s:29:\"navigation-link/style-rtl.css\";i:273;s:33:\"navigation-link/style-rtl.min.css\";i:274;s:25:\"navigation-link/style.css\";i:275;s:29:\"navigation-link/style.min.css\";i:276;s:33:\"navigation-submenu/editor-rtl.css\";i:277;s:37:\"navigation-submenu/editor-rtl.min.css\";i:278;s:29:\"navigation-submenu/editor.css\";i:279;s:33:\"navigation-submenu/editor.min.css\";i:280;s:25:\"navigation/editor-rtl.css\";i:281;s:29:\"navigation/editor-rtl.min.css\";i:282;s:21:\"navigation/editor.css\";i:283;s:25:\"navigation/editor.min.css\";i:284;s:24:\"navigation/style-rtl.css\";i:285;s:28:\"navigation/style-rtl.min.css\";i:286;s:20:\"navigation/style.css\";i:287;s:24:\"navigation/style.min.css\";i:288;s:23:\"nextpage/editor-rtl.css\";i:289;s:27:\"nextpage/editor-rtl.min.css\";i:290;s:19:\"nextpage/editor.css\";i:291;s:23:\"nextpage/editor.min.css\";i:292;s:24:\"page-list/editor-rtl.css\";i:293;s:28:\"page-list/editor-rtl.min.css\";i:294;s:20:\"page-list/editor.css\";i:295;s:24:\"page-list/editor.min.css\";i:296;s:23:\"page-list/style-rtl.css\";i:297;s:27:\"page-list/style-rtl.min.css\";i:298;s:19:\"page-list/style.css\";i:299;s:23:\"page-list/style.min.css\";i:300;s:24:\"paragraph/editor-rtl.css\";i:301;s:28:\"paragraph/editor-rtl.min.css\";i:302;s:20:\"paragraph/editor.css\";i:303;s:24:\"paragraph/editor.min.css\";i:304;s:23:\"paragraph/style-rtl.css\";i:305;s:27:\"paragraph/style-rtl.min.css\";i:306;s:19:\"paragraph/style.css\";i:307;s:23:\"paragraph/style.min.css\";i:308;s:35:\"post-author-biography/style-rtl.css\";i:309;s:39:\"post-author-biography/style-rtl.min.css\";i:310;s:31:\"post-author-biography/style.css\";i:311;s:35:\"post-author-biography/style.min.css\";i:312;s:30:\"post-author-name/style-rtl.css\";i:313;s:34:\"post-author-name/style-rtl.min.css\";i:314;s:26:\"post-author-name/style.css\";i:315;s:30:\"post-author-name/style.min.css\";i:316;s:25:\"post-author/style-rtl.css\";i:317;s:29:\"post-author/style-rtl.min.css\";i:318;s:21:\"post-author/style.css\";i:319;s:25:\"post-author/style.min.css\";i:320;s:33:\"post-comments-count/style-rtl.css\";i:321;s:37:\"post-comments-count/style-rtl.min.css\";i:322;s:29:\"post-comments-count/style.css\";i:323;s:33:\"post-comments-count/style.min.css\";i:324;s:33:\"post-comments-form/editor-rtl.css\";i:325;s:37:\"post-comments-form/editor-rtl.min.css\";i:326;s:29:\"post-comments-form/editor.css\";i:327;s:33:\"post-comments-form/editor.min.css\";i:328;s:32:\"post-comments-form/style-rtl.css\";i:329;s:36:\"post-comments-form/style-rtl.min.css\";i:330;s:28:\"post-comments-form/style.css\";i:331;s:32:\"post-comments-form/style.min.css\";i:332;s:32:\"post-comments-link/style-rtl.css\";i:333;s:36:\"post-comments-link/style-rtl.min.css\";i:334;s:28:\"post-comments-link/style.css\";i:335;s:32:\"post-comments-link/style.min.css\";i:336;s:26:\"post-content/style-rtl.css\";i:337;s:30:\"post-content/style-rtl.min.css\";i:338;s:22:\"post-content/style.css\";i:339;s:26:\"post-content/style.min.css\";i:340;s:23:\"post-date/style-rtl.css\";i:341;s:27:\"post-date/style-rtl.min.css\";i:342;s:19:\"post-date/style.css\";i:343;s:23:\"post-date/style.min.css\";i:344;s:27:\"post-excerpt/editor-rtl.css\";i:345;s:31:\"post-excerpt/editor-rtl.min.css\";i:346;s:23:\"post-excerpt/editor.css\";i:347;s:27:\"post-excerpt/editor.min.css\";i:348;s:26:\"post-excerpt/style-rtl.css\";i:349;s:30:\"post-excerpt/style-rtl.min.css\";i:350;s:22:\"post-excerpt/style.css\";i:351;s:26:\"post-excerpt/style.min.css\";i:352;s:34:\"post-featured-image/editor-rtl.css\";i:353;s:38:\"post-featured-image/editor-rtl.min.css\";i:354;s:30:\"post-featured-image/editor.css\";i:355;s:34:\"post-featured-image/editor.min.css\";i:356;s:33:\"post-featured-image/style-rtl.css\";i:357;s:37:\"post-featured-image/style-rtl.min.css\";i:358;s:29:\"post-featured-image/style.css\";i:359;s:33:\"post-featured-image/style.min.css\";i:360;s:34:\"post-navigation-link/style-rtl.css\";i:361;s:38:\"post-navigation-link/style-rtl.min.css\";i:362;s:30:\"post-navigation-link/style.css\";i:363;s:34:\"post-navigation-link/style.min.css\";i:364;s:27:\"post-template/style-rtl.css\";i:365;s:31:\"post-template/style-rtl.min.css\";i:366;s:23:\"post-template/style.css\";i:367;s:27:\"post-template/style.min.css\";i:368;s:24:\"post-terms/style-rtl.css\";i:369;s:28:\"post-terms/style-rtl.min.css\";i:370;s:20:\"post-terms/style.css\";i:371;s:24:\"post-terms/style.min.css\";i:372;s:31:\"post-time-to-read/style-rtl.css\";i:373;s:35:\"post-time-to-read/style-rtl.min.css\";i:374;s:27:\"post-time-to-read/style.css\";i:375;s:31:\"post-time-to-read/style.min.css\";i:376;s:24:\"post-title/style-rtl.css\";i:377;s:28:\"post-title/style-rtl.min.css\";i:378;s:20:\"post-title/style.css\";i:379;s:24:\"post-title/style.min.css\";i:380;s:26:\"preformatted/style-rtl.css\";i:381;s:30:\"preformatted/style-rtl.min.css\";i:382;s:22:\"preformatted/style.css\";i:383;s:26:\"preformatted/style.min.css\";i:384;s:24:\"pullquote/editor-rtl.css\";i:385;s:28:\"pullquote/editor-rtl.min.css\";i:386;s:20:\"pullquote/editor.css\";i:387;s:24:\"pullquote/editor.min.css\";i:388;s:23:\"pullquote/style-rtl.css\";i:389;s:27:\"pullquote/style-rtl.min.css\";i:390;s:19:\"pullquote/style.css\";i:391;s:23:\"pullquote/style.min.css\";i:392;s:23:\"pullquote/theme-rtl.css\";i:393;s:27:\"pullquote/theme-rtl.min.css\";i:394;s:19:\"pullquote/theme.css\";i:395;s:23:\"pullquote/theme.min.css\";i:396;s:39:\"query-pagination-numbers/editor-rtl.css\";i:397;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:398;s:35:\"query-pagination-numbers/editor.css\";i:399;s:39:\"query-pagination-numbers/editor.min.css\";i:400;s:31:\"query-pagination/editor-rtl.css\";i:401;s:35:\"query-pagination/editor-rtl.min.css\";i:402;s:27:\"query-pagination/editor.css\";i:403;s:31:\"query-pagination/editor.min.css\";i:404;s:30:\"query-pagination/style-rtl.css\";i:405;s:34:\"query-pagination/style-rtl.min.css\";i:406;s:26:\"query-pagination/style.css\";i:407;s:30:\"query-pagination/style.min.css\";i:408;s:25:\"query-title/style-rtl.css\";i:409;s:29:\"query-title/style-rtl.min.css\";i:410;s:21:\"query-title/style.css\";i:411;s:25:\"query-title/style.min.css\";i:412;s:25:\"query-total/style-rtl.css\";i:413;s:29:\"query-total/style-rtl.min.css\";i:414;s:21:\"query-total/style.css\";i:415;s:25:\"query-total/style.min.css\";i:416;s:20:\"query/editor-rtl.css\";i:417;s:24:\"query/editor-rtl.min.css\";i:418;s:16:\"query/editor.css\";i:419;s:20:\"query/editor.min.css\";i:420;s:19:\"quote/style-rtl.css\";i:421;s:23:\"quote/style-rtl.min.css\";i:422;s:15:\"quote/style.css\";i:423;s:19:\"quote/style.min.css\";i:424;s:19:\"quote/theme-rtl.css\";i:425;s:23:\"quote/theme-rtl.min.css\";i:426;s:15:\"quote/theme.css\";i:427;s:19:\"quote/theme.min.css\";i:428;s:23:\"read-more/style-rtl.css\";i:429;s:27:\"read-more/style-rtl.min.css\";i:430;s:19:\"read-more/style.css\";i:431;s:23:\"read-more/style.min.css\";i:432;s:18:\"rss/editor-rtl.css\";i:433;s:22:\"rss/editor-rtl.min.css\";i:434;s:14:\"rss/editor.css\";i:435;s:18:\"rss/editor.min.css\";i:436;s:17:\"rss/style-rtl.css\";i:437;s:21:\"rss/style-rtl.min.css\";i:438;s:13:\"rss/style.css\";i:439;s:17:\"rss/style.min.css\";i:440;s:21:\"search/editor-rtl.css\";i:441;s:25:\"search/editor-rtl.min.css\";i:442;s:17:\"search/editor.css\";i:443;s:21:\"search/editor.min.css\";i:444;s:20:\"search/style-rtl.css\";i:445;s:24:\"search/style-rtl.min.css\";i:446;s:16:\"search/style.css\";i:447;s:20:\"search/style.min.css\";i:448;s:20:\"search/theme-rtl.css\";i:449;s:24:\"search/theme-rtl.min.css\";i:450;s:16:\"search/theme.css\";i:451;s:20:\"search/theme.min.css\";i:452;s:24:\"separator/editor-rtl.css\";i:453;s:28:\"separator/editor-rtl.min.css\";i:454;s:20:\"separator/editor.css\";i:455;s:24:\"separator/editor.min.css\";i:456;s:23:\"separator/style-rtl.css\";i:457;s:27:\"separator/style-rtl.min.css\";i:458;s:19:\"separator/style.css\";i:459;s:23:\"separator/style.min.css\";i:460;s:23:\"separator/theme-rtl.css\";i:461;s:27:\"separator/theme-rtl.min.css\";i:462;s:19:\"separator/theme.css\";i:463;s:23:\"separator/theme.min.css\";i:464;s:24:\"shortcode/editor-rtl.css\";i:465;s:28:\"shortcode/editor-rtl.min.css\";i:466;s:20:\"shortcode/editor.css\";i:467;s:24:\"shortcode/editor.min.css\";i:468;s:24:\"site-logo/editor-rtl.css\";i:469;s:28:\"site-logo/editor-rtl.min.css\";i:470;s:20:\"site-logo/editor.css\";i:471;s:24:\"site-logo/editor.min.css\";i:472;s:23:\"site-logo/style-rtl.css\";i:473;s:27:\"site-logo/style-rtl.min.css\";i:474;s:19:\"site-logo/style.css\";i:475;s:23:\"site-logo/style.min.css\";i:476;s:27:\"site-tagline/editor-rtl.css\";i:477;s:31:\"site-tagline/editor-rtl.min.css\";i:478;s:23:\"site-tagline/editor.css\";i:479;s:27:\"site-tagline/editor.min.css\";i:480;s:26:\"site-tagline/style-rtl.css\";i:481;s:30:\"site-tagline/style-rtl.min.css\";i:482;s:22:\"site-tagline/style.css\";i:483;s:26:\"site-tagline/style.min.css\";i:484;s:25:\"site-title/editor-rtl.css\";i:485;s:29:\"site-title/editor-rtl.min.css\";i:486;s:21:\"site-title/editor.css\";i:487;s:25:\"site-title/editor.min.css\";i:488;s:24:\"site-title/style-rtl.css\";i:489;s:28:\"site-title/style-rtl.min.css\";i:490;s:20:\"site-title/style.css\";i:491;s:24:\"site-title/style.min.css\";i:492;s:26:\"social-link/editor-rtl.css\";i:493;s:30:\"social-link/editor-rtl.min.css\";i:494;s:22:\"social-link/editor.css\";i:495;s:26:\"social-link/editor.min.css\";i:496;s:27:\"social-links/editor-rtl.css\";i:497;s:31:\"social-links/editor-rtl.min.css\";i:498;s:23:\"social-links/editor.css\";i:499;s:27:\"social-links/editor.min.css\";i:500;s:26:\"social-links/style-rtl.css\";i:501;s:30:\"social-links/style-rtl.min.css\";i:502;s:22:\"social-links/style.css\";i:503;s:26:\"social-links/style.min.css\";i:504;s:21:\"spacer/editor-rtl.css\";i:505;s:25:\"spacer/editor-rtl.min.css\";i:506;s:17:\"spacer/editor.css\";i:507;s:21:\"spacer/editor.min.css\";i:508;s:20:\"spacer/style-rtl.css\";i:509;s:24:\"spacer/style-rtl.min.css\";i:510;s:16:\"spacer/style.css\";i:511;s:20:\"spacer/style.min.css\";i:512;s:20:\"table/editor-rtl.css\";i:513;s:24:\"table/editor-rtl.min.css\";i:514;s:16:\"table/editor.css\";i:515;s:20:\"table/editor.min.css\";i:516;s:19:\"table/style-rtl.css\";i:517;s:23:\"table/style-rtl.min.css\";i:518;s:15:\"table/style.css\";i:519;s:19:\"table/style.min.css\";i:520;s:19:\"table/theme-rtl.css\";i:521;s:23:\"table/theme-rtl.min.css\";i:522;s:15:\"table/theme.css\";i:523;s:19:\"table/theme.min.css\";i:524;s:24:\"tag-cloud/editor-rtl.css\";i:525;s:28:\"tag-cloud/editor-rtl.min.css\";i:526;s:20:\"tag-cloud/editor.css\";i:527;s:24:\"tag-cloud/editor.min.css\";i:528;s:23:\"tag-cloud/style-rtl.css\";i:529;s:27:\"tag-cloud/style-rtl.min.css\";i:530;s:19:\"tag-cloud/style.css\";i:531;s:23:\"tag-cloud/style.min.css\";i:532;s:28:\"template-part/editor-rtl.css\";i:533;s:32:\"template-part/editor-rtl.min.css\";i:534;s:24:\"template-part/editor.css\";i:535;s:28:\"template-part/editor.min.css\";i:536;s:27:\"template-part/theme-rtl.css\";i:537;s:31:\"template-part/theme-rtl.min.css\";i:538;s:23:\"template-part/theme.css\";i:539;s:27:\"template-part/theme.min.css\";i:540;s:24:\"term-count/style-rtl.css\";i:541;s:28:\"term-count/style-rtl.min.css\";i:542;s:20:\"term-count/style.css\";i:543;s:24:\"term-count/style.min.css\";i:544;s:30:\"term-description/style-rtl.css\";i:545;s:34:\"term-description/style-rtl.min.css\";i:546;s:26:\"term-description/style.css\";i:547;s:30:\"term-description/style.min.css\";i:548;s:23:\"term-name/style-rtl.css\";i:549;s:27:\"term-name/style-rtl.min.css\";i:550;s:19:\"term-name/style.css\";i:551;s:23:\"term-name/style.min.css\";i:552;s:28:\"term-template/editor-rtl.css\";i:553;s:32:\"term-template/editor-rtl.min.css\";i:554;s:24:\"term-template/editor.css\";i:555;s:28:\"term-template/editor.min.css\";i:556;s:27:\"term-template/style-rtl.css\";i:557;s:31:\"term-template/style-rtl.min.css\";i:558;s:23:\"term-template/style.css\";i:559;s:27:\"term-template/style.min.css\";i:560;s:27:\"text-columns/editor-rtl.css\";i:561;s:31:\"text-columns/editor-rtl.min.css\";i:562;s:23:\"text-columns/editor.css\";i:563;s:27:\"text-columns/editor.min.css\";i:564;s:26:\"text-columns/style-rtl.css\";i:565;s:30:\"text-columns/style-rtl.min.css\";i:566;s:22:\"text-columns/style.css\";i:567;s:26:\"text-columns/style.min.css\";i:568;s:19:\"verse/style-rtl.css\";i:569;s:23:\"verse/style-rtl.min.css\";i:570;s:15:\"verse/style.css\";i:571;s:19:\"verse/style.min.css\";i:572;s:20:\"video/editor-rtl.css\";i:573;s:24:\"video/editor-rtl.min.css\";i:574;s:16:\"video/editor.css\";i:575;s:20:\"video/editor.min.css\";i:576;s:19:\"video/style-rtl.css\";i:577;s:23:\"video/style-rtl.min.css\";i:578;s:15:\"video/style.css\";i:579;s:19:\"video/style.min.css\";i:580;s:19:\"video/theme-rtl.css\";i:581;s:23:\"video/theme-rtl.min.css\";i:582;s:15:\"video/theme.css\";i:583;s:19:\"video/theme.min.css\";}}', 'on'),
(132, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1769932441;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(133, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"5ac082ef2c84080273e7b06677963231\";s:6:\"blocks\";a:6:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:18:\"core/term-template\";s:120:\":where(.wp-block-term-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-term-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(136, 'recovery_keys', 'a:0:{}', 'off'),
(144, '_site_transient_timeout_browser_8e253f85246590342756399a57054cb8', '1770536428', 'off'),
(145, '_site_transient_browser_8e253f85246590342756399a57054cb8', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"144.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(146, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1770536428', 'off'),
(147, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(151, 'can_compress_scripts', '1', 'on'),
(164, 'finished_updating_comment_type', '1', 'auto'),
(165, 'current_theme', 'MSS', 'auto'),
(166, 'theme_mods_mss', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(167, 'theme_switched', '', 'auto'),
(170, 'recovery_mode_email_last_sent', '1769936004', 'auto'),
(223, 'wp_calendar_block_has_published_posts', '', 'auto'),
(273, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(274, 'recently_activated', 'a:0:{}', 'off'),
(289, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"6.1.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1769956771;s:7:\"version\";s:5:\"6.1.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'auto'),
(293, 'secret_key', '9EL;AB3Aa]{$B[7t*,J=fOk$Drm=3Frjg8CabgXVTkh5_k&4}VQr/=~jfP!s7I$H', 'off'),
(310, 'acf_first_activated_version', '6.7.0', 'on'),
(311, 'acf_site_health', '{\"version\":\"6.7.0\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.9\",\"mysql_version\":\"10.4.32-MariaDB\",\"is_multisite\":false,\"active_theme\":{\"name\":\"MSS\",\"version\":\"\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.7.0\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"contact-form-7\\/wp-contact-form-7.php\":{\"name\":\"Contact Form 7\",\"version\":\"6.1.4\",\"plugin_uri\":\"https:\\/\\/contactform7.com\\/\"}},\"ui_field_groups\":\"2\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"all_location_rules\":[\"page==10\",\"post_type==equipment\"],\"number_of_fields_by_type\":{\"tab\":5,\"text\":21,\"textarea\":2},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"5\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"4\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1769965760,\"event_first_created_field_group\":1769966841,\"last_updated\":1770050936}', 'off'),
(313, 'acf_version', '6.7.0', 'auto'),
(347, 'category_children', 'a:0:{}', 'auto'),
(353, 'equipment_category_children', 'a:0:{}', 'auto'),
(385, '_transient_health-check-site-status-result', '{\"good\":\"20\",\"recommended\":\"4\",\"critical\":\"2\"}', 'on'),
(438, '_transient_timeout_dirsize_cache', '2085410937', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(439, '_transient_dirsize_cache', 'a:452:{s:44:\"C:\\xampp\\htdocs\\mss/wp-admin/css/colors/blue\";i:82461;s:46:\"C:\\xampp\\htdocs\\mss/wp-admin/css/colors/coffee\";i:80373;s:49:\"C:\\xampp\\htdocs\\mss/wp-admin/css/colors/ectoplasm\";i:83904;s:45:\"C:\\xampp\\htdocs\\mss/wp-admin/css/colors/light\";i:83287;s:48:\"C:\\xampp\\htdocs\\mss/wp-admin/css/colors/midnight\";i:84683;s:46:\"C:\\xampp\\htdocs\\mss/wp-admin/css/colors/modern\";i:83532;s:45:\"C:\\xampp\\htdocs\\mss/wp-admin/css/colors/ocean\";i:79479;s:47:\"C:\\xampp\\htdocs\\mss/wp-admin/css/colors/sunrise\";i:86133;s:39:\"C:\\xampp\\htdocs\\mss/wp-admin/css/colors\";i:690080;s:32:\"C:\\xampp\\htdocs\\mss/wp-admin/css\";i:2684331;s:35:\"C:\\xampp\\htdocs\\mss/wp-admin/images\";i:428376;s:37:\"C:\\xampp\\htdocs\\mss/wp-admin/includes\";i:3102732;s:39:\"C:\\xampp\\htdocs\\mss/wp-admin/js/widgets\";i:139432;s:31:\"C:\\xampp\\htdocs\\mss/wp-admin/js\";i:2006266;s:34:\"C:\\xampp\\htdocs\\mss/wp-admin/maint\";i:7628;s:36:\"C:\\xampp\\htdocs\\mss/wp-admin/network\";i:127749;s:33:\"C:\\xampp\\htdocs\\mss/wp-admin/user\";i:3758;s:28:\"C:\\xampp\\htdocs\\mss/wp-admin\";i:9306226;s:48:\"C:\\xampp\\htdocs\\mss/wp-content/languages/plugins\";i:872016;s:47:\"C:\\xampp\\htdocs\\mss/wp-content/languages/themes\";i:409464;s:40:\"C:\\xampp\\htdocs\\mss/wp-content/languages\";i:6757080;s:38:\"C:\\xampp\\htdocs\\mss/wp-content/upgrade\";i:0;s:30:\"C:\\xampp\\htdocs\\mss/wp-content\";i:6757108;s:45:\"C:\\xampp\\htdocs\\mss/wp-includes/abilities-api\";i:47953;s:38:\"C:\\xampp\\htdocs\\mss/wp-includes/assets\";i:29678;s:46:\"C:\\xampp\\htdocs\\mss/wp-includes/block-bindings\";i:9582;s:46:\"C:\\xampp\\htdocs\\mss/wp-includes/block-patterns\";i:8951;s:46:\"C:\\xampp\\htdocs\\mss/wp-includes/block-supports\";i:134988;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/accordion\";i:2137;s:56:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/accordion-heading\";i:6957;s:53:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/accordion-item\";i:2896;s:54:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/accordion-panel\";i:2096;s:47:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/archives\";i:2057;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/audio\";i:3675;s:45:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/avatar\";i:2355;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/block\";i:587;s:45:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/button\";i:14327;s:46:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/buttons\";i:11567;s:47:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/calendar\";i:3821;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/categories\";i:4020;s:43:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/code\";i:2850;s:45:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/column\";i:1616;s:46:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/columns\";i:9271;s:58:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/comment-author-name\";i:1677;s:54:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/comment-content\";i:1838;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/comment-date\";i:1562;s:56:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/comment-edit-link\";i:1654;s:57:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/comment-reply-link\";i:1447;s:55:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/comment-template\";i:3037;s:47:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/comments\";i:29695;s:58:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/comments-pagination\";i:6147;s:63:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/comments-pagination-next\";i:1011;s:66:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/comments-pagination-numbers\";i:1833;s:67:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/comments-pagination-previous\";i:1023;s:53:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/comments-title\";i:1745;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/cover\";i:87939;s:46:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/details\";i:2249;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/embed\";i:11420;s:43:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/file\";i:11203;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/footnotes\";i:2642;s:47:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/freeform\";i:41702;s:46:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/gallery\";i:78286;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/group\";i:8413;s:46:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/heading\";i:6486;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/home-link\";i:1152;s:43:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/html\";i:4064;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/image\";i:59767;s:54:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/latest-comments\";i:6816;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/latest-posts\";i:11447;s:52:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/legacy-widget\";i:556;s:43:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/list\";i:2285;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/list-item\";i:1471;s:47:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/loginout\";i:1474;s:43:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/math\";i:1115;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/media-text\";i:16728;s:46:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/missing\";i:678;s:43:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/more\";i:3270;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/navigation\";i:133575;s:54:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/navigation-link\";i:11460;s:57:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/navigation-submenu\";i:6226;s:47:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/nextpage\";i:3039;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/page-list\";i:7860;s:53:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/page-list-item\";i:1109;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/paragraph\";i:7441;s:46:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/pattern\";i:434;s:50:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-author\";i:3388;s:60:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-author-biography\";i:1507;s:55:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-author-name\";i:1673;s:58:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-comments-count\";i:1372;s:57:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-comments-form\";i:10061;s:57:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-comments-link\";i:1525;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-content\";i:1913;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-date\";i:1623;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-excerpt\";i:3307;s:58:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-featured-image\";i:30219;s:59:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-navigation-link\";i:4032;s:52:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-template\";i:7967;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-terms\";i:2025;s:56:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-time-to-read\";i:1625;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/post-title\";i:2849;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/preformatted\";i:1907;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/pullquote\";i:8775;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/query\";i:13922;s:55:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/query-no-results\";i:901;s:55:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/query-pagination\";i:5775;s:60:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/query-pagination-next\";i:1039;s:63:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/query-pagination-numbers\";i:1942;s:64:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/query-pagination-previous\";i:1051;s:50:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/query-title\";i:1750;s:50:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/query-total\";i:1520;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/quote\";i:7191;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/read-more\";i:2450;s:42:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/rss\";i:5025;s:45:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/search\";i:19425;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/separator\";i:5126;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/shortcode\";i:2940;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/site-logo\";i:15830;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/site-tagline\";i:2148;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/site-title\";i:3051;s:50:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/social-link\";i:3510;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/social-links\";i:54929;s:45:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/spacer\";i:4737;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/table\";i:27622;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/tag-cloud\";i:3996;s:52:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/template-part\";i:6686;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/term-count\";i:1462;s:55:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/term-description\";i:2112;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/term-name\";i:1577;s:52:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/term-template\";i:3560;s:50:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/terms-query\";i:905;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/text-columns\";i:3054;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/verse\";i:2144;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/video\";i:8626;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks/widget-group\";i:400;s:38:\"C:\\xampp\\htdocs\\mss/wp-includes/blocks\";i:1613626;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/certificates\";i:234150;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/admin-ui\";i:5114;s:52:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/base-styles\";i:15340;s:56:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/block-directory\";i:15808;s:53:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/block-editor\";i:622813;s:54:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/block-library\";i:821782;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/commands\";i:29246;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/components\";i:418369;s:58:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/customize-widgets\";i:25450;s:50:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/edit-post\";i:66228;s:50:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/edit-site\";i:783976;s:53:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/edit-widgets\";i:98410;s:47:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/editor\";i:250472;s:55:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/format-library\";i:3214;s:61:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/list-reusable-blocks\";i:17728;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/nux\";i:9830;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/patterns\";i:7596;s:52:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/preferences\";i:4356;s:56:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/reusable-blocks\";i:2444;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist/widgets\";i:23894;s:40:\"C:\\xampp\\htdocs\\mss/wp-includes/css/dist\";i:3222070;s:35:\"C:\\xampp\\htdocs\\mss/wp-includes/css\";i:3866513;s:41:\"C:\\xampp\\htdocs\\mss/wp-includes/customize\";i:178682;s:37:\"C:\\xampp\\htdocs\\mss/wp-includes/fonts\";i:327011;s:40:\"C:\\xampp\\htdocs\\mss/wp-includes/html-api\";i:541771;s:35:\"C:\\xampp\\htdocs\\mss/wp-includes/ID3\";i:1165755;s:46:\"C:\\xampp\\htdocs\\mss/wp-includes/images/crystal\";i:15541;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/images/media\";i:5263;s:46:\"C:\\xampp\\htdocs\\mss/wp-includes/images/smilies\";i:10082;s:38:\"C:\\xampp\\htdocs\\mss/wp-includes/images\";i:102178;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/interactivity-api\";i:62890;s:35:\"C:\\xampp\\htdocs\\mss/wp-includes/IXR\";i:34269;s:45:\"C:\\xampp\\htdocs\\mss/wp-includes/js/codemirror\";i:1287141;s:39:\"C:\\xampp\\htdocs\\mss/wp-includes/js/crop\";i:20004;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/development\";i:179856;s:59:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules/a11y\";i:3461;s:73:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules/block-editor/utils\";i:5114;s:67:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules/block-editor\";i:5114;s:78:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules/block-library/accordion\";i:7101;s:73:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules/block-library/file\";i:3161;s:73:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules/block-library/form\";i:2255;s:74:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules/block-library/image\";i:17181;s:79:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules/block-library/navigation\";i:10984;s:74:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules/block-library/query\";i:6173;s:75:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules/block-library/search\";i:5263;s:68:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules/block-library\";i:52118;s:68:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules/interactivity\";i:281161;s:75:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules/interactivity-router\";i:74292;s:54:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/script-modules\";i:416146;s:46:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist/vendor\";i:2665433;s:39:\"C:\\xampp\\htdocs\\mss/wp-includes/js/dist\";i:22621252;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/js/imgareaselect\";i:49553;s:40:\"C:\\xampp\\htdocs\\mss/wp-includes/js/jcrop\";i:24976;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/js/jquery/ui\";i:787634;s:41:\"C:\\xampp\\htdocs\\mss/wp-includes/js/jquery\";i:1304968;s:57:\"C:\\xampp\\htdocs\\mss/wp-includes/js/mediaelement/renderers\";i:18880;s:47:\"C:\\xampp\\htdocs\\mss/wp-includes/js/mediaelement\";i:721307;s:43:\"C:\\xampp\\htdocs\\mss/wp-includes/js/plupload\";i:490958;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/js/swfupload\";i:0;s:43:\"C:\\xampp\\htdocs\\mss/wp-includes/js/thickbox\";i:31313;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/langs\";i:15529;s:58:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/charmap\";i:31811;s:62:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/colorpicker\";i:4910;s:63:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/compat3x/css\";i:8179;s:59:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/compat3x\";i:21758;s:65:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/directionality\";i:2749;s:61:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/fullscreen\";i:7779;s:53:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/hr\";i:1347;s:56:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/image\";i:55874;s:55:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/link\";i:32949;s:56:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/lists\";i:97383;s:56:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/media\";i:57914;s:56:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/paste\";i:113193;s:59:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/tabfocus\";i:5336;s:60:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/textcolor\";i:16237;s:60:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/wordpress\";i:50553;s:63:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/wpautoresize\";i:8332;s:60:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/wpdialogs\";i:3761;s:62:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/wpeditimage\";i:37709;s:58:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/wpemoji\";i:5099;s:60:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/wpgallery\";i:4806;s:57:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/wplink\";i:26786;s:64:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/wptextpattern\";i:11923;s:57:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins/wpview\";i:8985;s:50:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/plugins\";i:607194;s:64:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/skins/lightgray/fonts\";i:155760;s:62:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/skins/lightgray/img\";i:2856;s:58:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/skins/lightgray\";i:210254;s:65:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/skins/wordpress/images\";i:16653;s:58:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/skins/wordpress\";i:25413;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/skins\";i:235667;s:56:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/themes/inlite\";i:452642;s:56:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/themes/modern\";i:446221;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/themes\";i:898863;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce/utils\";i:18826;s:42:\"C:\\xampp\\htdocs\\mss/wp-includes/js/tinymce\";i:2856553;s:34:\"C:\\xampp\\htdocs\\mss/wp-includes/js\";i:31810000;s:36:\"C:\\xampp\\htdocs\\mss/wp-includes/l10n\";i:31243;s:42:\"C:\\xampp\\htdocs\\mss/wp-includes/php-compat\";i:1253;s:41:\"C:\\xampp\\htdocs\\mss/wp-includes/PHPMailer\";i:269336;s:36:\"C:\\xampp\\htdocs\\mss/wp-includes/pomo\";i:57146;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/Requests/library\";i:261;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/Requests/src/Auth\";i:2541;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/Requests/src/Cookie\";i:4363;s:59:\"C:\\xampp\\htdocs\\mss/wp-includes/Requests/src/Exception/Http\";i:16715;s:64:\"C:\\xampp\\htdocs\\mss/wp-includes/Requests/src/Exception/Transport\";i:1397;s:54:\"C:\\xampp\\htdocs\\mss/wp-includes/Requests/src/Exception\";i:22464;s:50:\"C:\\xampp\\htdocs\\mss/wp-includes/Requests/src/Proxy\";i:4217;s:53:\"C:\\xampp\\htdocs\\mss/wp-includes/Requests/src/Response\";i:3101;s:54:\"C:\\xampp\\htdocs\\mss/wp-includes/Requests/src/Transport\";i:35470;s:52:\"C:\\xampp\\htdocs\\mss/wp-includes/Requests/src/Utility\";i:7176;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/Requests/src\";i:214849;s:40:\"C:\\xampp\\htdocs\\mss/wp-includes/Requests\";i:215110;s:50:\"C:\\xampp\\htdocs\\mss/wp-includes/rest-api/endpoints\";i:907136;s:47:\"C:\\xampp\\htdocs\\mss/wp-includes/rest-api/fields\";i:22750;s:47:\"C:\\xampp\\htdocs\\mss/wp-includes/rest-api/search\";i:16917;s:40:\"C:\\xampp\\htdocs\\mss/wp-includes/rest-api\";i:1038730;s:65:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/library/SimplePie/Cache\";i:4035;s:72:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/library/SimplePie/Content/Type\";i:628;s:67:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/library/SimplePie/Content\";i:628;s:71:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/library/SimplePie/Decode/HTML\";i:22661;s:66:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/library/SimplePie/Decode\";i:22661;s:64:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/library/SimplePie/HTTP\";i:664;s:63:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/library/SimplePie/Net\";i:553;s:65:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/library/SimplePie/Parse\";i:565;s:75:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/library/SimplePie/XML/Declaration\";i:639;s:63:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/library/SimplePie/XML\";i:639;s:59:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/library/SimplePie\";i:41042;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/library\";i:56395;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/src/Cache\";i:46444;s:58:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/src/Content/Type\";i:7646;s:53:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/src/Content\";i:7646;s:50:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/src/HTTP\";i:34052;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/src/Net\";i:7380;s:51:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/src/Parse\";i:25734;s:61:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/src/XML/Declaration\";i:7744;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/src/XML\";i:7744;s:45:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie/src\";i:686427;s:41:\"C:\\xampp\\htdocs\\mss/wp-includes/SimplePie\";i:744875;s:50:\"C:\\xampp\\htdocs\\mss/wp-includes/sitemaps/providers\";i:17599;s:40:\"C:\\xampp\\htdocs\\mss/wp-includes/sitemaps\";i:47547;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/lib\";i:99005;s:70:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/namespaced/Core/ChaCha20\";i:224;s:75:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/namespaced/Core/Curve25519/Ge\";i:602;s:72:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/namespaced/Core/Curve25519\";i:820;s:70:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/namespaced/Core/Poly1305\";i:112;s:61:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/namespaced/Core\";i:2444;s:56:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/namespaced\";i:2698;s:60:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core/AEGIS\";i:14759;s:58:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core/AES\";i:12651;s:61:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core/Base64\";i:16959;s:63:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core/ChaCha20\";i:5739;s:68:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core/Curve25519/Ge\";i:10572;s:65:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core/Curve25519\";i:127599;s:63:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core/Poly1305\";i:12912;s:67:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core/SecretStream\";i:3624;s:54:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core\";i:505657;s:65:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core32/ChaCha20\";i:6407;s:70:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core32/Curve25519/Ge\";i:8177;s:67:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core32/Curve25519\";i:122690;s:65:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core32/Poly1305\";i:15965;s:69:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core32/SecretStream\";i:3656;s:56:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/Core32\";i:437041;s:55:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src/PHP52\";i:4910;s:49:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat/src\";i:1277030;s:45:\"C:\\xampp\\htdocs\\mss/wp-includes/sodium_compat\";i:1385208;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/style-engine\";i:48218;s:48:\"C:\\xampp\\htdocs\\mss/wp-includes/Text/Diff/Engine\";i:31802;s:50:\"C:\\xampp\\htdocs\\mss/wp-includes/Text/Diff/Renderer\";i:5528;s:41:\"C:\\xampp\\htdocs\\mss/wp-includes/Text/Diff\";i:44136;s:36:\"C:\\xampp\\htdocs\\mss/wp-includes/Text\";i:56335;s:44:\"C:\\xampp\\htdocs\\mss/wp-includes/theme-compat\";i:15656;s:39:\"C:\\xampp\\htdocs\\mss/wp-includes/widgets\";i:160197;s:31:\"C:\\xampp\\htdocs\\mss/wp-includes\";i:51968763;s:19:\"C:\\xampp\\htdocs\\mss\";i:68223379;s:55:\"C:\\xampp\\htdocs\\mss/wp-content/themes/mss/assets/images\";i:20716133;s:48:\"C:\\xampp\\htdocs\\mss/wp-content/themes/mss/assets\";i:20741648;s:41:\"C:\\xampp\\htdocs\\mss/wp-content/themes/mss\";i:22356636;s:65:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/assets/css\";i:157;s:75:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/assets/fonts/beiruti\";i:176048;s:77:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/assets/fonts/fira-code\";i:106112;s:77:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/assets/fonts/fira-sans\";i:2778636;s:76:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/assets/fonts/literata\";i:1698956;s:75:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/assets/fonts/manrope\";i:53600;s:75:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/assets/fonts/platypi\";i:142896;s:79:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/assets/fonts/roboto-slab\";i:115804;s:76:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/assets/fonts/vollkorn\";i:357316;s:82:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/assets/fonts/ysabeau-office\";i:299520;s:67:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/assets/fonts\";i:5728888;s:68:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/assets/images\";i:1945719;s:61:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/assets\";i:7674764;s:60:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/parts\";i:440;s:63:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/patterns\";i:346749;s:68:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/styles/blocks\";i:1977;s:68:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/styles/colors\";i:25175;s:70:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/styles/sections\";i:10657;s:72:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/styles/typography\";i:38357;s:61:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/styles\";i:140995;s:64:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive/templates\";i:5339;s:54:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfive\";i:8473162;s:65:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfour/assets/css\";i:357;s:73:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfour/assets/fonts/cardo\";i:388180;s:83:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfour/assets/fonts/instrument-sans\";i:187522;s:73:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfour/assets/fonts/inter\";i:331004;s:72:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfour/assets/fonts/jost\";i:116852;s:67:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfour/assets/fonts\";i:1023558;s:68:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfour/assets/images\";i:1152100;s:61:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfour/assets\";i:2176015;s:60:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfour/parts\";i:1473;s:63:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfour/patterns\";i:159393;s:61:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfour/styles\";i:33899;s:64:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfour/templates\";i:12788;s:54:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentyfour\";i:3137648;s:76:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentythree/assets/fonts/dm-sans\";i:128429;s:82:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentythree/assets/fonts/ibm-plex-mono\";i:148118;s:74:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentythree/assets/fonts/inter\";i:807760;s:85:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentythree/assets/fonts/source-serif-pro\";i:1409152;s:68:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentythree/assets/fonts\";i:2493459;s:62:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentythree/assets\";i:2493459;s:61:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentythree/parts\";i:878;s:64:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentythree/patterns\";i:9785;s:62:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentythree/styles\";i:53195;s:65:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentythree/templates\";i:10295;s:55:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentythree\";i:2668513;s:74:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo/assets/fonts/dm-sans\";i:301601;s:75:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo/assets/fonts/ibm-plex\";i:423403;s:72:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo/assets/fonts/inter\";i:809786;s:83:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo/assets/fonts/source-serif-pro\";i:1409152;s:66:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo/assets/fonts\";i:4348514;s:67:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo/assets/images\";i:1503139;s:67:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo/assets/videos\";i:468755;s:60:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo/assets\";i:6320408;s:66:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo/inc/patterns\";i:158253;s:57:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo/inc\";i:162261;s:59:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo/parts\";i:2864;s:60:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo/styles\";i:11519;s:63:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo/templates\";i:13966;s:53:\"C:\\xampp\\htdocs\\mss/wp-content/themes/twentytwentytwo\";i:6754483;s:37:\"C:\\xampp\\htdocs\\mss/wp-content/themes\";i:65637176;s:78:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/build/css\";i:356065;s:77:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/build/js\";i:231655;s:74:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/build\";i:587763;s:88:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/images/field-states\";i:671;s:92:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/images/field-type-icons\";i:28512;s:95:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/images/field-type-previews\";i:676097;s:81:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/images/icons\";i:48379;s:75:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/images\";i:1174114;s:91:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/inc/color-picker-alpha\";i:24330;s:90:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/inc/datepicker/images\";i:11440;s:83:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/inc/datepicker\";i:61417;s:82:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/inc/select2/3\";i:268808;s:82:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/inc/select2/4\";i:582485;s:80:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/inc/select2\";i:851336;s:83:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/inc/timepicker\";i:130999;s:72:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets/inc\";i:1068125;s:68:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/assets\";i:2830002;s:87:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/admin/post-types\";i:74726;s:82:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/admin/tools\";i:25482;s:98:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/admin/views/acf-field-group\";i:43287;s:96:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/admin/views/acf-post-type\";i:52214;s:95:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/admin/views/acf-taxonomy\";i:50121;s:89:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/admin/views/global\";i:16616;s:88:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/admin/views/tools\";i:935;s:90:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/admin/views/upgrade\";i:10486;s:82:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/admin/views\";i:184625;s:76:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/admin\";i:359046;s:75:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/ajax\";i:27422;s:74:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/api\";i:144466;s:77:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/fields\";i:401311;s:76:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/forms\";i:80730;s:77:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/legacy\";i:2082;s:80:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/locations\";i:55503;s:81:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/post-types\";i:75231;s:79:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/rest-api\";i:33272;s:78:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes/walkers\";i:3804;s:70:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/includes\";i:1546586;s:66:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/lang\";i:18204731;s:68:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/src/AI\";i:0;s:72:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/src/Blocks\";i:2935;s:70:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/src/Meta\";i:11821;s:77:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/src/Site_Health\";i:22598;s:65:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/src\";i:37354;s:77:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/vendor/composer\";i:21238;s:68:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields/vendor\";i:21986;s:61:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/advanced-custom-fields\";i:22712254;s:72:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/admin/includes/css\";i:11209;s:71:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/admin/includes/js\";i:12875;s:68:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/admin/includes\";i:79497;s:59:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/admin\";i:110965;s:60:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/assets\";i:31340;s:75:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/includes/block-editor\";i:6274;s:79:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/includes/config-validator\";i:33313;s:66:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/includes/css\";i:3099;s:100:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness/images\";i:32598;s:93:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes/smoothness\";i:118302;s:82:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/includes/js/jquery-ui/themes\";i:118302;s:75:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/includes/js/jquery-ui\";i:118302;s:65:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/includes/js\";i:132493;s:69:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/includes/swv/js\";i:12593;s:76:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/includes/swv/php/rules\";i:17834;s:70:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/includes/swv/php\";i:21490;s:66:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/includes/swv\";i:39838;s:62:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/includes\";i:454482;s:63:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/languages\";i:128;s:69:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/modules/akismet\";i:8452;s:78:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/modules/constant-contact\";i:4610;s:71:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/modules/recaptcha\";i:15596;s:72:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/modules/sendinblue\";i:27975;s:68:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/modules/stripe\";i:23319;s:71:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/modules/turnstile\";i:12966;s:61:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7/modules\";i:191918;s:53:\"C:\\xampp\\htdocs\\mss/wp-content/plugins/contact-form-7\";i:820995;s:38:\"C:\\xampp\\htdocs\\mss/wp-content/plugins\";i:23533277;s:46:\"C:\\xampp\\htdocs\\mss/wp-content/uploads/2026/02\";i:14837753;s:43:\"C:\\xampp\\htdocs\\mss/wp-content/uploads/2026\";i:14837753;s:52:\"C:\\xampp\\htdocs\\mss/wp-content/uploads/wpcf7_uploads\";i:152;s:38:\"C:\\xampp\\htdocs\\mss/wp-content/uploads\";i:14837905;}', 'off'),
(454, 'new_admin_email', 'romanova7410020@gmail.com', 'auto'),
(513, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1770361904;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.7.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3374528\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3374528\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"6.1.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.6.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.7\";}s:53:\"simple-custom-post-order/simple-custom-post-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/simple-custom-post-order\";s:4:\"slug\";s:24:\"simple-custom-post-order\";s:6:\"plugin\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:11:\"new_version\";s:5:\"2.6.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/simple-custom-post-order/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/simple-custom-post-order.2.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=2969435\";s:2:\"1x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=2969435\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/simple-custom-post-order/assets/banner-772x250.jpg?rev=2969435\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.7.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"6.1.4\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:5:\"2.6.0\";}}', 'off'),
(514, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1770361906;s:7:\"checked\";a:1:{s:3:\"mss\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(515, 'scporder_install', '1', 'auto'),
(516, 'scporder_options', 'a:3:{s:7:\"objects\";a:1:{i:0;s:9:\"equipment\";}s:4:\"tags\";a:1:{i:0;s:18:\"equipment_category\";}s:18:\"show_advanced_view\";s:0:\"\";}', 'auto'),
(535, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.9.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-6.9.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.9.1\";s:7:\"version\";s:5:\"6.9.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1770367210;s:15:\"version_checked\";s:5:\"6.9.1\";s:12:\"translations\";a:0:{}}', 'off'),
(536, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"romanova7410020@gmail.com\";s:7:\"version\";s:5:\"6.9.1\";s:9:\"timestamp\";i:1770186421;}', 'off'),
(673, '_site_transient_timeout_theme_roots', '1770363704', 'off'),
(674, '_site_transient_theme_roots', 'a:1:{s:3:\"mss\";s:7:\"/themes\";}', 'off'),
(684, '_site_transient_timeout_wp_theme_files_patterns-38b245bdf221cfa981823d73f83d9f5d', '1770371064', 'off'),
(685, '_site_transient_wp_theme_files_patterns-38b245bdf221cfa981823d73f83d9f5d', 'a:2:{s:7:\"version\";s:0:\"\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 7, '_edit_lock', '1769940005:1'),
(4, 3, '_wp_trash_meta_status', 'draft'),
(5, 3, '_wp_trash_meta_time', '1769940167'),
(6, 3, '_wp_desired_post_slug', 'privacy-policy'),
(7, 2, '_wp_trash_meta_status', 'publish'),
(8, 2, '_wp_trash_meta_time', '1769940170'),
(9, 2, '_wp_desired_post_slug', 'sample-page'),
(10, 10, '_edit_lock', '1770125166:1'),
(11, 10, '_wp_page_template', 'home.php'),
(12, 1, '_wp_trash_meta_status', 'publish'),
(13, 1, '_wp_trash_meta_time', '1769946370'),
(14, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(15, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(16, 13, '_edit_lock', '1769955412:1'),
(19, 15, '_wp_attached_file', '2026/02/332.png'),
(20, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1376;s:6:\"height\";i:768;s:4:\"file\";s:15:\"2026/02/332.png\";s:8:\"filesize\";i:1933075;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 16, '_wp_attached_file', '2026/02/isuzu.png'),
(22, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1376;s:6:\"height\";i:768;s:4:\"file\";s:17:\"2026/02/isuzu.png\";s:8:\"filesize\";i:2006809;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 17, '_wp_attached_file', '2026/02/kc35714.png'),
(24, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1376;s:6:\"height\";i:768;s:4:\"file\";s:19:\"2026/02/kc35714.png\";s:8:\"filesize\";i:1927869;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 18, '_wp_attached_file', '2026/02/kc45729.png'),
(26, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1376;s:6:\"height\";i:768;s:4:\"file\";s:19:\"2026/02/kc45729.png\";s:8:\"filesize\";i:1445331;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 19, '_wp_attached_file', '2026/02/kc45729n.png'),
(28, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1376;s:6:\"height\";i:768;s:4:\"file\";s:20:\"2026/02/kc45729n.png\";s:8:\"filesize\";i:1860350;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 20, '_wp_attached_file', '2026/02/kc55727.png'),
(30, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1376;s:6:\"height\";i:768;s:4:\"file\";s:19:\"2026/02/kc55727.png\";s:8:\"filesize\";i:1906746;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 21, '_wp_attached_file', '2026/02/pmc328.png'),
(32, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1376;s:6:\"height\";i:768;s:4:\"file\";s:18:\"2026/02/pmc328.png\";s:8:\"filesize\";i:1850013;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 13, '_thumbnail_id', '18'),
(37, 23, '_edit_lock', '1769947037:1'),
(38, 24, '_edit_lock', '1769947351:1'),
(42, 27, '_edit_lock', '1769953970:1'),
(45, 27, '_thumbnail_id', '20'),
(48, 29, '_edit_lock', '1769954063:1'),
(51, 29, '_thumbnail_id', '17'),
(52, 31, '_edit_lock', '1769954086:1'),
(55, 31, '_thumbnail_id', '19'),
(56, 33, '_edit_lock', '1769973518:1'),
(59, 33, '_thumbnail_id', '21'),
(60, 35, '_edit_lock', '1769973477:1'),
(63, 35, '_thumbnail_id', '16'),
(64, 37, '_edit_lock', '1769955330:1'),
(67, 37, '_thumbnail_id', '15'),
(77, 13, '_edit_last', '1'),
(111, 37, '_edit_last', '1'),
(116, 62, '_edit_lock', '1769956148:1'),
(117, 63, '_form', '[text* text-52 class:form_calc placeholder \"Имя\"][tel* tel-94 class:form_calc placeholder \"Телефон\"][text text-25 class:form_calc placeholder \"Комментарий (необязательно)\"]<label class=\"checkbox_label\">\n[acceptance consent class:checkbox_input id:consent default:1] Согласен(на) с обработкой персональных данных [/acceptance]\n</label>[submit class:get_btn2 \"Получить расчёт\"]'),
(118, 63, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <romanova7410020@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:269:\"От: [your-name] [your-email]\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто уведомление о том, что на вашем веб-сайте ([_site_title] [_site_url]) была отправлена контактная форма.\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(119, 63, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <romanova7410020@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:426:\"Сообщение:\n[your-message]\n\n-- \nЭто письмо является квитанцией об отправке контактной формы на нашем веб-сайте ([_site_title] [_site_url]), в которой использовался ваш адрес электронной почты. Если это были не вы, пожалуйста, проигнорируйте это сообщение.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(120, 63, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:46:\"Важно заполнить это поле.\";s:16:\"invalid_too_long\";s:90:\"В это поле вставлен слишком большой объем данных.\";s:17:\"invalid_too_short\";s:86:\"В это поле вставлен слишком малый объем данных.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:62:\"Загруженный файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:12:\"invalid_date\";s:61:\"Введите дату в формате ГГГГ-ММ-ДД.\";s:14:\"date_too_early\";s:71:\"В это поле введена слишком ранняя дата.\";s:13:\"date_too_late\";s:73:\"В это поле введена слишком поздняя дата.\";s:14:\"invalid_number\";s:26:\"Введите число.\";s:16:\"number_too_small\";s:79:\"В это поле введено слишком маленькое число.\";s:16:\"number_too_large\";s:75:\"В это поле введено слишком большое число.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:60:\"Введите адрес электронной почты.\";s:11:\"invalid_url\";s:19:\"Введите URL.\";s:11:\"invalid_tel\";s:43:\"Введите номер телефона.\";}'),
(121, 63, '_additional_settings', ''),
(122, 63, '_locale', 'ru_RU'),
(123, 63, '_hash', '7f515230e3129644cc9c66ea24d26c3d440f6a755128e97906cb4782f0327b9f'),
(128, 65, '_edit_last', '1'),
(129, 65, '_edit_lock', '1770041322:1'),
(132, 10, '_edit_last', '1'),
(133, 10, 'phone', ''),
(134, 10, '_phone', 'field_697f8bd55fbee'),
(135, 11, 'phone', ''),
(136, 11, '_phone', 'field_697f8bd55fbee'),
(138, 10, 'footnotes', ''),
(140, 68, 'footnotes', ''),
(142, 10, 'phone_1', '+375(29)771-36-46'),
(143, 10, '_phone_1', 'field_697f8bd55fbee'),
(144, 68, 'phone', ''),
(145, 68, '_phone', 'field_697f8bd55fbee'),
(146, 68, 'phone_1', '375445900087'),
(147, 68, '_phone_1', 'field_697f8bd55fbee'),
(152, 70, 'footnotes', ''),
(154, 70, 'phone', ''),
(155, 70, '_phone', 'field_697f8bd55fbee'),
(156, 70, 'phone_1', '+375(29)771-36-46'),
(157, 70, '_phone_1', 'field_697f8bd55fbee'),
(162, 73, 'footnotes', ''),
(164, 10, 'phone_2', '+375(44)590-00-87'),
(165, 10, '_phone_2', 'field_697f930b6ef79'),
(166, 73, 'phone', ''),
(167, 73, '_phone', 'field_697f8bd55fbee'),
(168, 73, 'phone_1', '+375(29)771-36-46'),
(169, 73, '_phone_1', 'field_697f8bd55fbee'),
(170, 73, 'phone_2', '+375(44)590-00-87'),
(171, 73, '_phone_2', 'field_697f930b6ef79'),
(174, 77, 'footnotes', ''),
(176, 10, 'viber', '22'),
(177, 10, '_viber', 'field_697f975cb4acd'),
(178, 10, 'telegram', '33'),
(179, 10, '_telegram', 'field_697f97f816297'),
(180, 10, 'whatsapp', '44'),
(181, 10, '_whatsapp', 'field_697f981d17373'),
(182, 77, 'phone', ''),
(183, 77, '_phone', 'field_697f8bd55fbee'),
(184, 77, 'phone_1', '+375(29)771-36-46'),
(185, 77, '_phone_1', 'field_697f8bd55fbee'),
(186, 77, 'phone_2', '+375(44)590-00-87'),
(187, 77, '_phone_2', 'field_697f930b6ef79'),
(188, 77, 'viber', '22'),
(189, 77, '_viber', 'field_697f975cb4acd'),
(190, 77, 'telegram', '22'),
(191, 77, '_telegram', 'field_697f97f816297'),
(192, 77, 'whatsapp', '22'),
(193, 77, '_whatsapp', 'field_697f981d17373'),
(196, 78, 'footnotes', ''),
(198, 78, 'phone', ''),
(199, 78, '_phone', 'field_697f8bd55fbee'),
(200, 78, 'phone_1', '+375(29)771-36-46'),
(201, 78, '_phone_1', 'field_697f8bd55fbee'),
(202, 78, 'phone_2', '+375(44)590-00-87'),
(203, 78, '_phone_2', 'field_697f930b6ef79'),
(204, 78, 'viber', '22'),
(205, 78, '_viber', 'field_697f975cb4acd'),
(206, 78, 'telegram', '33'),
(207, 78, '_telegram', 'field_697f97f816297'),
(208, 78, 'whatsapp', '44'),
(209, 78, '_whatsapp', 'field_697f981d17373'),
(212, 85, 'footnotes', ''),
(214, 10, 'adress', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(215, 10, '_adress', 'field_697fa2f9c33a2'),
(216, 85, 'phone', ''),
(217, 85, '_phone', 'field_697f8bd55fbee'),
(218, 85, 'phone_1', '+375(29)771-36-46'),
(219, 85, '_phone_1', 'field_697f8bd55fbee'),
(220, 85, 'phone_2', '+375(44)590-00-87'),
(221, 85, '_phone_2', 'field_697f930b6ef79'),
(222, 85, 'viber', '22'),
(223, 85, '_viber', 'field_697f975cb4acd'),
(224, 85, 'telegram', '33'),
(225, 85, '_telegram', 'field_697f97f816297'),
(226, 85, 'whatsapp', '44'),
(227, 85, '_whatsapp', 'field_697f981d17373'),
(228, 85, 'adress', 'Юр. Адрес : 222304, Минская обл.<br>г. Молодечно ул. Металлистов, д.2В, пом.15'),
(229, 85, '_adress', 'field_697fa16423e36'),
(232, 88, 'footnotes', ''),
(234, 10, 'ur_address', 'Юр. Адрес : 222304, Минская обл.<br>г. Молодечно ул. Металлистов, д.2В, пом.15'),
(235, 10, '_ur_address', 'field_697fa16423e36'),
(236, 10, 'unp', 'УНП 692262417'),
(237, 10, '_unp', 'field_697fa338eccd2'),
(238, 88, 'phone', ''),
(239, 88, '_phone', 'field_697f8bd55fbee'),
(240, 88, 'phone_1', '+375(29)771-36-46'),
(241, 88, '_phone_1', 'field_697f8bd55fbee'),
(242, 88, 'phone_2', '+375(44)590-00-87'),
(243, 88, '_phone_2', 'field_697f930b6ef79'),
(244, 88, 'viber', '22'),
(245, 88, '_viber', 'field_697f975cb4acd'),
(246, 88, 'telegram', '33'),
(247, 88, '_telegram', 'field_697f97f816297'),
(248, 88, 'whatsapp', '44'),
(249, 88, '_whatsapp', 'field_697f981d17373'),
(250, 88, 'adress', ''),
(251, 88, '_adress', 'field_697fa2f9c33a2'),
(252, 88, 'ur_address', 'Юр. Адрес : 222304, Минская обл.<br>г. Молодечно ул. Металлистов, д.2В, пом.15'),
(253, 88, '_ur_address', 'field_697fa16423e36'),
(254, 88, 'unp', ''),
(255, 88, '_unp', 'field_697fa338eccd2'),
(260, 90, 'footnotes', ''),
(262, 90, 'phone', ''),
(263, 90, '_phone', 'field_697f8bd55fbee'),
(264, 90, 'phone_1', '+375(29)771-36-46'),
(265, 90, '_phone_1', 'field_697f8bd55fbee'),
(266, 90, 'phone_2', '+375(44)590-00-87'),
(267, 90, '_phone_2', 'field_697f930b6ef79'),
(268, 90, 'viber', '22'),
(269, 90, '_viber', 'field_697f975cb4acd'),
(270, 90, 'telegram', '33'),
(271, 90, '_telegram', 'field_697f97f816297'),
(272, 90, 'whatsapp', '44'),
(273, 90, '_whatsapp', 'field_697f981d17373'),
(274, 90, 'adress', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(275, 90, '_adress', 'field_697fa2f9c33a2'),
(276, 90, 'ur_address', 'Юр. Адрес : 222304, Минская обл.<br>г. Молодечно ул. Металлистов, д.2В, пом.15'),
(277, 90, '_ur_address', 'field_697fa16423e36'),
(278, 90, 'unp', 'УНП 692262417'),
(279, 90, '_unp', 'field_697fa338eccd2'),
(282, 91, 'footnotes', ''),
(284, 10, 'address', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(285, 10, '_address', 'field_697fa2f9c33a2'),
(286, 91, 'phone', ''),
(287, 91, '_phone', 'field_697f8bd55fbee'),
(288, 91, 'phone_1', '+375(29)771-36-46'),
(289, 91, '_phone_1', 'field_697f8bd55fbee'),
(290, 91, 'phone_2', '+375(44)590-00-87'),
(291, 91, '_phone_2', 'field_697f930b6ef79'),
(292, 91, 'viber', '22'),
(293, 91, '_viber', 'field_697f975cb4acd'),
(294, 91, 'telegram', '33'),
(295, 91, '_telegram', 'field_697f97f816297'),
(296, 91, 'whatsapp', '44'),
(297, 91, '_whatsapp', 'field_697f981d17373'),
(298, 91, 'adress', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(299, 91, '_adress', 'field_697fa2f9c33a2'),
(300, 91, 'ur_address', 'Юр. Адрес : 222304, Минская обл.<br>г. Молодечно ул. Металлистов, д.2В, пом.15'),
(301, 91, '_ur_address', 'field_697fa16423e36'),
(302, 91, 'unp', 'УНП 692262417'),
(303, 91, '_unp', 'field_697fa338eccd2'),
(304, 91, 'address', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(305, 91, '_address', 'field_697fa2f9c33a2'),
(308, 93, 'footnotes', ''),
(310, 10, 'work_time', 'Пн-Пт: 8:00 — 17:00'),
(311, 10, '_work_time', 'field_697fa5206a381'),
(312, 93, 'phone', ''),
(313, 93, '_phone', 'field_697f8bd55fbee'),
(314, 93, 'phone_1', '+375(29)771-36-46'),
(315, 93, '_phone_1', 'field_697f8bd55fbee'),
(316, 93, 'phone_2', '+375(44)590-00-87'),
(317, 93, '_phone_2', 'field_697f930b6ef79'),
(318, 93, 'viber', '22'),
(319, 93, '_viber', 'field_697f975cb4acd'),
(320, 93, 'telegram', '33'),
(321, 93, '_telegram', 'field_697f97f816297'),
(322, 93, 'whatsapp', '44'),
(323, 93, '_whatsapp', 'field_697f981d17373'),
(324, 93, 'adress', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(325, 93, '_adress', 'field_697fa2f9c33a2'),
(326, 93, 'ur_address', 'Юр. Адрес : 222304, Минская обл.<br>г. Молодечно ул. Металлистов, д.2В, пом.15'),
(327, 93, '_ur_address', 'field_697fa16423e36'),
(328, 93, 'unp', 'УНП 692262417'),
(329, 93, '_unp', 'field_697fa338eccd2'),
(330, 93, 'address', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(331, 93, '_address', 'field_697fa2f9c33a2'),
(332, 93, 'work_time', 'Пн-Пт: 8:00 — 17:00'),
(333, 93, '_work_time', 'field_697fa5206a381'),
(336, 96, '_edit_last', '1'),
(337, 96, '_edit_lock', '1770197802:1'),
(338, 96, '_thumbnail_id', '145'),
(339, 103, '_edit_last', '1'),
(340, 103, '_edit_lock', '1769975330:1'),
(341, 96, 'equipment_type', '20 т • стрела 21 м'),
(342, 96, '_equipment_type', 'field_697fae02e7ecd'),
(343, 96, 'equipment_purpose', 'Монтаж, разгрузка, ЖБИ'),
(344, 96, '_equipment_purpose', 'field_697faea6db61b'),
(345, 107, '_edit_last', '1'),
(346, 107, '_edit_lock', '1769977220:1'),
(347, 107, 'equipment_type', '25 т • стрела 28 м'),
(348, 107, '_equipment_type', 'field_697fae02e7ecd'),
(349, 107, 'equipment_purpose', 'Подача материалов, сложные объекты'),
(350, 107, '_equipment_purpose', 'field_697faea6db61b'),
(351, 108, '_wp_attached_file', '2026/02/kc55727-1.png'),
(352, 108, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1376;s:6:\"height\";i:768;s:4:\"file\";s:21:\"2026/02/kc55727-1.png\";s:8:\"filesize\";i:1906746;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(353, 37, '_wp_trash_meta_status', 'publish'),
(354, 37, '_wp_trash_meta_time', '1769975889'),
(355, 37, '_wp_desired_post_slug', '%d0%b0%d0%bc%d0%ba%d0%b0%d0%b4%d0%be%d1%80-332'),
(356, 35, '_wp_trash_meta_status', 'publish'),
(357, 35, '_wp_trash_meta_time', '1769975889'),
(358, 35, '_wp_desired_post_slug', '%d0%b0%d0%b2%d1%82%d0%be%d0%b2%d1%8b%d1%88%d0%ba%d0%b0-isuzu'),
(359, 33, '_wp_trash_meta_status', 'publish'),
(360, 33, '_wp_trash_meta_time', '1769975889'),
(361, 33, '_wp_desired_post_slug', '%d0%b0%d0%b2%d1%82%d0%be%d0%b2%d1%8b%d1%88%d0%ba%d0%b0-%d0%bc%d0%b0%d0%b7-%d0%bf%d0%bc%d1%81-328'),
(362, 31, '_wp_trash_meta_status', 'publish'),
(363, 31, '_wp_trash_meta_time', '1769975889'),
(364, 31, '_wp_desired_post_slug', '%d0%b0%d0%b2%d1%82%d0%be%d0%ba%d1%80%d0%b0%d0%bd-%d0%bc%d0%b0%d0%b7-%d0%ba%d1%81-45729'),
(365, 29, '_wp_trash_meta_status', 'publish'),
(366, 29, '_wp_trash_meta_time', '1769975889'),
(367, 29, '_wp_desired_post_slug', '%d0%b0%d0%b2%d1%82%d0%be%d0%ba%d1%80%d0%b0%d0%bd-%d1%83%d1%80%d0%b0%d0%bb-%d0%ba%d1%81-35714-2'),
(368, 27, '_wp_trash_meta_status', 'publish'),
(369, 27, '_wp_trash_meta_time', '1769975889'),
(370, 27, '_wp_desired_post_slug', '%d0%b0%d0%b2%d1%82%d0%be%d0%ba%d1%80%d0%b0%d0%bd-%d0%bc%d0%b0%d0%b7-%d0%ba%d1%81-55727'),
(371, 13, '_wp_trash_meta_status', 'publish'),
(372, 13, '_wp_trash_meta_time', '1769975889'),
(373, 13, '_wp_desired_post_slug', '%d0%b0%d0%b2%d1%82%d0%be%d0%ba%d1%80%d0%b0%d0%bd-%d1%83%d1%80%d0%b0%d0%bb-%d0%ba%d1%81-35714'),
(374, 109, '_edit_last', '1'),
(375, 109, '_edit_lock', '1770131912:1'),
(376, 109, 'equipment_type', 'Погрузчик'),
(377, 109, '_equipment_type', 'field_697fae02e7ecd'),
(378, 109, 'equipment_purpose', 'Погрузка, перемещение, уборка'),
(379, 109, '_equipment_purpose', 'field_697faea6db61b'),
(380, 110, '_wp_attached_file', '2026/02/greenicon.png'),
(381, 110, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:21:\"2026/02/greenicon.png\";s:8:\"filesize\";i:614;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(382, 109, '_thumbnail_id', '15'),
(383, 107, '_thumbnail_id', '20'),
(384, 111, '_wp_attached_file', '2026/02/arrow.png'),
(385, 111, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:16;s:6:\"height\";i:16;s:4:\"file\";s:17:\"2026/02/arrow.png\";s:8:\"filesize\";i:200;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(386, 112, '_edit_last', '1'),
(387, 112, '_thumbnail_id', '17'),
(388, 112, 'equipment_type', '16 т • стрела 18 м'),
(389, 112, '_equipment_type', 'field_697fae02e7ecd'),
(390, 112, 'equipment_purpose', 'Сложный подъезд, грунт, снег'),
(391, 112, '_equipment_purpose', 'field_697faea6db61b'),
(392, 112, '_edit_lock', '1770138276:1'),
(393, 113, '_edit_last', '1'),
(394, 113, '_thumbnail_id', '19'),
(395, 113, 'equipment_type', 'Высота 22 м'),
(396, 113, '_equipment_type', 'field_697fae02e7ecd'),
(397, 113, 'equipment_purpose', 'Фасад, кровля, электрика, деревья'),
(398, 113, '_equipment_purpose', 'field_697faea6db61b'),
(399, 113, '_edit_lock', '1769977811:1'),
(400, 114, '_edit_last', '1'),
(401, 114, '_edit_lock', '1769977884:1'),
(402, 114, '_thumbnail_id', '21'),
(403, 114, 'equipment_type', 'Высота 28 м'),
(404, 114, '_equipment_type', 'field_697fae02e7ecd'),
(405, 114, 'equipment_purpose', 'Высотные работы'),
(406, 114, '_equipment_purpose', 'field_697faea6db61b'),
(407, 115, '_edit_last', '1'),
(408, 115, 'equipment_type', 'Высота 30 м'),
(409, 115, '_equipment_type', 'field_697fae02e7ecd'),
(410, 115, 'equipment_purpose', 'Точное позиционирование'),
(411, 115, '_equipment_purpose', 'field_697faea6db61b'),
(412, 115, '_edit_lock', '1770134700:1'),
(413, 115, '_thumbnail_id', '16'),
(416, 117, 'footnotes', ''),
(418, 10, 'title', 'Автокраны и автовышки в аренду в Молодечно и районе'),
(419, 10, '_title', 'field_697fbaea1d4cf'),
(420, 117, 'phone', ''),
(421, 117, '_phone', 'field_697f8bd55fbee'),
(422, 117, 'phone_1', '+375(29)771-36-46'),
(423, 117, '_phone_1', 'field_697f8bd55fbee'),
(424, 117, 'phone_2', '+375(44)590-00-87'),
(425, 117, '_phone_2', 'field_697f930b6ef79'),
(426, 117, 'viber', '22'),
(427, 117, '_viber', 'field_697f975cb4acd'),
(428, 117, 'telegram', '33'),
(429, 117, '_telegram', 'field_697f97f816297'),
(430, 117, 'whatsapp', '44'),
(431, 117, '_whatsapp', 'field_697f981d17373'),
(432, 117, 'adress', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(433, 117, '_adress', 'field_697fa2f9c33a2'),
(434, 117, 'ur_address', 'Юр. Адрес : 222304, Минская обл.<br>г. Молодечно ул. Металлистов, д.2В, пом.15'),
(435, 117, '_ur_address', 'field_697fa16423e36'),
(436, 117, 'unp', 'УНП 692262417'),
(437, 117, '_unp', 'field_697fa338eccd2'),
(438, 117, 'address', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(439, 117, '_address', 'field_697fa2f9c33a2'),
(440, 117, 'work_time', 'Пн-Пт: 8:00 — 17:00'),
(441, 117, '_work_time', 'field_697fa5206a381'),
(442, 117, 'title', 'Автокраны и автовышки в аренду в Молодечно и районе'),
(443, 117, '_title', 'field_697fbaea1d4cf'),
(446, 121, 'footnotes', ''),
(448, 10, 'hero_text', 'Подбор техники под задачу.    Выезд: Молодечно, Вилейка, Сморгонь, Воложин, Мядель, Ошмяны и районы. Возможен выезд по РБ.'),
(449, 10, '_hero_text', 'field_69805b2e1e1eb'),
(450, 121, 'phone', ''),
(451, 121, '_phone', 'field_697f8bd55fbee'),
(452, 121, 'phone_1', '+375(29)771-36-46'),
(453, 121, '_phone_1', 'field_697f8bd55fbee'),
(454, 121, 'phone_2', '+375(44)590-00-87'),
(455, 121, '_phone_2', 'field_697f930b6ef79'),
(456, 121, 'viber', '22'),
(457, 121, '_viber', 'field_697f975cb4acd'),
(458, 121, 'telegram', '33'),
(459, 121, '_telegram', 'field_697f97f816297'),
(460, 121, 'whatsapp', '44'),
(461, 121, '_whatsapp', 'field_697f981d17373'),
(462, 121, 'adress', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(463, 121, '_adress', 'field_697fa2f9c33a2'),
(464, 121, 'ur_address', 'Юр. Адрес : 222304, Минская обл.<br>г. Молодечно ул. Металлистов, д.2В, пом.15'),
(465, 121, '_ur_address', 'field_697fa16423e36'),
(466, 121, 'unp', 'УНП 692262417'),
(467, 121, '_unp', 'field_697fa338eccd2'),
(468, 121, 'address', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(469, 121, '_address', 'field_697fa2f9c33a2'),
(470, 121, 'work_time', 'Пн-Пт: 8:00 — 17:00'),
(471, 121, '_work_time', 'field_697fa5206a381'),
(472, 121, 'title', 'Автокраны и автовышки в аренду в Молодечно и районе'),
(473, 121, '_title', 'field_697fbaea1d4cf'),
(474, 121, 'hero_text', 'Подбор техники под задачу.    Выезд: Молодечно, Вилейка, Сморгонь, Воложин, Мядель, Ошмяны и районы. Возможен выезд по РБ.'),
(475, 121, '_hero_text', 'field_69805b2e1e1eb'),
(478, 122, 'footnotes', ''),
(480, 122, 'phone', ''),
(481, 122, '_phone', 'field_697f8bd55fbee'),
(482, 122, 'phone_1', '+375(29)771-36-46'),
(483, 122, '_phone_1', 'field_697f8bd55fbee'),
(484, 122, 'phone_2', '+375(44)590-00-87'),
(485, 122, '_phone_2', 'field_697f930b6ef79'),
(486, 122, 'viber', '22'),
(487, 122, '_viber', 'field_697f975cb4acd'),
(488, 122, 'telegram', '33'),
(489, 122, '_telegram', 'field_697f97f816297'),
(490, 122, 'whatsapp', '44'),
(491, 122, '_whatsapp', 'field_697f981d17373'),
(492, 122, 'adress', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(493, 122, '_adress', 'field_697fa2f9c33a2'),
(494, 122, 'ur_address', 'Юр. Адрес : 222304, Минская обл.<br>г. Молодечно ул. Металлистов, д.2В, пом.15'),
(495, 122, '_ur_address', 'field_697fa16423e36'),
(496, 122, 'unp', 'УНП 692262417'),
(497, 122, '_unp', 'field_697fa338eccd2'),
(498, 122, 'address', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(499, 122, '_address', 'field_697fa2f9c33a2'),
(500, 122, 'work_time', 'Пн-Пт: 8:00 — 17:00'),
(501, 122, '_work_time', 'field_697fa5206a381'),
(502, 122, 'title', 'Автокраны и автовышки в аренду в Молодечно и районе'),
(503, 122, '_title', 'field_697fbaea1d4cf'),
(504, 122, 'hero_text', 'Подбор техники под задачу.    Выезд: Молодечно, Вилейка, Сморгонь, Воложин, Мядель, Ошмяны и районы. Возможен выезд по РБ.999'),
(505, 122, '_hero_text', 'field_69805b2e1e1eb'),
(508, 123, 'footnotes', ''),
(510, 123, 'phone', ''),
(511, 123, '_phone', 'field_697f8bd55fbee'),
(512, 123, 'phone_1', '+375(29)771-36-46'),
(513, 123, '_phone_1', 'field_697f8bd55fbee'),
(514, 123, 'phone_2', '+375(44)590-00-87'),
(515, 123, '_phone_2', 'field_697f930b6ef79'),
(516, 123, 'viber', '22'),
(517, 123, '_viber', 'field_697f975cb4acd'),
(518, 123, 'telegram', '33'),
(519, 123, '_telegram', 'field_697f97f816297'),
(520, 123, 'whatsapp', '44'),
(521, 123, '_whatsapp', 'field_697f981d17373'),
(522, 123, 'adress', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(523, 123, '_adress', 'field_697fa2f9c33a2'),
(524, 123, 'ur_address', 'Юр. Адрес : 222304, Минская обл.<br>г. Молодечно ул. Металлистов, д.2В, пом.15'),
(525, 123, '_ur_address', 'field_697fa16423e36'),
(526, 123, 'unp', 'УНП 692262417'),
(527, 123, '_unp', 'field_697fa338eccd2'),
(528, 123, 'address', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(529, 123, '_address', 'field_697fa2f9c33a2'),
(530, 123, 'work_time', 'Пн-Пт: 8:00 — 17:00'),
(531, 123, '_work_time', 'field_697fa5206a381'),
(532, 123, 'title', 'Автокраны и автовышки в аренду в Молодечно и районе'),
(533, 123, '_title', 'field_697fbaea1d4cf'),
(534, 123, 'hero_text', 'Подбор техники под задачу.    Выезд: Молодечно, Вилейка, Сморгонь, Воложин, Мядель, Ошмяны и районы. Возможен выезд по РБ.'),
(535, 123, '_hero_text', 'field_69805b2e1e1eb'),
(536, 124, '_form', '<div class=\"form-row\">\n<div class=\"form_group\">\n<label class=\"form_label\" for=\"services\">Вид работ</label>\n[text* services id:services class:form_input placeholder \"Монтаж, разгрузка..\"]\n</div>\n<div class=\"form_group\">\n<label for=\"address\">Адрес</label>\n[text* address id:address class:form_input placeholder \"Молодечно, ул...\"]\n</div>\n</div>\n\n<div class=\"form-row\">\n<div class=\"form_group\">\n<label class=\"form_label\" for=\"date\">Дата</label>\n[date date id:date class:form_input]\n</div>\n<div class=\"form_group\">\n<label class=\"form_label\" for=\"phone\">Телефон</label>\n[tel* phone id:phone class:form_input placeholder \"+375 (29)..\"]\n</div>\n</div>\n\n<div class=\"checkbox_group\">\n<label class=\"checkbox_label\">\n[acceptance consent class:checkbox_input id:consent default:1] Согласен(на) с обработкой персональных данных [/acceptance]\n</label>\n</div>\n\n[submit class:submit_btn \"Получить расчёт\"]'),
(537, 124, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <romanova7410020@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:269:\"От: [your-name] [your-email]\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто уведомление о том, что на вашем веб-сайте ([_site_title] [_site_url]) была отправлена контактная форма.\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(538, 124, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:41:\"[_site_title] <romanova7410020@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:426:\"Сообщение:\n[your-message]\n\n-- \nЭто письмо является квитанцией об отправке контактной формы на нашем веб-сайте ([_site_title] [_site_url]), в которой использовался ваш адрес электронной почты. Если это были не вы, пожалуйста, проигнорируйте это сообщение.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:1;s:13:\"exclude_blank\";b:1;}'),
(539, 124, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:92:\"Спасибо за Ваше сообщение. Оно успешно отправлено.\";s:12:\"mail_sent_ng\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:16:\"validation_error\";s:180:\"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\";s:4:\"spam\";s:144:\"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\";s:12:\"accept_terms\";s:132:\"Вы должны принять условия и положения перед отправкой вашего сообщения.\";s:16:\"invalid_required\";s:46:\"Важно заполнить это поле.\";s:16:\"invalid_too_long\";s:90:\"В это поле вставлен слишком большой объем данных.\";s:17:\"invalid_too_short\";s:86:\"В это поле вставлен слишком малый объем данных.\";s:13:\"upload_failed\";s:90:\"При загрузке файла произошла неизвестная ошибка.\";s:24:\"upload_file_type_invalid\";s:81:\"Вам не разрешено загружать файлы этого типа.\";s:21:\"upload_file_too_large\";s:62:\"Загруженный файл слишком большой.\";s:23:\"upload_failed_php_error\";s:67:\"При загрузке файла произошла ошибка.\";s:12:\"invalid_date\";s:61:\"Введите дату в формате ГГГГ-ММ-ДД.\";s:14:\"date_too_early\";s:71:\"В это поле введена слишком ранняя дата.\";s:13:\"date_too_late\";s:73:\"В это поле введена слишком поздняя дата.\";s:14:\"invalid_number\";s:26:\"Введите число.\";s:16:\"number_too_small\";s:79:\"В это поле введено слишком маленькое число.\";s:16:\"number_too_large\";s:75:\"В это поле введено слишком большое число.\";s:23:\"quiz_answer_not_correct\";s:69:\"Неверный ответ на проверочный вопрос.\";s:13:\"invalid_email\";s:60:\"Введите адрес электронной почты.\";s:11:\"invalid_url\";s:19:\"Введите URL.\";s:11:\"invalid_tel\";s:43:\"Введите номер телефона.\";}'),
(540, 124, '_additional_settings', ''),
(541, 124, '_locale', 'ru_RU'),
(542, 124, '_hash', '8a3c5dd9582b0847a4b72feb232fcbff54efc6da755475380602b8b5929e42f3'),
(550, 128, 'footnotes', ''),
(552, 10, 'question_1', 'Работаете ли по договору и безналу?'),
(553, 10, '_question_1', 'field_6980a5e7b8771'),
(554, 10, 'answer_1', 'Да, мы работаем как с физическими, так и с юридическими лицами. Предоставляем все необходимые документы: договор, акты выполненных работ, счета. Принимаем оплату наличными и безналичным расчётом.'),
(555, 10, '_answer_1', 'field_6980a61f8170c'),
(556, 128, 'phone', ''),
(557, 128, '_phone', 'field_697f8bd55fbee'),
(558, 128, 'phone_1', '+375(29)771-36-46'),
(559, 128, '_phone_1', 'field_697f8bd55fbee'),
(560, 128, 'phone_2', '+375(44)590-00-87'),
(561, 128, '_phone_2', 'field_697f930b6ef79'),
(562, 128, 'viber', '22'),
(563, 128, '_viber', 'field_697f975cb4acd'),
(564, 128, 'telegram', '33'),
(565, 128, '_telegram', 'field_697f97f816297'),
(566, 128, 'whatsapp', '44'),
(567, 128, '_whatsapp', 'field_697f981d17373'),
(568, 128, 'adress', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(569, 128, '_adress', 'field_697fa2f9c33a2'),
(570, 128, 'ur_address', 'Юр. Адрес : 222304, Минская обл.<br>г. Молодечно ул. Металлистов, д.2В, пом.15'),
(571, 128, '_ur_address', 'field_697fa16423e36'),
(572, 128, 'unp', 'УНП 692262417'),
(573, 128, '_unp', 'field_697fa338eccd2'),
(574, 128, 'address', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(575, 128, '_address', 'field_697fa2f9c33a2'),
(576, 128, 'work_time', 'Пн-Пт: 8:00 — 17:00'),
(577, 128, '_work_time', 'field_697fa5206a381'),
(578, 128, 'title', 'Автокраны и автовышки в аренду в Молодечно и районе'),
(579, 128, '_title', 'field_697fbaea1d4cf'),
(580, 128, 'hero_text', 'Подбор техники под задачу.    Выезд: Молодечно, Вилейка, Сморгонь, Воложин, Мядель, Ошмяны и районы. Возможен выезд по РБ.'),
(581, 128, '_hero_text', 'field_69805b2e1e1eb'),
(582, 128, 'question_1', 'Работаете ли по договору и безналу?'),
(583, 128, '_question_1', 'field_6980a5e7b8771'),
(584, 128, 'answer_1', 'Да, мы работаем как с физическими, так и с юридическими лицами. Предоставляем все необходимые документы: договор, акты выполненных работ, счета. Принимаем оплату наличными и безналичным расчётом.'),
(585, 128, '_answer_1', 'field_6980a61f8170c'),
(590, 138, 'footnotes', ''),
(592, 10, 'question_2', 'От чего зависит стоимость аренды?'),
(593, 10, '_question_2', 'field_6980af5653275'),
(594, 10, 'answer_2', 'Стоимость аренды зависит от типа техники, продолжительности работы, сложности задачи и расстояния до объекта. Мы рассчитываем стоимость индивидуально для каждого случая и предлагаем честные цены без скрытых платежей.'),
(595, 10, '_answer_2', 'field_6980af7a02a8c'),
(596, 10, 'question_3', 'Какой минимальный заказ по времени?'),
(597, 10, '_question_3', 'field_6980af9c5a9a2'),
(598, 10, 'answer_3', 'Минимальный заказ составляет 4 часа работы техники. Это включает время на подачу техники к объекту, выполнение работ и возвращение. Для уточнения деталей свяжитесь с нашим менеджером.'),
(599, 10, '_answer_3', 'field_6980aff40a516'),
(600, 10, 'question_4', 'Что нужно сообщить для точного подбора техники?'),
(601, 10, '_question_4', 'field_6980afcfd5618'),
(602, 10, 'answer_4', 'Для точного подбора нам важно знать: вид работ, вес и габариты груза (если применимо), высоту подъёма, условия подъезда к объекту, адрес и желаемую дату. Наш специалист поможет подобрать оптимальный вариант.'),
(603, 10, '_answer_4', 'field_6980b000f261f'),
(604, 10, 'question_5', 'Выезжаете ли в другие города РБ?'),
(605, 10, '_question_5', 'field_6980afddacb72'),
(606, 10, 'answer_5', 'Основная зона работы — Молодечно и ближайшие районы (Вилейка, Сморгонь, Воложин, Мядель, Ошмяны). Выезд в другие города и регионы Беларуси возможен по согласованию. Уточните детали у менеджера.'),
(607, 10, '_answer_5', 'field_6980b00d1942e'),
(608, 138, 'phone', ''),
(609, 138, '_phone', 'field_697f8bd55fbee'),
(610, 138, 'phone_1', '+375(29)771-36-46'),
(611, 138, '_phone_1', 'field_697f8bd55fbee'),
(612, 138, 'phone_2', '+375(44)590-00-87'),
(613, 138, '_phone_2', 'field_697f930b6ef79'),
(614, 138, 'viber', '22'),
(615, 138, '_viber', 'field_697f975cb4acd'),
(616, 138, 'telegram', '33'),
(617, 138, '_telegram', 'field_697f97f816297'),
(618, 138, 'whatsapp', '44'),
(619, 138, '_whatsapp', 'field_697f981d17373'),
(620, 138, 'adress', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(621, 138, '_adress', 'field_697fa2f9c33a2'),
(622, 138, 'ur_address', 'Юр. Адрес : 222304, Минская обл.<br>г. Молодечно ул. Металлистов, д.2В, пом.15'),
(623, 138, '_ur_address', 'field_697fa16423e36'),
(624, 138, 'unp', 'УНП 692262417'),
(625, 138, '_unp', 'field_697fa338eccd2'),
(626, 138, 'address', 'Почтовый адрес: 222307 Минская обл., г. Молодечно ул. В. Гостинец, 137-1'),
(627, 138, '_address', 'field_697fa2f9c33a2'),
(628, 138, 'work_time', 'Пн-Пт: 8:00 — 17:00'),
(629, 138, '_work_time', 'field_697fa5206a381'),
(630, 138, 'title', 'Автокраны и автовышки в аренду в Молодечно и районе'),
(631, 138, '_title', 'field_697fbaea1d4cf'),
(632, 138, 'hero_text', 'Подбор техники под задачу.    Выезд: Молодечно, Вилейка, Сморгонь, Воложин, Мядель, Ошмяны и районы. Возможен выезд по РБ.'),
(633, 138, '_hero_text', 'field_69805b2e1e1eb'),
(634, 138, 'question_1', 'Работаете ли по договору и безналу?'),
(635, 138, '_question_1', 'field_6980a5e7b8771'),
(636, 138, 'answer_1', 'Да, мы работаем как с физическими, так и с юридическими лицами. Предоставляем все необходимые документы: договор, акты выполненных работ, счета. Принимаем оплату наличными и безналичным расчётом.'),
(637, 138, '_answer_1', 'field_6980a61f8170c'),
(638, 138, 'question_2', 'От чего зависит стоимость аренды?'),
(639, 138, '_question_2', 'field_6980af5653275'),
(640, 138, 'answer_2', 'Стоимость аренды зависит от типа техники, продолжительности работы, сложности задачи и расстояния до объекта. Мы рассчитываем стоимость индивидуально для каждого случая и предлагаем честные цены без скрытых платежей.'),
(641, 138, '_answer_2', 'field_6980af7a02a8c'),
(642, 138, 'question_3', 'Какой минимальный заказ по времени?'),
(643, 138, '_question_3', 'field_6980af9c5a9a2'),
(644, 138, 'answer_3', 'Минимальный заказ составляет 4 часа работы техники. Это включает время на подачу техники к объекту, выполнение работ и возвращение. Для уточнения деталей свяжитесь с нашим менеджером.'),
(645, 138, '_answer_3', 'field_6980aff40a516'),
(646, 138, 'question_4', 'Что нужно сообщить для точного подбора техники?'),
(647, 138, '_question_4', 'field_6980afcfd5618'),
(648, 138, 'answer_4', 'Для точного подбора нам важно знать: вид работ, вес и габариты груза (если применимо), высоту подъёма, условия подъезда к объекту, адрес и желаемую дату. Наш специалист поможет подобрать оптимальный вариант.'),
(649, 138, '_answer_4', 'field_6980b000f261f'),
(650, 138, 'question_5', 'Выезжаете ли в другие города РБ?'),
(651, 138, '_question_5', 'field_6980afddacb72'),
(652, 138, 'answer_5', 'Основная зона работы — Молодечно и ближайшие районы (Вилейка, Сморгонь, Воложин, Мядель, Ошмяны). Выезд в другие города и регионы Беларуси возможен по согласованию. Уточните детали у менеджера.'),
(653, 138, '_answer_5', 'field_6980b00d1942e'),
(654, 140, '_edit_last', '1'),
(655, 140, '_edit_lock', '1770132802:1'),
(656, 140, '_thumbnail_id', '108'),
(657, 140, 'equipment_type', ''),
(658, 140, '_equipment_type', 'field_697fae02e7ecd'),
(659, 140, 'equipment_purpose', ''),
(660, 140, '_equipment_purpose', 'field_697faea6db61b'),
(661, 140, '_equipment_badge', 'телескоп'),
(662, 140, '_wp_trash_meta_status', 'publish'),
(663, 140, '_wp_trash_meta_time', '1770132949'),
(664, 140, '_wp_desired_post_slug', '%d0%bf%d0%bf%d0%bf'),
(665, 141, '_edit_last', '1'),
(666, 141, '_edit_lock', '1770133332:1'),
(667, 141, '_thumbnail_id', '108'),
(668, 141, 'equipment_type', 'ппп'),
(669, 141, '_equipment_type', 'field_697fae02e7ecd'),
(670, 141, 'equipment_purpose', 'ааа'),
(671, 141, '_equipment_purpose', 'field_697faea6db61b'),
(672, 141, '_equipment_badge', 'телескоп'),
(673, 142, '_edit_last', '1'),
(674, 142, '_edit_lock', '1770134405:1'),
(675, 142, '_thumbnail_id', '21'),
(676, 142, 'equipment_type', 'gg'),
(677, 142, '_equipment_type', 'field_697fae02e7ecd'),
(678, 142, 'equipment_purpose', 'gg'),
(679, 142, '_equipment_purpose', 'field_697faea6db61b'),
(680, 142, '_equipment_badge', 'телескоп'),
(681, 143, '_edit_last', '1'),
(682, 143, '_edit_lock', '1770134531:1'),
(683, 143, '_thumbnail_id', '20'),
(684, 143, 'equipment_type', 'щщ'),
(685, 143, '_equipment_type', 'field_697fae02e7ecd'),
(686, 143, 'equipment_purpose', 'щщ'),
(687, 143, '_equipment_purpose', 'field_697faea6db61b'),
(688, 143, '_equipment_badge', 'Вездеход'),
(689, 143, '_wp_trash_meta_status', 'publish'),
(690, 143, '_wp_trash_meta_time', '1770134680'),
(691, 143, '_wp_desired_post_slug', '%d1%88%d1%88%d1%88%d1%88'),
(692, 142, '_wp_trash_meta_status', 'publish'),
(693, 142, '_wp_trash_meta_time', '1770134681'),
(694, 142, '_wp_desired_post_slug', 'kkk'),
(695, 141, '_wp_trash_meta_status', 'publish'),
(696, 141, '_wp_trash_meta_time', '1770134683'),
(697, 141, '_wp_desired_post_slug', '%d1%80%d1%80%d1%80%d1%80%d1%80'),
(698, 115, '_equipment_badge', 'Телескоп'),
(699, 112, '_equipment_badge', 'Вездеход'),
(720, 124, '_config_validation', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";s:22:\"invalid_mailbox_syntax\";s:4:\"args\";a:3:{s:7:\"message\";s:125:\"Был использован некорректный синтаксис почтового адреса в поле %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(721, 145, '_wp_attached_file', '2026/02/kc45729-1.png'),
(722, 145, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1264;s:6:\"height\";i:705;s:4:\"file\";s:21:\"2026/02/kc45729-1.png\";s:8:\"filesize\";i:2171642;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(723, 96, '_equipment_badge', ''),
(726, 63, '_config_validation', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";s:22:\"invalid_mailbox_syntax\";s:4:\"args\";a:3:{s:7:\"message\";s:125:\"Был использован некорректный синтаксис почтового адреса в поле %name%.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2026-02-01 10:40:02', '2026-02-01 07:40:02', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2026-02-01 14:46:10', '2026-02-01 11:46:10', '', 0, 'http://localhost/mss/?p=1', 0, 'post', '', 1),
(2, 1, '2026-02-01 10:40:02', '2026-02-01 07:40:02', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/mss/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2026-02-01 13:02:50', '2026-02-01 10:02:50', '', 0, 'http://localhost/mss/?page_id=2', 0, 'page', '', 0),
(3, 1, '2026-02-01 10:40:02', '2026-02-01 07:40:02', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Кто мы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost/mss.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Комментарии</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Медиафайлы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куки</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Встраиваемое содержимое других вебсайтов</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">С кем мы делимся вашими данными</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Как долго мы храним ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Какие у вас права на ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куда отправляются ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии посетителей могут проверяться автоматизированной службой обнаружения спама.</p>\n<!-- /wp:paragraph -->\n', 'Политика конфиденциальности', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2026-02-01 13:02:47', '2026-02-01 10:02:47', '', 0, 'http://localhost/mss/?page_id=3', 0, 'page', '', 0),
(4, 0, '2026-02-01 10:40:08', '2026-02-01 07:40:08', '<!-- wp:page-list /-->', 'Навигация', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2026-02-01 10:40:08', '2026-02-01 07:40:08', '', 0, 'http://localhost/mss/2026/02/01/navigation/', 0, 'wp_navigation', '', 0),
(5, 0, '2026-02-01 10:40:08', '2026-02-01 07:40:08', '<!-- wp:page-list /-->', 'Навигация', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2026-02-01 10:40:08', '2026-02-01 07:40:08', '', 0, 'http://localhost/mss/index.php/2026/02/01/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2026-02-01 10:40:29', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2026-02-01 10:40:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?p=6', 0, 'post', '', 0),
(7, 1, '2026-02-01 13:00:05', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2026-02-01 13:00:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?p=7', 0, 'post', '', 0),
(8, 1, '2026-02-01 13:02:47', '2026-02-01 10:02:47', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Кто мы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost/mss.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Комментарии</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Медиафайлы</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куки</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Встраиваемое содержимое других вебсайтов</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">С кем мы делимся вашими данными</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Как долго мы храним ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Какие у вас права на ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Куда отправляются ваши данные</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии посетителей могут проверяться автоматизированной службой обнаружения спама.</p>\n<!-- /wp:paragraph -->\n', 'Политика конфиденциальности', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2026-02-01 13:02:47', '2026-02-01 10:02:47', '', 3, 'http://localhost/mss/?p=8', 0, 'revision', '', 0),
(9, 1, '2026-02-01 13:02:50', '2026-02-01 10:02:50', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/mss/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2026-02-01 13:02:50', '2026-02-01 10:02:50', '', 2, 'http://localhost/mss/?p=9', 0, 'revision', '', 0),
(10, 1, '2026-02-01 13:06:54', '2026-02-01 10:06:54', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2026-02-02 17:18:51', '2026-02-02 14:18:51', '', 0, 'http://localhost/mss/?page_id=10', 0, 'page', '', 0),
(11, 1, '2026-02-01 13:06:54', '2026-02-01 10:06:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-01 13:06:54', '2026-02-01 10:06:54', '', 10, 'http://localhost/mss/?p=11', 0, 'revision', '', 0),
(12, 1, '2026-02-01 14:46:10', '2026-02-01 11:46:10', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2026-02-01 14:46:10', '2026-02-01 11:46:10', '', 1, 'http://localhost/mss/?p=12', 0, 'revision', '', 0),
(13, 1, '2026-02-01 14:51:48', '2026-02-01 11:51:48', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Монтаж, разгрузка, ЖБИ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'trash', 'open', 'open', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%ba%d1%80%d0%b0%d0%bd-%d1%83%d1%80%d0%b0%d0%bb-%d0%ba%d1%81-35714__trashed', '', '', '2026-02-01 22:58:09', '2026-02-01 19:58:09', '', 0, 'http://localhost/mss/?p=13', 0, 'post', '', 0),
(14, 1, '2026-02-01 14:51:48', '2026-02-01 11:51:48', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м</p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 14:51:48', '2026-02-01 11:51:48', '', 13, 'http://localhost/mss/?p=14', 0, 'revision', '', 0),
(15, 1, '2026-02-01 14:53:46', '2026-02-01 11:53:46', '', '332', '', 'inherit', 'open', 'closed', '', '332', '', '', '2026-02-01 14:53:46', '2026-02-01 11:53:46', '', 13, 'http://localhost/mss/wp-content/uploads/2026/02/332.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2026-02-01 14:53:47', '2026-02-01 11:53:47', '', 'isuzu', '', 'inherit', 'open', 'closed', '', 'isuzu', '', '', '2026-02-01 14:53:47', '2026-02-01 11:53:47', '', 13, 'http://localhost/mss/wp-content/uploads/2026/02/isuzu.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2026-02-01 14:53:48', '2026-02-01 11:53:48', '', 'kc35714', '', 'inherit', 'open', 'closed', '', 'kc35714', '', '', '2026-02-01 14:53:48', '2026-02-01 11:53:48', '', 13, 'http://localhost/mss/wp-content/uploads/2026/02/kc35714.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2026-02-01 14:53:48', '2026-02-01 11:53:48', '', 'kc45729', '', 'inherit', 'open', 'closed', '', 'kc45729', '', '', '2026-02-01 14:53:48', '2026-02-01 11:53:48', '', 13, 'http://localhost/mss/wp-content/uploads/2026/02/kc45729.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2026-02-01 14:53:49', '2026-02-01 11:53:49', '', 'kc45729n', '', 'inherit', 'open', 'closed', '', 'kc45729n', '', '', '2026-02-01 14:53:49', '2026-02-01 11:53:49', '', 13, 'http://localhost/mss/wp-content/uploads/2026/02/kc45729n.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2026-02-01 14:53:49', '2026-02-01 11:53:49', '', 'kc55727', '', 'inherit', 'open', 'closed', '', 'kc55727', '', '', '2026-02-01 14:53:49', '2026-02-01 11:53:49', '', 13, 'http://localhost/mss/wp-content/uploads/2026/02/kc55727.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2026-02-01 14:53:50', '2026-02-01 11:53:50', '', 'pmc328', '', 'inherit', 'open', 'closed', '', 'pmc328', '', '', '2026-02-01 14:53:50', '2026-02-01 11:53:50', '', 13, 'http://localhost/mss/wp-content/uploads/2026/02/pmc328.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2026-02-01 14:56:48', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2026-02-01 14:56:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?p=23', 0, 'post', '', 0),
(24, 1, '2026-02-01 14:59:01', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2026-02-01 14:59:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?p=24', 0, 'post', '', 0),
(26, 1, '2026-02-01 15:04:14', '2026-02-01 12:04:14', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Подходит для: Монтаж, разгрузка, ЖБИ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link wp-element-button\">Узнать стоимость</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 15:04:14', '2026-02-01 12:04:14', '', 13, 'http://localhost/mss/?p=26', 0, 'revision', '', 0),
(27, 1, '2026-02-01 15:05:38', '2026-02-01 12:05:38', '<!-- wp:paragraph -->\n<p>25 т • стрела 28 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Подача материалов, сложные объекты</p>\n<!-- /wp:paragraph -->', 'Автокран МАЗ КС 55727', '', 'trash', 'open', 'open', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%ba%d1%80%d0%b0%d0%bd-%d0%bc%d0%b0%d0%b7-%d0%ba%d1%81-55727__trashed', '', '', '2026-02-01 22:58:09', '2026-02-01 19:58:09', '', 0, 'http://localhost/mss/?p=27', 0, 'post', '', 0),
(28, 1, '2026-02-01 15:05:38', '2026-02-01 12:05:38', '<!-- wp:paragraph -->\n<p>25 т • стрела 28 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Подходит для:  Подача материалов, сложные объекты</p>\n<!-- /wp:paragraph -->', 'Автокран МАЗ КС 55727', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2026-02-01 15:05:38', '2026-02-01 12:05:38', '', 27, 'http://localhost/mss/?p=28', 0, 'revision', '', 0),
(29, 1, '2026-02-01 15:07:55', '2026-02-01 12:07:55', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Сложный подъезд, грунт, снег</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'trash', 'open', 'open', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%ba%d1%80%d0%b0%d0%bd-%d1%83%d1%80%d0%b0%d0%bb-%d0%ba%d1%81-35714-2__trashed', '', '', '2026-02-01 22:58:09', '2026-02-01 19:58:09', '', 0, 'http://localhost/mss/?p=29', 0, 'post', '', 0),
(30, 1, '2026-02-01 15:07:55', '2026-02-01 12:07:55', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Подходит для:  Сложный подъезд, грунт, снег</p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2026-02-01 15:07:55', '2026-02-01 12:07:55', '', 29, 'http://localhost/mss/?p=30', 0, 'revision', '', 0),
(31, 1, '2026-02-01 15:09:49', '2026-02-01 12:09:49', '<!-- wp:paragraph -->\n<p>Высота 22 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Фасад, кровля, электрика, деревья</p>\n<!-- /wp:paragraph -->', 'Автокран МАЗ КС 45729', '', 'trash', 'open', 'open', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%ba%d1%80%d0%b0%d0%bd-%d0%bc%d0%b0%d0%b7-%d0%ba%d1%81-45729__trashed', '', '', '2026-02-01 22:58:09', '2026-02-01 19:58:09', '', 0, 'http://localhost/mss/?p=31', 0, 'post', '', 0),
(32, 1, '2026-02-01 15:09:49', '2026-02-01 12:09:49', '<!-- wp:paragraph -->\n<p>Высота 22 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Подходит для: Фасад, кровля, электрика, деревья</p>\n<!-- /wp:paragraph -->', 'Автокран МАЗ КС 45729', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2026-02-01 15:09:49', '2026-02-01 12:09:49', '', 31, 'http://localhost/mss/?p=32', 0, 'revision', '', 0),
(33, 1, '2026-02-01 15:10:48', '2026-02-01 12:10:48', '<!-- wp:paragraph -->\n<p>Высота 28 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Высотные работы</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автовышка МАЗ ПМС 328', '', 'trash', 'open', 'open', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%b2%d1%8b%d1%88%d0%ba%d0%b0-%d0%bc%d0%b0%d0%b7-%d0%bf%d0%bc%d1%81-328__trashed', '', '', '2026-02-01 22:58:09', '2026-02-01 19:58:09', '', 0, 'http://localhost/mss/?p=33', 0, 'post', '', 0),
(34, 1, '2026-02-01 15:10:48', '2026-02-01 12:10:48', '<!-- wp:paragraph -->\n<p>Высота 28 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Подходит для: Высотные работы</p>\n<!-- /wp:paragraph -->', 'Автовышка МАЗ ПМС 328', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2026-02-01 15:10:48', '2026-02-01 12:10:48', '', 33, 'http://localhost/mss/?p=34', 0, 'revision', '', 0),
(35, 1, '2026-02-01 15:11:32', '2026-02-01 12:11:32', '<!-- wp:paragraph -->\n<p>Высота 30 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Точное позиционирование</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автовышка Isuzu', '', 'trash', 'open', 'open', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%b2%d1%8b%d1%88%d0%ba%d0%b0-isuzu__trashed', '', '', '2026-02-01 22:58:09', '2026-02-01 19:58:09', '', 0, 'http://localhost/mss/?p=35', 0, 'post', '', 0),
(36, 1, '2026-02-01 15:11:32', '2026-02-01 12:11:32', '<!-- wp:paragraph -->\n<p>Высота 30 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Подходит для: Точное позиционирование</p>\n<!-- /wp:paragraph -->', 'Автовышка Isuzu', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2026-02-01 15:11:32', '2026-02-01 12:11:32', '', 35, 'http://localhost/mss/?p=36', 0, 'revision', '', 0),
(37, 1, '2026-02-01 15:12:26', '2026-02-01 12:12:26', '<!-- wp:paragraph -->\n<p>Погрузчик</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Погрузка, перемещение, уборка</p>\n<!-- /wp:paragraph -->', 'Амкадор 332', '', 'trash', 'open', 'open', '', '%d0%b0%d0%bc%d0%ba%d0%b0%d0%b4%d0%be%d1%80-332__trashed', '', '', '2026-02-01 22:58:09', '2026-02-01 19:58:09', '', 0, 'http://localhost/mss/?p=37', 0, 'post', '', 0),
(38, 1, '2026-02-01 15:12:26', '2026-02-01 12:12:26', '<!-- wp:paragraph -->\n<p>Погрузчик</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Подходит для:  Погрузка, перемещение, уборка</p>\n<!-- /wp:paragraph -->', 'Амкадор 332', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2026-02-01 15:12:26', '2026-02-01 12:12:26', '', 37, 'http://localhost/mss/?p=38', 0, 'revision', '', 0),
(39, 1, '2026-02-01 15:51:22', '2026-02-01 12:51:22', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Подходит для: Монтаж, разгрузка, ЖБИ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 15:51:22', '2026-02-01 12:51:22', '', 13, 'http://localhost/mss/?p=39', 0, 'revision', '', 0),
(41, 1, '2026-02-01 16:06:45', '2026-02-01 13:06:45', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 16:06:45', '2026-02-01 13:06:45', '', 13, 'http://localhost/mss/?p=41', 0, 'revision', '', 0),
(42, 1, '2026-02-01 16:09:56', '2026-02-01 13:09:56', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Монтаж, разгрузка, ЖБИ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 16:09:56', '2026-02-01 13:09:56', '', 13, 'http://localhost/mss/?p=42', 0, 'revision', '', 0),
(43, 1, '2026-02-01 16:40:12', '2026-02-01 13:40:12', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м &lt;!--more--> Монтаж, разгрузка, ЖБИ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 16:40:12', '2026-02-01 13:40:12', '', 13, 'http://localhost/mss/?p=43', 0, 'revision', '', 0),
(44, 1, '2026-02-01 16:40:44', '2026-02-01 13:40:44', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&lt;!--more--></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p>Монтаж, разгрузка, ЖБИ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 16:40:44', '2026-02-01 13:40:44', '', 13, 'http://localhost/mss/?p=44', 0, 'revision', '', 0),
(45, 1, '2026-02-01 16:42:39', '2026-02-01 13:42:39', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&lt;!--more--&gt;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p>Монтаж, разгрузка, ЖБИ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 16:42:39', '2026-02-01 13:42:39', '', 13, 'http://localhost/mss/?p=45', 0, 'revision', '', 0),
(47, 1, '2026-02-01 16:44:10', '2026-02-01 13:44:10', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>  &lt;!--more--></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p>Монтаж, разгрузка, ЖБИ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 16:44:10', '2026-02-01 13:44:10', '', 13, 'http://localhost/mss/?p=47', 0, 'revision', '', 0),
(48, 1, '2026-02-01 16:44:55', '2026-02-01 13:44:55', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 16:44:55', '2026-02-01 13:44:55', '', 13, 'http://localhost/mss/?p=48', 0, 'revision', '', 0),
(49, 1, '2026-02-01 16:45:21', '2026-02-01 13:45:21', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 16:45:21', '2026-02-01 13:45:21', '', 13, 'http://localhost/mss/?p=49', 0, 'revision', '', 0),
(50, 1, '2026-02-01 16:45:49', '2026-02-01 13:45:49', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м &lt;!--more--> Монтаж, разгрузка, ЖБИ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 16:45:49', '2026-02-01 13:45:49', '', 13, 'http://localhost/mss/?p=50', 0, 'revision', '', 0),
(51, 1, '2026-02-01 16:49:56', '2026-02-01 13:49:56', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>/&lt;!--more--></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>/Монтаж, разгрузка, ЖБИ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 16:49:56', '2026-02-01 13:49:56', '', 13, 'http://localhost/mss/?p=51', 0, 'revision', '', 0),
(52, 1, '2026-02-01 16:52:13', '2026-02-01 13:52:13', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>/Монтаж, разгрузка, ЖБИ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 16:52:13', '2026-02-01 13:52:13', '', 13, 'http://localhost/mss/?p=52', 0, 'revision', '', 0),
(53, 1, '2026-02-01 16:52:19', '2026-02-01 13:52:19', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Монтаж, разгрузка, ЖБИ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 16:52:19', '2026-02-01 13:52:19', '', 13, 'http://localhost/mss/?p=53', 0, 'revision', '', 0),
(54, 1, '2026-02-01 16:52:49', '2026-02-01 13:52:49', '<!-- wp:paragraph -->\n<p>25 т • стрела 28 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Подача материалов, сложные объекты</p>\n<!-- /wp:paragraph -->', 'Автокран МАЗ КС 55727', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2026-02-01 16:52:49', '2026-02-01 13:52:49', '', 27, 'http://localhost/mss/?p=54', 0, 'revision', '', 0),
(55, 1, '2026-02-01 16:53:39', '2026-02-01 13:53:39', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Сложный подъезд, грунт, снег</p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2026-02-01 16:53:39', '2026-02-01 13:53:39', '', 29, 'http://localhost/mss/?p=55', 0, 'revision', '', 0),
(56, 1, '2026-02-01 16:54:24', '2026-02-01 13:54:24', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Сложный подъезд, грунт, снег</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2026-02-01 16:54:24', '2026-02-01 13:54:24', '', 29, 'http://localhost/mss/?p=56', 0, 'revision', '', 0),
(57, 1, '2026-02-01 16:54:41', '2026-02-01 13:54:41', '<!-- wp:paragraph -->\n<p>Высота 22 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Фасад, кровля, электрика, деревья</p>\n<!-- /wp:paragraph -->', 'Автокран МАЗ КС 45729', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2026-02-01 16:54:41', '2026-02-01 13:54:41', '', 31, 'http://localhost/mss/?p=57', 0, 'revision', '', 0),
(58, 1, '2026-02-01 16:54:58', '2026-02-01 13:54:58', '<!-- wp:paragraph -->\n<p>Высота 28 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Высотные работы</p>\n<!-- /wp:paragraph -->', 'Автовышка МАЗ ПМС 328', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2026-02-01 16:54:58', '2026-02-01 13:54:58', '', 33, 'http://localhost/mss/?p=58', 0, 'revision', '', 0),
(59, 1, '2026-02-01 16:55:11', '2026-02-01 13:55:11', '<!-- wp:paragraph -->\n<p>Высота 28 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Высотные работы</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автовышка МАЗ ПМС 328', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2026-02-01 16:55:11', '2026-02-01 13:55:11', '', 33, 'http://localhost/mss/?p=59', 0, 'revision', '', 0),
(60, 1, '2026-02-01 16:55:25', '2026-02-01 13:55:25', '<!-- wp:paragraph -->\n<p>Погрузчик</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Погрузка, перемещение, уборка</p>\n<!-- /wp:paragraph -->', 'Амкадор 332', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2026-02-01 16:55:25', '2026-02-01 13:55:25', '', 37, 'http://localhost/mss/?p=60', 0, 'revision', '', 0),
(61, 1, '2026-02-01 17:16:50', '2026-02-01 14:16:50', '<!-- wp:paragraph -->\n<p>16 т • стрела 18 м </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Монтаж, разгрузка, ЖБИ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автокран Урал КС 35714', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2026-02-01 17:16:50', '2026-02-01 14:16:50', '', 13, 'http://localhost/mss/?p=61', 0, 'revision', '', 0),
(62, 1, '2026-02-01 17:31:29', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2026-02-01 17:31:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?p=62', 0, 'post', '', 0),
(63, 1, '2026-02-01 17:39:31', '2026-02-01 14:39:31', '[text* text-52 class:form_calc placeholder \"Имя\"][tel* tel-94 class:form_calc placeholder \"Телефон\"][text text-25 class:form_calc placeholder \"Комментарий (необязательно)\"]<label class=\"checkbox_label\">\r\n[acceptance consent class:checkbox_input id:consent default:1] Согласен(на) с обработкой персональных данных [/acceptance]\r\n</label>[submit class:get_btn2 \"Получить расчёт\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <romanova7410020@gmail.com>\n[_site_admin_email]\nОт: [your-name] [your-email]\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто уведомление о том, что на вашем веб-сайте ([_site_title] [_site_url]) была отправлена контактная форма.\nReply-To: [your-email]\n\n1\n1\n\n[_site_title] \"[your-subject]\"\n[_site_title] <romanova7410020@gmail.com>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто письмо является квитанцией об отправке контактной формы на нашем веб-сайте ([_site_title] [_site_url]), в которой использовался ваш адрес электронной почты. Если это были не вы, пожалуйста, проигнорируйте это сообщение.\nReply-To: [_site_admin_email]\n\n1\n1\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nВажно заполнить это поле.\nВ это поле вставлен слишком большой объем данных.\nВ это поле вставлен слишком малый объем данных.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nЗагруженный файл слишком большой.\nПри загрузке файла произошла ошибка.\nВведите дату в формате ГГГГ-ММ-ДД.\nВ это поле введена слишком ранняя дата.\nВ это поле введена слишком поздняя дата.\nВведите число.\nВ это поле введено слишком маленькое число.\nВ это поле введено слишком большое число.\nНеверный ответ на проверочный вопрос.\nВведите адрес электронной почты.\nВведите URL.\nВведите номер телефона.', 'Контактная форма', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d0%bd%d0%b0%d1%8f-%d1%84%d0%be%d1%80%d0%bc%d0%b0-1', '', '', '2026-02-04 13:15:36', '2026-02-04 10:15:36', '', 0, 'http://localhost/mss/?post_type=wpcf7_contact_form&#038;p=63', 0, 'wpcf7_contact_form', '', 0),
(64, 1, '2026-02-01 20:14:00', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-02-01 20:14:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?post_type=acf-field-group&p=64', 0, 'acf-field-group', '', 0),
(65, 1, '2026-02-01 20:27:21', '2026-02-01 17:27:21', 'a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"10\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";}', 'Главная страница', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', 'publish', 'closed', 'closed', '', 'group_697f8bd53bc6d', '', '', '2026-02-02 17:10:58', '2026-02-02 14:10:58', '', 0, 'http://localhost/mss/?post_type=acf-field-group&#038;p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2026-02-01 20:27:21', '2026-02-01 17:27:21', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:42:\"введите номер телефона\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'phone_1', 'phone_1', 'publish', 'closed', 'closed', '', 'field_697f8bd55fbee', '', '', '2026-02-02 16:25:24', '2026-02-02 13:25:24', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=66', 9, 'acf-field', '', 0),
(68, 1, '2026-02-01 20:46:57', '2026-02-01 17:46:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-01 20:46:57', '2026-02-01 17:46:57', '', 10, 'http://localhost/mss/?p=68', 0, 'revision', '', 0),
(70, 1, '2026-02-01 20:52:45', '2026-02-01 17:52:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-01 20:52:45', '2026-02-01 17:52:45', '', 10, 'http://localhost/mss/?p=70', 0, 'revision', '', 0),
(71, 1, '2026-02-01 20:53:50', '2026-02-01 17:53:50', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'phone_2', 'phone_2', 'publish', 'closed', 'closed', '', 'field_697f930b6ef79', '', '', '2026-02-02 16:25:24', '2026-02-02 13:25:24', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=71', 10, 'acf-field', '', 0),
(73, 1, '2026-02-01 20:56:41', '2026-02-01 17:56:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-01 20:56:41', '2026-02-01 17:56:41', '', 10, 'http://localhost/mss/?p=73', 0, 'revision', '', 0),
(74, 1, '2026-02-01 21:13:35', '2026-02-01 18:13:35', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:38:\"введите ссылка на viber\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'viber', 'viber', 'publish', 'closed', 'closed', '', 'field_697f975cb4acd', '', '', '2026-02-02 16:25:24', '2026-02-02 13:25:24', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=74', 5, 'acf-field', '', 0),
(75, 1, '2026-02-01 21:14:49', '2026-02-01 18:14:49', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"введите ссылку на telegram\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'telegram', 'telegram', 'publish', 'closed', 'closed', '', 'field_697f97f816297', '', '', '2026-02-02 16:25:24', '2026-02-02 13:25:24', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=75', 6, 'acf-field', '', 0),
(76, 1, '2026-02-01 21:15:25', '2026-02-01 18:15:25', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"введите ссылку на whatsapp\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'whatsapp', 'whatsapp', 'publish', 'closed', 'closed', '', 'field_697f981d17373', '', '', '2026-02-02 16:25:24', '2026-02-02 13:25:24', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=76', 7, 'acf-field', '', 0),
(77, 1, '2026-02-01 21:39:53', '2026-02-01 18:39:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-01 21:39:53', '2026-02-01 18:39:53', '', 10, 'http://localhost/mss/?p=77', 0, 'revision', '', 0),
(78, 1, '2026-02-01 21:40:20', '2026-02-01 18:40:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-01 21:40:20', '2026-02-01 18:40:20', '', 10, 'http://localhost/mss/?p=78', 0, 'revision', '', 0),
(79, 1, '2026-02-01 21:45:22', '2026-02-01 18:45:22', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}', 'Главный экран', 'главный_экран', 'publish', 'closed', 'closed', '', 'field_697f9ef0f7bb8', '', '', '2026-02-01 21:50:44', '2026-02-01 18:50:44', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=79', 0, 'acf-field', '', 0),
(80, 1, '2026-02-01 21:46:49', '2026-02-01 18:46:49', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}', 'Задачи', 'задачи', 'publish', 'closed', 'closed', '', 'field_697f9f5273465', '', '', '2026-02-02 11:08:22', '2026-02-02 08:08:22', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=80', 3, 'acf-field', '', 0),
(82, 1, '2026-02-01 21:48:29', '2026-02-01 18:48:29', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}', 'Социальные сети', 'социальные_сети', 'publish', 'closed', 'closed', '', 'field_697f9fee98be5', '', '', '2026-02-02 16:25:24', '2026-02-02 13:25:24', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=82', 4, 'acf-field', '', 0),
(83, 1, '2026-02-01 21:49:09', '2026-02-01 18:49:09', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}', 'Контакты', 'контакты', 'publish', 'closed', 'closed', '', 'field_697fa017bfb66', '', '', '2026-02-02 16:25:24', '2026-02-02 13:25:24', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=83', 8, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(84, 1, '2026-02-01 21:55:26', '2026-02-01 18:55:26', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:48:\"введите юридический адрес\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'ur_address', 'ur_address', 'publish', 'closed', 'closed', '', 'field_697fa16423e36', '', '', '2026-02-02 16:25:24', '2026-02-02 13:25:24', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=84', 11, 'acf-field', '', 0),
(85, 1, '2026-02-01 21:56:55', '2026-02-01 18:56:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-01 21:56:55', '2026-02-01 18:56:55', '', 10, 'http://localhost/mss/?p=85', 0, 'revision', '', 0),
(86, 1, '2026-02-01 22:01:52', '2026-02-01 19:01:52', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:42:\"введите почтовый адрес\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'address', 'address', 'publish', 'closed', 'closed', '', 'field_697fa2f9c33a2', '', '', '2026-02-02 16:25:24', '2026-02-02 13:25:24', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=86', 12, 'acf-field', '', 0),
(87, 1, '2026-02-01 22:02:55', '2026-02-01 19:02:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"введите УНП\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'unp', 'unp', 'publish', 'closed', 'closed', '', 'field_697fa338eccd2', '', '', '2026-02-02 16:25:24', '2026-02-02 13:25:24', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=87', 13, 'acf-field', '', 0),
(88, 1, '2026-02-01 22:04:28', '2026-02-01 19:04:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-01 22:04:28', '2026-02-01 19:04:28', '', 10, 'http://localhost/mss/?p=88', 0, 'revision', '', 0),
(90, 1, '2026-02-01 22:05:19', '2026-02-01 19:05:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-01 22:05:19', '2026-02-01 19:05:19', '', 10, 'http://localhost/mss/?p=90', 0, 'revision', '', 0),
(91, 1, '2026-02-01 22:09:14', '2026-02-01 19:09:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-01 22:09:14', '2026-02-01 19:09:14', '', 10, 'http://localhost/mss/?p=91', 0, 'revision', '', 0),
(92, 1, '2026-02-01 22:11:05', '2026-02-01 19:11:05', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:38:\"введите время работы\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'work_time', 'work_time', 'publish', 'closed', 'closed', '', 'field_697fa5206a381', '', '', '2026-02-02 16:25:24', '2026-02-02 13:25:24', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=92', 14, 'acf-field', '', 0),
(93, 1, '2026-02-01 22:11:39', '2026-02-01 19:11:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-01 22:11:39', '2026-02-01 19:11:39', '', 10, 'http://localhost/mss/?p=93', 0, 'revision', '', 0),
(94, 1, '2026-02-01 22:17:54', '2026-02-01 19:17:54', '<!-- wp:paragraph -->\n<p>Высота 30 м</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Точное позиционирование</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Автовышка Isuzu', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2026-02-01 22:17:54', '2026-02-01 19:17:54', '', 35, 'http://localhost/mss/?p=94', 0, 'revision', '', 0),
(95, 1, '2026-02-01 22:28:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-02-01 22:28:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?post_type=equipment&p=95', 0, 'equipment', '', 0),
(96, 1, '2026-02-01 22:34:33', '2026-02-01 19:34:33', '', 'Автокран МАЗ КС 45729', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%ba%d1%80%d0%b0%d0%bd-%d0%bc%d0%b0%d0%b7-%d0%ba%d1%81-45729', '', '', '2026-02-04 12:30:52', '2026-02-04 09:30:52', '', 0, 'http://localhost/mss/?post_type=equipment&#038;p=96', 1, 'equipment', '', 0),
(97, 1, '2026-02-01 22:37:31', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-02-01 22:37:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?post_type=equipment&p=97', 0, 'equipment', '', 0),
(98, 1, '2026-02-01 22:39:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-02-01 22:39:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?post_type=equipment&p=98', 0, 'equipment', '', 0),
(99, 1, '2026-02-01 22:42:24', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-02-01 22:42:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?post_type=equipment&p=99', 0, 'equipment', '', 0),
(100, 1, '2026-02-01 22:43:43', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-02-01 22:43:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?post_type=equipment&p=100', 0, 'equipment', '', 0),
(101, 1, '2026-02-01 22:43:56', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-02-01 22:43:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?post_type=equipment&p=101', 0, 'equipment', '', 0),
(102, 1, '2026-02-01 22:44:24', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-02-01 22:44:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?post_type=equipment&p=102', 0, 'equipment', '', 0),
(103, 1, '2026-02-01 22:50:11', '2026-02-01 19:50:11', 'a:9:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"equipment\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";}', 'Данные техники', '%d0%b4%d0%b0%d0%bd%d0%bd%d1%8b%d0%b5-%d1%82%d0%b5%d1%85%d0%bd%d0%b8%d0%ba%d0%b8', 'publish', 'closed', 'closed', '', 'group_697fae019dea7', '', '', '2026-02-01 22:51:10', '2026-02-01 19:51:10', '', 0, 'http://localhost/mss/?post_type=acf-field-group&#038;p=103', 0, 'acf-field-group', '', 0),
(104, 1, '2026-02-01 22:50:11', '2026-02-01 19:50:11', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'equipment_type', 'equipment_type', 'publish', 'closed', 'closed', '', 'field_697fae02e7ecd', '', '', '2026-02-01 22:50:11', '2026-02-01 19:50:11', '', 103, 'http://localhost/mss/?post_type=acf-field&p=104', 0, 'acf-field', '', 0),
(105, 1, '2026-02-01 22:50:18', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-02-01 22:50:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?post_type=equipment&p=105', 0, 'equipment', '', 0),
(106, 1, '2026-02-01 22:51:10', '2026-02-01 19:51:10', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'equipment_purpose', 'equipment_purpose', 'publish', 'closed', 'closed', '', 'field_697faea6db61b', '', '', '2026-02-01 22:51:10', '2026-02-01 19:51:10', '', 103, 'http://localhost/mss/?post_type=acf-field&p=106', 1, 'acf-field', '', 0),
(107, 1, '2026-02-01 22:54:21', '2026-02-01 19:54:21', '', 'Автокран МАЗ КС 55727', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%ba%d1%80%d0%b0%d0%bd-%d0%bc%d0%b0%d0%b7-%d0%ba%d1%81-55727', '', '', '2026-02-01 23:20:59', '2026-02-01 20:20:59', '', 0, 'http://localhost/mss/?post_type=equipment&#038;p=107', 2, 'equipment', '', 0),
(108, 1, '2026-02-01 22:57:42', '2026-02-01 19:57:42', '', 'kc55727', '', 'inherit', 'open', 'closed', '', 'kc55727-2', '', '', '2026-02-01 22:57:42', '2026-02-01 19:57:42', '', 107, 'http://localhost/mss/wp-content/uploads/2026/02/kc55727-1.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2026-02-01 23:02:09', '2026-02-01 20:02:09', '', 'Амкадор 332', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%bc%d0%ba%d0%b0%d0%b4%d0%be%d1%80-332', '', '', '2026-02-03 18:18:32', '2026-02-03 15:18:32', '', 0, 'http://localhost/mss/?post_type=equipment&#038;p=109', 7, 'equipment', '', 0),
(110, 1, '2026-02-01 23:10:50', '2026-02-01 20:10:50', '', 'greenicon', '', 'inherit', 'open', 'closed', '', 'greenicon', '', '', '2026-02-01 23:10:50', '2026-02-01 20:10:50', '', 109, 'http://localhost/mss/wp-content/uploads/2026/02/greenicon.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2026-02-01 23:22:56', '2026-02-01 20:22:56', '', 'arrow', '', 'inherit', 'open', 'closed', '', 'arrow', '', '', '2026-02-01 23:22:56', '2026-02-01 20:22:56', '', 0, 'http://localhost/mss/wp-content/uploads/2026/02/arrow.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2026-02-01 23:31:12', '2026-02-01 20:31:12', '', 'Автокран Урал КС 35714', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%ba%d1%80%d0%b0%d0%bd-%d1%83%d1%80%d0%b0%d0%bb-%d0%ba%d1%81-35714', '', '', '2026-02-03 20:06:33', '2026-02-03 17:06:33', '', 0, 'http://localhost/mss/?post_type=equipment&#038;p=112', 3, 'equipment', '', 0),
(113, 1, '2026-02-01 23:32:31', '2026-02-01 20:32:31', '', 'Автокран МАЗ КС 45729', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%ba%d1%80%d0%b0%d0%bd-%d0%bc%d0%b0%d0%b7-%d0%ba%d1%81-45729-2', '', '', '2026-02-01 23:32:31', '2026-02-01 20:32:31', '', 0, 'http://localhost/mss/?post_type=equipment&#038;p=113', 4, 'equipment', '', 0),
(114, 1, '2026-02-01 23:33:23', '2026-02-01 20:33:23', '', 'Автовышка МАЗ ПМС 328', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%b2%d1%8b%d1%88%d0%ba%d0%b0-%d0%bc%d0%b0%d0%b7-%d0%bf%d0%bc%d1%81-328', '', '', '2026-02-01 23:33:32', '2026-02-01 20:33:32', '', 0, 'http://localhost/mss/?post_type=equipment&#038;p=114', 5, 'equipment', '', 0),
(115, 1, '2026-02-01 23:34:39', '2026-02-01 20:34:39', '', 'Автовышка Isuzu', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%b2%d1%8b%d1%88%d0%ba%d0%b0-isuzu', '', '', '2026-02-03 19:04:55', '2026-02-03 16:04:55', '', 0, 'http://localhost/mss/?post_type=equipment&#038;p=115', 6, 'equipment', '', 0),
(116, 1, '2026-02-01 23:44:03', '2026-02-01 20:44:03', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"введите заголовок\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Заглавие', 'title', 'publish', 'closed', 'closed', '', 'field_697fbaea1d4cf', '', '', '2026-02-01 23:47:09', '2026-02-01 20:47:09', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=116', 1, 'acf-field', '', 0),
(117, 1, '2026-02-01 23:47:34', '2026-02-01 20:47:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-01 23:47:34', '2026-02-01 20:47:34', '', 10, 'http://localhost/mss/?p=117', 0, 'revision', '', 0),
(118, 1, '2026-02-02 11:06:12', '2026-02-02 08:06:12', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfive', '', '', '2026-02-02 11:06:12', '2026-02-02 08:06:12', '', 0, 'http://localhost/mss/?p=118', 0, 'wp_global_styles', '', 0),
(119, 1, '2026-02-02 11:06:17', '2026-02-02 08:06:17', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfour', '', '', '2026-02-02 11:06:17', '2026-02-02 08:06:17', '', 0, 'http://localhost/mss/?p=119', 0, 'wp_global_styles', '', 0),
(120, 1, '2026-02-02 11:08:10', '2026-02-02 08:08:10', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:25:\"введите текст\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Текст на главной странице', 'hero_text', 'publish', 'closed', 'closed', '', 'field_69805b2e1e1eb', '', '', '2026-02-02 11:08:22', '2026-02-02 08:08:22', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=120', 2, 'acf-field', '', 0),
(121, 1, '2026-02-02 11:09:05', '2026-02-02 08:09:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-02 11:09:05', '2026-02-02 08:09:05', '', 10, 'http://localhost/mss/?p=121', 0, 'revision', '', 0),
(122, 1, '2026-02-02 11:09:55', '2026-02-02 08:09:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-02 11:09:55', '2026-02-02 08:09:55', '', 10, 'http://localhost/mss/?p=122', 0, 'revision', '', 0),
(123, 1, '2026-02-02 11:10:16', '2026-02-02 08:10:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-02 11:10:16', '2026-02-02 08:10:16', '', 10, 'http://localhost/mss/?p=123', 0, 'revision', '', 0),
(124, 1, '2026-02-02 12:21:40', '2026-02-02 09:21:40', '<div class=\"form-row\">\r\n<div class=\"form_group\">\r\n<label class=\"form_label\" for=\"services\">Вид работ</label>\r\n[text* services id:services class:form_input placeholder \"Монтаж, разгрузка..\"]\r\n</div>\r\n<div class=\"form_group\">\r\n<label for=\"address\">Адрес</label>\r\n[text* address id:address class:form_input placeholder \"Молодечно, ул...\"]\r\n</div>\r\n</div>\r\n\r\n<div class=\"form-row\">\r\n<div class=\"form_group\">\r\n<label class=\"form_label\" for=\"date\">Дата</label>\r\n[date date id:date class:form_input]\r\n</div>\r\n<div class=\"form_group\">\r\n<label class=\"form_label\" for=\"phone\">Телефон</label>\r\n[tel* phone id:phone class:form_input placeholder \"+375 (29)..\"]\r\n</div>\r\n</div>\r\n\r\n<div class=\"checkbox_group\">\r\n<label class=\"checkbox_label\">\r\n[acceptance consent class:checkbox_input id:consent default:1] Согласен(на) с обработкой персональных данных [/acceptance]\r\n</label>\r\n</div>\r\n\r\n[submit class:submit_btn \"Получить расчёт\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <romanova7410020@gmail.com>\n[_site_admin_email]\nОт: [your-name] [your-email]\r\nТема: [your-subject]\r\n\r\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто уведомление о том, что на вашем веб-сайте ([_site_title] [_site_url]) была отправлена контактная форма.\nReply-To: [your-email]\n\n1\n1\n\n[_site_title] \"[your-subject]\"\n[_site_title] <romanova7410020@gmail.com>\n[your-email]\nСообщение:\r\n[your-message]\r\n\r\n-- \r\nЭто письмо является квитанцией об отправке контактной формы на нашем веб-сайте ([_site_title] [_site_url]), в которой использовался ваш адрес электронной почты. Если это были не вы, пожалуйста, проигнорируйте это сообщение.\nReply-To: [_site_admin_email]\n\n1\n1\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nВажно заполнить это поле.\nВ это поле вставлен слишком большой объем данных.\nВ это поле вставлен слишком малый объем данных.\nПри загрузке файла произошла неизвестная ошибка.\nВам не разрешено загружать файлы этого типа.\nЗагруженный файл слишком большой.\nПри загрузке файла произошла ошибка.\nВведите дату в формате ГГГГ-ММ-ДД.\nВ это поле введена слишком ранняя дата.\nВ это поле введена слишком поздняя дата.\nВведите число.\nВ это поле введено слишком маленькое число.\nВ это поле введено слишком большое число.\nНеверный ответ на проверочный вопрос.\nВведите адрес электронной почты.\nВведите URL.\nВведите номер телефона.', 'контактная вид работ', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%b5%d0%b7-%d0%bd%d0%b0%d0%b7%d0%b2%d0%b0%d0%bd%d0%b8%d1%8f', '', '', '2026-02-04 12:08:22', '2026-02-04 09:08:22', '', 0, 'http://localhost/mss/?post_type=wpcf7_contact_form&#038;p=124', 0, 'wpcf7_contact_form', '', 0),
(125, 1, '2026-02-02 16:25:56', '2026-02-02 13:25:56', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}', 'FAQ', 'faq', 'publish', 'closed', 'closed', '', 'field_6980a5cd96107', '', '', '2026-02-02 16:25:56', '2026-02-02 13:25:56', '', 65, 'http://localhost/mss/?post_type=acf-field&p=125', 15, 'acf-field', '', 0),
(126, 1, '2026-02-02 16:26:48', '2026-02-02 13:26:48', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"введите вопрос 1\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Вопрос1', 'question_1', 'publish', 'closed', 'closed', '', 'field_6980a5e7b8771', '', '', '2026-02-02 16:26:48', '2026-02-02 13:26:48', '', 65, 'http://localhost/mss/?post_type=acf-field&p=126', 16, 'acf-field', '', 0),
(127, 1, '2026-02-02 16:27:32', '2026-02-02 13:27:32', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"введите ответ 1\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'ответ 1', 'answer_1', 'publish', 'closed', 'closed', '', 'field_6980a61f8170c', '', '', '2026-02-02 16:27:32', '2026-02-02 13:27:32', '', 65, 'http://localhost/mss/?post_type=acf-field&p=127', 17, 'acf-field', '', 0),
(128, 1, '2026-02-02 16:28:26', '2026-02-02 13:28:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-02 16:28:26', '2026-02-02 13:28:26', '', 10, 'http://localhost/mss/?p=128', 0, 'revision', '', 0),
(129, 1, '2026-02-02 17:06:48', '2026-02-02 14:06:48', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"введите вопрос\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'вопрос 2', 'question_2', 'publish', 'closed', 'closed', '', 'field_6980af5653275', '', '', '2026-02-02 17:06:48', '2026-02-02 14:06:48', '', 65, 'http://localhost/mss/?post_type=acf-field&p=129', 18, 'acf-field', '', 0),
(130, 1, '2026-02-02 17:07:14', '2026-02-02 14:07:14', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"введите ответ 2\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'ответ 2', 'answer_2', 'publish', 'closed', 'closed', '', 'field_6980af7a02a8c', '', '', '2026-02-02 17:07:14', '2026-02-02 14:07:14', '', 65, 'http://localhost/mss/?post_type=acf-field&p=130', 19, 'acf-field', '', 0),
(131, 1, '2026-02-02 17:08:10', '2026-02-02 14:08:10', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"введите вопрос 3\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'вопрос 3', 'question_3', 'publish', 'closed', 'closed', '', 'field_6980af9c5a9a2', '', '', '2026-02-02 17:10:58', '2026-02-02 14:10:58', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=131', 20, 'acf-field', '', 0),
(132, 1, '2026-02-02 17:08:20', '2026-02-02 14:08:20', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"введите вопрос 4\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'вопрос 4', 'question_4', 'publish', 'closed', 'closed', '', 'field_6980afcfd5618', '', '', '2026-02-02 17:10:58', '2026-02-02 14:10:58', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=132', 22, 'acf-field', '', 0),
(133, 1, '2026-02-02 17:08:37', '2026-02-02 14:08:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"введите вопрос 5\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'вопрос 5', 'question_5', 'publish', 'closed', 'closed', '', 'field_6980afddacb72', '', '', '2026-02-02 17:10:58', '2026-02-02 14:10:58', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=133', 24, 'acf-field', '', 0),
(134, 1, '2026-02-02 17:08:59', '2026-02-02 14:08:59', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"введите ответ 3\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'ответ 3', 'answer_3', 'publish', 'closed', 'closed', '', 'field_6980aff40a516', '', '', '2026-02-02 17:10:58', '2026-02-02 14:10:58', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=134', 21, 'acf-field', '', 0),
(135, 1, '2026-02-02 17:09:11', '2026-02-02 14:09:11', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"введите ответ 4\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'ответ 4', 'answer_4', 'publish', 'closed', 'closed', '', 'field_6980b000f261f', '', '', '2026-02-02 17:10:58', '2026-02-02 14:10:58', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=135', 23, 'acf-field', '', 0),
(136, 1, '2026-02-02 17:09:24', '2026-02-02 14:09:24', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"введите ответ 5\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'ответ 5', 'answer_5', 'publish', 'closed', 'closed', '', 'field_6980b00d1942e', '', '', '2026-02-02 17:10:58', '2026-02-02 14:10:58', '', 65, 'http://localhost/mss/?post_type=acf-field&#038;p=136', 25, 'acf-field', '', 0),
(138, 1, '2026-02-02 17:12:18', '2026-02-02 14:12:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2026-02-02 17:12:18', '2026-02-02 14:12:18', '', 10, 'http://localhost/mss/?p=138', 0, 'revision', '', 0),
(139, 1, '2026-02-03 18:32:49', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-02-03 18:32:49', '0000-00-00 00:00:00', '', 0, 'home/?post_type=equipment&p=139', 0, 'equipment', '', 0),
(140, 1, '2026-02-03 18:33:56', '2026-02-03 15:33:56', 'ппп', 'ппп', '', 'trash', 'closed', 'closed', '', '%d0%bf%d0%bf%d0%bf__trashed', '', '', '2026-02-03 18:35:49', '2026-02-03 15:35:49', '', 0, 'http://home/?post_type=equipment&#038;p=140', 0, 'equipment', '', 0),
(141, 1, '2026-02-03 18:36:23', '2026-02-03 15:36:23', '', 'ррррр', '', 'trash', 'closed', 'closed', '', '%d1%80%d1%80%d1%80%d1%80%d1%80__trashed', '', '', '2026-02-03 19:04:43', '2026-02-03 16:04:43', '', 0, 'http://home/?post_type=equipment&#038;p=141', 0, 'equipment', '', 0),
(142, 1, '2026-02-03 18:45:06', '2026-02-03 15:45:06', '', 'kkk', '', 'trash', 'closed', 'closed', '', 'kkk__trashed', '', '', '2026-02-03 19:04:41', '2026-02-03 16:04:41', '', 0, 'http://home/?post_type=equipment&#038;p=142', 0, 'equipment', '', 0),
(143, 1, '2026-02-03 19:02:52', '2026-02-03 16:02:52', '', 'шшшш', '', 'trash', 'closed', 'closed', '', '%d1%88%d1%88%d1%88%d1%88__trashed', '', '', '2026-02-03 19:04:40', '2026-02-03 16:04:40', '', 0, 'http://home/?post_type=equipment&#038;p=143', 0, 'equipment', '', 0),
(144, 1, '2026-02-03 19:07:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2026-02-03 19:07:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/mss/?post_type=equipment&p=144', 0, 'equipment', '', 0),
(145, 1, '2026-02-04 12:30:41', '2026-02-04 09:30:41', '', 'kc45729', '', 'inherit', 'open', 'closed', '', 'kc45729-2', '', '', '2026-02-04 12:30:41', '2026-02-04 09:30:41', '', 96, 'http://localhost/mss/wp-content/uploads/2026/02/kc45729-1.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  `term_order` int(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0, 0),
(2, 'каталог', '%d0%ba%d0%b0%d1%82%d0%b0%d0%bb%d0%be%d0%b3', 0, 0),
(3, 'погрузчик', '%d0%bf%d0%be%d0%b3%d1%80%d1%83%d0%b7%d1%87%d0%b8%d0%ba', 0, 0),
(5, 'Автокраны', 'autocrane', 0, 2),
(6, 'Автовышки', 'lift', 0, 1),
(7, 'Погрузчики', 'loader', 0, 3),
(8, 'twentytwentyfive', 'twentytwentyfive', 0, 0),
(9, 'twentytwentyfour', 'twentytwentyfour', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(27, 2, 0),
(29, 2, 0),
(31, 2, 0),
(33, 2, 0),
(35, 2, 0),
(37, 2, 0),
(37, 3, 0),
(96, 5, 0),
(107, 5, 0),
(109, 7, 0),
(112, 5, 0),
(113, 5, 0),
(114, 6, 0),
(115, 6, 0),
(118, 8, 0),
(119, 9, 0),
(140, 6, 0),
(141, 6, 0),
(142, 6, 0),
(143, 7, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0),
(3, 3, 'post_tag', '', 0, 0),
(5, 5, 'equipment_category', '', 0, 4),
(6, 6, 'equipment_category', '', 0, 2),
(7, 7, 'equipment_category', '', 0, 1),
(8, 8, 'wp_theme', '', 0, 1),
(9, 9, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:22:{s:64:\"d9103a1240736123314aee023da370e3f94bde9232c7cd0617d7cab7e0b708d0\";a:4:{s:10:\"expiration\";i:1771141223;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1769931623;}s:64:\"3430e3e64fed612bd127ef105f09a3b77e48b8ddd6258b58bcde8e0590d0966d\";a:4:{s:10:\"expiration\";i:1770149479;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 YaBrowser/25.12.0.0 Safari/537.36\";s:5:\"login\";i:1769976679;}s:64:\"d40aff75fb0a89f284982f8105ad6af8925a137cd1d464f82c0973766d4e9dab\";a:4:{s:10:\"expiration\";i:1771321634;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770112034;}s:64:\"01b0931c03947c936e94fcae56cff33634445f3d745baed799432f4f161797cb\";a:4:{s:10:\"expiration\";i:1770285354;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770112554;}s:64:\"c7d8ea6d832caead5e66cfac06fca970937c10080606ffcb7235c561585e4028\";a:4:{s:10:\"expiration\";i:1771322167;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770112567;}s:64:\"f935b0f5e932767768856801d4e18971605138070fc0973404c25cfd192885fa\";a:4:{s:10:\"expiration\";i:1771322193;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770112593;}s:64:\"0296d9b60787638147883013a6b67342d0095ebf15c885b89485f16983cfcb50\";a:4:{s:10:\"expiration\";i:1771322228;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770112628;}s:64:\"bc01a7fc9131f4bac714ca4499c776b6b71c0aedd739cf6da388b277e3d56133\";a:4:{s:10:\"expiration\";i:1771322296;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770112696;}s:64:\"341ee1db2808986ea4ead69e70761b18c235e7e6dcab70b9b4288964043e1d9b\";a:4:{s:10:\"expiration\";i:1770285712;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770112912;}s:64:\"3372d0e5b8b3d753384c4e79b259877e8fb4b8b9be16e9f3192b08525c65feb7\";a:4:{s:10:\"expiration\";i:1770285728;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770112928;}s:64:\"4d1aef7c999f327de9e8eca4aac05bb5ec2d64b70de78558fe915452f06fedb5\";a:4:{s:10:\"expiration\";i:1770285736;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770112936;}s:64:\"444a158de9cfa12b59edf63891712a83e6296cdae551d0eb5c1f0ec939754cf3\";a:4:{s:10:\"expiration\";i:1770285843;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770113043;}s:64:\"f7738b4e3f482036839a02b141f7759fc5b1bab7fb310393a0c1f217dbffae23\";a:4:{s:10:\"expiration\";i:1770286241;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770113441;}s:64:\"9e28b23489981625d688f443cd4ed3ed256df33c572cda4c2d96690e05c5e25a\";a:4:{s:10:\"expiration\";i:1770286258;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770113458;}s:64:\"4be1a3aa6667b014601f37a7e7ccd8659cc5db46339f577ac486cb3f273f467c\";a:4:{s:10:\"expiration\";i:1770286384;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770113584;}s:64:\"4750eddc1da34105384422d13ebaa512d3272a2da22bc584a21eb92a4b43cc42\";a:4:{s:10:\"expiration\";i:1770287432;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770114632;}s:64:\"f8a2b5a1058757c8abf579872d94b5c717caa18a68d067a88b8b79dcde3b645a\";a:4:{s:10:\"expiration\";i:1770287541;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770114741;}s:64:\"f4b7dde0a3198fb711f21fed14a267998d580d049ac70c5e0e3624afea112ec5\";a:4:{s:10:\"expiration\";i:1770288294;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770115494;}s:64:\"a92d7ec397a3974ac7521b01340f4e07acb1ac7ad224ba4cfe5378afdbc916f6\";a:4:{s:10:\"expiration\";i:1770288322;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770115522;}s:64:\"5c765cecd9d1231d2471a953f6cf3fd5159475be1a9db596cf2dcb0354169eaf\";a:4:{s:10:\"expiration\";i:1770290272;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770117472;}s:64:\"343986d3d2c189459b31c4dd706e173f26c3199c825d16fa3f9b663587ab3977\";a:4:{s:10:\"expiration\";i:1770298086;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770125286;}s:64:\"296fcfe010c403befbbd465c081fdf71d1a7627f22f0cf9afc532524b8dad9f6\";a:4:{s:10:\"expiration\";i:1770301664;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36\";s:5:\"login\";i:1770128864;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '6'),
(18, 1, 'wp_persisted_preferences', 'a:3:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:23:\"taxonomy-panel-post_tag\";}}s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:19:\"metaBoxesMainIsOpen\";b:1;}s:9:\"_modified\";s:24:\"2026-02-01T17:27:52.061Z\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&hidetb=1&mfold=o&editor_expand=on'),
(20, 1, 'wp_user-settings-time', '1769975166'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:0:{}'),
(23, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:23:\"acf-group_697f8bd53bc6d\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$wp$2y$10$TwmdLxdx.5RP/DGsJZ1W3.9AsmjdM1Umy3Ri9.ER4UbUt8yXlNlxK', 'admin', 'romanova7410020@gmail.com', 'http://localhost/domen9.artclytest.ru', '2026-02-01 07:40:01', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `type_status_author` (`post_type`,`post_status`,`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=686;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=727;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
