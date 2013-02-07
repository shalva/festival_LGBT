-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Client: smysql
-- Généré le: Jeu 07 Février 2013 à 09:52
-- Version du serveur: 5.5.24-4-log
-- Version de PHP: 5.3.10-1ubuntu3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `DBchanturidze`
--

-- --------------------------------------------------------

--
-- Structure de la table `autentification`
--

CREATE TABLE IF NOT EXISTS `autentification` (
  `USER` varchar(20) NOT NULL,
  `PASSWD` varchar(50) NOT NULL,
  PRIMARY KEY (`USER`,`PASSWD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `autentification`
--

INSERT INTO `autentification` (`USER`, `PASSWD`) VALUES
('root', 'ab4f63f9ac65152575886860dde480'),
('root2', 'cdaa6716746fb685734abde87f1b08ad');

-- --------------------------------------------------------

--
-- Structure de la table `CARNET`
--

CREATE TABLE IF NOT EXISTS `CARNET` (
  `NOM` varchar(30) DEFAULT NULL,
  `PRENOM` varchar(30) DEFAULT NULL,
  `NAISSANCE` date DEFAULT NULL,
  `VILLE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `CARNET`
--

INSERT INTO `CARNET` (`NOM`, `PRENOM`, `NAISSANCE`, `VILLE`) VALUES
('SMITH', 'JOHN', '1980-12-17', 'ORLEANS'),
('DURAND', 'JEAN', '1983-01-13', 'ORLEANS'),
('GUDULE', 'JEANNE', '1967-11-06', 'TOURS'),
('ZAPATA', 'EMILIO', '1956-12-01', 'ORLEANS'),
('JOURDAIN', 'NICOLAS', '2000-09-10', 'TOURS'),
('DUPUY', 'MARIE', '1986-01-11', 'BLOIS'),
('ANDREA', 'LOU', '1900-01-01', 'BLOIS');

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

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
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2012-11-26 15:15:07', '2012-11-26 15:15:07', 'Bonjour, ceci est un commentaire.<br /> Pour supprimer un commentaire, connectez-vous, et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_comments`
--

CREATE TABLE IF NOT EXISTS `wp_festival_comments` (
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
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_comments`
--

INSERT INTO `wp_festival_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'http://wordpress.org/', '', '2013-01-07 15:45:52', '2013-01-07 15:45:52', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_links`
--

CREATE TABLE IF NOT EXISTS `wp_festival_links` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_options`
--

CREATE TABLE IF NOT EXISTS `wp_festival_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=386 ;

--
-- Contenu de la table `wp_festival_options`
--

INSERT INTO `wp_festival_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~chanturidze/festival_cinema', 'yes'),
(2, 'blogname', 'LGBT_festival_cinema', 'yes'),
(3, 'blogdescription', '', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'geo_shako@yahoo.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '', 'yes'),
(10, 'comments_notify', '', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'closed', 'yes'),
(19, 'default_ping_status', 'closed', 'yes'),
(20, 'default_pingback_flag', '', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(24, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '', 'yes'),
(29, 'moderation_notify', '', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:0:{}', 'yes'),
(36, 'home', 'http://localhost/~chanturidze/festival_cinema', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '1', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', '', 'no'),
(44, 'template', 'twentytwelve', 'yes'),
(45, 'stylesheet', 'festival', 'yes'),
(46, 'comment_whitelist', '', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22441', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'page', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:6:"agenda";s:4:"text";s:2366:"<div id="programme">\r\n    <div id="prog-list">\r\n\r\n        <div class="prog-item">\r\n            <div class="front-rouge prog-date">Vendredi 24 septembre : 20h00</div>\r\n                <div class="prog-text">\r\n                    Soirée d’ouverture : séance de courts métrages\r\n                    <a href="/keeps-the-lights-on/"><i>Rencontre-débat avec un réalisateur.</i></a>\r\n            </div>\r\n        </div>\r\n\r\n        <div class="prog-item">\r\n            <div class="front-rouge prog-date">Samedi 25 septembre : 19h30</div>\r\n                <div class="prog-text">\r\n                    Documentaire :\r\n\r\n                    <a href="/keeps-the-lights-on/"><i>It’s elementary, talking about gays issues in school</i></a>\r\n            </div>\r\n                </div>\r\n\r\n\r\n            <div class="prog-item">\r\n            <div class="front-rouge prog-date">Samedi 25 septembre : 19h30</div>\r\n                <div class="prog-text">\r\n                    Documentaire :\r\n                    (C’est élémentaire - Parler de l’homosexualité à l’école)\r\n                    Rencontre-débat avec le Groupe Action Gay & Lesbien – Loiret\r\n                    sur les interventions en milieu scolaire.\r\n\r\n                    <a href="/keeps-the-lights-on/"><i>It’s elementary, talking about gays issues in school</i></a>\r\n            </div>\r\n        </div>\r\n\r\n        <div class="prog-item">\r\n            <div class="front-rouge prog-date">Samedi 25 septembre : 21h45 </div>\r\n                <div class="prog-text">\r\n                    Fiction : Ander   \r\n\r\n                    <a href="/keeps-the-lights-on/"><i></i></a>\r\n                </div>\r\n                    </div>\r\n\r\n\r\n            <div class="prog-item">\r\n            <div class="front-rouge prog-date">Dimanche 26 septembre : 16h00 </div>\r\n                <div class="prog-text">\r\n                    Fiction : El niño pez\r\n\r\n                    <a href="/keeps-the-lights-on/"><i></i></a>\r\n            </div>\r\n                </div>\r\n\r\n            <div class="prog-item">\r\n            <div class="front-rouge prog-date">Dimanche 26 septembre : 18h00 </div>\r\n                <div class="prog-text">\r\n                Fiction : I can’t think straight\r\n\r\n                    <a href="/keeps-the-lights-on/"><i></i></a>\r\n            </div>\r\n                </div>\r\n\r\n        </div>\r\n</div>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', '', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '60', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22441', 'yes'),
(92, 'wp_festival_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:2:{i:0;s:6:"text-2";i:1;s:8:"search-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1360251969;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1360252225;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1360252508;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"3.5";s:12:"last_checked";i:1360220417;}', 'yes'),
(102, '_transient_random_seed', '335d31043f4f671bcda365d3b42a2387', 'yes'),
(103, 'auth_key', 'G_g_3#cm.t;x^&z[PvnR0<+,4TIPF^hd#C[xZ+P&qEv-36/mkeX9bYj-WQ&;><!V', 'yes'),
(104, 'auth_salt', '9lok4vB($Vwo(lEu%PGm^8G{pp[>hxg[h*XO7+Ry[,&4[Gq;_MXG0#,|PU{J21H,', 'yes'),
(105, 'logged_in_key', 'h-^uN>B[K(%;w1`x+xHguC:[(w*)nRV7QmZg/Y/Cs6lD5V?RPI3*@<z)h>YMv[v(', 'yes'),
(106, 'logged_in_salt', '7 V>0JnzEx;pEu]MZ-L*wRxeq`:4?ZYnu3r]~5^A+0QiA6vCqY.vZ.wWj[_;;0G[', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360220446;}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1360220477;}', 'yes'),
(111, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:45:"http://localhost/~chanturidze/festival_cinema";s:4:"link";s:121:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~chanturidze/festival_cinema/";s:3:"url";s:154:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~chanturidze/festival_cinema/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(112, 'nonce_key', '|3[S`vJ|KKF,~CI2c P04ZqH-9nWBT5 ~L%K=W:F4{Bso-<{3KAGT`)F]LS@n-j0', 'yes'),
(113, 'nonce_salt', '{EK<EZ V?[6BX62TzHv9M[w,Xg^|`g|Nb/7=PrS@>9*o-o;?a)+57w4N{zBIz)T~', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(128, 'category_children', 'a:0:{}', 'yes'),
(129, 'recently_activated', 'a:1:{s:30:"advanced-custom-fields/acf.php";i:1360085330;}', 'yes'),
(161, '_transient_timeout_plugin_slugs', '1360169010', 'no'),
(162, '_transient_plugin_slugs', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:9:"hello.php";}', 'no'),
(178, 'theme_mods_twentytwelve', 'a:2:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1358848995;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:2:{i:0;s:6:"text-2";i:1;s:8:"search-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(179, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(215, 'current_theme', 'Festival', 'yes'),
(216, 'theme_mods_festival', 'a:9:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:4;}s:16:"header_textcolor";s:3:"444";s:16:"background_color";s:6:"e6e6e6";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:12:"header_image";s:13:"remove-header";}', 'yes'),
(217, 'theme_switched', '', 'yes'),
(302, 'acf_version', '3.5.8.1', 'yes'),
(303, 'acf_next_field_id', '10', 'yes'),
(354, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1360123874', 'no'),
(355, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: couldn''t connect to host</p></div>', 'no'),
(356, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1360123875', 'no'),
(357, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(358, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1360123875', 'no'),
(359, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(360, '_site_transient_timeout_wporg_theme_feature_list', '1360094646', 'yes'),
(361, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(362, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1360123886', 'no'),
(363, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(384, '_site_transient_timeout_theme_roots', '1360222277', 'yes'),
(385, '_site_transient_theme_roots', 'a:4:{s:8:"festival";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=635 ;

--
-- Contenu de la table `wp_festival_postmeta`
--

INSERT INTO `wp_festival_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 8, '_edit_last', '1'),
(3, 8, '_edit_lock', '1358769652:1'),
(6, 12, '_edit_last', '1'),
(7, 12, '_edit_lock', '1360081282:1'),
(10, 16, '_edit_last', '1'),
(11, 16, '_edit_lock', '1358769157:1'),
(12, 20, '_edit_last', '1'),
(13, 20, '_edit_lock', '1358769231:1'),
(16, 1, '_wp_trash_meta_status', 'publish'),
(17, 1, '_wp_trash_meta_time', '1358769896'),
(18, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(19, 20, '_wp_trash_meta_status', 'draft'),
(20, 20, '_wp_trash_meta_time', '1358769923'),
(21, 16, '_wp_trash_meta_status', 'publish'),
(22, 16, '_wp_trash_meta_time', '1358769923'),
(23, 25, '_edit_last', '1'),
(24, 25, '_edit_lock', '1360081176:1'),
(27, 2, '_wp_trash_meta_status', 'publish'),
(28, 2, '_wp_trash_meta_time', '1358770308'),
(29, 28, '_edit_last', '1'),
(30, 28, '_edit_lock', '1360081048:1'),
(33, 30, '_edit_last', '1'),
(34, 30, '_edit_lock', '1360080975:1'),
(37, 32, '_edit_last', '1'),
(38, 32, '_edit_lock', '1360080953:1'),
(41, 34, '_edit_last', '1'),
(42, 34, '_edit_lock', '1360080916:1'),
(45, 36, '_edit_last', '1'),
(46, 36, '_edit_lock', '1360080841:1'),
(49, 38, '_edit_last', '1'),
(50, 38, '_edit_lock', '1360080810:1'),
(53, 40, '_edit_last', '1'),
(54, 40, '_edit_lock', '1360080782:1'),
(57, 42, '_edit_last', '1'),
(58, 42, '_edit_lock', '1360080476:1'),
(61, 44, '_edit_last', '1'),
(62, 44, '_edit_lock', '1360079974:1'),
(65, 46, '_edit_last', '1'),
(66, 46, '_edit_lock', '1360079948:1'),
(69, 48, '_edit_last', '1'),
(70, 48, '_edit_lock', '1360084018:1'),
(73, 50, '_edit_last', '1'),
(74, 50, '_edit_lock', '1360083830:1'),
(75, 50, '_wp_page_template', 'default'),
(76, 52, '_edit_last', '1'),
(77, 52, '_edit_lock', '1358771549:1'),
(78, 52, '_wp_page_template', 'default'),
(79, 55, '_edit_last', '1'),
(80, 55, '_edit_lock', '1360227088:1'),
(81, 55, '_wp_page_template', 'default'),
(82, 8, '_wp_trash_meta_status', 'publish'),
(83, 8, '_wp_trash_meta_time', '1358771908'),
(84, 60, '_edit_last', '1'),
(85, 60, '_edit_lock', '1359996484:1'),
(86, 60, '_wp_page_template', 'default'),
(87, 62, '_menu_item_type', 'post_type'),
(88, 62, '_menu_item_menu_item_parent', '0'),
(89, 62, '_menu_item_object_id', '60'),
(90, 62, '_menu_item_object', 'page'),
(91, 62, '_menu_item_target', ''),
(92, 62, '_menu_item_classes', 'a:1:{i:0;s:6:"fg-red";}'),
(93, 62, '_menu_item_xfn', ''),
(94, 62, '_menu_item_url', ''),
(96, 63, '_menu_item_type', 'taxonomy'),
(97, 63, '_menu_item_menu_item_parent', '0'),
(98, 63, '_menu_item_object_id', '2'),
(99, 63, '_menu_item_object', 'category'),
(100, 63, '_menu_item_target', ''),
(101, 63, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-Orange";}'),
(102, 63, '_menu_item_xfn', ''),
(103, 63, '_menu_item_url', ''),
(105, 64, '_menu_item_type', 'taxonomy'),
(106, 64, '_menu_item_menu_item_parent', '0'),
(107, 64, '_menu_item_object_id', '3'),
(108, 64, '_menu_item_object', 'category'),
(109, 64, '_menu_item_target', ''),
(110, 64, '_menu_item_classes', 'a:1:{i:0;s:9:"fg-Yellow";}'),
(111, 64, '_menu_item_xfn', ''),
(112, 64, '_menu_item_url', ''),
(114, 65, '_menu_item_type', 'post_type'),
(115, 65, '_menu_item_menu_item_parent', '0'),
(116, 65, '_menu_item_object_id', '50'),
(117, 65, '_menu_item_object', 'page'),
(118, 65, '_menu_item_target', ''),
(119, 65, '_menu_item_classes', 'a:1:{i:0;s:8:"fg-Green";}'),
(120, 65, '_menu_item_xfn', ''),
(121, 65, '_menu_item_url', ''),
(123, 66, '_menu_item_type', 'post_type'),
(124, 66, '_menu_item_menu_item_parent', '0'),
(125, 66, '_menu_item_object_id', '55'),
(126, 66, '_menu_item_object', 'page'),
(127, 66, '_menu_item_target', ''),
(128, 66, '_menu_item_classes', 'a:1:{i:0;s:13:"fg-AquaMarine";}'),
(129, 66, '_menu_item_xfn', ''),
(130, 66, '_menu_item_url', ''),
(132, 67, '_menu_item_type', 'post_type'),
(133, 67, '_menu_item_menu_item_parent', '0'),
(134, 67, '_menu_item_object_id', '52'),
(135, 67, '_menu_item_object', 'page'),
(136, 67, '_menu_item_target', ''),
(137, 67, '_menu_item_classes', 'a:1:{i:0;s:7:"fg-Blue";}'),
(138, 67, '_menu_item_xfn', ''),
(139, 67, '_menu_item_url', ''),
(146, 72, '_wp_attached_file', '2013/01/I_cant_think_straight_001.jpg'),
(147, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:1600;s:4:"file";s:37:"2013/01/I_cant_think_straight_001.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"I_cant_think_straight_001-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:37:"I_cant_think_straight_001-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(148, 48, '_thumbnail_id', '72'),
(151, 74, '_wp_attached_file', '2013/01/EL-NINO-PEZ-1.jpg'),
(152, 74, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4405;s:6:"height";i:3010;s:4:"file";s:25:"2013/01/EL-NINO-PEZ-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"EL-NINO-PEZ-1-1024x699.jpg";s:5:"width";i:1024;s:6:"height";i:699;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"EL-NINO-PEZ-1-624x426.jpg";s:5:"width";i:624;s:6:"height";i:426;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(153, 46, '_thumbnail_id', '74'),
(154, 76, '_wp_attached_file', '2013/01/ANDER1.jpg'),
(155, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:18:"2013/01/ANDER1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"ANDER1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"ANDER1-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"ANDER1-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"ANDER1-624x351.jpg";s:5:"width";i:624;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(156, 44, '_thumbnail_id', '76'),
(159, 78, '_wp_trash_meta_status', 'auto-draft'),
(160, 78, '_wp_trash_meta_time', '1358773711'),
(161, 79, '_wp_attached_file', '2013/01/ItsElementaryGBan.jpg'),
(162, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:259;s:6:"height";i:221;s:4:"file";s:29:"2013/01/ItsElementaryGBan.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"ItsElementaryGBan-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(163, 42, '_thumbnail_id', '79'),
(166, 81, '_wp_attached_file', '2013/01/American-boy.png'),
(167, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:901;s:6:"height";i:601;s:4:"file";s:24:"2013/01/American-boy.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"American-boy-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"American-boy-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"American-boy-624x416.png";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(168, 40, '_thumbnail_id', '81'),
(171, 84, '_wp_attached_file', '2013/01/COWBOY-FOREVER.jpg'),
(172, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2544;s:6:"height";i:1696;s:4:"file";s:26:"2013/01/COWBOY-FOREVER.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"COWBOY-FOREVER-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:26:"COWBOY-FOREVER-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:5.5999999999999996;s:6:"credit";s:0:"";s:6:"camera";s:13:"Canon EOS 30D";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1153563697;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"110";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(173, 38, '_thumbnail_id', '84'),
(179, 89, '_wp_attached_file', '2013/01/Odile-.jpg'),
(180, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3704;s:6:"height";i:2508;s:4:"file";s:18:"2013/01/Odile-.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Odile--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Odile--300x203.jpg";s:5:"width";i:300;s:6:"height";i:203;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"Odile--1024x693.jpg";s:5:"width";i:1024;s:6:"height";i:693;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Odile--624x422.jpg";s:5:"width";i:624;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(181, 34, '_thumbnail_id', '89'),
(184, 91, '_wp_attached_file', '2013/01/OMAR_.jpg'),
(185, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1890;s:6:"height";i:1260;s:4:"file";s:17:"2013/01/OMAR_.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"OMAR_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"OMAR_-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"OMAR_-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"OMAR_-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:4;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243445020;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"180";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:5:"0.004";s:5:"title";s:0:"";}}'),
(186, 32, '_thumbnail_id', '91'),
(189, 93, '_wp_attached_file', '2013/01/PAULINE_1.jpg'),
(190, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2362;s:6:"height";i:1575;s:4:"file";s:21:"2013/01/PAULINE_1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"PAULINE_1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"PAULINE_1-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"PAULINE_1-624x416.jpg";s:5:"width";i:624;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:3.5;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1242468669;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";}}'),
(191, 30, '_thumbnail_id', '93'),
(194, 95, '_wp_attached_file', '2013/01/EN_COLOricco.jpg'),
(195, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1337;s:6:"height";i:875;s:4:"file";s:24:"2013/01/EN_COLOricco.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"EN_COLOricco-300x196.jpg";s:5:"width";i:300;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"EN_COLOricco-1024x670.jpg";s:5:"width";i:1024;s:6:"height";i:670;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"EN_COLOricco-624x408.jpg";s:5:"width";i:624;s:6:"height";i:408;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";d:2.7999999999999998;s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1243723185;s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"48";s:3:"iso";s:4:"4000";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";}}'),
(196, 28, '_thumbnail_id', '95'),
(218, 102, '_menu_item_type', 'post_type'),
(219, 102, '_menu_item_menu_item_parent', '0'),
(220, 102, '_menu_item_object_id', '60'),
(221, 102, '_menu_item_object', 'page'),
(222, 102, '_menu_item_target', ''),
(223, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(224, 102, '_menu_item_xfn', ''),
(225, 102, '_menu_item_url', ''),
(226, 102, '_menu_item_orphaned', '1359386576'),
(227, 103, '_menu_item_type', 'post_type'),
(228, 103, '_menu_item_menu_item_parent', '0'),
(229, 103, '_menu_item_object_id', '55'),
(230, 103, '_menu_item_object', 'page'),
(231, 103, '_menu_item_target', ''),
(232, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(233, 103, '_menu_item_xfn', ''),
(234, 103, '_menu_item_url', ''),
(235, 103, '_menu_item_orphaned', '1359386577'),
(236, 104, '_menu_item_type', 'post_type'),
(237, 104, '_menu_item_menu_item_parent', '0'),
(238, 104, '_menu_item_object_id', '52'),
(239, 104, '_menu_item_object', 'page'),
(240, 104, '_menu_item_target', ''),
(241, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(242, 104, '_menu_item_xfn', ''),
(243, 104, '_menu_item_url', ''),
(244, 104, '_menu_item_orphaned', '1359386578'),
(245, 105, '_menu_item_type', 'post_type'),
(246, 105, '_menu_item_menu_item_parent', '0'),
(247, 105, '_menu_item_object_id', '50'),
(248, 105, '_menu_item_object', 'page'),
(249, 105, '_menu_item_target', ''),
(250, 105, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(251, 105, '_menu_item_xfn', ''),
(252, 105, '_menu_item_url', ''),
(253, 105, '_menu_item_orphaned', '1359386578'),
(278, 115, '_edit_last', '1'),
(279, 115, 'allorany', 'any'),
(281, 115, 'position', 'normal'),
(282, 115, 'layout', 'no_box'),
(283, 115, 'hide_on_screen', 'a:9:{i:0;s:7:"excerpt";i:1;s:10:"discussion";i:2;s:8:"comments";i:3;s:9:"revisions";i:4;s:4:"slug";i:5;s:6:"author";i:6;s:6:"format";i:7;s:4:"tags";i:8;s:15:"send-trackbacks";}'),
(284, 115, '_edit_lock', '1359991288:1'),
(285, 115, 'field_1', 'a:10:{s:5:"label";s:4:"pays";s:4:"name";s:4:"pays";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;s:3:"key";s:7:"field_1";}'),
(286, 115, 'field_2', 'a:10:{s:5:"label";s:6:"année";s:4:"name";s:6:"année";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;s:3:"key";s:7:"field_2";}'),
(287, 115, 'field_3', 'a:10:{s:5:"label";s:12:"Réalisateur";s:4:"name";s:12:"réalisateur";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;s:3:"key";s:7:"field_3";}'),
(288, 115, 'field_4', 'a:10:{s:5:"label";s:11:"interprète";s:4:"name";s:11:"interprète";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;s:3:"key";s:7:"field_4";}'),
(289, 115, 'field_5', 'a:10:{s:5:"label";s:4:"Prix";s:4:"name";s:4:"prix";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;s:3:"key";s:7:"field_5";}'),
(293, 115, 'field_7', 'a:10:{s:5:"label";s:6:"Durée";s:4:"name";s:6:"durée";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;s:3:"key";s:7:"field_7";}'),
(302, 48, 'pays', 'Grande Bretagne'),
(303, 48, '_pays', 'field_1'),
(304, 48, 'année', '2007'),
(305, 48, '_année', 'field_2'),
(306, 48, 'réalisateur', 'Shamim Sarif'),
(307, 48, '_réalisateur', 'field_3'),
(308, 48, 'interprète', 'Lisa Ray, Sheetal Sheth, Antonia Frering'),
(309, 48, '_interprète', 'field_4'),
(311, 48, '_prix', 'field_5'),
(312, 48, 'durée', '01h20'),
(313, 48, '_durée', 'field_7'),
(316, 46, 'pays', 'Argentine'),
(317, 46, '_pays', 'field_1'),
(318, 46, 'année', '2008'),
(319, 46, '_année', 'field_2'),
(320, 46, 'réalisateur', 'Lucía Puenzo'),
(321, 46, '_réalisateur', 'field_3'),
(322, 46, 'interprète', 'Inés Efron, Mariela Vitale, Pep Munne'),
(323, 46, '_interprète', 'field_4'),
(325, 46, '_prix', 'field_5'),
(326, 46, 'durée', '01h36'),
(327, 46, '_durée', 'field_7'),
(328, 118, 'pays', 'Argentine'),
(329, 118, 'année', '2008'),
(330, 118, 'réalisateur', ''),
(331, 118, 'interprète', 'Inés Efron, Mariela Vitale, Pep Munne'),
(332, 118, 'prix', ''),
(333, 118, 'durée', '01h36'),
(338, 44, 'pays', 'Espagne'),
(339, 44, '_pays', 'field_1'),
(340, 44, 'année', '2009'),
(341, 44, '_année', 'field_2'),
(342, 44, 'réalisateur', 'Roberto Castón'),
(343, 44, '_réalisateur', 'field_3'),
(344, 44, 'interprète', 'Josean Bengoetxea, Eriz Alberdi, Christian Esquive'),
(345, 44, '_interprète', 'field_4'),
(347, 44, '_prix', 'field_5'),
(348, 44, 'durée', '02h08'),
(349, 44, '_durée', 'field_7'),
(350, 121, 'pays', 'Espagne'),
(351, 121, 'année', '2009'),
(352, 121, 'réalisateur', ''),
(353, 121, 'interprète', 'Josean Bengoetxea, Eriz Alberdi, Christian Esquive'),
(354, 121, 'prix', ''),
(355, 121, 'durée', '02h08'),
(360, 42, 'pays', 'Etats-Unis'),
(361, 42, '_pays', 'field_1'),
(362, 42, 'année', '1996'),
(363, 42, '_année', 'field_2'),
(364, 42, 'réalisateur', 'Debra Chasnoff'),
(365, 42, '_réalisateur', 'field_3'),
(367, 42, '_interprète', 'field_4'),
(369, 42, '_prix', 'field_5'),
(370, 42, 'durée', '01h20'),
(371, 42, '_durée', 'field_7'),
(372, 115, 'field_8', 'a:10:{s:5:"label";s:5:"genre";s:4:"name";s:5:"genre";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;s:3:"key";s:7:"field_8";}'),
(377, 40, 'pays', 'France'),
(378, 40, '_pays', 'field_1'),
(379, 40, 'année', '2008'),
(380, 40, '_année', 'field_2'),
(381, 40, 'réalisateur', 'Patricia & Colette '),
(382, 40, '_réalisateur', 'field_3'),
(384, 40, '_interprète', 'field_4'),
(386, 40, '_prix', 'field_5'),
(387, 40, 'durée', '4 minutes'),
(388, 40, '_durée', 'field_7'),
(390, 40, '_genre', 'field_8'),
(393, 38, 'pays', 'France'),
(394, 38, '_pays', 'field_1'),
(395, 38, 'année', '2006'),
(396, 38, '_année', 'field_2'),
(397, 38, 'réalisateur', ' Jean Baptiste Erreca'),
(398, 38, '_réalisateur', 'field_3'),
(400, 38, '_interprète', 'field_4'),
(402, 38, '_prix', 'field_5'),
(403, 38, 'durée', '26 minutes '),
(404, 38, '_durée', 'field_7'),
(406, 38, '_genre', 'field_8'),
(407, 115, 'field_9', 'a:10:{s:5:"label";s:4:"type";s:4:"name";s:4:"type";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:10:"formatting";s:4:"html";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:7;s:3:"key";s:7:"field_9";}'),
(408, 115, 'rule', 'a:4:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"3";s:8:"order_no";i:0;}'),
(409, 115, 'rule', 'a:4:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"2";s:8:"order_no";i:1;}'),
(412, 36, 'pays', 'Brésil'),
(413, 36, '_pays', 'field_1'),
(414, 36, 'année', '2008'),
(415, 36, '_année', 'field_2'),
(416, 36, 'réalisateur', 'René Guerra Luiz'),
(417, 36, '_réalisateur', 'field_3'),
(419, 36, '_interprète', 'field_4'),
(421, 36, '_prix', 'field_5'),
(422, 36, 'durée', '17 minutes'),
(423, 36, '_durée', 'field_7'),
(425, 36, '_genre', 'field_8'),
(426, 36, 'type', 'VOSTF'),
(427, 36, '_type', 'field_9'),
(428, 127, 'pays', 'Argentine'),
(429, 127, 'année', '2008'),
(430, 127, 'réalisateur', ''),
(431, 127, 'interprète', 'Inés Efron, Mariela Vitale, Pep Munne'),
(432, 127, 'prix', ''),
(433, 127, 'durée', '01h36'),
(437, 46, '_genre', 'field_8'),
(438, 46, 'type', 'VOSTF'),
(439, 46, '_type', 'field_9'),
(442, 30, 'pays', 'France'),
(443, 30, '_pays', 'field_1'),
(444, 30, 'année', '2009'),
(445, 30, '_année', 'field_2'),
(446, 30, 'réalisateur', 'Céline Sciamma'),
(447, 30, '_réalisateur', 'field_3'),
(449, 30, '_interprète', 'field_4'),
(451, 30, '_prix', 'field_5'),
(452, 30, 'durée', '7 minutes'),
(453, 30, '_durée', 'field_7'),
(455, 30, '_genre', 'field_8'),
(457, 30, '_type', 'field_9'),
(460, 28, 'pays', 'France'),
(461, 28, '_pays', 'field_1'),
(462, 28, 'année', '2009'),
(463, 28, '_année', 'field_2'),
(464, 28, 'réalisateur', 'Pascal-Alex Vincent'),
(465, 28, '_réalisateur', 'field_3'),
(467, 28, '_interprète', 'field_4'),
(468, 28, 'prix', '8 minutes'),
(469, 28, '_prix', 'field_5'),
(471, 28, '_durée', 'field_7'),
(473, 28, '_genre', 'field_8'),
(475, 28, '_type', 'field_9'),
(476, 131, 'pays', ''),
(477, 131, 'année', '2009\r\n'),
(478, 131, 'réalisateur', ''),
(479, 131, 'interprète', ''),
(480, 131, 'prix', '8 minutes'),
(481, 131, 'durée', ''),
(482, 131, 'genre', ''),
(483, 131, 'type', ''),
(486, 132, 'pays', ''),
(487, 132, 'année', '2009'),
(488, 132, 'réalisateur', ''),
(489, 132, 'interprète', ''),
(490, 132, 'prix', '8 minutes'),
(491, 132, 'durée', ''),
(492, 132, 'genre', ''),
(493, 132, 'type', ''),
(498, 32, 'pays', 'France'),
(499, 32, '_pays', 'field_1'),
(500, 32, 'année', '2009 '),
(501, 32, '_année', 'field_2'),
(502, 32, 'réalisateur', ' Sébastien Gabriel'),
(503, 32, '_réalisateur', 'field_3'),
(505, 32, '_interprète', 'field_4'),
(507, 32, '_prix', 'field_5'),
(508, 32, 'durée', '9 minutes'),
(509, 32, '_durée', 'field_7'),
(511, 32, '_genre', 'field_8'),
(513, 32, '_type', 'field_9'),
(516, 34, 'pays', 'France'),
(517, 34, '_pays', 'field_1'),
(518, 34, 'année', '2006'),
(519, 34, '_année', 'field_2'),
(520, 34, 'réalisateur', 'Bénédicte Delgéhier'),
(521, 34, '_réalisateur', 'field_3'),
(523, 34, '_interprète', 'field_4'),
(525, 34, '_prix', 'field_5'),
(526, 34, 'durée', '10 minutes'),
(527, 34, '_durée', 'field_7'),
(529, 34, '_genre', 'field_8'),
(531, 34, '_type', 'field_9'),
(532, 135, 'pays', 'Grande Bretagne'),
(533, 135, 'année', '2007'),
(534, 135, 'réalisateur', ''),
(535, 135, 'interprète', 'Lisa Ray, Sheetal Sheth, Antonia Frering'),
(536, 135, 'prix', ''),
(537, 135, 'durée', '01h20'),
(541, 48, '_genre', 'field_8'),
(543, 48, '_type', 'field_9'),
(544, 136, 'pays', 'Argentine'),
(545, 136, 'année', '2008'),
(546, 136, 'réalisateur', ''),
(547, 136, 'interprète', 'Inés Efron, Mariela Vitale, Pep Munne'),
(548, 136, 'prix', ''),
(549, 136, 'durée', '01h36'),
(550, 136, 'genre', ''),
(551, 136, 'type', 'VOSTF'),
(554, 137, 'pays', 'Espagne'),
(555, 137, 'année', '2009'),
(556, 137, 'réalisateur', ''),
(557, 137, 'interprète', 'Josean Bengoetxea, Eriz Alberdi, Christian Esquive'),
(558, 137, 'prix', ''),
(559, 137, 'durée', '02h08'),
(563, 44, '_genre', 'field_8'),
(565, 44, '_type', 'field_9'),
(566, 138, 'pays', 'Etats-Unis'),
(567, 138, 'année', '1996'),
(568, 138, 'réalisateur', 'Debra Chasnoff'),
(569, 138, 'interprète', ''),
(570, 138, 'prix', ''),
(571, 138, 'durée', '01h20'),
(575, 42, '_genre', 'field_8'),
(577, 42, '_type', 'field_9'),
(578, 139, 'pays', ''),
(579, 139, 'année', '2008'),
(580, 139, 'réalisateur', ''),
(581, 139, 'interprète', ''),
(582, 139, 'prix', ''),
(583, 139, 'durée', '- 4 minutes'),
(584, 139, 'genre', ''),
(588, 40, '_type', 'field_9'),
(589, 140, 'pays', ''),
(590, 140, 'année', '2006'),
(591, 140, 'réalisateur', '26 minutes'),
(592, 140, 'interprète', ''),
(593, 140, 'prix', ''),
(594, 140, 'durée', ''),
(595, 140, 'genre', ''),
(599, 38, '_type', 'field_9'),
(600, 141, 'pays', ''),
(601, 141, 'année', ''),
(602, 141, 'réalisateur', ''),
(603, 141, 'interprète', ''),
(604, 141, 'prix', ''),
(605, 141, 'durée', '17 minutes'),
(606, 141, 'genre', ''),
(607, 141, 'type', 'VOSTF'),
(610, 142, 'pays', ''),
(611, 142, 'année', ''),
(612, 142, 'réalisateur', ''),
(613, 142, 'interprète', ''),
(614, 142, 'prix', ''),
(615, 142, 'durée', '7 minutes'),
(616, 142, 'genre', ''),
(617, 142, 'type', ''),
(620, 143, 'pays', 'France'),
(621, 143, 'année', '2009'),
(622, 143, 'réalisateur', 'En colo -  - Pascal-Alex Vincent'),
(623, 143, 'interprète', ''),
(624, 143, 'prix', '8 minutes'),
(625, 143, 'durée', ''),
(626, 143, 'genre', ''),
(627, 143, 'type', ''),
(630, 146, 'pays', 'Grande Bretagne'),
(631, 146, 'année', '2007'),
(632, 146, 'réalisateur', 'Shamim Sarif'),
(633, 146, 'interprète', 'Lisa Ray, Sheetal Sheth, Antonia Frering'),
(634, 146, 'durée', '01h20');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_posts`
--

CREATE TABLE IF NOT EXISTS `wp_festival_posts` (
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
  `post_password` varchar(20) NOT NULL DEFAULT '',
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
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=174 ;

--
-- Contenu de la table `wp_festival_posts`
--

INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2013-01-07 15:45:52', '2013-01-07 15:45:52', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'closed', 'open', '', 'bonjour-tout-le-monde', '', '', '2013-01-21 13:04:56', '2013-01-21 12:04:56', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=1', 0, 'post', '', 1),
(2, 1, '2013-01-07 15:45:52', '2013-01-07 15:45:52', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~chanturidze/festival_cinema/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple', '', '', '2013-01-21 13:11:48', '2013-01-21 12:11:48', '', 0, 'http://localhost/~chanturidze/festival_cinema/?page_id=2', 0, 'page', '', 0),
(8, 1, '2013-01-15 11:14:30', '2013-01-15 10:14:30', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edit', '', 'trash', 'closed', 'open', '', 'edit', '', '', '2013-01-21 13:38:28', '2013-01-21 12:38:28', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=8', 0, 'post', '', 0),
(9, 1, '2013-01-15 11:14:12', '2013-01-15 10:14:12', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\n\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\n\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\n\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edit', '', 'inherit', 'closed', 'open', '', '8-revision', '', '', '2013-01-15 11:14:12', '2013-01-15 10:14:12', '', 8, 'http://localhost/~chanturidze/festival_cinema/?p=9', 0, 'revision', '', 0),
(10, 1, '2013-01-15 11:14:24', '2013-01-15 10:14:24', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edit', '', 'inherit', 'closed', 'open', '', '8-revision-2', '', '', '2013-01-15 11:14:24', '2013-01-15 10:14:24', '', 8, 'http://localhost/~chanturidze/festival_cinema/?p=10', 0, 'revision', '', 0),
(11, 1, '2013-01-21 12:51:51', '2013-01-21 11:51:51', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\n\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\n\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\n\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edit', '', 'inherit', 'closed', 'open', '', '8-autosave', '', '', '2013-01-21 12:51:51', '2013-01-21 11:51:51', '', 8, 'http://localhost/~chanturidze/festival_cinema/?p=11', 0, 'revision', '', 0),
(12, 1, '2013-01-15 11:19:32', '2013-01-15 10:19:32', 'Vendredi 24 septembre : 20h00 Soirée d’ouverture : séance de courts métrages Rencontre-débat avec un réalisateur.\r\n\r\nSamedi 25 septembre : 19h30 Documentaire : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école) Rencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret sur les interventions en milieu scolaire.\r\n\r\nSamedi 25 septembre : 21h45 Fiction : Ander\r\n\r\nDimanche 26 septembre : 16h00 Fiction : El niño pez\r\n\r\nDimanche 26 septembre : 18h00 Fiction : I can’t think straight', 'Agenda', '', 'publish', 'closed', 'open', '', 'agenda', '', '', '2013-02-05 17:19:44', '2013-02-05 16:19:44', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=12', 0, 'post', '', 0),
(13, 1, '2013-01-15 11:18:48', '2013-01-15 10:18:48', 'Vendredi 24 septembre : 20h00 Soirée d’ouverture : séance de courts métrages Rencontre-débat avec un réalisateur.\n\nSamedi 25 septembre : 19h30 Documentaire : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école) Rencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret sur les interventions en milieu scolaire.\n\nSamedi 25 septembre : 21h45 Fiction : Ander Dimanche 26 septembre : 16h00 Fiction : El niño pez Dimanche 26 septembre : 18h00 Fiction : I can’t think straight', 'Agenda', '', 'inherit', 'closed', 'open', '', '12-revision', '', '', '2013-01-15 11:18:48', '2013-01-15 10:18:48', '', 12, 'http://localhost/~chanturidze/festival_cinema/?p=13', 0, 'revision', '', 0),
(14, 1, '2013-01-15 11:19:16', '2013-01-15 10:19:16', 'Vendredi 24 septembre : 20h00 Soirée d’ouverture : séance de courts métrages Rencontre-débat avec un réalisateur.\r\n\r\nSamedi 25 septembre : 19h30 Documentaire : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école) Rencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret sur les interventions en milieu scolaire.\r\n\r\nSamedi 25 septembre : 21h45 Fiction : Ander\r\n\r\nDimanche 26 septembre : 16h00 Fiction : El niño pez\r\n\r\nDimanche 26 septembre : 18h00 Fiction : I can’t think straight', 'Agenda', '', 'inherit', 'closed', 'open', '', '12-revision-2', '', '', '2013-01-15 11:19:16', '2013-01-15 10:19:16', '', 12, 'http://localhost/~chanturidze/festival_cinema/?p=14', 0, 'revision', '', 0),
(15, 1, '2013-01-15 11:19:29', '2013-01-15 10:19:29', 'Vendredi 24 septembre : 20h00 Soirée d’ouverture : séance de courts métrages Rencontre-débat avec un réalisateur.\r\n\r\nSamedi 25 septembre : 19h30 Documentaire : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école) Rencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret sur les interventions en milieu scolaire.\r\n\r\nSamedi 25 septembre : 21h45 Fiction : Ander\r\n\r\nDimanche 26 septembre : 16h00 Fiction : El niño pez\r\n\r\nDimanche 26 septembre : 18h00 Fiction : I can’t think straight', 'Agenda', '', 'inherit', 'closed', 'open', '', '12-revision-3', '', '', '2013-01-15 11:19:29', '2013-01-15 10:19:29', '', 12, 'http://localhost/~chanturidze/festival_cinema/?p=15', 0, 'revision', '', 0),
(16, 1, '2013-01-15 11:28:48', '2013-01-15 10:28:48', 'Intro\r\n\r\nLes 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.\r\n\r\nEn colo - Pascal-Alex Vincent - France\r\n\r\n2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.\r\n\r\nPauline – Céline Sciamma- France – 2009\r\n\r\n7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.\r\n\r\n4.4 Omar - Sébastien Gabriel - France - 2009 - 9 minutes\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.\r\n\r\nOdile - Bénédicte Delgéhier - France - 2006- 10 minutes\r\n\r\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...\r\n\r\n4.6 Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008\r\n\r\n17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.\r\n\r\nCowboy Forever - Jean Baptiste Erreca - France\r\n\r\n2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...\r\n\r\nAmerican Boy - Patricia &amp; Colette - France\r\n\r\n2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'Courts-metrages', '', 'trash', 'closed', 'open', '', 'courts-metrages', '', '', '2013-01-21 13:05:23', '2013-01-21 12:05:23', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=16', 0, 'post', '', 0),
(17, 1, '2013-01-15 11:28:38', '2013-01-15 10:28:38', 'Intro\n\nLes 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.\n\nEn colo - Pascal-Alex Vincent - France\n\n2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.\n\nPauline – Céline Sciamma- France – 2009\n\n7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.\n\n4.4 Omar - Sébastien Gabriel - France - 2009 - 9 minutes\n\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.\n\nOdile - Bénédicte Delgéhier - France - 2006- 10 minutes\n\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie... 4.6 Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008 ============================================================= 17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte. 4.7 Cowboy Forever - Jean Baptiste Erreca - France =================================================== 2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail... 4.8 American Boy - Patricia &amp; Colette - France =============================================== 2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'Courts-metrages', '', 'inherit', 'closed', 'open', '', '16-revision', '', '', '2013-01-15 11:28:38', '2013-01-15 10:28:38', '', 16, 'http://localhost/~chanturidze/festival_cinema/?p=17', 0, 'revision', '', 0),
(18, 1, '2013-01-15 14:26:57', '2013-01-15 13:26:57', 'Intro\n\nLes 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.\n\nEn colo - Pascal-Alex Vincent - France\n\n2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.\n\nPauline – Céline Sciamma- France – 2009\n\n7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.\n\n4.4 Omar - Sébastien Gabriel - France - 2009 - 9 minutes\n\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.\n\nOdile - Bénédicte Delgéhier - France - 2006- 10 minutes\n\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...\n\n4.6 Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008\n\n17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.\n\nCowboy Forever - Jean Baptiste Erreca - France\n\n2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...\n\nAmerican Boy - Patricia &amp; Colette - France\n\n2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'Courts-metrages', '', 'inherit', 'closed', 'open', '', '16-autosave', '', '', '2013-01-15 14:26:57', '2013-01-15 13:26:57', '', 16, 'http://localhost/~chanturidze/festival_cinema/?p=18', 0, 'revision', '', 0),
(19, 1, '2013-01-15 11:28:48', '2013-01-15 10:28:48', 'Intro\r\n\r\nLes 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.\r\n\r\nEn colo - Pascal-Alex Vincent - France\r\n\r\n2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.\r\n\r\nPauline – Céline Sciamma- France – 2009\r\n\r\n7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.\r\n\r\n4.4 Omar - Sébastien Gabriel - France - 2009 - 9 minutes\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.\r\n\r\nOdile - Bénédicte Delgéhier - France - 2006- 10 minutes\r\n\r\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie... 4.6 Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008 ============================================================= 17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte. 4.7 Cowboy Forever - Jean Baptiste Erreca - France =================================================== 2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail... 4.8 American Boy - Patricia &amp; Colette - France =============================================== 2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'Courts-metrages', '', 'inherit', 'closed', 'open', '', '16-revision-2', '', '', '2013-01-15 11:28:48', '2013-01-15 10:28:48', '', 16, 'http://localhost/~chanturidze/festival_cinema/?p=19', 0, 'revision', '', 0),
(20, 1, '2013-01-21 12:53:12', '2013-01-21 11:53:12', '', 'films', '', 'trash', 'closed', 'open', '', 'films', '', '', '2013-01-21 13:05:23', '2013-01-21 12:05:23', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=20', 0, 'post', '', 0),
(21, 1, '2013-01-15 14:25:54', '2013-01-15 13:25:54', 'Intro\r\n\r\nLes 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.\r\n\r\nEn colo - Pascal-Alex Vincent - France\r\n\r\n2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.\r\n\r\nPauline – Céline Sciamma- France – 2009\r\n\r\n7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.\r\n\r\n4.4 Omar - Sébastien Gabriel - France - 2009 - 9 minutes\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.\r\n\r\nOdile - Bénédicte Delgéhier - France - 2006- 10 minutes\r\n\r\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...\r\n\r\n4.6 Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008\r\n\r\n17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.\r\n\r\nCowboy Forever - Jean Baptiste Erreca - France\r\n\r\n2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...\r\n\r\nAmerican Boy - Patricia &amp; Colette - France\r\n\r\n2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'Courts-metrages', '', 'inherit', 'closed', 'open', '', '16-revision-3', '', '', '2013-01-15 14:25:54', '2013-01-15 13:25:54', '', 16, 'http://localhost/~chanturidze/festival_cinema/?p=21', 0, 'revision', '', 0),
(22, 1, '2013-01-07 15:45:52', '2013-01-07 15:45:52', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'closed', 'open', '', '1-revision', '', '', '2013-01-07 15:45:52', '2013-01-07 15:45:52', '', 1, 'http://localhost/~chanturidze/festival_cinema/?p=22', 0, 'revision', '', 0),
(23, 1, '2013-01-21 12:53:12', '2013-01-21 11:53:12', '', 'films', '', 'inherit', 'closed', 'open', '', '20-revision', '', '', '2013-01-21 12:53:12', '2013-01-21 11:53:12', '', 20, 'http://localhost/~chanturidze/festival_cinema/?p=23', 0, 'revision', '', 0),
(24, 1, '2013-01-21 12:54:27', '2013-01-21 11:54:27', 'Intro\r\n\r\nLes 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous le regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.\r\n\r\nEn colo - Pascal-Alex Vincent - France\r\n\r\n2009 - 8 minutes Lors d’une séance du jeu « Action ou vérité ? », deux jeunes garçons, Mathieu et Maxime, ont pour défi de s’embrasser. Le baiser va provoquer chez eux un certain émoi. A partir de ce moment, les ados, témoins de cette scène, font des allusions plus ou moins directes à l’éventuelle homosexualité de Maxime. Une révélation surprenante va alors déstabiliser le groupe, mais surtout le faire réfléchir.\r\n\r\nPauline – Céline Sciamma- France – 2009\r\n\r\n7 minutes C’est la mise en scène d’une jeune fille, qui se raconte face à la caméra : l’enfance joyeuse dans une petite ville de province où tout le monde se connaît, la révélation publique et infamante de son homosexualité par un ami de ses parents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.\r\n\r\n4.4 Omar - Sébastien Gabriel - France - 2009 - 9 minutes\r\n\r\nC’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.\r\n\r\nOdile - Bénédicte Delgéhier - France - 2006- 10 minutes\r\n\r\nUne boulangerie banale sur une route de campagne. Derrière le comptoir, Odile, s’ennuie. Un jour, une horde de motards stoppe devant la boutique. Le passé va faire irruption dans sa vie...\r\n\r\n4.6 Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008\r\n\r\n17 minutes - VOSTF Le corps d’un travesti décédé est préparé pour l’enterrement par d’autres travestis. Son corps de femme est amené à sa famille, qui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.\r\n\r\nCowboy Forever - Jean Baptiste Erreca - France\r\n\r\n2006 - 26 minutes Au cœur du Brésil, dans le monde machiste des cowboys latinos, les héros de Cowboy Forever revendiquent leur homosexualité et manient à merveille le lasso, et pas seulement pour attraper le bétail...\r\n\r\nAmerican Boy - Patricia &amp; Colette - France\r\n\r\n2008 - 4 minutes Comment jouer du genre en chanson ? Projection suivie d’un débat avec un réalisateur. Un cocktail vous sera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'Courts-metrages', '', 'inherit', 'closed', 'open', '', '16-revision-4', '', '', '2013-01-21 12:54:27', '2013-01-21 11:54:27', '', 16, 'http://localhost/~chanturidze/festival_cinema/?p=24', 0, 'revision', '', 0),
(25, 1, '2013-01-21 13:10:32', '2013-01-21 12:10:32', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous\r\n\r\nle regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des\r\n\r\nréalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé,\r\n\r\nde la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'publish', 'closed', 'open', '', 'intro', '', '', '2013-02-05 17:19:34', '2013-02-05 16:19:34', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=25', 0, 'post', '', 0),
(26, 1, '2013-01-21 13:09:52', '2013-01-21 12:09:52', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous\n\nle regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des réalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé, de la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'closed', 'open', '', '25-revision', '', '', '2013-01-21 13:09:52', '2013-01-21 12:09:52', '', 25, 'http://localhost/~chanturidze/festival_cinema/?p=26', 0, 'revision', '', 0),
(27, 1, '2013-01-07 15:45:52', '2013-01-07 15:45:52', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~chanturidze/festival_cinema/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'inherit', 'closed', 'open', '', '2-revision', '', '', '2013-01-07 15:45:52', '2013-01-07 15:45:52', '', 2, 'http://localhost/~chanturidze/festival_cinema/?p=27', 0, 'revision', '', 0),
(28, 1, '2013-01-21 13:14:21', '2013-01-21 12:14:21', 'Lors d’une séance du jeu « Action ou\r\n\r\nvérité ? », deux jeunes garçons, Mathieu et Maxime,\r\n\r\nont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi.\r\n\r\nA partir de ce moment, les ados, témoins de cette scène, font des\r\n\r\nallusions plus ou moins directes à l’éventuelle homosexualité\r\n\r\nde Maxime. Une révélation surprenante va alors déstabiliser\r\n\r\nle groupe, mais surtout le faire réfléchir.', 'En colo', '', 'publish', 'closed', 'open', '', 'en-colo-pascal-alex-vincent-france', '', '', '2013-02-04 16:37:09', '2013-02-04 15:37:09', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=28', 0, 'post', '', 0),
(29, 1, '2013-01-21 13:14:05', '2013-01-21 12:14:05', '2009 - 8 minutes\n\nLors d’une séance du jeu « Action ou\n\nvérité ? », deux jeunes garçons, Mathieu et Maxime,\n\nont pour défi de s’embrasser.\n\nLe baiser va provoquer chez eux un certain émoi.\n\nA partir de ce moment, les ados, témoins de cette scène, font des\n\nallusions plus ou moins directes à l’éventuelle homosexualité\n\nde Maxime. Une révélation surprenante va alors déstabiliser\n\nle groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '28-revision', '', '', '2013-01-21 13:14:05', '2013-01-21 12:14:05', '', 28, 'http://localhost/~chanturidze/festival_cinema/?p=29', 0, 'revision', '', 0),
(30, 1, '2013-01-21 13:15:55', '2013-01-21 12:15:55', '&nbsp;\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte\r\n\r\nface à la caméra : l’enfance joyeuse dans une petite\r\n\r\nville de province où tout le monde se connaît, la révélation\r\n\r\npublique et infamante de son homosexualité par un ami de ses\r\n\r\nparents, le silence des témoins, la douleur de la solitude, la\r\n\r\npossibilité de l’acceptation. Tout cela elle le raconte à une autre\r\n\r\nfille, à la caméra, au spectateur. Comme une confidence.', 'Pauline ', '', 'publish', 'closed', 'open', '', 'pauline-celine-sciamma-france-2009', '', '', '2013-02-05 17:18:04', '2013-02-05 16:18:04', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=30', 0, 'post', '', 0),
(31, 1, '2013-01-21 13:15:30', '2013-01-21 12:15:30', '7 minutes\n\nC’est la mise en scène d’une jeune fille, qui se raconte\n\nface à la caméra : l’enfance joyeuse dans une petite\n\nville de province où tout le monde se connaît, la révélation\n\npublique et infamante de son homosexualité par un ami de ses\n\nparents, le silence des témoins, la douleur de la solitude, la possibilité de l’acceptation. Tout cela elle le raconte à une autre fille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'closed', 'open', '', '30-revision', '', '', '2013-01-21 13:15:30', '2013-01-21 12:15:30', '', 30, 'http://localhost/~chanturidze/festival_cinema/?p=31', 0, 'revision', '', 0),
(32, 1, '2013-01-21 13:17:54', '2013-01-21 12:17:54', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui\r\n\r\nl’aime mais où la pression est telle qu’il ne peut vraiment assouvir,\r\n\r\nni même révéler, son amour pour Arthur. Jusqu’au\r\n\r\njour où les deux jeunes hommes sont découverts.', 'Omar', '', 'publish', 'closed', 'open', '', 'omar-sebastien-gabriel-france-2009-9-minutes', '', '', '2013-02-05 17:17:29', '2013-02-05 16:17:29', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=32', 0, 'post', '', 0),
(33, 1, '2013-01-21 13:17:00', '2013-01-21 12:17:00', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui l’aime mais où la pression est telle qu’il ne peut vraiment assouvir, ni même révéler, son amour pour Arthur. Jusqu’au jour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'closed', 'open', '', '32-revision', '', '', '2013-01-21 13:17:00', '2013-01-21 12:17:00', '', 32, 'http://localhost/~chanturidze/festival_cinema/?p=33', 0, 'revision', '', 0),
(34, 1, '2013-01-21 13:19:11', '2013-01-21 12:19:11', 'Une boulangerie banale sur une route de\r\n\r\ncampagne. Derrière le comptoir, Odile, s’ennuie.\r\n\r\nUn jour, une horde de motards stoppe devant\r\n\r\nla boutique. Le passé va faire irruption dans\r\n\r\nsa vie...', 'Odile ', '', 'publish', 'closed', 'open', '', 'odile-benedicte-delgehier-france-2006-10-minutes', '', '', '2013-02-05 17:17:06', '2013-02-05 16:17:06', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=34', 0, 'post', '', 0),
(35, 1, '2013-01-21 13:18:22', '2013-01-21 12:18:22', '', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'closed', 'open', '', '34-revision', '', '', '2013-01-21 13:18:22', '2013-01-21 12:18:22', '', 34, 'http://localhost/~chanturidze/festival_cinema/?p=35', 0, 'revision', '', 0),
(36, 1, '2013-01-21 13:20:40', '2013-01-21 12:20:40', 'Le corps d’un travesti décédé est préparé\r\n\r\npour l’enterrement par d’autres travestis.\r\n\r\nSon corps de femme est amené à sa famille,\r\n\r\nqui décide de l’enterrer comme un homme.\r\n\r\nUne procession de travestis se met en marche\r\n\r\nvers la veillée funèbre pour revendiquer\r\n\r\nl’identité construite de la défunte.', 'Os sapatos de Aristeu  ', '', 'publish', 'closed', 'open', '', 'os-sapatos-de-aristeu-rene-guerra-luiz-bresil-2008', '', '', '2013-02-05 17:15:45', '2013-02-05 16:15:45', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=36', 0, 'post', '', 0),
(37, 1, '2013-01-21 13:20:16', '2013-01-21 12:20:16', '17 minutes - VOSTF\n\nLe corps d’un travesti décédé est préparé\n\npour l’enterrement par d’autres travestis.\n\nSon corps de femme est amené à sa famille,\n\nqui décide de l’enterrer comme un homme. Une procession de travestis se met en marche vers la veillée funèbre pour revendiquer l’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'open', '', '36-revision', '', '', '2013-01-21 13:20:16', '2013-01-21 12:20:16', '', 36, 'http://localhost/~chanturidze/festival_cinema/?p=37', 0, 'revision', '', 0),
(38, 1, '2013-01-21 13:21:51', '2013-01-21 12:21:51', 'Au cœur du Brésil, dans le monde machiste des\r\n\r\ncowboys latinos, les héros de Cowboy Forever\r\n\r\nrevendiquent leur homosexualité et manient à\r\n\r\nmerveille le lasso, et pas seulement pour attraper\r\n\r\nle bétail...', 'Cowboy Forever -  - ', '', 'publish', 'closed', 'open', '', 'cowboy-forever-jean-baptiste-erreca-france', '', '', '2013-02-05 17:15:18', '2013-02-05 16:15:18', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=38', 0, 'post', '', 0),
(39, 1, '2013-01-21 13:21:45', '2013-01-21 12:21:45', '2006 - 26 minutes\n\nAu cœur du Brésil, dans le monde machiste des\n\ncowboys latinos, les héros de Cowboy Forever\n\nrevendiquent leur homosexualité et manient à\n\nmerveille le lasso, et pas seulement pour attraperle bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'closed', 'open', '', '38-revision', '', '', '2013-01-21 13:21:45', '2013-01-21 12:21:45', '', 38, 'http://localhost/~chanturidze/festival_cinema/?p=39', 0, 'revision', '', 0),
(40, 1, '2013-01-21 13:23:07', '2013-01-21 12:23:07', '&nbsp;\r\n\r\nComment jouer du genre en chanson ?\r\n\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous\r\n\r\nsera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy ', '', 'publish', 'closed', 'open', '', 'american-boy-patricia-colette-france', '', '', '2013-02-05 17:14:47', '2013-02-05 16:14:47', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=40', 0, 'post', '', 0),
(41, 1, '2013-01-21 13:22:58', '2013-01-21 12:22:58', '2008 - 4 minutes\n\nComment jouer du genre en chanson ?\n\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous\n\nsera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'closed', 'open', '', '40-revision', '', '', '2013-01-21 13:22:58', '2013-01-21 12:22:58', '', 40, 'http://localhost/~chanturidze/festival_cinema/?p=41', 0, 'revision', '', 0),
(42, 1, '2013-01-21 13:24:47', '2013-01-21 12:24:47', '(C’est élémentaire - Parler de l’homosexualité à l’école)   Documentaire Durée\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'publish', 'closed', 'open', '', 'its-elementary-talking-about-gays-issues-in-school', '', '', '2013-02-05 17:01:59', '2013-02-05 16:01:59', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=42', 0, 'post', '', 0),
(43, 1, '2013-01-21 13:24:13', '2013-01-21 12:24:13', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff\n\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\n\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé. La projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '42-revision', '', '', '2013-01-21 13:24:13', '2013-01-21 12:24:13', '', 42, 'http://localhost/~chanturidze/festival_cinema/?p=43', 0, 'revision', '', 0),
(44, 1, '2013-01-21 13:26:55', '2013-01-21 12:26:55', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER ', '', 'publish', 'closed', 'open', '', 'ander-realise-par-roberto-caston', '', '', '2013-02-05 17:01:24', '2013-02-05 16:01:24', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=44', 0, 'post', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(45, 1, '2013-01-21 13:25:55', '2013-01-21 12:25:55', 'Espagne - 2009 - 02h08 - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive\n\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté. Prix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'open', '', '44-revision', '', '', '2013-01-21 13:25:55', '2013-01-21 12:25:55', '', 44, 'http://localhost/~chanturidze/festival_cinema/?p=45', 0, 'revision', '', 0),
(46, 1, '2013-01-21 13:27:52', '2013-01-21 12:27:52', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ ', '', 'publish', 'closed', 'open', '', 'el-nino-pez-realise-par-lucia-puenzo', '', '', '2013-02-05 17:00:51', '2013-02-05 16:00:51', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=46', 0, 'post', '', 0),
(47, 1, '2013-01-21 13:27:03', '2013-01-21 12:27:03', '', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'open', '', '46-revision', '', '', '2013-01-21 13:27:03', '2013-01-21 12:27:03', '', 46, 'http://localhost/~chanturidze/festival_cinema/?p=47', 0, 'revision', '', 0),
(48, 1, '2013-01-21 13:29:05', '2013-01-21 12:29:05', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT', '', 'publish', 'closed', 'open', '', 'cant-think-straight-realise-par-shamim-sarif', '', '', '2013-02-05 16:58:45', '2013-02-05 15:58:45', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=48', 0, 'post', '', 0),
(49, 1, '2013-01-21 13:28:59', '2013-01-21 12:28:59', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\n\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises. Meilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'open', '', '48-revision', '', '', '2013-01-21 13:28:59', '2013-01-21 12:28:59', '', 48, 'http://localhost/~chanturidze/festival_cinema/?p=49', 0, 'revision', '', 0),
(50, 1, '2013-01-21 13:32:12', '2013-01-21 12:32:12', '<h3>Lieu du festival :</h3>\r\nCinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS \r\n<h3>Tarifs :</h3> Plein tarif : 7,50 € \r\n<h3>Pass Festival :</h3> 25 € (5 séances) \r\n<h3>Soirée courts métrages :</h3> 6 € (vendredi) \r\n<h3>2 séances consécutives le samedi ou le dimanche :</h3> 12 €\r\n\r\n<h3>Cartes &amp; réductions acceptées :</h3> Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n<h2>Le festival D’un bord à l’autre est organisé par Ciné Mundi.</h2> Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\n<h3>Equipe :</h3>\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rcccImpression : Prevost Offset Contacts :\r\n\r\nfestival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'infos pratiques', '', 'publish', 'closed', 'open', '', 'infos-pratiques', '', '', '2013-02-05 17:58:48', '2013-02-05 16:58:48', '', 0, 'http://localhost/~chanturidze/festival_cinema/?page_id=50', 0, 'page', '', 0),
(51, 1, '2013-01-21 13:31:34', '2013-01-21 12:31:34', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 €\n\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\n\nLe festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\n\nEquipe :\n\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rccc Impression : Prevost Offset Contacts :\n\nfestival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'infos pratiques', '', 'inherit', 'closed', 'open', '', '50-revision', '', '', '2013-01-21 13:31:34', '2013-01-21 12:31:34', '', 50, 'http://localhost/~chanturidze/festival_cinema/?p=51', 0, 'revision', '', 0),
(52, 1, '2013-01-21 13:34:20', '2013-01-21 12:34:20', '- La Région Centre\r\n\r\n- La Mairie d''Orléans\r\n\r\n- Le cinéma des Carmes\r\n\r\n- Le Groupe Action Gay &amp; Lesbien- Loiret\r\n\r\n- Citégay\r\n\r\n- La dixième Muse\r\n\r\n- Têtu - Yagg.com\r\n\r\n- France Bleu Orléans\r\n\r\n- Bagdam Espace Lesbien ( Toulouse )\r\n\r\n- Cineffable\r\n\r\n- Le Festival Tous Courts ( Aix en Provence )\r\n\r\n- Les VidéObstinées', 'remerciements', '', 'publish', 'closed', 'open', '', 'remerciements', '', '', '2013-01-21 13:34:20', '2013-01-21 12:34:20', '', 0, 'http://localhost/~chanturidze/festival_cinema/?page_id=52', 0, 'page', '', 0),
(53, 1, '2013-01-21 13:33:33', '2013-01-21 12:33:33', '- La Région Centre\n\n- La Mairie d''Orléans\n\n- Le cinéma des Carmes\n\n- Le Groupe Action Gay &amp; Lesbien\n\n- Loiret - Citégay - La dixième Muse - Têtu - Yagg.com - France Bleu Orléans - Bagdam Espace Lesbien ( Toulouse ) - Cineffable - Le Festival Tous Courts ( Aix en Provence ) - Les VidéObstinées', 'remerciements', '', 'inherit', 'closed', 'open', '', '52-revision', '', '', '2013-01-21 13:33:33', '2013-01-21 12:33:33', '', 52, 'http://localhost/~chanturidze/festival_cinema/?p=53', 0, 'revision', '', 0),
(55, 1, '2013-01-21 13:36:08', '2013-01-21 12:36:08', '- <a href="http://www.regioncentre.fr/accueil.html">Région Centre</a>\r\n\r\n- <a href=" http://www.orleans.fr/">Orléans</a>\r\n\r\n-<a href="http://www.cinemalescarmes.com/"> Cinéma des Carmes</a>\r\n\r\n-<a href="http://www.centrelgbtorleans.org/"> GAGL</a>\r\n\r\n- <a href="http://www.tetu.com/">Têtu</a>\r\n\r\n- <a href="http://www.muse-out.com/">La dixième MUSE</a>\r\n\r\n-<a href="http://www.citegay.fr/"> CiteGay</a>\r\n\r\n- <a href="http://yagg.com/">Yagg.com</a>\r\n\r\n- <a href="http://www.francebleu.fr/">France Bleu</a>\r\n\r\n', 'partenaires', '', 'publish', 'closed', 'open', '', 'partenaires', '', '', '2013-02-05 18:15:16', '2013-02-05 17:15:16', '', 0, 'http://localhost/~chanturidze/festival_cinema/?page_id=55', 0, 'page', '', 0),
(56, 1, '2013-01-21 13:35:56', '2013-01-21 12:35:56', '- Région Centre\n\n- Orléans\n\n- Cinéma des Carmes\n\n- GAGL\n\n- Têtu\n\n- La dixième MUSE\n\n- CiteGay\n\n- Yagg.com\n\n- France Bleu', 'partenaires', '', 'inherit', 'closed', 'open', '', '55-revision', '', '', '2013-01-21 13:35:56', '2013-01-21 12:35:56', '', 55, 'http://localhost/~chanturidze/festival_cinema/?p=56', 0, 'revision', '', 0),
(57, 1, '2013-02-05 17:50:52', '2013-02-05 16:50:52', '<div id="yiv1833540943">\n<div id="yui_3_7_2_1_1360082765907_1847">\n<div id="yui_3_7_2_1_1360082765907_1846">&lt;a href="http://www.regioncentre.fr/accueil.html"&gt;Région Centre&lt;/a&gt;- &lt;a href=" http://www.orleans.fr/"&gt;Orléans&lt;/a&gt;-&lt;a href="http://www.cinemalescarmes.com/"&gt; Cinéma des Carmes&lt;/a&gt;\n\n-&lt;a href="http://www.centrelgbtorleans.org/"&gt; GAGL&lt;/a&gt;\n\n- &lt;a href="http://www.tetu.com/"&gt;Têtu&lt;/a&gt;\n\n- &lt;a href="http://www.muse-out.com/"&gt;La dixième MUSE&lt;/a&gt;\n\n-&lt;a href="http://www.citegay.fr/"&gt; CiteGay&lt;/a&gt;\n\n- &lt;a href="http://yagg.com/"&gt;Yagg.com&lt;/a&gt;\n\n- &lt;a href="http://www.francebleu.fr/"&gt;France Bleu&lt;/a&gt;\n\n</div>\n</div>\n</div>', 'partenaires', '', 'inherit', 'closed', 'open', '', '55-autosave', '', '', '2013-02-05 17:50:52', '2013-02-05 16:50:52', '', 55, 'http://localhost/~chanturidze/festival_cinema/?p=57', 0, 'revision', '', 0),
(58, 1, '2013-01-21 13:36:08', '2013-01-21 12:36:08', '- Région Centre\r\n\r\n- Orléans\r\n\r\n- Cinéma des Carmes\r\n\r\n- GAGL\r\n\r\n- Têtu\r\n\r\n- La dixième MUSE\r\n\r\n- CiteGay\r\n\r\n- Yagg.com\r\n\r\n- France Bleu', 'partenaires', '', 'inherit', 'closed', 'open', '', '55-revision-2', '', '', '2013-01-21 13:36:08', '2013-01-21 12:36:08', '', 55, 'http://localhost/~chanturidze/festival_cinema/?p=58', 0, 'revision', '', 0),
(59, 1, '2013-01-15 11:14:30', '2013-01-15 10:14:30', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.En ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edit', '', 'inherit', 'closed', 'open', '', '8-revision-3', '', '', '2013-01-15 11:14:30', '2013-01-15 10:14:30', '', 8, 'http://localhost/~chanturidze/festival_cinema/?p=59', 0, 'revision', '', 0),
(60, 1, '2013-01-21 13:41:00', '2013-01-21 12:41:00', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'publish', 'closed', 'open', '', 'edito', '', '', '2013-02-04 17:49:51', '2013-02-04 16:49:51', '', 0, 'http://localhost/~chanturidze/festival_cinema/?page_id=60', 0, 'page', '', 0),
(61, 1, '2013-01-21 13:40:52', '2013-01-21 12:40:52', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\n\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\n\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\n\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\n\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival ! Christel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '60-revision', '', '', '2013-01-21 13:40:52', '2013-01-21 12:40:52', '', 60, 'http://localhost/~chanturidze/festival_cinema/?p=61', 0, 'revision', '', 0),
(62, 1, '2013-01-21 13:42:28', '2013-01-21 12:42:28', ' ', '', '', 'publish', 'closed', 'open', '', '62', '', '', '2013-01-29 16:37:55', '2013-01-29 15:37:55', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=62', 1, 'nav_menu_item', '', 0),
(63, 1, '2013-01-21 13:42:29', '2013-01-21 12:42:29', ' ', '', '', 'publish', 'closed', 'open', '', '63', '', '', '2013-01-29 16:37:55', '2013-01-29 15:37:55', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=63', 2, 'nav_menu_item', '', 0),
(64, 1, '2013-01-21 13:42:29', '2013-01-21 12:42:29', ' ', '', '', 'publish', 'closed', 'open', '', '64', '', '', '2013-01-29 16:37:55', '2013-01-29 15:37:55', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=64', 3, 'nav_menu_item', '', 0),
(65, 1, '2013-01-21 13:42:29', '2013-01-21 12:42:29', ' ', '', '', 'publish', 'closed', 'open', '', '65', '', '', '2013-01-29 16:37:55', '2013-01-29 15:37:55', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=65', 4, 'nav_menu_item', '', 0),
(66, 1, '2013-01-21 13:42:29', '2013-01-21 12:42:29', ' ', '', '', 'publish', 'closed', 'open', '', '66', '', '', '2013-01-29 16:37:55', '2013-01-29 15:37:55', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=66', 5, 'nav_menu_item', '', 0),
(67, 1, '2013-01-21 13:42:30', '2013-01-21 12:42:30', ' ', '', '', 'publish', 'closed', 'open', '', '67', '', '', '2013-01-29 16:37:56', '2013-01-29 15:37:56', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=67', 6, 'nav_menu_item', '', 0),
(68, 1, '2013-02-04 16:12:03', '2013-02-04 15:12:03', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\n\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'open', '', '48-autosave', '', '', '2013-02-04 16:12:03', '2013-02-04 15:12:03', '', 48, 'http://localhost/~chanturidze/festival_cinema/?p=68', 0, 'revision', '', 0),
(72, 1, '2013-01-21 14:05:48', '2013-01-21 13:05:48', '', 'I_cant_think_straight_001', '', 'inherit', 'closed', 'open', '', 'i_cant_think_straight_001', '', '', '2013-01-21 14:05:48', '2013-01-21 13:05:48', '', 48, 'http://localhost/~chanturidze/festival_cinema/wp-content/uploads/2013/01/I_cant_think_straight_001.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2013-01-21 13:29:05', '2013-01-21 12:29:05', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'open', '', '48-revision-2', '', '', '2013-01-21 13:29:05', '2013-01-21 12:29:05', '', 48, 'http://localhost/~chanturidze/festival_cinema/?p=73', 0, 'revision', '', 0),
(74, 1, '2013-01-21 14:06:52', '2013-01-21 13:06:52', '', 'EL NINO PEZ 1', '', 'inherit', 'closed', 'open', '', 'el-nino-pez-1', '', '', '2013-01-21 14:06:52', '2013-01-21 13:06:52', '', 46, 'http://localhost/~chanturidze/festival_cinema/wp-content/uploads/2013/01/EL-NINO-PEZ-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2013-02-05 17:00:43', '2013-02-05 16:00:43', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ ', '', 'inherit', 'closed', 'open', '', '46-autosave', '', '', '2013-02-05 17:00:43', '2013-02-05 16:00:43', '', 46, 'http://localhost/~chanturidze/festival_cinema/?p=75', 0, 'revision', '', 0),
(76, 1, '2013-01-21 14:08:03', '2013-01-21 13:08:03', '', 'ANDER1', '', 'inherit', 'closed', 'open', '', 'ander1', '', '', '2013-01-21 14:08:03', '2013-01-21 13:08:03', '', 44, 'http://localhost/~chanturidze/festival_cinema/wp-content/uploads/2013/01/ANDER1.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2013-01-21 13:26:55', '2013-01-21 12:26:55', 'Espagne - 2009 - 02h08 - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'open', '', '44-revision-2', '', '', '2013-01-21 13:26:55', '2013-01-21 12:26:55', '', 44, 'http://localhost/~chanturidze/festival_cinema/?p=77', 0, 'revision', '', 0),
(78, 1, '2013-01-21 14:08:24', '2013-01-21 13:08:24', '', 'Brouillon auto', '', 'trash', 'closed', 'open', '', 'brouillon-auto', '', '', '2013-01-21 14:08:31', '2013-01-21 13:08:31', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=78', 0, 'post', '', 0),
(79, 1, '2013-01-21 14:08:50', '2013-01-21 13:08:50', '', 'ItsElementaryGBan', '', 'inherit', 'closed', 'open', '', 'itselementarygban', '', '', '2013-01-21 14:08:50', '2013-01-21 13:08:50', '', 42, 'http://localhost/~chanturidze/festival_cinema/wp-content/uploads/2013/01/ItsElementaryGBan.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2013-01-21 13:24:47', '2013-01-21 12:24:47', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '42-revision-2', '', '', '2013-01-21 13:24:47', '2013-01-21 12:24:47', '', 42, 'http://localhost/~chanturidze/festival_cinema/?p=80', 0, 'revision', '', 0),
(81, 1, '2013-01-21 14:10:01', '2013-01-21 13:10:01', '', 'American boy', '', 'inherit', 'closed', 'open', '', 'american-boy', '', '', '2013-01-21 14:10:01', '2013-01-21 13:10:01', '', 40, 'http://localhost/~chanturidze/festival_cinema/wp-content/uploads/2013/01/American-boy.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2013-01-21 14:10:20', '2013-01-21 13:10:20', '2008 - 4 minutes\n\nComment jouer du genre en chanson ?\n\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous\n\nsera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'closed', 'open', '', '40-autosave', '', '', '2013-01-21 14:10:20', '2013-01-21 13:10:20', '', 40, 'http://localhost/~chanturidze/festival_cinema/?p=82', 0, 'revision', '', 0),
(83, 1, '2013-01-21 13:23:07', '2013-01-21 12:23:07', '2008 - 4 minutes\r\n\r\nComment jouer du genre en chanson ?\r\n\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous\r\n\r\nsera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'closed', 'open', '', '40-revision-2', '', '', '2013-01-21 13:23:07', '2013-01-21 12:23:07', '', 40, 'http://localhost/~chanturidze/festival_cinema/?p=83', 0, 'revision', '', 0),
(84, 1, '2013-01-21 14:11:47', '2013-01-21 13:11:47', '', 'COWBOY FOREVER', '', 'inherit', 'closed', 'open', '', 'cowboy-forever', '', '', '2013-01-21 14:11:47', '2013-01-21 13:11:47', '', 38, 'http://localhost/~chanturidze/festival_cinema/wp-content/uploads/2013/01/COWBOY-FOREVER.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2013-01-21 13:21:51', '2013-01-21 12:21:51', '2006 - 26 minutes\r\n\r\nAu cœur du Brésil, dans le monde machiste des\r\n\r\ncowboys latinos, les héros de Cowboy Forever\r\n\r\nrevendiquent leur homosexualité et manient à\r\n\r\nmerveille le lasso, et pas seulement pour attraper\r\n\r\nle bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'closed', 'open', '', '38-revision-2', '', '', '2013-01-21 13:21:51', '2013-01-21 12:21:51', '', 38, 'http://localhost/~chanturidze/festival_cinema/?p=85', 0, 'revision', '', 0),
(86, 1, '2013-01-21 14:13:07', '2013-01-21 13:13:07', '17 minutes - VOSTF\n\nLe corps d’un travesti décédé est préparé\n\npour l’enterrement par d’autres travestis.\n\nSon corps de femme est amené à sa famille,\n\nqui décide de l’enterrer comme un homme.\n\nUne procession de travestis se met en marche\n\nvers la veillée funèbre pour revendiquer\n\nl’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'open', '', '36-autosave', '', '', '2013-01-21 14:13:07', '2013-01-21 13:13:07', '', 36, 'http://localhost/~chanturidze/festival_cinema/?p=86', 0, 'revision', '', 0),
(87, 1, '2013-01-21 13:20:40', '2013-01-21 12:20:40', '17 minutes - VOSTF\r\n\r\nLe corps d’un travesti décédé est préparé\r\n\r\npour l’enterrement par d’autres travestis.\r\n\r\nSon corps de femme est amené à sa famille,\r\n\r\nqui décide de l’enterrer comme un homme.\r\n\r\nUne procession de travestis se met en marche\r\n\r\nvers la veillée funèbre pour revendiquer\r\n\r\nl’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'open', '', '36-revision-2', '', '', '2013-01-21 13:20:40', '2013-01-21 12:20:40', '', 36, 'http://localhost/~chanturidze/festival_cinema/?p=87', 0, 'revision', '', 0),
(88, 1, '2013-02-05 17:17:03', '2013-02-05 16:17:03', 'Une boulangerie banale sur une route de\n\ncampagne. Derrière le comptoir, Odile, s’ennuie.\n\nUn jour, une horde de motards stoppe devant\n\nla boutique. Le passé va faire irruption dans\n\nsa vie...', 'Odile ', '', 'inherit', 'closed', 'open', '', '34-autosave', '', '', '2013-02-05 17:17:03', '2013-02-05 16:17:03', '', 34, 'http://localhost/~chanturidze/festival_cinema/?p=88', 0, 'revision', '', 0),
(89, 1, '2013-01-21 14:15:34', '2013-01-21 13:15:34', '', 'Odile', '', 'inherit', 'closed', 'open', '', 'odile', '', '', '2013-01-21 14:15:34', '2013-01-21 13:15:34', '', 34, 'http://localhost/~chanturidze/festival_cinema/wp-content/uploads/2013/01/Odile-.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2013-01-21 13:19:11', '2013-01-21 12:19:11', 'Une boulangerie banale sur une route de\r\n\r\ncampagne. Derrière le comptoir, Odile, s’ennuie.\r\n\r\nUn jour, une horde de motards stoppe devant\r\n\r\nla boutique. Le passé va faire irruption dans\r\n\r\nsa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'closed', 'open', '', '34-revision-2', '', '', '2013-01-21 13:19:11', '2013-01-21 12:19:11', '', 34, 'http://localhost/~chanturidze/festival_cinema/?p=90', 0, 'revision', '', 0),
(91, 1, '2013-01-21 14:16:09', '2013-01-21 13:16:09', '', 'OMAR_', '', 'inherit', 'closed', 'open', '', 'omar_', '', '', '2013-01-21 14:16:09', '2013-01-21 13:16:09', '', 32, 'http://localhost/~chanturidze/festival_cinema/wp-content/uploads/2013/01/OMAR_.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2013-01-21 13:17:54', '2013-01-21 12:17:54', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui\r\n\r\nl’aime mais où la pression est telle qu’il ne peut vraiment assouvir,\r\n\r\nni même révéler, son amour pour Arthur. Jusqu’au\r\n\r\njour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'closed', 'open', '', '32-revision-2', '', '', '2013-01-21 13:17:54', '2013-01-21 12:17:54', '', 32, 'http://localhost/~chanturidze/festival_cinema/?p=92', 0, 'revision', '', 0),
(93, 1, '2013-01-21 14:16:53', '2013-01-21 13:16:53', '', 'PAULINE_1', '', 'inherit', 'closed', 'open', '', 'pauline_1', '', '', '2013-01-21 14:16:53', '2013-01-21 13:16:53', '', 30, 'http://localhost/~chanturidze/festival_cinema/wp-content/uploads/2013/01/PAULINE_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2013-01-21 13:15:55', '2013-01-21 12:15:55', '7 minutes\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte\r\n\r\nface à la caméra : l’enfance joyeuse dans une petite\r\n\r\nville de province où tout le monde se connaît, la révélation\r\n\r\npublique et infamante de son homosexualité par un ami de ses\r\n\r\nparents, le silence des témoins, la douleur de la solitude, la\r\n\r\npossibilité de l’acceptation. Tout cela elle le raconte à une autre\r\n\r\nfille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'closed', 'open', '', '30-revision-2', '', '', '2013-01-21 13:15:55', '2013-01-21 12:15:55', '', 30, 'http://localhost/~chanturidze/festival_cinema/?p=94', 0, 'revision', '', 0),
(95, 1, '2013-01-21 14:17:18', '2013-01-21 13:17:18', '', 'EN_COLOricco', '', 'inherit', 'closed', 'open', '', 'en_coloricco', '', '', '2013-01-21 14:17:18', '2013-01-21 13:17:18', '', 28, 'http://localhost/~chanturidze/festival_cinema/wp-content/uploads/2013/01/EN_COLOricco.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2013-01-21 13:14:21', '2013-01-21 12:14:21', '2009 - 8 minutes\r\n\r\nLors d’une séance du jeu « Action ou\r\n\r\nvérité ? », deux jeunes garçons, Mathieu et Maxime,\r\n\r\nont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi.\r\n\r\nA partir de ce moment, les ados, témoins de cette scène, font des\r\n\r\nallusions plus ou moins directes à l’éventuelle homosexualité\r\n\r\nde Maxime. Une révélation surprenante va alors déstabiliser\r\n\r\nle groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '28-revision-2', '', '', '2013-01-21 13:14:21', '2013-01-21 12:14:21', '', 28, 'http://localhost/~chanturidze/festival_cinema/?p=96', 0, 'revision', '', 0),
(98, 1, '2013-01-21 13:10:32', '2013-01-21 12:10:32', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous\r\n\r\nle regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des\r\n\r\nréalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé,\r\n\r\nde la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'closed', 'open', '', '25-revision-2', '', '', '2013-01-21 13:10:32', '2013-01-21 12:10:32', '', 25, 'http://localhost/~chanturidze/festival_cinema/?p=98', 0, 'revision', '', 0),
(99, 1, '2013-01-21 14:06:07', '2013-01-21 13:06:07', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'open', '', '48-revision-3', '', '', '2013-01-21 14:06:07', '2013-01-21 13:06:07', '', 48, 'http://localhost/~chanturidze/festival_cinema/?p=99', 0, 'revision', '', 0),
(100, 1, '2013-01-21 13:27:52', '2013-01-21 12:27:52', 'Argentine - 2008 - 01h36 - VOSTF Interprétation : Inés Efron, Mariela Vitale, Pep Munne\r\n\r\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'open', '', '46-revision-2', '', '', '2013-01-21 13:27:52', '2013-01-21 12:27:52', '', 46, 'http://localhost/~chanturidze/festival_cinema/?p=100', 0, 'revision', '', 0),
(101, 1, '2013-01-21 16:28:13', '2013-01-21 15:28:13', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'open', '', '48-revision-4', '', '', '2013-01-21 16:28:13', '2013-01-21 15:28:13', '', 48, 'http://localhost/~chanturidze/festival_cinema/?p=101', 0, 'revision', '', 0),
(102, 1, '2013-01-28 16:22:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'open', '', '', '', '', '2013-01-28 16:22:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=102', 1, 'nav_menu_item', '', 0),
(103, 1, '2013-01-28 16:22:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'open', '', '', '', '', '2013-01-28 16:22:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=103', 1, 'nav_menu_item', '', 0),
(104, 1, '2013-01-28 16:22:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'open', '', '', '', '', '2013-01-28 16:22:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=104', 1, 'nav_menu_item', '', 0),
(105, 1, '2013-01-28 16:22:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'open', '', '', '', '', '2013-01-28 16:22:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=105', 1, 'nav_menu_item', '', 0),
(110, 1, '2013-02-04 15:53:41', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'open', '', '', '', '', '2013-02-04 15:53:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/~chanturidze/festival_cinema/?p=110', 0, 'post', '', 0),
(115, 1, '2013-02-04 16:05:29', '2013-02-04 15:05:29', '', 'list-film', '', 'publish', 'closed', 'closed', '', 'acf_list-film', '', '', '2013-02-04 16:21:28', '2013-02-04 15:21:28', '', 0, 'http://localhost/~chanturidze/festival_cinema/?post_type=acf&#038;p=115', 0, 'acf', '', 0),
(116, 1, '2013-01-21 16:44:44', '2013-01-21 15:44:44', 'Grande Bretagne - 2007 - 01h20 - Comédie romantique - VOSTF Interprétation : Lisa Ray, Sheetal Sheth, Antonia Frering\r\n\r\nAlors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'open', '', '48-revision-5', '', '', '2013-01-21 16:44:44', '2013-01-21 15:44:44', '', 48, 'http://localhost/~chanturidze/festival_cinema/?p=116', 0, 'revision', '', 0),
(117, 1, '2013-01-21 16:43:32', '2013-01-21 15:43:32', 'Argentine - 2008 - 01h36 - VOSTF Interprétation : Inés Efron, Mariela Vitale, Pep Munne\r\n\r\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'open', '', '46-revision-3', '', '', '2013-01-21 16:43:32', '2013-01-21 15:43:32', '', 46, 'http://localhost/~chanturidze/festival_cinema/?p=117', 0, 'revision', '', 0),
(118, 1, '2013-02-04 16:14:17', '2013-02-04 15:14:17', '-  -  - VOSTF Interprétation :\r\n\r\nDans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'open', '', '46-revision-4', '', '', '2013-02-04 16:14:17', '2013-02-04 15:14:17', '', 46, 'http://localhost/~chanturidze/festival_cinema/?p=118', 0, 'revision', '', 0),
(119, 1, '2013-02-04 16:16:17', '2013-02-04 15:16:17', '- -  - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive\n\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\n\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'open', '', '44-autosave', '', '', '2013-02-04 16:16:17', '2013-02-04 15:16:17', '', 44, 'http://localhost/~chanturidze/festival_cinema/?p=119', 0, 'revision', '', 0),
(120, 1, '2013-01-21 14:08:18', '2013-01-21 13:08:18', 'Espagne - 2009 - 02h08 - VOSTF Interprétation : Josean Bengoetxea, Eriz Alberdi, Christian Esquive\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'open', '', '44-revision-3', '', '', '2013-01-21 14:08:18', '2013-01-21 13:08:18', '', 44, 'http://localhost/~chanturidze/festival_cinema/?p=120', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(121, 1, '2013-02-04 16:16:40', '2013-02-04 15:16:40', '- -  - VOSTF Interprétation :\r\n\r\nAu fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'open', '', '44-revision-4', '', '', '2013-02-04 16:16:40', '2013-02-04 15:16:40', '', 44, 'http://localhost/~chanturidze/festival_cinema/?p=121', 0, 'revision', '', 0),
(122, 1, '2013-02-04 16:18:00', '2013-02-04 15:18:00', '(C’est élémentaire - Parler de l’homosexualité à l’école)  - - Documentaire Durée  - Réalisation :\n\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\n\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\n\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '42-autosave', '', '', '2013-02-04 16:18:00', '2013-02-04 15:18:00', '', 42, 'http://localhost/~chanturidze/festival_cinema/?p=122', 0, 'revision', '', 0),
(123, 1, '2013-01-21 14:09:09', '2013-01-21 13:09:09', '(C’est élémentaire - Parler de l’homosexualité à l’école) Etats-Unis - 1996 - Documentaire Durée 01h20 - Réalisation : Debra Chasnoff\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '42-revision-3', '', '', '2013-01-21 14:09:09', '2013-01-21 13:09:09', '', 42, 'http://localhost/~chanturidze/festival_cinema/?p=123', 0, 'revision', '', 0),
(124, 1, '2013-01-21 14:11:24', '2013-01-21 13:11:24', '2008 - 4 minutes\r\n\r\nComment jouer du genre en chanson ?\r\n\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous\r\n\r\nsera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'closed', 'open', '', '40-revision-3', '', '', '2013-01-21 14:11:24', '2013-01-21 13:11:24', '', 40, 'http://localhost/~chanturidze/festival_cinema/?p=124', 0, 'revision', '', 0),
(125, 1, '2013-01-21 14:11:56', '2013-01-21 13:11:56', '2006 - 26 minutes\r\n\r\nAu cœur du Brésil, dans le monde machiste des\r\n\r\ncowboys latinos, les héros de Cowboy Forever\r\n\r\nrevendiquent leur homosexualité et manient à\r\n\r\nmerveille le lasso, et pas seulement pour attraper\r\n\r\nle bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'closed', 'open', '', '38-revision-3', '', '', '2013-01-21 14:11:56', '2013-01-21 13:11:56', '', 38, 'http://localhost/~chanturidze/festival_cinema/?p=125', 0, 'revision', '', 0),
(126, 1, '2013-01-21 14:13:29', '2013-01-21 13:13:29', '17 minutes - VOSTF\r\n\r\nLe corps d’un travesti décédé est préparé\r\n\r\npour l’enterrement par d’autres travestis.\r\n\r\nSon corps de femme est amené à sa famille,\r\n\r\nqui décide de l’enterrer comme un homme.\r\n\r\nUne procession de travestis se met en marche\r\n\r\nvers la veillée funèbre pour revendiquer\r\n\r\nl’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'open', '', '36-revision-3', '', '', '2013-01-21 14:13:29', '2013-01-21 13:13:29', '', 36, 'http://localhost/~chanturidze/festival_cinema/?p=126', 0, 'revision', '', 0),
(127, 1, '2013-02-04 16:14:48', '2013-02-04 15:14:48', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'open', '', '46-revision-5', '', '', '2013-02-04 16:14:48', '2013-02-04 15:14:48', '', 46, 'http://localhost/~chanturidze/festival_cinema/?p=127', 0, 'revision', '', 0),
(128, 1, '2013-01-21 14:16:59', '2013-01-21 13:16:59', '7 minutes\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte\r\n\r\nface à la caméra : l’enfance joyeuse dans une petite\r\n\r\nville de province où tout le monde se connaît, la révélation\r\n\r\npublique et infamante de son homosexualité par un ami de ses\r\n\r\nparents, le silence des témoins, la douleur de la solitude, la\r\n\r\npossibilité de l’acceptation. Tout cela elle le raconte à une autre\r\n\r\nfille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'closed', 'open', '', '30-revision-3', '', '', '2013-01-21 14:16:59', '2013-01-21 13:16:59', '', 30, 'http://localhost/~chanturidze/festival_cinema/?p=128', 0, 'revision', '', 0),
(129, 1, '2013-02-04 16:25:33', '2013-02-04 15:25:33', '- 8 minutes\n\nLors d’une séance du jeu « Action ou\n\nvérité ? », deux jeunes garçons, Mathieu et Maxime,\n\nont pour défi de s’embrasser.\n\nLe baiser va provoquer chez eux un certain émoi.\n\nA partir de ce moment, les ados, témoins de cette scène, font des\n\nallusions plus ou moins directes à l’éventuelle homosexualité\n\nde Maxime. Une révélation surprenante va alors déstabiliser\n\nle groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '28-autosave', '', '', '2013-02-04 16:25:33', '2013-02-04 15:25:33', '', 28, 'http://localhost/~chanturidze/festival_cinema/?p=129', 0, 'revision', '', 0),
(130, 1, '2013-01-21 14:17:25', '2013-01-21 13:17:25', '2009 - 8 minutes\r\n\r\nLors d’une séance du jeu « Action ou\r\n\r\nvérité ? », deux jeunes garçons, Mathieu et Maxime,\r\n\r\nont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi.\r\n\r\nA partir de ce moment, les ados, témoins de cette scène, font des\r\n\r\nallusions plus ou moins directes à l’éventuelle homosexualité\r\n\r\nde Maxime. Une révélation surprenante va alors déstabiliser\r\n\r\nle groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '28-revision-3', '', '', '2013-01-21 14:17:25', '2013-01-21 13:17:25', '', 28, 'http://localhost/~chanturidze/festival_cinema/?p=130', 0, 'revision', '', 0),
(131, 1, '2013-02-04 16:26:53', '2013-02-04 15:26:53', '&nbsp;\r\n\r\nLors d’une séance du jeu « Action ou\r\n\r\nvérité ? », deux jeunes garçons, Mathieu et Maxime,\r\n\r\nont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi.\r\n\r\nA partir de ce moment, les ados, témoins de cette scène, font des\r\n\r\nallusions plus ou moins directes à l’éventuelle homosexualité\r\n\r\nde Maxime. Une révélation surprenante va alors déstabiliser\r\n\r\nle groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '28-revision-4', '', '', '2013-02-04 16:26:53', '2013-02-04 15:26:53', '', 28, 'http://localhost/~chanturidze/festival_cinema/?p=131', 0, 'revision', '', 0),
(132, 1, '2013-02-04 16:27:22', '2013-02-04 15:27:22', 'Lors d’une séance du jeu « Action ou\r\n\r\nvérité ? », deux jeunes garçons, Mathieu et Maxime,\r\n\r\nont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi.\r\n\r\nA partir de ce moment, les ados, témoins de cette scène, font des\r\n\r\nallusions plus ou moins directes à l’éventuelle homosexualité\r\n\r\nde Maxime. Une révélation surprenante va alors déstabiliser\r\n\r\nle groupe, mais surtout le faire réfléchir.', 'En colo - Pascal-Alex Vincent - France', '', 'inherit', 'closed', 'open', '', '28-revision-5', '', '', '2013-02-04 16:27:22', '2013-02-04 15:27:22', '', 28, 'http://localhost/~chanturidze/festival_cinema/?p=132', 0, 'revision', '', 0),
(133, 1, '2013-01-21 14:16:16', '2013-01-21 13:16:16', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui\r\n\r\nl’aime mais où la pression est telle qu’il ne peut vraiment assouvir,\r\n\r\nni même révéler, son amour pour Arthur. Jusqu’au\r\n\r\njour où les deux jeunes hommes sont découverts.', 'Omar - Sébastien Gabriel - France - 2009 - 9 minutes', '', 'inherit', 'closed', 'open', '', '32-revision-3', '', '', '2013-01-21 14:16:16', '2013-01-21 13:16:16', '', 32, 'http://localhost/~chanturidze/festival_cinema/?p=133', 0, 'revision', '', 0),
(134, 1, '2013-01-21 14:15:49', '2013-01-21 13:15:49', 'Une boulangerie banale sur une route de\r\n\r\ncampagne. Derrière le comptoir, Odile, s’ennuie.\r\n\r\nUn jour, une horde de motards stoppe devant\r\n\r\nla boutique. Le passé va faire irruption dans\r\n\r\nsa vie...', 'Odile  - Bénédicte Delgéhier - France - 2006- 10 minutes', '', 'inherit', 'closed', 'open', '', '34-revision-3', '', '', '2013-01-21 14:15:49', '2013-01-21 13:15:49', '', 34, 'http://localhost/~chanturidze/festival_cinema/?p=134', 0, 'revision', '', 0),
(135, 1, '2013-02-04 16:12:09', '2013-02-04 15:12:09', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT - Réalisé par Shamim Sarif', '', 'inherit', 'closed', 'open', '', '48-revision-6', '', '', '2013-02-04 16:12:09', '2013-02-04 15:12:09', '', 48, 'http://localhost/~chanturidze/festival_cinema/?p=135', 0, 'revision', '', 0),
(136, 1, '2013-02-04 16:22:29', '2013-02-04 15:22:29', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ - Réalisé par Lucía Puenzo', '', 'inherit', 'closed', 'open', '', '46-revision-6', '', '', '2013-02-04 16:22:29', '2013-02-04 15:22:29', '', 46, 'http://localhost/~chanturidze/festival_cinema/?p=136', 0, 'revision', '', 0),
(137, 1, '2013-02-04 16:16:50', '2013-02-04 15:16:50', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER - Réalisé par Roberto Castón', '', 'inherit', 'closed', 'open', '', '44-revision-5', '', '', '2013-02-04 16:16:50', '2013-02-04 15:16:50', '', 44, 'http://localhost/~chanturidze/festival_cinema/?p=137', 0, 'revision', '', 0),
(138, 1, '2013-02-04 16:18:32', '2013-02-04 15:18:32', '(C’est élémentaire - Parler de l’homosexualité à l’école)   Documentaire Durée\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'open', '', '42-revision-4', '', '', '2013-02-04 16:18:32', '2013-02-04 15:18:32', '', 42, 'http://localhost/~chanturidze/festival_cinema/?p=138', 0, 'revision', '', 0),
(139, 1, '2013-02-04 16:20:06', '2013-02-04 15:20:06', '&nbsp;\r\n\r\nComment jouer du genre en chanson ?\r\n\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous\r\n\r\nsera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy - Patricia & Colette - France', '', 'inherit', 'closed', 'open', '', '40-revision-4', '', '', '2013-02-04 16:20:06', '2013-02-04 15:20:06', '', 40, 'http://localhost/~chanturidze/festival_cinema/?p=139', 0, 'revision', '', 0),
(140, 1, '2013-02-04 16:21:02', '2013-02-04 15:21:02', '-\r\n\r\nAu cœur du Brésil, dans le monde machiste des\r\n\r\ncowboys latinos, les héros de Cowboy Forever\r\n\r\nrevendiquent leur homosexualité et manient à\r\n\r\nmerveille le lasso, et pas seulement pour attraper\r\n\r\nle bétail...', 'Cowboy Forever - Jean Baptiste Erreca - France', '', 'inherit', 'closed', 'open', '', '38-revision-4', '', '', '2013-02-04 16:21:02', '2013-02-04 15:21:02', '', 38, 'http://localhost/~chanturidze/festival_cinema/?p=140', 0, 'revision', '', 0),
(141, 1, '2013-02-04 16:22:04', '2013-02-04 15:22:04', '&nbsp;\r\n\r\nLe corps d’un travesti décédé est préparé\r\n\r\npour l’enterrement par d’autres travestis.\r\n\r\nSon corps de femme est amené à sa famille,\r\n\r\nqui décide de l’enterrer comme un homme.\r\n\r\nUne procession de travestis se met en marche\r\n\r\nvers la veillée funèbre pour revendiquer\r\n\r\nl’identité construite de la défunte.', 'Os sapatos de Aristeu - René Guerra Luiz - Brésil - 2008', '', 'inherit', 'closed', 'open', '', '36-revision-4', '', '', '2013-02-04 16:22:04', '2013-02-04 15:22:04', '', 36, 'http://localhost/~chanturidze/festival_cinema/?p=141', 0, 'revision', '', 0),
(142, 1, '2013-02-04 16:24:23', '2013-02-04 15:24:23', '&nbsp;\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte\r\n\r\nface à la caméra : l’enfance joyeuse dans une petite\r\n\r\nville de province où tout le monde se connaît, la révélation\r\n\r\npublique et infamante de son homosexualité par un ami de ses\r\n\r\nparents, le silence des témoins, la douleur de la solitude, la\r\n\r\npossibilité de l’acceptation. Tout cela elle le raconte à une autre\r\n\r\nfille, à la caméra, au spectateur. Comme une confidence.', 'Pauline – Céline Sciamma- France – 2009', '', 'inherit', 'closed', 'open', '', '30-revision-4', '', '', '2013-02-04 16:24:23', '2013-02-04 15:24:23', '', 30, 'http://localhost/~chanturidze/festival_cinema/?p=142', 0, 'revision', '', 0),
(143, 1, '2013-02-04 16:29:33', '2013-02-04 15:29:33', 'Lors d’une séance du jeu « Action ou\r\n\r\nvérité ? », deux jeunes garçons, Mathieu et Maxime,\r\n\r\nont pour défi de s’embrasser.\r\n\r\nLe baiser va provoquer chez eux un certain émoi.\r\n\r\nA partir de ce moment, les ados, témoins de cette scène, font des\r\n\r\nallusions plus ou moins directes à l’éventuelle homosexualité\r\n\r\nde Maxime. Une révélation surprenante va alors déstabiliser\r\n\r\nle groupe, mais surtout le faire réfléchir.', '', '', 'inherit', 'closed', 'open', '', '28-revision-6', '', '', '2013-02-04 16:29:33', '2013-02-04 15:29:33', '', 28, 'http://localhost/~chanturidze/festival_cinema/?p=143', 0, 'revision', '', 0),
(144, 1, '2013-01-21 13:41:00', '2013-01-21 12:41:00', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '60-revision-2', '', '', '2013-01-21 13:41:00', '2013-01-21 12:41:00', '', 60, 'http://localhost/~chanturidze/festival_cinema/?p=144', 0, 'revision', '', 0),
(145, 1, '2013-02-04 17:49:32', '2013-02-04 16:49:32', 'Après trois ans d’affirmation dans le paysage culturel orléanais et une année sabbatique, le Festival de films gays &amp; lesbiens revient sous une nouvelle identité. Relayant le Groupe Action Gay &amp; Lesbien - Loiret, l’association culturelle Ciné Mundi axée sur le cinéma indépendant, lance en 2010 le festival de films LGBT D’un bord à l’autre sur un week-end de trois jours, format similaire aux éditions précédentes. Cette année, l’événement aura pour thème la sensibilisation des jeunes à la lutte contre les discriminations liées à l’orientation sexuelle et au genre.\r\n\r\nAu programme de ce rendez-vous : 5 séances inédites au cinéma Les Carmes à Orléans.\r\n\r\nEn ouverture : une sélection de courts métrages dont trois ont été réalisés dans le cadre de Jeune et homo sous le regard des autres, concours organisé en 2009 par le Ministère de la Santé et l’INPES contre l’homophobie.\r\n\r\nAutre temps fort de ce week-end : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école), documentaire de Debra Chasnoff, qui déchaîna les mêmes passions que le film d’animation Le baiser de la lune en France en 2010. La projection sera suivie d’un débat avec l’association G.A.G.L 45, sur les Interventions en Milieu Scolaire.\r\n\r\nEnfin, ce sera aussi l’occasion de découvrir 3 fictions avec Ander, un long métrage espagnol mettant en scène une histoire d’amour entre un paysan basque et un immigré péruvien, El niño pez, un surprenant road-movie lesbien version argentine et I can’t think straight, une savoureuse comédie britannique qui clôturera cette édition. Bon festival !\r\n\r\nChristel Guillard, coordinatrice générale.', 'Edito', '', 'inherit', 'closed', 'open', '', '60-revision-3', '', '', '2013-02-04 17:49:32', '2013-02-04 16:49:32', '', 60, 'http://localhost/~chanturidze/festival_cinema/?p=145', 0, 'revision', '', 0),
(146, 1, '2013-02-04 16:32:48', '2013-02-04 15:32:48', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT', '', 'inherit', 'closed', 'closed', '', '48-revision-7', '', '', '2013-02-04 16:32:48', '2013-02-04 15:32:48', '', 48, 'http://localhost/~chanturidze/festival_cinema/?p=146', 0, 'revision', '', 0),
(147, 1, '2013-02-05 16:56:56', '2013-02-05 15:56:56', 'Alors qu’elle est sur le point de se marier, Tala, une jeune Palestinienne installée à Londres, tombe amoureuse de Leyla, une jeune Britannique d’origine indienne. Tout les oppose : Tala est chrétienne et affirmée, Leyla musulmane et timide. Et pourtant, les deux femmes succombent lors d’une nuit passionnée. Mais le poids des cultures, la pression familiale et le sens du devoir mettront à l’épreuve leur relation et les forceront à se découvrir elles-mêmes. Ce premier long métrage de Shamim Sarif, portée par les deux talentueuses actrices (que l’on retrouve également dans son autre film The world unseen) est un pur joyau digne des comédies romantiques anglaises.\r\n\r\nMeilleur Film – Festival Gay et Lesbien de Gran Canaria (2009)', 'CAN’T THINK STRAIGHT', '', 'inherit', 'closed', 'closed', '', '48-revision-8', '', '', '2013-02-05 16:56:56', '2013-02-05 15:56:56', '', 48, 'http://localhost/~chanturidze/festival_cinema/?p=147', 0, 'revision', '', 0),
(148, 1, '2013-02-04 16:33:09', '2013-02-04 15:33:09', 'Dans la banlieue cossue de Buenos Aires, Lala, fille d’un juge dépressif et d’une mère toxicomane, est follement amoureuse de Guayi, jeune et jolie domestique paraguayenne au service de la famille depuis l’âge de treize ans. Les deux jeunes filles projettent de s’enfuir dans le village d’origine de Guayi, au bord du lac Ypoà où elles pourraient vivre ensemble et laisser s’exprimer sans contrainte leur désir fusionnel. Mais un drame familial va brusquement les séparer... Lucía Puenzo, à qui l’on doit le bouleversant XXY, a choisi d’adapter elle-même son propre roman écrit huit ans auparavant où deux jeunes femmes aux physiques opposés et de classes sociales différentes vont se rencontrer et s’aimer. Entre chronique sociale, onirisme et thriller, la cinéaste nous entraîne dans un Thelma et Louise lesbien à travers une Argentine inconnue et troublante.', 'EL NIÑO PEZ ', '', 'inherit', 'closed', 'closed', '', '46-revision-7', '', '', '2013-02-04 16:33:09', '2013-02-04 15:33:09', '', 46, 'http://localhost/~chanturidze/festival_cinema/?p=148', 0, 'revision', '', 0),
(149, 1, '2013-02-04 16:33:31', '2013-02-04 15:33:31', 'Au fin fond du pays basque, Ander, paysan célibataire à la quarantaine passée, vit avec sa sœur Arantxa et leur mère âgée dans la ferme familiale. Alors qu’Arantxa doit bientôt se marier et laisser Ander s’occuper seul de leur mère, celui-ci se casse une jambe. Pour l’assister dans ses tâches, sa famille embauche José, un jeune travailleur saisonnier péruvien. Le nouveau venu va bientôt bouleverser les relations familiales et surtout troubler de plus en plus Ander... Considéré comme le Brockback Mountain basque, Roberto Castón met en scène cette histoire d’amour entre deux hommes vivant au contact de la nature d’une manière différente. Il laisse le temps à ses personnages de s’apprivoiser, de se découvrir, d’évoluer dans le rude paysage de la Biscaye qu’il prend aussi le temps de filmer... Ce premier beau long métrage où la simplicité formelle côtoie la complexité des rapports humains d’une grande intensité, a remporté l’adhésion du public dans tous les festivals où il a été projeté.\r\n\r\nPrix C.I.C.A.E – Festival International de Berlin (2009) Violette d’or du meilleur film – Festival Cinespaña - Toulouse (2009) Grand prix du jury – Festival Cinehorizontes (2009)', 'ANDER ', '', 'inherit', 'closed', 'closed', '', '44-revision-6', '', '', '2013-02-04 16:33:31', '2013-02-04 15:33:31', '', 44, 'http://localhost/~chanturidze/festival_cinema/?p=149', 0, 'revision', '', 0),
(150, 1, '2013-02-04 16:33:58', '2013-02-04 15:33:58', '(C’est élémentaire - Parler de l’homosexualité à l’école)   Documentaire Durée\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'closed', '', '42-revision-5', '', '', '2013-02-04 16:33:58', '2013-02-04 15:33:58', '', 42, 'http://localhost/~chanturidze/festival_cinema/?p=150', 0, 'revision', '', 0),
(151, 1, '2013-02-05 17:01:48', '2013-02-05 16:01:48', '(C’est élémentaire - Parler de l’homosexualité à l’école)   Documentaire Durée\r\n\r\nPremier documentaire à traiter de l’homosexualité expliquée aux enfants dans les écoles publiques américaines, It’s elementary suit les interventions des enseignants dans les classes allant du primaire au lycée. Tourné en 1996, il a fait le tour des écoles américaines et a gagné de nombreux prix. Un excellent support didactique à montrer à tous les élèves et leurs professeurs lorsque l’on appartient au monde de l’éducation.\r\n\r\nCe film a subi aux Etats-Unis des attaques de la part de l’ultra-droite chrétienne intégriste et homophobe pour empêcher sa diffusion sur une chaîne télé.\r\n\r\nLa projection sera suivie d’un débat avec l’association G.A.G.L 45 qui organise depuis 2007 des Interventions en Milieu Scolaire dans le Loiret.', 'It’s elementary, talking about gays issues in school', '', 'inherit', 'closed', 'closed', '', '42-revision-6', '', '', '2013-02-05 17:01:48', '2013-02-05 16:01:48', '', 42, 'http://localhost/~chanturidze/festival_cinema/?p=151', 0, 'revision', '', 0),
(152, 1, '2013-02-04 16:34:39', '2013-02-04 15:34:39', '&nbsp;\r\n\r\nComment jouer du genre en chanson ?\r\n\r\nProjection suivie d’un débat avec un réalisateur. Un cocktail vous\r\n\r\nsera servi à l’issue de la soirée dans l’espace Délicat&amp;Scène.', 'American Boy ', '', 'inherit', 'closed', 'closed', '', '40-revision-5', '', '', '2013-02-04 16:34:39', '2013-02-04 15:34:39', '', 40, 'http://localhost/~chanturidze/festival_cinema/?p=152', 0, 'revision', '', 0),
(153, 1, '2013-02-04 16:35:17', '2013-02-04 15:35:17', '-\r\n\r\nAu cœur du Brésil, dans le monde machiste des\r\n\r\ncowboys latinos, les héros de Cowboy Forever\r\n\r\nrevendiquent leur homosexualité et manient à\r\n\r\nmerveille le lasso, et pas seulement pour attraper\r\n\r\nle bétail...', 'Cowboy Forever -  - ', '', 'inherit', 'closed', 'closed', '', '38-revision-5', '', '', '2013-02-04 16:35:17', '2013-02-04 15:35:17', '', 38, 'http://localhost/~chanturidze/festival_cinema/?p=153', 0, 'revision', '', 0),
(154, 1, '2013-02-04 16:35:53', '2013-02-04 15:35:53', '&nbsp;\r\n\r\nLe corps d’un travesti décédé est préparé\r\n\r\npour l’enterrement par d’autres travestis.\r\n\r\nSon corps de femme est amené à sa famille,\r\n\r\nqui décide de l’enterrer comme un homme.\r\n\r\nUne procession de travestis se met en marche\r\n\r\nvers la veillée funèbre pour revendiquer\r\n\r\nl’identité construite de la défunte.', 'Os sapatos de Aristeu  ', '', 'inherit', 'closed', 'closed', '', '36-revision-5', '', '', '2013-02-04 16:35:53', '2013-02-04 15:35:53', '', 36, 'http://localhost/~chanturidze/festival_cinema/?p=154', 0, 'revision', '', 0),
(155, 1, '2013-02-04 16:32:14', '2013-02-04 15:32:14', 'Une boulangerie banale sur une route de\r\n\r\ncampagne. Derrière le comptoir, Odile, s’ennuie.\r\n\r\nUn jour, une horde de motards stoppe devant\r\n\r\nla boutique. Le passé va faire irruption dans\r\n\r\nsa vie...', 'Odile ', '', 'inherit', 'closed', 'closed', '', '34-revision-4', '', '', '2013-02-04 16:32:14', '2013-02-04 15:32:14', '', 34, 'http://localhost/~chanturidze/festival_cinema/?p=155', 0, 'revision', '', 0),
(156, 1, '2013-02-04 16:30:22', '2013-02-04 15:30:22', 'C’est l’histoire d’Omar qui vit dans une cité. Une cité qu’il aime et qui\r\n\r\nl’aime mais où la pression est telle qu’il ne peut vraiment assouvir,\r\n\r\nni même révéler, son amour pour Arthur. Jusqu’au\r\n\r\njour où les deux jeunes hommes sont découverts.', 'Omar', '', 'inherit', 'closed', 'closed', '', '32-revision-4', '', '', '2013-02-04 16:30:22', '2013-02-04 15:30:22', '', 32, 'http://localhost/~chanturidze/festival_cinema/?p=156', 0, 'revision', '', 0),
(157, 1, '2013-02-04 16:36:43', '2013-02-04 15:36:43', '&nbsp;\r\n\r\nC’est la mise en scène d’une jeune fille, qui se raconte\r\n\r\nface à la caméra : l’enfance joyeuse dans une petite\r\n\r\nville de province où tout le monde se connaît, la révélation\r\n\r\npublique et infamante de son homosexualité par un ami de ses\r\n\r\nparents, le silence des témoins, la douleur de la solitude, la\r\n\r\npossibilité de l’acceptation. Tout cela elle le raconte à une autre\r\n\r\nfille, à la caméra, au spectateur. Comme une confidence.', 'Pauline ', '', 'inherit', 'closed', 'closed', '', '30-revision-5', '', '', '2013-02-04 16:36:43', '2013-02-04 15:36:43', '', 30, 'http://localhost/~chanturidze/festival_cinema/?p=157', 0, 'revision', '', 0),
(158, 1, '2013-01-21 16:14:52', '2013-01-21 15:14:52', 'Les 3 premiers courts métrages de cette séance font partie des 5 lauréats du concours Jeune et homo sous\r\n\r\nle regard des autres, dont les scenarii ont été écrits par des jeunes et mis en scène par des\r\n\r\nréalisateurs. Cette opération contre l’homophobie, a été organisée en 2009 par le Ministère de la Santé,\r\n\r\nde la Jeunesse, des Sports et de la Vie associative et de l’INPES avec le soutien du groupe Canal+.', 'Intro', '', 'inherit', 'closed', 'closed', '', '25-revision-3', '', '', '2013-01-21 16:14:52', '2013-01-21 15:14:52', '', 25, 'http://localhost/~chanturidze/festival_cinema/?p=158', 0, 'revision', '', 0),
(159, 1, '2013-01-15 11:19:32', '2013-01-15 10:19:32', 'Vendredi 24 septembre : 20h00 Soirée d’ouverture : séance de courts métrages Rencontre-débat avec un réalisateur.\r\n\r\nSamedi 25 septembre : 19h30 Documentaire : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école) Rencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret sur les interventions en milieu scolaire.\r\n\r\nSamedi 25 septembre : 21h45 Fiction : Ander\r\n\r\nDimanche 26 septembre : 16h00 Fiction : El niño pez\r\n\r\nDimanche 26 septembre : 18h00 Fiction : I can’t think straight', 'Agenda', '', 'inherit', 'closed', 'closed', '', '12-revision-4', '', '', '2013-01-15 11:19:32', '2013-01-15 10:19:32', '', 12, 'http://localhost/~chanturidze/festival_cinema/?p=159', 0, 'revision', '', 0),
(160, 1, '2013-02-05 17:21:08', '2013-02-05 16:21:08', 'Vendredi 24 septembre : 20h00 Soirée d’ouverture : séance de courts métrages Rencontre-débat avec un réalisateur.\n\nSamedi 25 septembre : 19h30 Documentaire : It’s elementary, talking about gays issues in school (C’est élémentaire - Parler de l’homosexualité à l’école) Rencontre-débat avec le Groupe Action Gay &amp; Lesbien – Loiret sur les interventions en milieu scolaire.\n\nSamedi 25 septembre : 21h45 Fiction : Ander\n\nDimanche 26 septembre : 16h00 Fiction : El niño pez\n\nDimanche 26 septembre : 18h00 Fiction : I can’t think straight', 'Agenda', '', 'inherit', 'closed', 'closed', '', '12-autosave', '', '', '2013-02-05 17:21:08', '2013-02-05 16:21:08', '', 12, 'http://localhost/~chanturidze/festival_cinema/?p=160', 0, 'revision', '', 0),
(161, 1, '2013-01-21 13:37:36', '2013-01-21 12:37:36', '- Région Centre\r\n\r\n- Orléans\r\n\r\n- Cinéma des Carmes\r\n\r\n- GAGL\r\n\r\n- Têtu\r\n\r\n-La dixième MUSE\r\n\r\n- CiteGay\r\n\r\n- Yagg.com\r\n\r\n- France Bleu', 'partenaires', '', 'inherit', 'closed', 'closed', '', '55-revision-3', '', '', '2013-01-21 13:37:36', '2013-01-21 12:37:36', '', 55, 'http://localhost/~chanturidze/festival_cinema/?p=161', 0, 'revision', '', 0),
(162, 1, '2013-02-05 17:46:38', '2013-02-05 16:46:38', '<div id="yiv1833540943">\r\n<div id="yui_3_7_2_1_1360082765907_1847">\r\n<div id="yui_3_7_2_1_1360082765907_1846">- &lt;a href="http://www.regioncentre.fr/accueil.html"&gt;Région Centre&lt;/a&gt;\r\n\r\n- &lt;a href=" http://www.orleans.fr/"&gt;Orléans&lt;/a&gt;\r\n\r\n-&lt;a href="http://www.cinemalescarmes.com/"&gt; Cinéma des Carmes&lt;/a&gt;\r\n\r\n-&lt;a href="http://www.centrelgbtorleans.org/"&gt; GAGL&lt;/a&gt;\r\n\r\n- &lt;a href="http://www.tetu.com/"&gt;Têtu&lt;/a&gt;\r\n\r\n- &lt;a href="http://www.muse-out.com/"&gt;La dixième MUSE&lt;/a&gt;\r\n\r\n-&lt;a href="http://www.citegay.fr/"&gt; CiteGay&lt;/a&gt;\r\n\r\n- &lt;a href="http://yagg.com/"&gt;Yagg.com&lt;/a&gt;\r\n\r\n- &lt;a href="http://www.francebleu.fr/"&gt;France Bleu&lt;/a&gt;</div>\r\n</div>\r\n</div>', 'partenaires', '', 'inherit', 'closed', 'closed', '', '55-revision-4', '', '', '2013-02-05 17:46:38', '2013-02-05 16:46:38', '', 55, 'http://localhost/~chanturidze/festival_cinema/?p=162', 0, 'revision', '', 0),
(163, 1, '2013-02-05 17:47:33', '2013-02-05 16:47:33', '- &lt;a href="http://www.regioncentre.fr/accueil.html"&gt;Région Centre&lt;/a&gt; - &lt;a href=" http://www.orleans.fr/"&gt;Orléans&lt;/a&gt; -&lt;a href="http://www.cinemalescarmes.com/"&gt; Cinéma des Carmes&lt;/a&gt; -&lt;a href="http://www.centrelgbtorleans.org/"&gt; GAGL&lt;/a&gt; - &lt;a href="http://www.tetu.com/"&gt;Têtu&lt;/a&gt; - &lt;a href="http://www.muse-out.com/"&gt;La dixième MUSE&lt;/a&gt; -&lt;a href="http://www.citegay.fr/"&gt; CiteGay&lt;/a&gt; - &lt;a href="http://yagg.com/"&gt;Yagg.com&lt;/a&gt; - &lt;a href="http://www.francebleu.fr/"&gt;France Bleu&lt;/a&gt;', 'partenaires', '', 'inherit', 'closed', 'closed', '', '55-revision-5', '', '', '2013-02-05 17:47:33', '2013-02-05 16:47:33', '', 55, 'http://localhost/~chanturidze/festival_cinema/?p=163', 0, 'revision', '', 0),
(164, 1, '2013-02-05 17:48:46', '2013-02-05 16:48:46', '<div id="yiv1833540943">\r\n<div id="yui_3_7_2_1_1360082765907_1847">\r\n<div id="yui_3_7_2_1_1360082765907_1846">Région Centre\r\n\r\n- &lt;a href=" http://www.orleans.fr/"&gt;Orléans&lt;/a&gt;\r\n\r\n-&lt;a href="http://www.cinemalescarmes.com/"&gt; Cinéma des Carmes&lt;/a&gt;\r\n\r\n-&lt;a href="http://www.centrelgbtorleans.org/"&gt; GAGL&lt;/a&gt;\r\n\r\n- &lt;a href="http://www.tetu.com/"&gt;Têtu&lt;/a&gt;\r\n\r\n- &lt;a href="http://www.muse-out.com/"&gt;La dixième MUSE&lt;/a&gt;\r\n\r\n-&lt;a href="http://www.citegay.fr/"&gt; CiteGay&lt;/a&gt;\r\n\r\n- &lt;a href="http://yagg.com/"&gt;Yagg.com&lt;/a&gt;\r\n\r\n- &lt;a href="http://www.francebleu.fr/"&gt;France Bleu&lt;/a&gt;</div>\r\n</div>\r\n</div>', 'partenaires', '', 'inherit', 'closed', 'closed', '', '55-revision-6', '', '', '2013-02-05 17:48:46', '2013-02-05 16:48:46', '', 55, 'http://localhost/~chanturidze/festival_cinema/?p=164', 0, 'revision', '', 0),
(165, 1, '2013-02-05 17:49:50', '2013-02-05 16:49:50', '<div id="yiv1833540943">\r\n<div id="yui_3_7_2_1_1360082765907_1847">\r\n<div id="yui_3_7_2_1_1360082765907_1846">&lt;a href="http://www.regioncentre.fr/accueil.html"&gt;Région Centre&lt;/a&gt;- &lt;a href=" http://www.orleans.fr/"&gt;Orléans&lt;/a&gt;\r\n\r\n-&lt;a href="http://www.cinemalescarmes.com/"&gt; Cinéma des Carmes&lt;/a&gt;\r\n\r\n-&lt;a href="http://www.centrelgbtorleans.org/"&gt; GAGL&lt;/a&gt;\r\n\r\n- &lt;a href="http://www.tetu.com/"&gt;Têtu&lt;/a&gt;\r\n\r\n- &lt;a href="http://www.muse-out.com/"&gt;La dixième MUSE&lt;/a&gt;\r\n\r\n-&lt;a href="http://www.citegay.fr/"&gt; CiteGay&lt;/a&gt;\r\n\r\n- &lt;a href="http://yagg.com/"&gt;Yagg.com&lt;/a&gt;\r\n\r\n- &lt;a href="http://www.francebleu.fr/"&gt;France Bleu&lt;/a&gt;\r\n\r\n</div>\r\n</div>\r\n</div>', 'partenaires', '', 'inherit', 'closed', 'closed', '', '55-revision-7', '', '', '2013-02-05 17:49:50', '2013-02-05 16:49:50', '', 55, 'http://localhost/~chanturidze/festival_cinema/?p=165', 0, 'revision', '', 0),
(166, 1, '2013-01-21 13:32:12', '2013-01-21 12:32:12', 'Lieu du festival : Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rcccImpression : Prevost Offset Contacts :\r\n\r\nfestival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'infos pratiques', '', 'inherit', 'closed', 'closed', '', '50-revision-2', '', '', '2013-01-21 13:32:12', '2013-01-21 12:32:12', '', 50, 'http://localhost/~chanturidze/festival_cinema/?p=166', 0, 'revision', '', 0),
(167, 1, '2013-02-05 17:57:56', '2013-02-05 16:57:56', '<h3>Lieu du festival :</h3>\nCinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS \n<h3>Tarifs :</h3> Plein tarif : 7,50 € \n<h3>Pass Festival :</h3> 25 € (5 séances) \n<h3>Soirée courts métrages :</h3> 6 € (vendredi) \n<h3>2 séances consécutives le samedi ou le dimanche :</h3> 12 €\n\n<h3>Cartes &amp; réductions acceptées :</h3> Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\n\n<h2>Le festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\n\nEquipe :\n\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rcccImpression : Prevost Offset Contacts :\n\nfestival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'infos pratiques', '', 'inherit', 'closed', 'closed', '', '50-autosave', '', '', '2013-02-05 17:57:56', '2013-02-05 16:57:56', '', 50, 'http://localhost/~chanturidze/festival_cinema/?p=167', 0, 'revision', '', 0),
(168, 1, '2013-02-05 17:53:04', '2013-02-05 16:53:04', '&lt;h3&gt;Lieu du festival :&lt;/h3&gt; Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rcccImpression : Prevost Offset Contacts :\r\n\r\nfestival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'infos pratiques', '', 'inherit', 'closed', 'closed', '', '50-revision-3', '', '', '2013-02-05 17:53:04', '2013-02-05 16:53:04', '', 50, 'http://localhost/~chanturidze/festival_cinema/?p=168', 0, 'revision', '', 0),
(169, 1, '2013-02-05 17:54:37', '2013-02-05 16:54:37', '<h3>Lieu du festival :</3>&lt;/h3&gt; Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rcccImpression : Prevost Offset Contacts :\r\n\r\nfestival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'infos pratiques', '', 'inherit', 'closed', 'closed', '', '50-revision-4', '', '', '2013-02-05 17:54:37', '2013-02-05 16:54:37', '', 50, 'http://localhost/~chanturidze/festival_cinema/?p=169', 0, 'revision', '', 0),
(170, 1, '2013-02-05 17:54:54', '2013-02-05 16:54:54', '<h3>Lieu du festival :</h3>&lt;/h3&gt; Cinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS Tarifs : Plein tarif : 7,50 € Pass Festival : 25 € (5 séances) Soirée courts métrages : 6 € (vendredi) 2 séances consécutives le samedi ou le dimanche : 12 €\r\n\r\nCartes &amp; réductions acceptées : Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\nLe festival D’un bord à l’autre est organisé par Ciné Mundi. Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rcccImpression : Prevost Offset Contacts :\r\n\r\nfestival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'infos pratiques', '', 'inherit', 'closed', 'closed', '', '50-revision-5', '', '', '2013-02-05 17:54:54', '2013-02-05 16:54:54', '', 50, 'http://localhost/~chanturidze/festival_cinema/?p=170', 0, 'revision', '', 0);
INSERT INTO `wp_festival_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(171, 1, '2013-02-05 17:58:12', '2013-02-05 16:58:12', '<h3>Lieu du festival :</h3>\r\nCinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS \r\n<h3>Tarifs :</h3> Plein tarif : 7,50 € \r\n<h3>Pass Festival :</h3> 25 € (5 séances) \r\n<h3>Soirée courts métrages :</h3> 6 € (vendredi) \r\n<h3>2 séances consécutives le samedi ou le dimanche :</h3> 12 €\r\n\r\n<h3>Cartes &amp; réductions acceptées :</h3> Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n<h2>Le festival D’un bord à l’autre est organisé par Ciné Mundi.</h2> Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rcccImpression : Prevost Offset Contacts :\r\n\r\nfestival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'infos pratiques', '', 'inherit', 'closed', 'closed', '', '50-revision-6', '', '', '2013-02-05 17:58:12', '2013-02-05 16:58:12', '', 50, 'http://localhost/~chanturidze/festival_cinema/?p=171', 0, 'revision', '', 0),
(172, 1, '2013-02-05 17:58:30', '2013-02-05 16:58:30', '<h3>Lieu du festival :</h3>\r\nCinéma Les Carmes – 7, rue des Carmes – 45000 ORLEANS \r\n<h3>Tarifs :</h3> Plein tarif : 7,50 € \r\n<h3>Pass Festival :</h3> 25 € (5 séances) \r\n<h3>Soirée courts métrages :</h3> 6 € (vendredi) \r\n<h3>2 séances consécutives le samedi ou le dimanche :</h3> 12 €\r\n\r\n<h3>Cartes &amp; réductions acceptées :</h3> Cartes DECOUVERTE &amp; PASSION, titulaire du PAC étudiant &amp; de la JPASS, tarif – de 26 ans…\r\n\r\n<h2>Le festival D’un bord à l’autre est organisé par Ciné Mundi.</h2> Association dont l’objectif est de soutenir et de promouvoir le cinéma indépendant en organisant des projections de films, des festivals et autres actions culturelles liées au cinéma d’auteur de tous continents.\r\n\r\nEquipe :\r\n\r\nDirection artistique : Christel Guillard (Présidente de Ciné Mundi) Programmation : Christel Guillard en collaboration avec Françoise Dahmane (Cinéma Les Carmes) Communication &amp; partenariats : Christel Guillard Conception graphique : Yannis Bellair Conception du site internet : rcccImpression : Prevost Offset Contacts :\r\n\r\nfestival.dunbordalautre@gmail.com www.festivaldunbordalautre.com', 'infos pratiques', '', 'inherit', 'closed', 'closed', '', '50-revision-7', '', '', '2013-02-05 17:58:30', '2013-02-05 16:58:30', '', 50, 'http://localhost/~chanturidze/festival_cinema/?p=172', 0, 'revision', '', 0),
(173, 1, '2013-02-05 17:51:49', '2013-02-05 16:51:49', '<div id="yiv1833540943">\r\n<div id="yui_3_7_2_1_1360082765907_1847">\r\n<div id="yui_3_7_2_1_1360082765907_1846">- &lt;a href="http://www.regioncentre.fr/accueil.html"&gt;Région Centre&lt;/a&gt;</div>\r\n<div>- &lt;a href=" http://www.orleans.fr/"&gt;Orléans&lt;/a&gt;</div>\r\n<div>-&lt;a href="http://www.cinemalescarmes.com/"&gt; Cinéma des Carmes&lt;/a&gt;</div>\r\n<div>-&lt;a href="http://www.centrelgbtorleans.org/"&gt; GAGL&lt;/a&gt;</div>\r\n<div>- &lt;a href="http://www.tetu.com/"&gt;Têtu&lt;/a&gt;</div>\r\n<div>- &lt;a href="http://www.muse-out.com/"&gt;La dixième MUSE&lt;/a&gt;</div>\r\n<div>-&lt;a href="http://www.citegay.fr/"&gt; CiteGay&lt;/a&gt;</div>\r\n<div>- &lt;a href="http://yagg.com/"&gt;Yagg.com&lt;/a&gt;</div>\r\n<div>- &lt;a href="http://www.francebleu.fr/"&gt;France Bleu&lt;/a&gt;</div>\r\n<div>- &lt;a href="http://www.regioncentre.fr/accueil.html"&gt;Région Centre&lt;/a&gt;</div>\r\n<div>- &lt;a href=" http://www.orleans.fr/"&gt;Orléans&lt;/a&gt;</div>\r\n</div>\r\n</div>', 'partenaires', '', 'inherit', 'closed', 'closed', '', '55-revision-8', '', '', '2013-02-05 17:51:49', '2013-02-05 16:51:49', '', 55, 'http://localhost/~chanturidze/festival_cinema/?p=173', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_terms`
--

CREATE TABLE IF NOT EXISTS `wp_festival_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_festival_terms`
--

INSERT INTO `wp_festival_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'films', 'films', 0),
(3, 'courts-métrages', 'courts-metrages', 0),
(4, 'menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_festival_term_relationships`
--

INSERT INTO `wp_festival_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 1, 0),
(12, 1, 0),
(16, 1, 0),
(20, 1, 0),
(25, 3, 0),
(28, 3, 0),
(30, 3, 0),
(32, 3, 0),
(34, 3, 0),
(36, 3, 0),
(38, 3, 0),
(40, 3, 0),
(42, 2, 0),
(44, 2, 0),
(46, 2, 0),
(48, 2, 0),
(62, 4, 0),
(63, 4, 0),
(64, 4, 0),
(65, 4, 0),
(66, 4, 0),
(67, 4, 0),
(78, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_festival_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `wp_festival_term_taxonomy`
--

INSERT INTO `wp_festival_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 4),
(3, 3, 'category', '', 0, 8),
(4, 4, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_festival_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `wp_festival_usermeta`
--

INSERT INTO `wp_festival_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_festival_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_festival_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_festival_dashboard_quick_press_last_post_id', '110'),
(15, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:"link-target";i:1;s:3:"xfn";i:2;s:11:"description";}'),
(16, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(17, 1, 'wp_festival_user-settings', 'hidetb=1&libraryContent=browse&widgets_access=off&editor=html'),
(18, 1, 'wp_festival_user-settings-time', '1360083272'),
(19, 1, 'nav_menu_recently_edited', '4'),
(20, 1, 'closedpostboxes_post', 'a:0:{}'),
(21, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";i:6;s:12:"revisionsdiv";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_festival_users`
--

CREATE TABLE IF NOT EXISTS `wp_festival_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_festival_users`
--

INSERT INTO `wp_festival_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BMYGW7C9V3RFZdQJIw2G9s1rB.29zw1', 'admin', 'geo_shako@yahoo.com', '', '2013-01-07 15:45:50', '72nmAu1AE5S0GanAtqKL', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://www.wordpress-fr.net/planet/', 'Blog WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://feeds2.feedburner.com/WordpressFrancophonePlanet'),
(3, 'http://www.wordpress-fr.net/support/', 'Forums d&rsquo;entraide en français', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/extend/plugins/', 'Extensions', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/themes/', 'Thèmes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, '<a href="http://www.wordpress-fr.net/support/">Forums d&rsquo;entraide</a>', 'Remarque', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://www.wordpress-fr.net/planet/', 'La planète WordPress', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=176 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/~chanturidze/wordpress', 'yes'),
(2, 'blogname', 'mon premiere site', 'yes'),
(3, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'geo_shako@yahoo.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'default_post_edit_rows', '20', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y, G \\h i \\m\\i\\n', 'yes'),
(26, 'links_recently_updated_prepend', '<em>', 'yes'),
(27, 'links_recently_updated_append', '</em>', 'yes'),
(28, 'links_recently_updated_time', '120', 'yes'),
(29, 'comment_moderation', '0', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '', 'yes'),
(32, 'gzipcompression', '0', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:1:{i:0;s:30:"lightbox-plus/lightboxplus.php";}', 'yes'),
(37, 'home', 'http://localhost/~chanturidze/wordpress', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 'advanced_edit', '0', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '1', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', '', 'no'),
(45, 'template', 'wordpress-bootstrap-v2.3/wordpress-bootstrap', 'yes'),
(46, 'stylesheet', 'wordpress-bootstrap-v2.3/wordpress-bootstrap', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '0', 'yes'),
(50, 'html_type', 'text/html', 'yes'),
(51, 'use_trackback', '0', 'yes'),
(52, 'default_role', 'subscriber', 'yes'),
(53, 'db_version', '21707', 'yes'),
(54, 'uploads_use_yearmonth_folders', '1', 'yes'),
(55, 'upload_path', '', 'yes'),
(56, 'blog_public', '1', 'yes'),
(57, 'default_link_category', '2', 'yes'),
(58, 'show_on_front', 'posts', 'yes'),
(59, 'tag_base', '', 'yes'),
(60, 'show_avatars', '1', 'yes'),
(61, 'avatar_rating', 'G', 'yes'),
(62, 'upload_url_path', '', 'yes'),
(63, 'thumbnail_size_w', '150', 'yes'),
(64, 'thumbnail_size_h', '150', 'yes'),
(65, 'thumbnail_crop', '1', 'yes'),
(66, 'medium_size_w', '300', 'yes'),
(67, 'medium_size_h', '300', 'yes'),
(68, 'avatar_default', 'mystery', 'yes'),
(69, 'enable_app', '0', 'yes'),
(70, 'enable_xmlrpc', '0', 'yes'),
(71, 'large_size_w', '1024', 'yes'),
(72, 'large_size_h', '1024', 'yes'),
(73, 'image_default_link_type', 'file', 'yes'),
(74, 'image_default_size', '', 'yes'),
(75, 'image_default_align', '', 'yes'),
(76, 'close_comments_for_old_posts', '0', 'yes'),
(77, 'close_comments_days_old', '14', 'yes'),
(78, 'thread_comments', '1', 'yes'),
(79, 'thread_comments_depth', '5', 'yes'),
(80, 'page_comments', '0', 'yes'),
(81, 'comments_per_page', '50', 'yes'),
(82, 'default_comments_page', 'newest', 'yes'),
(83, 'comment_order', 'asc', 'yes'),
(84, 'sticky_posts', 'a:0:{}', 'yes'),
(85, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(86, 'widget_text', 'a:0:{}', 'yes'),
(87, 'widget_rss', 'a:0:{}', 'yes'),
(88, 'uninstall_plugins', 'a:0:{}', 'no'),
(89, 'timezone_string', '', 'yes'),
(90, 'embed_autourls', '1', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '0', 'yes'),
(94, 'page_on_front', '0', 'yes'),
(95, 'default_post_format', '0', 'yes'),
(96, 'initial_db_version', '21707', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:8:"sidebar1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"sidebar2";a:0:{}s:7:"footer1";a:0:{}s:7:"footer2";a:0:{}s:7:"footer3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:3:{i:1358263757;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1358263961;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(106, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"3.4.2";s:12:"last_checked";i:1358243391;}', 'yes'),
(107, '_transient_random_seed', 'd85a4e2a7dd142e19ecadd3691d79747', 'yes'),
(108, 'auth_key', 'bprtK$~:*6ZeJ<9>YQ+7dJsX$ZZ+ N(S:SY>^er EB HV5_UBi!1;<0t$$9Rs0HX', 'yes'),
(109, 'auth_salt', 'B6ezt8GkRxu<aQ>SHA;OwcFG*)K.0[8~~NWkylN5{oc{~,&H_jEejBj6B JI48lK', 'yes'),
(110, 'logged_in_key', 'Y?P*w-~X4Pc4p^q&;c|}&!$L!]>W>Vrx`c:BW>Z^w0Vn/pFU|<$B++#+cpKVQcZ=', 'yes'),
(111, 'logged_in_salt', '[uj^.A3t7lNq]:R?.RS*9d/T2.k:S3&a(?*wz5k |.19wtD@gUC]+e6gI&f2nn7u', 'yes'),
(112, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1358243421;}', 'yes'),
(115, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1358243452;}', 'yes'),
(116, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:39:"http://localhost/~chanturidze/wordpress";s:4:"link";s:115:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/~chanturidze/wordpress/";s:3:"url";s:148:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/~chanturidze/wordpress/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:14:"Blog WordPress";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:35:"http://www.wordpress-fr.net/planet/";s:3:"url";s:55:"http://feeds2.feedburner.com/WordpressFrancophonePlanet";s:5:"title";s:46:"Autres actualités de WordPress (en français)";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(117, 'nonce_key', '(sx^Q_+z?Ig:1H?D%Q63gZ{l.=aW{kG*ZC$NNVN+m>gUcLn2M.03rubR,b>@o]>7', 'yes'),
(118, 'nonce_salt', 'LD<P5w#pfcHQ##^~2M(*9$lY<OgrI1*ij%1ldtAY.=ogw&.rub)e{<a~9^w$X/Ep', 'yes'),
(119, 'can_compress_scripts', '0', 'yes'),
(126, '_transient_timeout_plugin_slugs', '1354634488', 'no'),
(127, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:30:"lightbox-plus/lightboxplus.php";}', 'no'),
(135, 'category_children', 'a:2:{i:3;a:1:{i:0;i:4;}i:4;a:1:{i:0;i:5;}}', 'yes'),
(139, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1354590985', 'no'),
(140, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p>', 'no'),
(141, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1354590986', 'no'),
(142, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(144, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1354590986', 'no'),
(145, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: connect() timed out!</p></div>', 'no'),
(146, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1354590997', 'no'),
(147, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(148, 'lightboxplus_options', 'a:71:{s:18:"lightboxplus_style";s:8:"shadowed";s:16:"use_custom_style";s:1:"0";s:18:"lightboxplus_multi";s:1:"0";s:11:"disable_css";s:1:"0";s:12:"use_php_four";s:1:"0";s:10:"use_inline";s:1:"0";s:10:"inline_num";s:1:"1";s:10:"transition";s:7:"elastic";s:5:"speed";s:3:"350";s:5:"width";s:5:"false";s:6:"height";s:5:"false";s:11:"inner_width";s:5:"false";s:12:"inner_height";s:5:"false";s:13:"initial_width";s:3:"300";s:14:"initial_height";s:3:"100";s:9:"max_width";s:5:"false";s:10:"max_height";s:5:"false";s:6:"resize";s:1:"1";s:7:"opacity";s:3:"0.8";s:10:"preloading";s:1:"1";s:11:"label_image";s:5:"Image";s:8:"label_of";s:2:"of";s:8:"previous";s:8:"previous";s:4:"next";s:4:"next";s:5:"close";s:5:"close";s:13:"overlay_close";s:1:"1";s:9:"slideshow";s:1:"0";s:14:"slideshow_auto";s:1:"0";s:15:"slideshow_speed";s:4:"2500";s:15:"slideshow_start";s:5:"start";s:14:"slideshow_stop";s:4:"stop";s:17:"use_caption_title";s:1:"0";s:20:"gallery_lightboxplus";s:1:"0";s:18:"multiple_galleries";s:1:"0";s:16:"use_class_method";s:1:"0";s:10:"class_name";s:9:"cboxModal";s:16:"no_auto_lightbox";s:1:"0";s:10:"text_links";s:1:"0";s:16:"no_display_title";s:1:"0";s:14:"transition_sec";s:7:"elastic";s:9:"speed_sec";s:3:"350";s:9:"width_sec";s:5:"false";s:10:"height_sec";s:5:"false";s:15:"inner_width_sec";s:3:"50%";s:16:"inner_height_sec";s:3:"50%";s:17:"initial_width_sec";s:3:"300";s:18:"initial_height_sec";s:3:"100";s:13:"max_width_sec";s:5:"false";s:14:"max_height_sec";s:5:"false";s:10:"resize_sec";s:1:"1";s:11:"opacity_sec";s:3:"0.8";s:14:"preloading_sec";s:1:"1";s:15:"label_image_sec";s:5:"Image";s:12:"label_of_sec";s:2:"of";s:12:"previous_sec";s:8:"previous";s:8:"next_sec";s:4:"next";s:9:"close_sec";s:5:"close";s:17:"overlay_close_sec";s:1:"1";s:13:"slideshow_sec";s:1:"0";s:18:"slideshow_auto_sec";s:1:"1";s:19:"slideshow_speed_sec";s:4:"2500";s:19:"slideshow_start_sec";s:5:"start";s:18:"slideshow_stop_sec";s:4:"stop";s:10:"iframe_sec";s:1:"1";s:20:"use_class_method_sec";s:1:"0";s:14:"class_name_sec";s:8:"lbpModal";s:20:"no_display_title_sec";s:1:"0";s:12:"inline_links";N;s:12:"inline_hrefs";N;s:13:"inline_widths";N;s:14:"inline_heights";N;}', 'yes'),
(149, 'lightboxplus_init', '1', 'yes'),
(152, '_site_transient_timeout_wporg_theme_feature_list', '1354559294', 'yes'),
(153, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(154, 'theme_mods_twentyeleven', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1354548490;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}}}}', 'yes'),
(155, 'current_theme', 'wp-bootstrap', 'yes'),
(156, 'theme_mods_wordpress-bootstrap-v2.3/wordpress-bootstrap', 'a:1:{i:0;b:0;}', 'yes'),
(157, 'theme_switched', '', 'yes'),
(158, 'optionsframework', 'a:2:{s:2:"id";s:11:"wpbootstrap";s:12:"knownoptions";a:1:{i:0;s:11:"wpbootstrap";}}', 'yes'),
(160, 'wpbootstrap', 'a:22:{s:18:"heading_typography";a:3:{s:4:"face";s:7:"Default";s:5:"style";s:6:"Normal";s:5:"color";s:0:"";}s:20:"main_body_typography";a:3:{s:4:"face";s:7:"Default";s:5:"style";s:6:"Normal";s:5:"color";s:0:"";}s:10:"link_color";s:0:"";s:16:"link_hover_color";s:0:"";s:17:"link_active_color";s:0:"";s:12:"nav_position";s:0:"";s:16:"top_nav_bg_color";s:0:"";s:19:"showhidden_gradient";s:1:"0";s:29:"top_nav_bottom_gradient_color";s:0:"";s:18:"top_nav_link_color";s:0:"";s:24:"top_nav_link_hover_color";s:0:"";s:21:"top_nav_dropdown_item";s:0:"";s:25:"top_nav_dropdown_hover_bg";s:0:"";s:10:"search_bar";s:1:"0";s:17:"showhidden_themes";s:1:"0";s:10:"wpbs_theme";s:7:"default";s:24:"showhidden_slideroptions";s:1:"0";s:14:"slider_options";s:1:"5";s:18:"hero_unit_bg_color";s:0:"";s:25:"suppress_comments_message";s:1:"1";s:9:"blog_hero";s:1:"1";s:8:"wpbs_css";s:0:"";}', 'yes'),
(174, '_site_transient_timeout_theme_roots', '1358245251', 'yes'),
(175, '_site_transient_theme_roots', 'a:3:{s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";s:44:"wordpress-bootstrap-v2.3/wordpress-bootstrap";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1354548118:1'),
(4, 2, '_edit_lock', '1354548131:1'),
(5, 9, '_edit_last', '1'),
(6, 9, '_edit_lock', '1354550371:1'),
(9, 13, '_wp_attached_file', '2012/12/Theme-wordpress-gratuiti.png'),
(10, 13, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"430";s:6:"height";s:3:"273";s:14:"hwstring_small";s:23:"height=''81'' width=''128''";s:4:"file";s:36:"2012/12/Theme-wordpress-gratuiti.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:36:"Theme-wordpress-gratuiti-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:36:"Theme-wordpress-gratuiti-300x190.png";s:5:"width";s:3:"300";s:6:"height";s:3:"190";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:36:"Theme-wordpress-gratuiti-236x150.png";s:5:"width";s:3:"236";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:36:"Theme-wordpress-gratuiti-300x100.png";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:36:"Theme-wordpress-gratuiti-125x125.png";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}'),
(13, 15, '_wp_attached_file', '2012/12/Theme-wordpress-gratuiti1.png'),
(14, 15, '_wp_attachment_metadata', 'a:6:{s:5:"width";s:3:"430";s:6:"height";s:3:"273";s:14:"hwstring_small";s:23:"height=''81'' width=''128''";s:4:"file";s:37:"2012/12/Theme-wordpress-gratuiti1.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:3:{s:4:"file";s:37:"Theme-wordpress-gratuiti1-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";}s:6:"medium";a:3:{s:4:"file";s:37:"Theme-wordpress-gratuiti1-300x190.png";s:5:"width";s:3:"300";s:6:"height";s:3:"190";}s:15:"bones-thumb-600";a:3:{s:4:"file";s:37:"Theme-wordpress-gratuiti1-236x150.png";s:5:"width";s:3:"236";s:6:"height";s:3:"150";}s:15:"bones-thumb-300";a:3:{s:4:"file";s:37:"Theme-wordpress-gratuiti1-300x100.png";s:5:"width";s:3:"300";s:6:"height";s:3:"100";}s:14:"post-thumbnail";a:3:{s:4:"file";s:37:"Theme-wordpress-gratuiti1-125x125.png";s:5:"width";s:3:"125";s:6:"height";s:3:"125";}}s:10:"image_meta";a:10:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

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
  `post_password` varchar(20) NOT NULL DEFAULT '',
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
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-11-26 15:15:07', '2012-11-26 15:15:07', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'publish', 'closed', 'open', '', 'bonjour-tout-le-monde', '', '', '2012-11-26 15:15:07', '2012-11-26 15:15:07', '', 0, 'http://localhost/~chanturidze/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2012-11-26 15:15:07', '2012-11-26 15:15:07', 'Voici un exemple de page. Elle est différente d&rsquo;un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page &laquo;&nbsp;À Propos&nbsp;&raquo; qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant&nbsp;:\n\n<blockquote>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça&nbsp;:\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2&nbsp;000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nEtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://localhost/~chanturidze/wordpress/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d&rsquo;exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2012-11-26 15:15:07', '2012-11-26 15:15:07', '', 0, 'http://localhost/~chanturidze/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2012-11-26 16:35:03', '2012-11-26 15:35:03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas viverra massa sed nisl semper eget dignissim felis molestie. Suspendisse potenti. Mauris commodo dolor quis turpis congue ut consequat lacus porta. Nunc pretium, libero quis interdum commodo, tortor risus ornare elit, vitae lobortis mauris mi ut ipsum. Aliquam erat volutpat. Curabitur at metus orci, nec convallis lorem. Nulla fringilla lorem non nisi tincidunt congue. Cras at tortor augue, et congue urna. Donec ultricies, massa ut convallis ultrices, nisi purus pellentesque justo, in vehicula est sem non justo. Pellentesque scelerisque sodales fermentum. Nunc lectus felis, blandit eget molestie ac, eleifend at lorem. Vivamus massa quam, commodo et dictum in, dignissim sed nibh. Nulla auctor turpis vitae dui pharetra malesuada.\r\n\r\n&nbsp;\r\n\r\nAliquam pharetra posuere eros, non ornare eros pellentesque sit amet. Sed volutpat placerat ante nec dictum. Sed ullamcorper massa id ipsum bibendum molestie. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent venenatis volutpat enim, eget euismod neque lacinia sit amet. Maecenas pharetra scelerisque dui, nec commodo ante dapibus vel. Nam ac ipsum leo. Vivamus sit amet magna nec mauris viverra sodales. Aliquam sit amet libero sed tellus dictum scelerisque id et lorem. Maecenas pretium lobortis placerat. Vivamus nisi quam, dapibus eget fermentum sit amet, mollis sed lacus. Donec id mauris metus. Phasellus imperdiet eleifend lectus. Ut ultrices dignissim massa, ut pharetra lorem tincidunt accumsan. Phasellus turpis velit, rutrum quis interdum et, venenatis nec tortor.\r\n\r\n&nbsp;\r\n\r\nNullam diam eros, aliquet sit amet fermentum ut, imperdiet vel orci. Curabitur malesuada faucibus lobortis. Proin et massa lacus, vitae ullamcorper nisl. Donec porttitor augue ac enim vehicula lobortis. Nulla fermentum condimentum dictum. Proin eget metus odio. Donec sapien augue, consequat ac congue non, blandit eget ante. Duis mattis, purus in eleifend porta, odio nulla rutrum lacus, eu porta libero quam vitae ipsum. Nunc tincidunt sapien vel diam lobortis id hendrerit ante vehicula. Sed sed sollicitudin dolor.\r\n\r\n&nbsp;\r\n\r\nVivamus a mauris in neque commodo adipiscing sed at felis. Sed vel nulla eget leo ornare tincidunt nec sed nisi. Integer gravida, nisl id elementum pharetra, nunc ipsum semper neque, quis ullamcorper odio risus quis ante. Nulla facilisi. Phasellus quis est sed tellus consequat vulputate. Vestibulum bibendum fringilla nisi, quis elementum dui porta eu. Morbi sed sem at lacus sagittis sagittis. Aliquam quis felis ultrices elit scelerisque vulputate a sed diam. Quisque est elit, mollis non ullamcorper vitae, elementum eu massa.\r\n\r\n&nbsp;\r\n\r\nAenean dictum lacinia mattis. In hac habitasse platea dictumst. Etiam id luctus est. Nam sodales condimentum metus, vel pellentesque odio mollis a. Integer tempus vehicula vulputate. Phasellus placerat felis et libero rutrum in accumsan neque commodo. Pellentesque tincidunt fermentum elit nec tincidunt. Fusce imperdiet, arcu non congue bibendum, orci tellus congue tortor, non lobortis tortor mauris ut enim. Mauris lobortis dignissim nunc non tempor. Morbi nisl magna, adipiscing nec rhoncus malesuada, fermentum eu augue. Maecenas iaculis sapien quis tortor luctus id lobortis est consectetur. Nunc adipiscing lacinia felis eu euismod.\r\n\r\n&nbsp;', 'mon premiere article', '', 'publish', 'closed', 'open', '', 'mon-premiere-article', '', '', '2012-11-26 16:48:49', '2012-11-26 15:48:49', '', 0, 'http://localhost/~chanturidze/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2012-11-26 16:34:41', '2012-11-26 15:34:41', '&nbsp;\n<div id="HdrRight">www.pixelpixel.fr</div>\n<h4>"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."</h4>\n<h5>"Il n’y a personne qui n’aime la souffrance pour elle-même, qui ne la recherche et qui ne la veuille pour elle-même…"</h5>\n<div>\n<div>\n\nLe <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\n\n</div>\n<div>\n\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\n\n</div>\n</div>\n&nbsp;\n<div>\n<div>\n\nContrairement à une opinion répandue, le Lorem Ipsum n''est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s''est intéressé à un des mots latins les plus obscurs, consectetur, extrait d''un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l''éthique. Les premières lignes du Lorem Ipsum, "Lorem ipsum dolor sit amet...", proviennent de la section 1.10.32.\n\nL''extrait standard de Lorem Ipsum utilisé depuis le XVIè siècle est reproduit ci-dessous pour les curieux. Les sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" de Cicéron sont aussi reproduites dans leur version originale, accompagnée de la traduction anglaise de H. Rackham (1914).\n\n</div>\n<div>\n\nPlusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d''entre elles a été altérée par l''addition d''humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu''il n''y a rien d''embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire le même extrait sans fin, ce qui fait de lipsum.com le seul vrai générateur de Lorem Ipsum. Iil utilise un dictionnaire de plus de 200 mots latins, en combinaison de plusieurs structures de phrases, pour générer un Lorem Ipsum irréprochable. Le Lorem Ipsum ainsi obtenu ne contient aucune répétition, ni ne contient des mots farfelus, ou des touches d''humour.\n\n<form action="/feed/html" method="post">\n<table id="feedtable" width="100%" border="0" cellspacing="0" cellpadding="0">\n<tbody>\n<tr>\n<td width="25%"><input id="amount" type="text" name="amount" value="5" size="3" /></td>\n<td width="30%">\n<table id="typetable" border="0" cellspacing="0" cellpadding="0" align="left">\n<tbody>\n<tr>\n<td width="20"><input id="paras" type="radio" name="what" value="paras" checked="checked" /></td>\n<td><label for="paras">paragraphes</label></td>\n</tr>\n<tr>\n<td width="20"><input id="words" type="radio" name="what" value="words" /></td>\n<td><label for="words">mots</label></td>\n</tr>\n<tr>\n<td width="20"><input id="bytes" type="radio" name="what" value="bytes" /></td>\n<td><label for="bytes">caractères</label></td>\n</tr>\n<tr>\n<td width="20"><input id="lists" type="radio" name="what" value="lists" /></td>\n<td><label for="lists">listes</label></td>\n</tr>\n</tbody>\n</table>\n</td>\n<td width="45%">\n<div>\n<div><input id="start" type="checkbox" name="start" value="yes" checked="checked" /></div>\n<label for="start">Commencez par "Lorem ipsum dolor sit amet..."</label></div></td>\n</tr>\n</tbody>\n</table>\n</form></div>\n</div>\n&nbsp;\n<div><a href="http://imcreator.com/?utm_source=lipsum_horiz&amp;utm_medium=banner&amp;utm_content=horiz&amp;utm_campaign=design_your_website_2" target="_blank"><img src="http://fr.lipsum.com/banners/lipsum_h.gif" alt="Design Your Website" width="488" height="40" border="0" /></a></div>', 'mon premiere article', '', 'inherit', 'closed', 'open', '', '4-revision', '', '', '2012-11-26 16:34:41', '2012-11-26 15:34:41', '', 4, 'http://localhost/~chanturidze/wordpress/?p=5', 0, 'revision', '', 0),
(6, 1, '2012-11-26 16:49:52', '2012-11-26 15:49:52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas viverra massa sed nisl semper eget dignissim felis molestie. Suspendisse potenti. Mauris commodo dolor quis turpis congue ut consequat lacus porta. Nunc pretium, libero quis interdum commodo, tortor risus ornare elit, vitae lobortis mauris mi ut ipsum. Aliquam erat volutpat. Curabitur at metus orci, nec convallis lorem. Nulla fringilla lorem non nisi tincidunt congue. Cras at tortor augue, et congue urna. Donec ultricies, massa ut convallis ultrices, nisi purus pellentesque justo, in vehicula est sem non justo. Pellentesque scelerisque sodales fermentum. Nunc lectus felis, blandit eget molestie ac, eleifend at lorem. Vivamus massa quam, commodo et dictum in, dignissim sed nibh. Nulla auctor turpis vitae dui pharetra malesuada.\n\n&nbsp;\n\nAliquam pharetra posuere eros, non ornare eros pellentesque sit amet. Sed volutpat placerat ante nec dictum. Sed ullamcorper massa id ipsum bibendum molestie. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent venenatis volutpat enim, eget euismod neque lacinia sit amet. Maecenas pharetra scelerisque dui, nec commodo ante dapibus vel. Nam ac ipsum leo. Vivamus sit amet magna nec mauris viverra sodales. Aliquam sit amet libero sed tellus dictum scelerisque id et lorem. Maecenas pretium lobortis placerat. Vivamus nisi quam, dapibus eget fermentum sit amet, mollis sed lacus. Donec id mauris metus. Phasellus imperdiet eleifend lectus. Ut ultrices dignissim massa, ut pharetra lorem tincidunt accumsan. Phasellus turpis velit, rutrum quis interdum et, venenatis nec tortor.\n\n&nbsp;\n\nNullam diam eros, aliquet sit amet fermentum ut, imperdiet vel orci. Curabitur malesuada faucibus lobortis. Proin et massa lacus, vitae ullamcorper nisl. Donec porttitor augue ac enim vehicula lobortis. Nulla fermentum condimentum dictum. Proin eget metus odio. Donec sapien augue, consequat ac congue non, blandit eget ante. Duis mattis, purus in eleifend porta, odio nulla rutrum lacus, eu porta libero quam vitae ipsum. Nunc tincidunt sapien vel diam lobortis id hendrerit ante vehicula. Sed sed sollicitudin dolor.\n\n&nbsp;\n\nVivamus a mauris in neque commodo adipiscing sed at felis. Sed vel nulla eget leo ornare tincidunt nec sed nisi. Integer gravida, nisl id elementum pharetra, nunc ipsum semper neque, quis ullamcorper odio risus quis ante. Nulla facilisi. Phasellus quis est sed tellus consequat vulputate. Vestibulum bibendum fringilla nisi, quis elementum dui porta eu. Morbi sed sem at lacus sagittis sagittis. Aliquam quis felis ultrices elit scelerisque vulputate a sed diam. Quisque est elit, mollis non ullamcorper vitae, elementum eu massa.\n\n&nbsp;\n\nAenean dictum lacinia mattis. In hac habitasse platea dictumst. Etiam id luctus est. Nam sodales condimentum metus, vel pellentesque odio mollis a. Integer tempus vehicula vulputate. Phasellus placerat felis et libero rutrum in accumsan neque commodo. Pellentesque tincidunt fermentum elit nec tincidunt. Fusce imperdiet, arcu non congue bibendum, orci tellus congue tortor, non lobortis tortor mauris ut enim. Mauris lobortis dignissim nunc non tempor. Morbi nisl magna, adipiscing nec rhoncus malesuada, fermentum eu augue. Maecenas iaculis sapien quis tortor luctus id lobortis est consectetur. Nunc adipiscing lacinia felis eu euismod.\n\n&nbsp;', 'mon premiere article', '', 'inherit', 'closed', 'open', '', '4-autosave', '', '', '2012-11-26 16:49:52', '2012-11-26 15:49:52', '', 4, 'http://localhost/~chanturidze/wordpress/?p=6', 0, 'revision', '', 0),
(7, 1, '2012-11-26 16:35:03', '2012-11-26 15:35:03', '&nbsp;\r\n<div id="HdrRight">www.pixelpixel.fr</div>\r\n<h4>"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."</h4>\r\n<h5>"Il n’y a personne qui n’aime la souffrance pour elle-même, qui ne la recherche et qui ne la veuille pour elle-même…"</h5>\r\n<div>\r\n<div>\r\n\r\nLe <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\n\r\n</div>\r\n<div>\r\n\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\r\n\r\n</div>\r\n</div>\r\n&nbsp;\r\n<div>\r\n<div>\r\n\r\nContrairement à une opinion répandue, le Lorem Ipsum n''est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s''est intéressé à un des mots latins les plus obscurs, consectetur, extrait d''un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l''éthique. Les premières lignes du Lorem Ipsum, "Lorem ipsum dolor sit amet...", proviennent de la section 1.10.32.\r\n\r\nL''extrait standard de Lorem Ipsum utilisé depuis le XVIè siècle est reproduit ci-dessous pour les curieux. Les sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" de Cicéron sont aussi reproduites dans leur version originale, accompagnée de la traduction anglaise de H. Rackham (1914).\r\n\r\n</div>\r\n<div>\r\n\r\nPlusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d''entre elles a été altérée par l''addition d''humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu''il n''y a rien d''embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire le même extrait sans fin, ce qui fait de lipsum.com le seul vrai générateur de Lorem Ipsum. Iil utilise un dictionnaire de plus de 200 mots latins, en combinaison de plusieurs structures de phrases, pour générer un Lorem Ipsum irréprochable. Le Lorem Ipsum ainsi obtenu ne contient aucune répétition, ni ne contient des mots farfelus, ou des touches d''humour.\r\n\r\n<form action="/feed/html" method="post">\r\n<table id="feedtable" width="100%" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="25%"><input id="amount" type="text" name="amount" value="5" size="3" /></td>\r\n<td width="30%">\r\n<table id="typetable" border="0" cellspacing="0" cellpadding="0" align="left">\r\n<tbody>\r\n<tr>\r\n<td width="20"><input id="paras" type="radio" name="what" value="paras" checked="checked" /></td>\r\n<td><label for="paras">paragraphes</label></td>\r\n</tr>\r\n<tr>\r\n<td width="20"><input id="words" type="radio" name="what" value="words" /></td>\r\n<td><label for="words">mots</label></td>\r\n</tr>\r\n<tr>\r\n<td width="20"><input id="bytes" type="radio" name="what" value="bytes" /></td>\r\n<td><label for="bytes">caractères</label></td>\r\n</tr>\r\n<tr>\r\n<td width="20"><input id="lists" type="radio" name="what" value="lists" /></td>\r\n<td><label for="lists">listes</label></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n<td width="45%">\r\n<div>\r\n<div><input id="start" type="checkbox" name="start" value="yes" checked="checked" /></div>\r\n<label for="start">Commencez par "Lorem ipsum dolor sit amet..."</label></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</form></div>\r\n</div>\r\n&nbsp;\r\n<div><a href="http://imcreator.com/?utm_source=lipsum_horiz&amp;utm_medium=banner&amp;utm_content=horiz&amp;utm_campaign=design_your_website_2" target="_blank"><img src="http://fr.lipsum.com/banners/lipsum_h.gif" alt="Design Your Website" width="488" height="40" border="0" /></a></div>', 'mon premiere article', '', 'inherit', 'closed', 'open', '', '4-revision-2', '', '', '2012-11-26 16:35:03', '2012-11-26 15:35:03', '', 4, 'http://localhost/~chanturidze/wordpress/?p=7', 0, 'revision', '', 0),
(8, 1, '2012-11-26 16:47:05', '2012-11-26 15:47:05', '&nbsp;\r\n<div id="HdrRight">www.pixelpixel.fr</div>\r\n<h4>"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."</h4>\r\n<h5>"Il n’y a personne qui n’aime la souffrance pour elle-même, qui ne la recherche et qui ne la veuille pour elle-même…"</h5>\r\n<div>\r\n<div>\r\n\r\nLe <strong>Lorem Ipsum</strong> est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.\r\n\r\n</div>\r\n<div>\r\n\r\nOn sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empêche de se concentrer sur la mise en page elle-même. L''avantage du Lorem Ipsum sur un texte générique comme ''Du texte. Du texte. Du texte.'' est qu''il possède une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour ''Lorem Ipsum'' vous conduira vers de nombreux sites qui n''en sont encore qu''à leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d''y rajouter de petits clins d''oeil, voire des phrases embarassantes).\r\n\r\n</div>\r\n</div>\r\n&nbsp;\r\n<div>\r\n<div>\r\n\r\nContrairement à une opinion répandue, le Lorem Ipsum n''est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s''est intéressé à un des mots latins les plus obscurs, consectetur, extrait d''un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l''éthique. Les premières lignes du Lorem Ipsum, "Lorem ipsum dolor sit amet...", proviennent de la section 1.10.32.\r\n\r\nL''extrait standard de Lorem Ipsum utilisé depuis le XVIè siècle est reproduit ci-dessous pour les curieux. Les sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" de Cicéron sont aussi reproduites dans leur version originale, accompagnée de la traduction anglaise de H. Rackham (1914).\r\n\r\n</div>\r\n<div>\r\n\r\nPlusieurs variations de Lorem Ipsum peuvent être trouvées ici ou là, mais la majeure partie d''entre elles a été altérée par l''addition d''humour ou de mots aléatoires qui ne ressemblent pas une seconde à du texte standard. Si vous voulez utiliser un passage du Lorem Ipsum, vous devez être sûr qu''il n''y a rien d''embarrassant caché dans le texte. Tous les générateurs de Lorem Ipsum sur Internet tendent à reproduire le même extrait sans fin, ce qui fait de lipsum.com le seul vrai générateur de Lorem Ipsum. Iil utilise un dictionnaire de plus de 200 mots latins, en combinaison de plusieurs structures de phrases, pour générer un Lorem Ipsum irréprochable. Le Lorem Ipsum ainsi obtenu ne contient aucune répétition, ni ne contient des mots farfelus, ou des touches d''humour.\r\n\r\n<form action="/feed/html" method="post">\r\n<table id="feedtable" width="100%" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="25%"><input id="amount" type="text" name="amount" value="5" size="3" /></td>\r\n<td width="30%">\r\n<table id="typetable" border="0" cellspacing="0" cellpadding="0" align="left">\r\n<tbody>\r\n<tr>\r\n<td width="20"><input id="paras" type="radio" name="what" value="paras" checked="checked" /></td>\r\n<td><label for="paras">paragraphes</label></td>\r\n</tr>\r\n<tr>\r\n<td width="20"><input id="words" type="radio" name="what" value="words" /></td>\r\n<td><label for="words">mots</label></td>\r\n</tr>\r\n<tr>\r\n<td width="20"><input id="bytes" type="radio" name="what" value="bytes" /></td>\r\n<td><label for="bytes">caractères</label></td>\r\n</tr>\r\n<tr>\r\n<td width="20"><input id="lists" type="radio" name="what" value="lists" /></td>\r\n<td><label for="lists">listes</label></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n<td width="45%">\r\n<div>\r\n<div><input id="start" type="checkbox" name="start" value="yes" checked="checked" /></div>\r\n<label for="start">Commencez par "Lorem ipsum dolor sit amet..."</label>\r\n\r\n</div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</form></div>\r\n</div>\r\n&nbsp;\r\n<div><a href="http://imcreator.com/?utm_source=lipsum_horiz&amp;utm_medium=banner&amp;utm_content=horiz&amp;utm_campaign=design_your_website_2" target="_blank"><img src="http://fr.lipsum.com/banners/lipsum_h.gif" alt="Design Your Website" width="488" height="40" border="0" /></a></div>', 'mon premiere article', '', 'inherit', 'closed', 'open', '', '4-revision-3', '', '', '2012-11-26 16:47:05', '2012-11-26 15:47:05', '', 4, 'http://localhost/~chanturidze/wordpress/?p=8', 0, 'revision', '', 0),
(9, 1, '2012-12-03 16:51:20', '2012-12-03 15:51:20', '<h2><span style="color: #000080;">Une meilleure expérience universelle Lorem.</span></h2>\r\n<h2><span style="color: #000080;">—Dolor Sit Amet.</span></h2>\r\n<ul>\r\n	<li><a href="http://lorem2.com/francais/#short-para">Paragraphes courts</a></li>\r\n	<li><a href="http://lorem2.com/francais/#long-para">Paragraphes longs</a></li>\r\n</ul>\r\n<a href="http://localhost/~chanturidze/wordpress/wp-content/uploads/2012/12/Theme-wordpress-gratuiti.png"><img class="alignnone size-medium wp-image-13" title="Theme-wordpress-gratuiti" src="http://localhost/~chanturidze/wordpress/wp-content/uploads/2012/12/Theme-wordpress-gratuiti-300x190.png" alt="" /></a>\r\n<div>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.\r\n\r\nDonec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.<a href="http://localhost/~chanturidze/wordpress/wp-content/uploads/2012/12/Theme-wordpress-gratuiti1.png"><img class="alignnone size-medium wp-image-15" title="Theme-wordpress-gratuiti" src="http://localhost/~chanturidze/wordpress/wp-content/uploads/2012/12/Theme-wordpress-gratuiti1-300x190.png" alt="" /></a>\r\n\r\nMorbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.\r\n\r\nPraesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.\r\n\r\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi.\r\n\r\nPellentesque fermentum dolor. Aliquam quam lectus, facilisis auctor, ultrices ut, elementum vulputate, nunc.\r\n\r\nSed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel, velit. Pellentesque egestas sem. Suspendisse commodo ullamcorper magna.\r\n\r\n</div>\r\n&nbsp;', 'essai 1', '', 'publish', 'closed', 'open', '', 'essai-1', '', '', '2012-12-03 17:00:15', '2012-12-03 16:00:15', '', 0, 'http://localhost/~chanturidze/wordpress/?p=9', 0, 'post', '', 0),
(11, 1, '2012-12-03 16:46:20', '2012-12-03 15:46:20', '<h2><span style="color: #000080;">Une meilleure expérience universelle Lorem.</span></h2>\n<h2><span style="color: #000080;">—Dolor Sit Amet.</span></h2>\n<ul>\n	<li><a href="http://lorem2.com/francais/#short-para">Paragraphes courts</a></li>\n	<li><a href="http://lorem2.com/francais/#long-para">Paragraphes longs</a></li>\n</ul>\n<div>\n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.\n\nDonec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.\n\nMorbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.\n\nPraesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.\n\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi.\n\nPellentesque fermentum dolor. Aliquam quam lectus, facilisis auctor, ultrices ut, elementum vulputate, nunc.\n\nSed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel, velit. Pellentesque egestas sem. Suspendisse commodo ullamcorper magna.\n\n</div>\n&nbsp;', 'essai 1', '', 'inherit', 'closed', 'open', '', '9-revision', '', '', '2012-12-03 16:46:20', '2012-12-03 15:46:20', '', 9, 'http://localhost/~chanturidze/wordpress/?p=11', 0, 'revision', '', 0),
(13, 1, '2012-12-03 16:57:38', '2012-12-03 15:57:38', '', 'Theme-wordpress-gratuiti', '', 'inherit', 'closed', 'open', '', 'theme-wordpress-gratuiti', '', '', '2012-12-03 16:57:38', '2012-12-03 15:57:38', '', 9, 'http://localhost/~chanturidze/wordpress/wp-content/uploads/2012/12/Theme-wordpress-gratuiti.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2012-12-03 16:51:20', '2012-12-03 15:51:20', '<h2><span style="color: #000080;">Une meilleure expérience universelle Lorem.</span></h2>\r\n<h2><span style="color: #000080;">—Dolor Sit Amet.</span></h2>\r\n<ul>\r\n	<li><a href="http://lorem2.com/francais/#short-para">Paragraphes courts</a></li>\r\n	<li><a href="http://lorem2.com/francais/#long-para">Paragraphes longs</a></li>\r\n</ul>\r\n<div>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.\r\n\r\nDonec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.\r\n\r\nMorbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.\r\n\r\nPraesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.\r\n\r\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi.\r\n\r\nPellentesque fermentum dolor. Aliquam quam lectus, facilisis auctor, ultrices ut, elementum vulputate, nunc.\r\n\r\nSed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel, velit. Pellentesque egestas sem. Suspendisse commodo ullamcorper magna.\r\n\r\n</div>\r\n&nbsp;', 'essai 1', '', 'inherit', 'closed', 'open', '', '9-revision-2', '', '', '2012-12-03 16:51:20', '2012-12-03 15:51:20', '', 9, 'http://localhost/~chanturidze/wordpress/?p=14', 0, 'revision', '', 0),
(15, 1, '2012-12-03 16:59:20', '2012-12-03 15:59:20', '', 'Theme-wordpress-gratuiti', '', 'inherit', 'closed', 'open', '', 'theme-wordpress-gratuiti-2', '', '', '2012-12-03 16:59:20', '2012-12-03 15:59:20', '', 9, 'http://localhost/~chanturidze/wordpress/wp-content/uploads/2012/12/Theme-wordpress-gratuiti1.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2012-12-03 17:01:17', '2012-12-03 16:01:17', '<h2><span style="color: #000080;">Une meilleure expérience universelle Lorem.</span></h2>\n<h2><span style="color: #000080;">—Dolor Sit Amet.</span></h2>\n<ul>\n	<li><a href="http://lorem2.com/francais/#short-para">Paragraphes courts</a></li>\n	<li><a href="http://lorem2.com/francais/#long-para">Paragraphes longs</a></li>\n</ul>\n<a href="http://localhost/~chanturidze/wordpress/wp-content/uploads/2012/12/Theme-wordpress-gratuiti.png"><img class="alignnone size-medium wp-image-13" title="Theme-wordpress-gratuiti" src="http://localhost/~chanturidze/wordpress/wp-content/uploads/2012/12/Theme-wordpress-gratuiti-300x190.png" alt="" /></a>\n<div>\n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.\n\nDonec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.<a href="http://localhost/~chanturidze/wordpress/wp-content/uploads/2012/12/Theme-wordpress-gratuiti1.png"><img class="alignnone size-medium wp-image-15" title="Theme-wordpress-gratuiti" src="http://localhost/~chanturidze/wordpress/wp-content/uploads/2012/12/Theme-wordpress-gratuiti1-300x190.png" alt="" /></a>\n\nMorbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.\n\nPraesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.\n\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi.\n\nPellentesque fermentum dolor. Aliquam quam lectus, facilisis auctor, ultrices ut, elementum vulputate, nunc.\n\nSed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel, velit. Pellentesque egestas sem. Suspendisse commodo ullamcorper magna.\n\n</div>\n&nbsp;', 'essai 1', '', 'inherit', 'closed', 'open', '', '9-autosave', '', '', '2012-12-03 17:01:17', '2012-12-03 16:01:17', '', 9, 'http://localhost/~chanturidze/wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2012-12-03 16:57:52', '2012-12-03 15:57:52', '<h2><span style="color: #000080;">Une meilleure expérience universelle Lorem.</span></h2>\r\n<h2><span style="color: #000080;">—Dolor Sit Amet.</span></h2>\r\n<ul>\r\n	<li><a href="http://lorem2.com/francais/#short-para">Paragraphes courts</a></li>\r\n	<li><a href="http://lorem2.com/francais/#long-para">Paragraphes longs</a></li>\r\n</ul>\r\n<a href="http://localhost/~chanturidze/wordpress/wp-content/uploads/2012/12/Theme-wordpress-gratuiti.png"><img class="alignnone size-medium wp-image-13" title="Theme-wordpress-gratuiti" src="http://localhost/~chanturidze/wordpress/wp-content/uploads/2012/12/Theme-wordpress-gratuiti-300x190.png" alt="" /></a>\r\n<div>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.\r\n\r\nDonec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.\r\n\r\nMorbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.\r\n\r\nPraesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.\r\n\r\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi.\r\n\r\nPellentesque fermentum dolor. Aliquam quam lectus, facilisis auctor, ultrices ut, elementum vulputate, nunc.\r\n\r\nSed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel, euismod vel, velit. Pellentesque egestas sem. Suspendisse commodo ullamcorper magna.\r\n\r\n</div>\r\n&nbsp;', 'essai 1', '', 'inherit', 'closed', 'open', '', '9-revision-3', '', '', '2012-12-03 16:57:52', '2012-12-03 15:57:52', '', 9, 'http://localhost/~chanturidze/wordpress/?p=17', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Liens', 'liens', 0),
(3, 'programmation', 'programmation', 0),
(4, 'php', 'php', 0),
(5, 'templete', 'templete', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(4, 3, 0),
(4, 4, 0),
(4, 5, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(9, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'link_category', '', 0, 7),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 3, 1),
(5, 5, 'category', '', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'shalva'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'wp_user-settings', 'hidetb=1&mfold=o'),
(16, 1, 'wp_user-settings-time', '1354548729'),
(17, 1, 'closedpostboxes_post', 'a:0:{}'),
(18, 1, 'metaboxhidden_post', 'a:8:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";i:7;s:12:"revisionsdiv";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'shalva', '$P$B7/7l0KRaIhbqbJ3QpQQ0fxBrHXIA7.', 'shalva', 'geo_shako@yahoo.com', '', '2012-11-26 15:15:05', '', 0, 'shalva');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
