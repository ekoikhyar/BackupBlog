-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 15, 2013 at 05:31 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webdes`
--

-- --------------------------------------------------------

--
-- Table structure for table `areapermissionassignments`
--

CREATE TABLE IF NOT EXISTS `areapermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `areapermissionassignments`
--


-- --------------------------------------------------------

--
-- Table structure for table `areapermissionblocktypeaccesslist`
--

CREATE TABLE IF NOT EXISTS `areapermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `areapermissionblocktypeaccesslist`
--


-- --------------------------------------------------------

--
-- Table structure for table `areapermissionblocktypeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `areapermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `areapermissionblocktypeaccesslistcustom`
--


-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE IF NOT EXISTS `areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`) VALUES
(1, 105, 'Header', 0, 0, 0),
(2, 105, 'Column 1', 0, 0, 0),
(3, 105, 'Column 2', 0, 0, 0),
(4, 105, 'Column 3', 0, 0, 0),
(5, 105, 'Column 4', 0, 0, 0),
(6, 106, 'Primary', 0, 0, 0),
(7, 106, 'Secondary 1', 0, 0, 0),
(8, 106, 'Secondary 2', 0, 0, 0),
(9, 106, 'Secondary 3', 0, 0, 0),
(10, 106, 'Secondary 4', 0, 0, 0),
(11, 106, 'Secondary 5', 0, 0, 0),
(12, 121, 'Main', 0, 0, 0),
(13, 122, 'Main', 0, 0, 0),
(14, 123, 'Main', 0, 0, 0),
(15, 124, 'Main', 0, 0, 0),
(16, 124, 'Sidebar', 0, 0, 0),
(17, 124, 'Thumbnail Image', 0, 0, 0),
(18, 124, 'Header Image', 0, 0, 0),
(19, 125, 'Header Image', 0, 0, 0),
(20, 126, 'Header Image', 0, 0, 0),
(21, 127, 'Header Image', 0, 0, 0),
(22, 1, 'Sidebar', 0, 0, 0),
(23, 1, 'Main', 0, 0, 0),
(24, 1, 'Header Image', 0, 0, 0),
(25, 128, 'Sidebar', 0, 0, 0),
(26, 128, 'Main', 0, 0, 0),
(27, 128, 'Header Image', 0, 0, 0),
(28, 131, 'Sidebar', 0, 0, 0),
(29, 131, 'Main', 0, 0, 0),
(30, 131, 'Header Image', 0, 0, 0),
(31, 132, 'Sidebar', 0, 0, 0),
(32, 132, 'Main', 0, 0, 0),
(33, 132, 'Header Image', 0, 0, 0),
(34, 129, 'Sidebar', 0, 0, 0),
(35, 129, 'Main', 0, 0, 0),
(36, 129, 'Header Image', 0, 0, 0),
(37, 130, 'Main', 0, 0, 0),
(38, 130, 'Sidebar', 0, 0, 0),
(39, 130, 'Header Image', 0, 0, 0),
(40, 133, 'Header Image', 0, 0, 0),
(41, 133, 'Main', 0, 0, 0),
(42, 133, 'Thumbnail Image', 0, 0, 0),
(43, 133, 'Sidebar', 0, 0, 0),
(44, 134, 'Main', 0, 0, 0),
(45, 134, 'Sidebar', 0, 0, 0),
(46, 134, 'Header Image', 0, 0, 0),
(47, 1, 'Site Name', 0, 0, 1),
(48, 1, 'Header Nav', 0, 0, 0),
(49, 135, 'Header Image', 0, 0, 0),
(50, 135, 'Thumbnail Image', 0, 0, 0),
(51, 135, 'Main', 0, 0, 0),
(52, 136, 'Header Image', 0, 0, 0),
(53, 136, 'Thumbnail Image', 0, 0, 0),
(54, 136, 'Main', 0, 0, 0),
(55, 136, 'Sidebar', 0, 0, 0),
(56, 136, 'Site Name', 0, 0, 1),
(57, 136, 'Header Nav', 0, 0, 1),
(58, 137, 'Header Image', 0, 0, 0),
(59, 137, 'Thumbnail Image', 0, 0, 0),
(60, 137, 'Main', 0, 0, 0),
(61, 128, 'Site Name', 0, 0, 1),
(62, 128, 'Header Nav', 0, 0, 1),
(63, 1, 'Header', 0, 0, 0),
(64, 129, 'Site Name', 0, 0, 1),
(65, 129, 'Header Nav', 0, 0, 1),
(66, 130, 'Site Name', 0, 0, 1),
(67, 130, 'Header Nav', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ataddress`
--

CREATE TABLE IF NOT EXISTS `ataddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ataddress`
--


-- --------------------------------------------------------

--
-- Table structure for table `ataddresscustomcountries`
--

CREATE TABLE IF NOT EXISTS `ataddresscustomcountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ataddresscustomcountries`
--


-- --------------------------------------------------------

--
-- Table structure for table `ataddresssettings`
--

CREATE TABLE IF NOT EXISTS `ataddresssettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ataddresssettings`
--


-- --------------------------------------------------------

--
-- Table structure for table `atboolean`
--

CREATE TABLE IF NOT EXISTS `atboolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atboolean`
--

INSERT INTO `atboolean` (`avID`, `value`) VALUES
(20, 1),
(31, 1),
(34, 1),
(64, 1),
(65, 1),
(68, 1),
(69, 1),
(75, 1),
(108, 1),
(117, 1),
(118, 1),
(119, 1),
(138, 1),
(139, 1),
(140, 1);

-- --------------------------------------------------------

--
-- Table structure for table `atbooleansettings`
--

CREATE TABLE IF NOT EXISTS `atbooleansettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atbooleansettings`
--

INSERT INTO `atbooleansettings` (`akID`, `akCheckedByDefault`) VALUES
(5, 0),
(6, 0),
(8, 0),
(9, 0),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `atdatetime`
--

CREATE TABLE IF NOT EXISTS `atdatetime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atdatetime`
--


-- --------------------------------------------------------

--
-- Table structure for table `atdatetimesettings`
--

CREATE TABLE IF NOT EXISTS `atdatetimesettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atdatetimesettings`
--


-- --------------------------------------------------------

--
-- Table structure for table `atdefault`
--

CREATE TABLE IF NOT EXISTS `atdefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atdefault`
--

INSERT INTO `atdefault` (`avID`, `value`) VALUES
(1, 'blog, blogging'),
(2, 'icon-book'),
(3, 'new blog, write blog, blogging'),
(4, 'icon-pencil'),
(5, 'blog drafts, composer'),
(6, 'icon-book'),
(7, 'pages, add page, delete page, copy, move, alias'),
(8, 'pages, add page, delete page, copy, move, alias'),
(9, 'icon-home'),
(10, 'pages, add page, delete page, copy, move, alias, bulk'),
(11, 'icon-road'),
(12, 'find page, search page, search, find, pages, sitemap'),
(13, 'icon-search'),
(14, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),
(15, 'icon-picture'),
(16, 'file, file attributes, title, attribute, description, rename'),
(17, 'icon-cog'),
(18, 'files, category, categories'),
(19, 'icon-list-alt'),
(21, 'new file set'),
(22, 'icon-plus-sign'),
(23, 'users, groups, people, find, delete user, remove user, change password, password'),
(24, 'find, search, people, delete user, remove user, change password, password'),
(25, 'icon-user'),
(26, 'user, group, people, permissions, access, expire'),
(27, 'icon-globe'),
(28, 'user attributes, user data, gather data, registration data'),
(29, 'icon-cog'),
(30, 'new user, create'),
(32, 'icon-plus-sign'),
(33, 'new user group, new group, group, create'),
(35, 'icon-plus'),
(36, 'group set'),
(37, 'icon-list'),
(38, 'forms, log, error, email, mysql, exception, survey'),
(39, 'hits, pageviews, visitors, activity'),
(40, 'icon-signal'),
(41, 'forms, questions, response, data'),
(42, 'icon-briefcase'),
(43, 'questions, quiz, response'),
(44, 'icon-tasks'),
(45, 'forms, log, error, email, mysql, exception, survey, history'),
(46, 'icon-time'),
(47, 'new theme, theme, active theme, change theme, template, css'),
(48, 'icon-font'),
(49, 'theme'),
(50, 'page types'),
(51, 'custom theme, change theme, custom css, css'),
(52, 'page type defaults, global block, global area, starter, template'),
(53, 'icon-file'),
(54, 'page attributes, custom'),
(55, 'icon-cog'),
(56, 'single, page, custom, application'),
(57, 'icon-wrench'),
(58, 'add workflow, remove workflow'),
(59, 'icon-list'),
(60, 'icon-user'),
(61, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),
(62, 'icon-th'),
(63, 'icon-lock'),
(66, 'block, refresh, custom'),
(67, 'icon-wrench'),
(70, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),
(71, 'update, upgrade'),
(72, 'concrete5.org, my account, marketplace'),
(73, 'buy theme, new theme, marketplace, template'),
(74, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),
(76, 'website name, title'),
(77, 'logo, favicon, iphone, icon, bookmark'),
(78, 'tinymce, content block, fonts, editor, content, overlay'),
(79, 'translate, translation, internationalization, multilingual'),
(80, 'timezone, profile, locale'),
(81, 'interface, quick nav, dashboard background, background image'),
(82, 'vanity, pretty url, seo, pageview, view'),
(83, 'bulk, seo, change keywords, engine, optimization, search'),
(84, 'traffic, statistics, google analytics, quant, pageviews, hits'),
(85, 'pretty, slug'),
(86, 'turn off statistics, tracking, statistics, pageviews, hits'),
(87, 'configure search, site search, search option'),
(88, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),
(89, 'cache option, turn off cache, no cache, page cache, caching'),
(90, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),
(91, 'editors, hide site, offline, private, public, access'),
(92, 'file options, file manager, upload, modify'),
(93, 'security, files, media, extension, manager, upload'),
(94, 'security, actions, administrator, admin, package, marketplace, search'),
(95, 'security, lock ip, lock out, block ip, address, restrict, access'),
(96, 'security, registration'),
(97, 'antispam, block spam, security'),
(98, 'lock site, under construction, hide, hidden'),
(99, 'profile, login, redirect, specific, dashboard, administrators'),
(100, 'member profile, member page, community, forums, social, avatar'),
(101, 'signup, new user, community'),
(102, 'smtp, mail settings'),
(103, 'email server, mail settings, mail configuration, external, internal'),
(104, 'email server, mail settings, mail configuration, private message, message system, import, email, message'),
(105, 'attribute configuration'),
(106, 'attributes, sets'),
(107, 'attributes, types'),
(109, 'overrides, system info, debug, support, help'),
(110, 'errors, exceptions, develop, support, help'),
(111, 'email, logging, logs, smtp, pop, errors, mysql, log'),
(112, 'security, alternate storage, hide files'),
(113, 'network, proxy server'),
(114, 'export, backup, database, sql, mysql, encryption, restore'),
(115, 'upgrade, new version, update'),
(116, 'export, database, xml, starting, points, schema, refresh, custom, tables');

-- --------------------------------------------------------

--
-- Table structure for table `atfile`
--

CREATE TABLE IF NOT EXISTS `atfile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atfile`
--


-- --------------------------------------------------------

--
-- Table structure for table `atnumber`
--

CREATE TABLE IF NOT EXISTS `atnumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atnumber`
--

INSERT INTO `atnumber` (`avID`, `value`) VALUES
(120, '960.0000'),
(121, '212.0000'),
(122, '960.0000'),
(123, '212.0000'),
(124, '960.0000'),
(125, '212.0000'),
(126, '960.0000'),
(127, '212.0000'),
(128, '960.0000'),
(129, '212.0000'),
(130, '960.0000'),
(131, '212.0000'),
(132, '960.0000'),
(133, '212.0000'),
(134, '150.0000'),
(135, '150.0000');

-- --------------------------------------------------------

--
-- Table structure for table `atselectoptions`
--

CREATE TABLE IF NOT EXISTS `atselectoptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `atselectoptions`
--

INSERT INTO `atselectoptions` (`ID`, `akID`, `value`, `displayOrder`, `isEndUserAdded`) VALUES
(1, 15, 'composer', 0, 1),
(2, 15, 'hello', 1, 1),
(3, 15, 'world', 2, 1),
(4, 15, 'first post', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `atselectoptionsselected`
--

CREATE TABLE IF NOT EXISTS `atselectoptionsselected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atselectoptionsselected`
--

INSERT INTO `atselectoptionsselected` (`avID`, `atSelectOptionID`) VALUES
(137, 1),
(137, 2),
(137, 3),
(137, 4);

-- --------------------------------------------------------

--
-- Table structure for table `atselectsettings`
--

CREATE TABLE IF NOT EXISTS `atselectsettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atselectsettings`
--

INSERT INTO `atselectsettings` (`akID`, `akSelectAllowMultipleValues`, `akSelectOptionDisplayOrder`, `akSelectAllowOtherValues`) VALUES
(15, 1, 'display_asc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attextareasettings`
--

CREATE TABLE IF NOT EXISTS `attextareasettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attextareasettings`
--

INSERT INTO `attextareasettings` (`akID`, `akTextareaDisplayMode`) VALUES
(2, ''),
(3, ''),
(4, ''),
(7, '');

-- --------------------------------------------------------

--
-- Table structure for table `attributekeycategories`
--

CREATE TABLE IF NOT EXISTS `attributekeycategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `attributekeycategories`
--

INSERT INTO `attributekeycategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1, 'collection', 1, NULL),
(2, 'user', 1, NULL),
(3, 'file', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributekeys`
--

CREATE TABLE IF NOT EXISTS `attributekeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `attributekeys`
--

INSERT INTO `attributekeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsSearchableIndexed`, `akIsAutoCreated`, `akIsInternal`, `akIsColumnHeader`, `akIsEditable`, `atID`, `akCategoryID`, `pkgID`) VALUES
(1, 'meta_title', 'Meta Title', 1, 1, 0, 0, 0, 1, 1, 1, 0),
(2, 'meta_description', 'Meta Description', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(3, 'meta_keywords', 'Meta Keywords', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(4, 'icon_dashboard', 'Dashboard Icon', 1, 1, 0, 1, 0, 1, 2, 1, 0),
(5, 'exclude_nav', 'Exclude From Nav', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(6, 'exclude_page_list', 'Exclude From Page List', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(7, 'header_extra_content', 'Header Extra Content', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(8, 'exclude_search_index', 'Exclude From Search Index', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(9, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(10, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 1, 0, 0, 0, 1, 3, 2, 0),
(11, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 1, 0, 0, 0, 1, 3, 2, 0),
(12, 'width', 'Width', 1, 1, 0, 0, 0, 1, 6, 3, 0),
(13, 'height', 'Height', 1, 1, 0, 0, 0, 1, 6, 3, 0),
(14, 'duration', 'Duration', 1, 1, 0, 0, 0, 1, 6, 3, 0),
(15, 'tags', 'Tags', 1, 1, 0, 0, 0, 1, 8, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attributesetkeys`
--

CREATE TABLE IF NOT EXISTS `attributesetkeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributesetkeys`
--

INSERT INTO `attributesetkeys` (`akID`, `asID`, `displayOrder`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(7, 1, 4),
(5, 2, 1),
(6, 2, 2),
(8, 2, 3),
(9, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `attributesets`
--

CREATE TABLE IF NOT EXISTS `attributesets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `attributesets`
--

INSERT INTO `attributesets` (`asID`, `asName`, `asHandle`, `akCategoryID`, `pkgID`, `asIsLocked`, `asDisplayOrder`) VALUES
(1, 'Page Header', 'page_header', 1, 0, 0, 0),
(2, 'Navigation and Indexing', 'navigation', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attributetypecategories`
--

CREATE TABLE IF NOT EXISTS `attributetypecategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributetypecategories`
--

INSERT INTO `attributetypecategories` (`atID`, `akCategoryID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `attributetypes`
--

CREATE TABLE IF NOT EXISTS `attributetypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `attributetypes`
--

INSERT INTO `attributetypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1, 'text', 'Text', 0),
(2, 'textarea', 'Text Area', 0),
(3, 'boolean', 'Checkbox', 0),
(4, 'date_time', 'Date/Time', 0),
(5, 'image_file', 'Image/File', 0),
(6, 'number', 'Number', 0),
(7, 'rating', 'Rating', 0),
(8, 'select', 'Select', 0),
(9, 'address', 'Address', 0);

-- --------------------------------------------------------

--
-- Table structure for table `attributevalues`
--

CREATE TABLE IF NOT EXISTS `attributevalues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=144 ;

--
-- Dumping data for table `attributevalues`
--

INSERT INTO `attributevalues` (`avID`, `akID`, `avDateAdded`, `uID`, `atID`) VALUES
(1, 3, '2013-10-13 15:24:29', 1, 2),
(2, 4, '2013-10-13 15:24:29', 1, 2),
(3, 3, '2013-10-13 15:24:29', 1, 2),
(4, 4, '2013-10-13 15:24:29', 1, 2),
(5, 3, '2013-10-13 15:24:29', 1, 2),
(6, 4, '2013-10-13 15:24:29', 1, 2),
(7, 3, '2013-10-13 15:24:29', 1, 2),
(8, 3, '2013-10-13 15:24:29', 1, 2),
(9, 4, '2013-10-13 15:24:29', 1, 2),
(10, 3, '2013-10-13 15:24:29', 1, 2),
(11, 4, '2013-10-13 15:24:29', 1, 2),
(12, 3, '2013-10-13 15:24:29', 1, 2),
(13, 4, '2013-10-13 15:24:29', 1, 2),
(14, 3, '2013-10-13 15:24:29', 1, 2),
(15, 4, '2013-10-13 15:24:29', 1, 2),
(16, 3, '2013-10-13 15:24:29', 1, 2),
(17, 4, '2013-10-13 15:24:29', 1, 2),
(18, 3, '2013-10-13 15:24:29', 1, 2),
(19, 4, '2013-10-13 15:24:29', 1, 2),
(20, 5, '2013-10-13 15:24:29', 1, 3),
(21, 3, '2013-10-13 15:24:29', 1, 2),
(22, 4, '2013-10-13 15:24:29', 1, 2),
(23, 3, '2013-10-13 15:24:29', 1, 2),
(24, 3, '2013-10-13 15:24:29', 1, 2),
(25, 4, '2013-10-13 15:24:29', 1, 2),
(26, 3, '2013-10-13 15:24:29', 1, 2),
(27, 4, '2013-10-13 15:24:29', 1, 2),
(28, 3, '2013-10-13 15:24:29', 1, 2),
(29, 4, '2013-10-13 15:24:29', 1, 2),
(30, 3, '2013-10-13 15:24:29', 1, 2),
(31, 5, '2013-10-13 15:24:29', 1, 3),
(32, 4, '2013-10-13 15:24:29', 1, 2),
(33, 3, '2013-10-13 15:24:29', 1, 2),
(34, 5, '2013-10-13 15:24:29', 1, 3),
(35, 4, '2013-10-13 15:24:29', 1, 2),
(36, 3, '2013-10-13 15:24:29', 1, 2),
(37, 4, '2013-10-13 15:24:29', 1, 2),
(38, 3, '2013-10-13 15:24:29', 1, 2),
(39, 3, '2013-10-13 15:24:29', 1, 2),
(40, 4, '2013-10-13 15:24:30', 1, 2),
(41, 3, '2013-10-13 15:24:30', 1, 2),
(42, 4, '2013-10-13 15:24:30', 1, 2),
(43, 3, '2013-10-13 15:24:30', 1, 2),
(44, 4, '2013-10-13 15:24:30', 1, 2),
(45, 3, '2013-10-13 15:24:30', 1, 2),
(46, 4, '2013-10-13 15:24:30', 1, 2),
(47, 3, '2013-10-13 15:24:30', 1, 2),
(48, 4, '2013-10-13 15:24:30', 1, 2),
(49, 3, '2013-10-13 15:24:30', 1, 2),
(50, 3, '2013-10-13 15:24:30', 1, 2),
(51, 3, '2013-10-13 15:24:30', 1, 2),
(52, 3, '2013-10-13 15:24:30', 1, 2),
(53, 4, '2013-10-13 15:24:30', 1, 2),
(54, 3, '2013-10-13 15:24:30', 1, 2),
(55, 4, '2013-10-13 15:24:30', 1, 2),
(56, 3, '2013-10-13 15:24:30', 1, 2),
(57, 4, '2013-10-13 15:24:30', 1, 2),
(58, 3, '2013-10-13 15:24:30', 1, 2),
(59, 4, '2013-10-13 15:24:30', 1, 2),
(60, 4, '2013-10-13 15:24:30', 1, 2),
(61, 3, '2013-10-13 15:24:30', 1, 2),
(62, 4, '2013-10-13 15:24:30', 1, 2),
(63, 4, '2013-10-13 15:24:30', 1, 2),
(64, 5, '2013-10-13 15:24:30', 1, 3),
(65, 8, '2013-10-13 15:24:30', 1, 3),
(66, 3, '2013-10-13 15:24:30', 1, 2),
(67, 4, '2013-10-13 15:24:30', 1, 2),
(68, 5, '2013-10-13 15:24:30', 1, 3),
(69, 5, '2013-10-13 15:24:30', 1, 3),
(70, 3, '2013-10-13 15:24:30', 1, 2),
(71, 3, '2013-10-13 15:24:30', 1, 2),
(72, 3, '2013-10-13 15:24:30', 1, 2),
(73, 3, '2013-10-13 15:24:30', 1, 2),
(74, 3, '2013-10-13 15:24:30', 1, 2),
(75, 5, '2013-10-13 15:24:30', 1, 3),
(76, 3, '2013-10-13 15:24:30', 1, 2),
(77, 3, '2013-10-13 15:24:30', 1, 2),
(78, 3, '2013-10-13 15:24:30', 1, 2),
(79, 3, '2013-10-13 15:24:30', 1, 2),
(80, 3, '2013-10-13 15:24:30', 1, 2),
(81, 3, '2013-10-13 15:24:30', 1, 2),
(82, 3, '2013-10-13 15:24:30', 1, 2),
(83, 3, '2013-10-13 15:24:30', 1, 2),
(84, 3, '2013-10-13 15:24:30', 1, 2),
(85, 3, '2013-10-13 15:24:30', 1, 2),
(86, 3, '2013-10-13 15:24:30', 1, 2),
(87, 3, '2013-10-13 15:24:30', 1, 2),
(88, 3, '2013-10-13 15:24:30', 1, 2),
(89, 3, '2013-10-13 15:24:30', 1, 2),
(90, 3, '2013-10-13 15:24:31', 1, 2),
(91, 3, '2013-10-13 15:24:31', 1, 2),
(92, 3, '2013-10-13 15:24:31', 1, 2),
(93, 3, '2013-10-13 15:24:31', 1, 2),
(94, 3, '2013-10-13 15:24:31', 1, 2),
(95, 3, '2013-10-13 15:24:31', 1, 2),
(96, 3, '2013-10-13 15:24:31', 1, 2),
(97, 3, '2013-10-13 15:24:31', 1, 2),
(98, 3, '2013-10-13 15:24:31', 1, 2),
(99, 3, '2013-10-13 15:24:31', 1, 2),
(100, 3, '2013-10-13 15:24:31', 1, 2),
(101, 3, '2013-10-13 15:24:31', 1, 2),
(102, 3, '2013-10-13 15:24:31', 1, 2),
(103, 3, '2013-10-13 15:24:31', 1, 2),
(104, 3, '2013-10-13 15:24:31', 1, 2),
(105, 3, '2013-10-13 15:24:31', 1, 2),
(106, 3, '2013-10-13 15:24:31', 1, 2),
(107, 3, '2013-10-13 15:24:31', 1, 2),
(108, 8, '2013-10-13 15:24:31', 1, 3),
(109, 3, '2013-10-13 15:24:31', 1, 2),
(110, 3, '2013-10-13 15:24:31', 1, 2),
(111, 3, '2013-10-13 15:24:31', 1, 2),
(112, 3, '2013-10-13 15:24:31', 1, 2),
(113, 3, '2013-10-13 15:24:31', 1, 2),
(114, 3, '2013-10-13 15:24:31', 1, 2),
(115, 3, '2013-10-13 15:24:31', 1, 2),
(116, 3, '2013-10-13 15:24:31', 1, 2),
(117, 5, '2013-10-13 15:24:31', 1, 3),
(118, 5, '2013-10-13 15:24:31', 1, 3),
(119, 8, '2013-10-13 15:24:31', 1, 3),
(120, 12, '2013-10-13 15:24:32', 1, 6),
(121, 13, '2013-10-13 15:24:32', 1, 6),
(122, 12, '2013-10-13 15:24:33', 1, 6),
(123, 13, '2013-10-13 15:24:33', 1, 6),
(124, 12, '2013-10-13 15:24:33', 1, 6),
(125, 13, '2013-10-13 15:24:33', 1, 6),
(126, 12, '2013-10-13 15:24:33', 1, 6),
(127, 13, '2013-10-13 15:24:33', 1, 6),
(128, 12, '2013-10-13 15:24:33', 1, 6),
(129, 13, '2013-10-13 15:24:33', 1, 6),
(130, 12, '2013-10-13 15:24:34', 1, 6),
(131, 13, '2013-10-13 15:24:34', 1, 6),
(132, 12, '2013-10-13 15:24:34', 1, 6),
(133, 13, '2013-10-13 15:24:34', 1, 6),
(134, 12, '2013-10-13 15:24:34', 1, 6),
(135, 13, '2013-10-13 15:24:34', 1, 6),
(136, 15, '2013-10-13 15:24:36', 1, 8),
(137, 15, '2013-10-13 15:24:36', 1, 8),
(138, 5, '2013-10-13 15:24:36', 1, 3),
(139, 6, '2013-10-13 15:24:36', 1, 3),
(140, 8, '2013-10-13 15:24:36', 1, 3),
(141, 15, '2013-10-13 15:24:36', 1, 8),
(142, 15, '2013-10-13 15:30:31', 1, 8),
(143, 15, '2013-10-13 15:33:05', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `basicworkflowpermissionassignments`
--

CREATE TABLE IF NOT EXISTS `basicworkflowpermissionassignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `basicworkflowpermissionassignments`
--


-- --------------------------------------------------------

--
-- Table structure for table `basicworkflowprogressdata`
--

CREATE TABLE IF NOT EXISTS `basicworkflowprogressdata` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `basicworkflowprogressdata`
--


-- --------------------------------------------------------

--
-- Table structure for table `blockpermissionassignments`
--

CREATE TABLE IF NOT EXISTS `blockpermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blockpermissionassignments`
--


-- --------------------------------------------------------

--
-- Table structure for table `blockrelations`
--

CREATE TABLE IF NOT EXISTS `blockrelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `blockrelations`
--

INSERT INTO `blockrelations` (`brID`, `bID`, `originalBID`, `relationType`) VALUES
(1, 48, 16, 'DUPLICATE'),
(2, 49, 15, 'DUPLICATE'),
(3, 50, 13, 'DUPLICATE'),
(4, 51, 16, 'DUPLICATE'),
(5, 52, 15, 'DUPLICATE'),
(6, 53, 13, 'DUPLICATE'),
(7, 54, 16, 'DUPLICATE'),
(8, 55, 15, 'DUPLICATE'),
(9, 56, 13, 'DUPLICATE'),
(10, 57, 26, 'DUPLICATE');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE IF NOT EXISTS `blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2013-10-13 15:24:31', '2013-10-13 15:24:31', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"1";i:1;s:161:"	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"1";s:7:"content";s:161:"	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						";}'),
(2, '', '2013-10-13 15:24:31', '2013-10-13 15:24:31', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"2";i:1;s:327:"<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"2";s:7:"content";s:327:"<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>";}'),
(3, '', '2013-10-13 15:24:31', '2013-10-13 15:24:31', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"3";i:1;s:368:"<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"3";s:7:"content";s:368:"<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>";}'),
(4, '', '2013-10-13 15:24:31', '2013-10-13 15:24:31', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"4";i:1;s:323:"<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"4";s:7:"content";s:323:"<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>";}'),
(5, '', '2013-10-13 15:24:31', '2013-10-13 15:24:31', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"5";i:1;s:346:"\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"5";s:7:"content";s:346:"\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>";}'),
(6, '', '2013-10-13 15:24:31', '2013-10-13 15:24:31', NULL, '1', 6, 1, NULL),
(7, '', '2013-10-13 15:24:31', '2013-10-13 15:24:31', NULL, '1', 7, 1, NULL),
(8, '', '2013-10-13 15:24:31', '2013-10-13 15:24:31', NULL, '1', 5, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:25:"btDashboardNewsflowLatest";s:8:"_tableat";s:25:"btDashboardNewsflowLatest";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"8";i:1;s:1:"A";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"8";s:4:"slot";s:1:"A";}'),
(9, '', '2013-10-13 15:24:31', '2013-10-13 15:24:31', NULL, '1', 5, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:25:"btDashboardNewsflowLatest";s:8:"_tableat";s:25:"btDashboardNewsflowLatest";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"9";i:1;s:1:"B";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:1:"9";s:4:"slot";s:1:"B";}'),
(10, '', '2013-10-13 15:24:31', '2013-10-13 15:24:31', NULL, '1', 4, 1, NULL),
(11, '', '2013-10-13 15:24:31', '2013-10-13 15:24:31', NULL, '1', 3, 1, NULL),
(12, '', '2013-10-13 15:24:31', '2013-10-13 15:24:31', NULL, '1', 5, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:25:"btDashboardNewsflowLatest";s:8:"_tableat";s:25:"btDashboardNewsflowLatest";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"12";i:1;s:1:"C";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"12";s:4:"slot";s:1:"C";}'),
(13, 'Blog Content', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"13";i:1;s:34:"<p>This is my first blog post.</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"13";s:7:"content";s:34:"<p>This is my first blog post.</p>";}'),
(14, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 25, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:6:"btTags";s:8:"_tableat";s:6:"btTags";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"14";i:1;s:4:"Tags";i:2;s:3:"134";i:3;s:4:"page";i:4;s:1:"0";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"14";s:5:"title";s:4:"Tags";s:9:"targetCID";s:3:"134";s:11:"displayMode";s:4:"page";s:10:"cloudCount";s:1:"0";}'),
(15, 'Thumbnail Image', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"15";i:1;s:1:"8";i:2;i:0;i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;N;i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"15";s:3:"fID";s:1:"8";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";N;s:7:"altText";s:0:"";}'),
(16, 'Header Image', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"16";i:1;s:1:"2";i:2;i:0;i:3;i:960;i:4;i:212;i:5;s:0:"";i:6;i:0;i:7;s:1:"1";i:8;s:17:"My concrete5 Blog";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"16";s:3:"fID";s:1:"2";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:960;s:9:"maxHeight";i:212;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:17:"My concrete5 Blog";}'),
(17, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"17";i:1;s:1:"7";i:2;i:0;i:3;i:960;i:4;i:212;i:5;s:0:"";i:6;i:0;i:7;s:1:"1";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"17";s:3:"fID";s:1:"7";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:960;s:9:"maxHeight";i:212;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:0:"";}'),
(18, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"18";i:1;s:1:"6";i:2;i:0;i:3;i:960;i:4;i:212;i:5;s:0:"";i:6;i:0;i:7;s:1:"1";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"18";s:3:"fID";s:1:"6";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:960;s:9:"maxHeight";i:212;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:0:"";}'),
(19, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"19";i:1;s:1:"4";i:2;i:0;i:3;i:960;i:4;i:212;i:5;s:0:"";i:6;i:0;i:7;s:1:"1";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"19";s:3:"fID";s:1:"4";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:960;s:9:"maxHeight";i:212;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:0:"";}'),
(20, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"20";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:4:"none";i:6;s:6:"enough";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"20";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:4:"none";s:20:"displaySubPageLevels";s:6:"enough";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(21, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"21";i:1;s:15:"<h3>Links:</h3>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"21";s:7:"content";s:15:"<h3>Links:</h3>";}'),
(22, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"22";i:1;s:11:"display_asc";i:2;s:12:"second_level";i:3;i:0;i:4;i:0;i:5;s:3:"all";i:6;s:3:"all";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"22";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:12:"second_level";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:3:"all";s:20:"displaySubPageLevels";s:3:"all";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(23, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"23";i:1;s:130:"<h1><a title="Home" \n                                	href="{CCM:CID_1}"\n                                >Angin Ribut. PT</a></h1>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"23";s:7:"content";s:130:"<h1><a title="Home" \n                                	href="{CCM:CID_1}"\n                                >Angin Ribut. PT</a></h1>";}'),
(24, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"24";i:1;s:16:"<h3>Sidebar</h3>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"24";s:7:"content";s:16:"<h3>Sidebar</h3>";}'),
(25, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"25";i:1;s:343:"<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"25";s:7:"content";s:343:"<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>";}'),
(26, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"26";i:1;s:1592:"<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="{CCM:CID_110}">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="{CCM:CID_6}">Sitemap</a> and quickly delete the parts you don''t want.</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"26";s:7:"content";s:1592:"<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="{CCM:CID_110}">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="{CCM:CID_6}">Sitemap</a> and quickly delete the parts you don''t want.</p>";}'),
(27, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"27";i:1;s:1:"1";i:2;i:0;i:3;i:960;i:4;i:212;i:5;s:0:"";i:6;i:0;i:7;s:1:"1";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"27";s:3:"fID";s:1:"1";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:960;s:9:"maxHeight";i:212;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:0:"";}'),
(28, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 2, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btCoreStackDisplay";s:8:"_tableat";s:18:"btCoreStackDisplay";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"28";i:1;s:3:"122";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"28";s:4:"stID";s:3:"122";}'),
(29, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"29";i:1;s:1739:"<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"29";s:7:"content";s:1739:"<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>";}'),
(30, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 2, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btCoreStackDisplay";s:8:"_tableat";s:18:"btCoreStackDisplay";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"30";i:1;s:3:"122";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"30";s:4:"stID";s:3:"122";}'),
(31, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 16, 1, NULL),
(32, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 2, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btCoreStackDisplay";s:8:"_tableat";s:18:"btCoreStackDisplay";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"32";i:1;s:3:"122";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"32";s:4:"stID";s:3:"122";}'),
(33, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"33";i:1;s:192:"<h2>Contact Us</h2>\n									<p>Building a form is easy to do. Learn how to <a href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">add a form block</a>.</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"33";s:7:"content";s:192:"<h2>Contact Us</h2>\n									<p>Building a form is easy to do. Learn how to <a href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">add a form block</a>.</p>";}'),
(34, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 14, 1, NULL),
(35, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"35";i:1;s:17:"<h3>Site Map</h3>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"35";s:7:"content";s:17:"<h3>Site Map</h3>";}'),
(36, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"36";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:3:"all";i:6;s:3:"all";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"36";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:3:"all";s:20:"displaySubPageLevels";s:3:"all";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(37, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 22, 1, NULL),
(38, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'blog_index_thumbnail.php', '1', 20, 1, 'O:11:"BlockRecord":24:{s:5:"_dbat";i:1;s:6:"_table";s:10:"btPageList";s:8:"_tableat";s:10:"btPageList";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:15:{i:0;s:2:"38";i:1;s:2:"12";i:2;s:11:"chrono_desc";i:3;s:3:"130";i:4;s:1:"0";i:5;s:1:"0";i:6;i:1;i:7;s:1:"0";i:8;i:4;i:9;i:0;i:10;s:0:"";i:11;s:0:"";i:12;s:1:"1";i:13;s:1:"0";i:14;i:128;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"38";s:3:"num";s:2:"12";s:7:"orderBy";s:11:"chrono_desc";s:9:"cParentID";s:3:"130";s:5:"cThis";s:1:"0";s:21:"includeAllDescendents";s:1:"0";s:8:"paginate";i:1;s:14:"displayAliases";s:1:"0";s:4:"ctID";i:4;s:3:"rss";i:0;s:8:"rssTitle";s:0:"";s:14:"rssDescription";s:0:"";s:17:"truncateSummaries";s:1:"1";s:19:"displayFeaturedOnly";s:1:"0";s:13:"truncateChars";i:128;}'),
(39, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"39";i:1;s:13:"<h3>Tags</h3>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"39";s:7:"content";s:13:"<h3>Tags</h3>";}'),
(40, '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, '1', 25, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:6:"btTags";s:8:"_tableat";s:6:"btTags";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"40";i:1;s:0:"";i:2;s:3:"134";i:3;s:5:"cloud";i:4;s:1:"0";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"40";s:5:"title";s:0:"";s:9:"targetCID";s:3:"134";s:11:"displayMode";s:5:"cloud";s:10:"cloudCount";s:1:"0";}'),
(41, '', '2013-10-13 15:24:35', '2013-10-13 15:24:36', NULL, '1', 28, 1, 'O:11:"BlockRecord":13:{s:5:"_dbat";i:1;s:6:"_table";s:13:"btDateArchive";s:8:"_tableat";s:13:"btDateArchive";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:4:{i:0;s:2:"41";i:1;s:8:"Archives";i:2;s:3:"134";i:3;s:2:"12";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"41";s:5:"title";s:8:"Archives";s:9:"targetCID";s:3:"134";s:9:"numMonths";s:2:"12";}'),
(42, 'Header Image', '2013-10-13 15:24:36', '2013-10-13 15:24:36', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"42";i:1;s:1:"2";i:2;i:0;i:3;i:960;i:4;i:212;i:5;s:0:"";i:6;i:0;i:7;s:1:"1";i:8;s:17:"My concrete5 Blog";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"42";s:3:"fID";s:1:"2";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:960;s:9:"maxHeight";i:212;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:17:"My concrete5 Blog";}'),
(43, 'Blog Content', '2013-10-13 15:24:36', '2013-10-13 15:24:36', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"43";i:1;s:66:"<p>Here is some sample content! I''m writing it using composer!</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"43";s:7:"content";s:66:"<p>Here is some sample content! I''m writing it using composer!</p>";}'),
(44, 'Thumbnail Image', '2013-10-13 15:24:36', '2013-10-13 15:24:36', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"44";i:1;s:1:"8";i:2;i:0;i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;N;i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"44";s:3:"fID";s:1:"8";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";N;s:7:"altText";s:0:"";}'),
(45, '', '2013-10-13 15:24:36', '2013-10-13 15:24:36', NULL, '1', 22, 1, NULL),
(46, '', '2013-10-13 15:24:36', '2013-10-13 15:24:36', NULL, '1', 25, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:6:"btTags";s:8:"_tableat";s:6:"btTags";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"46";i:1;s:4:"Tags";i:2;s:3:"134";i:3;s:5:"cloud";i:4;s:1:"0";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"46";s:5:"title";s:4:"Tags";s:9:"targetCID";s:3:"134";s:11:"displayMode";s:5:"cloud";s:10:"cloudCount";s:1:"0";}'),
(47, '', '2013-10-13 15:24:36', '2013-10-13 15:24:36', NULL, '1', 28, 1, 'O:11:"BlockRecord":13:{s:5:"_dbat";i:1;s:6:"_table";s:13:"btDateArchive";s:8:"_tableat";s:13:"btDateArchive";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:4:{i:0;s:2:"47";i:1;s:8:"Archives";i:2;s:3:"134";i:3;s:2:"12";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"47";s:5:"title";s:8:"Archives";s:9:"targetCID";s:3:"134";s:9:"numMonths";s:2:"12";}'),
(48, 'Header Image', '2013-10-13 15:30:23', '2013-10-13 15:30:59', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"48";i:1;s:1:"2";i:2;i:0;i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;N;i:8;N;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"48";s:3:"fID";s:1:"2";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";N;s:7:"altText";N;}'),
(49, 'Thumbnail Image', '2013-10-13 15:30:23', '2013-10-13 15:30:59', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"49";i:1;s:1:"8";i:2;i:0;i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;N;i:8;N;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"49";s:3:"fID";s:1:"8";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";N;s:7:"altText";N;}'),
(51, 'Header Image', '2013-10-13 15:32:57', '2013-10-13 15:33:13', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"51";i:1;s:1:"2";i:2;i:0;i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;N;i:8;N;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"51";s:3:"fID";s:1:"2";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";N;s:7:"altText";N;}'),
(50, 'Blog Content', '2013-10-13 15:30:23', '2013-10-13 15:30:59', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"50";i:1;s:34:"<p>This is my first blog post.</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"50";s:7:"content";s:34:"<p>This is my first blog post.</p>";}'),
(52, 'Thumbnail Image', '2013-10-13 15:32:57', '2013-10-13 15:33:13', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"52";i:1;s:1:"8";i:2;i:0;i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;N;i:8;N;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"52";s:3:"fID";s:1:"8";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";N;s:7:"altText";N;}'),
(54, 'Header Image', '2013-10-13 15:34:12', '2013-10-13 15:34:12', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";s:6:"bID=54";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"54";i:1;s:1:"2";i:2;s:1:"0";i:3;s:3:"960";i:4;s:3:"212";i:5;s:0:"";i:6;s:1:"0";i:7;s:1:"1";i:8;s:17:"My concrete5 Blog";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"54";s:3:"fID";s:1:"2";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";s:3:"960";s:9:"maxHeight";s:3:"212";s:12:"externalLink";s:0:"";s:15:"internalLinkCID";s:1:"0";s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:17:"My concrete5 Blog";}'),
(53, 'Blog Content', '2013-10-13 15:32:57', '2013-10-13 15:33:14', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"53";i:1;s:34:"<p>This is my first blog post.</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"53";s:7:"content";s:34:"<p>This is my first blog post.</p>";}'),
(55, 'Thumbnail Image', '2013-10-13 15:34:12', '2013-10-13 15:34:12', NULL, '1', 18, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";s:6:"bID=55";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"55";i:1;s:1:"8";i:2;s:1:"0";i:3;s:1:"0";i:4;s:1:"0";i:5;s:0:"";i:6;s:1:"0";i:7;N;i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"55";s:3:"fID";s:1:"8";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";s:1:"0";s:9:"maxHeight";s:1:"0";s:12:"externalLink";s:0:"";s:15:"internalLinkCID";s:1:"0";s:27:"forceImageToMatchDimensions";N;s:7:"altText";s:0:"";}'),
(56, 'Blog Content', '2013-10-13 15:34:12', '2013-10-13 15:34:12', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=56";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"56";i:1;s:34:"<p>This is my first blog post.</p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"56";s:7:"content";s:34:"<p>This is my first blog post.</p>";}'),
(57, '', '2013-10-13 15:44:11', '2013-10-13 15:44:49', NULL, '1', 9, 1, 'O:11:"BlockRecord":11:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"57";i:1;s:764:"<p><span style="font-size: small;">Selamat datang di web  PT. Angin Ribut !</span></p>\r\n<p><span style="font-size: small;">PT. Angin Ribut ada sebuah perusahaan lokal Penyedia space Hosting dan Domain internet terjangkau untuk Anda. Kami.</span></p>\r\n<p><span style="font-size: small;">Kami menggunakan banyak enggine CMS website, dia antaranya Concrete5 untuk desain website, Wordpress untuk desain Personal Blog, dan masih banyak lagi.</span></p>\r\n<p><span style="font-size: small;">Hanya dengan 200 Ribu pertahunnya kami akan memberikan domain gratis, dengan Space dan Bandwith yang tak terbatas, jangan kawatir akan kehabisan kuota*.</span></p>\r\n<p><span style="font-size: small;">Jika tertarik silahkan menghubungi kami di ikhyar.com@gmail.com </span></p>";}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"57";s:7:"content";s:764:"<p><span style="font-size: small;">Selamat datang di web  PT. Angin Ribut !</span></p>\r\n<p><span style="font-size: small;">PT. Angin Ribut ada sebuah perusahaan lokal Penyedia space Hosting dan Domain internet terjangkau untuk Anda. Kami.</span></p>\r\n<p><span style="font-size: small;">Kami menggunakan banyak enggine CMS website, dia antaranya Concrete5 untuk desain website, Wordpress untuk desain Personal Blog, dan masih banyak lagi.</span></p>\r\n<p><span style="font-size: small;">Hanya dengan 200 Ribu pertahunnya kami akan memberikan domain gratis, dengan Space dan Bandwith yang tak terbatas, jangan kawatir akan kehabisan kuota*.</span></p>\r\n<p><span style="font-size: small;">Jika tertarik silahkan menghubungi kami di ikhyar.com@gmail.com </span></p>";}'),
(58, NULL, '2013-10-13 15:45:49', '2013-10-13 15:45:49', NULL, '1', 8, 1, 'O:11:"BlockRecord":18:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"58";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:4:"none";i:6;s:6:"enough";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"58";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:4:"none";s:20:"displaySubPageLevels";s:6:"enough";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(59, NULL, '2013-10-13 15:48:13', '2013-10-13 15:48:13', NULL, '1', 21, 1, 'O:11:"BlockRecord":16:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btRssDisplay";s:8:"_tableat";s:12:"btRssDisplay";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:7:{i:0;s:2:"59";i:1;s:14:"ikhyarCOM Feed";i:2;s:23:"http://ikhyar.com/feed/";i:3;s:4:"F jS";i:4;i:5;i:5;i:1;i:6;i:1;}s:11:"foreignName";s:11:"blockrecord";s:8:"lockMode";s:12:" for update ";s:3:"bID";s:2:"59";s:5:"title";s:14:"ikhyarCOM Feed";s:3:"url";s:23:"http://ikhyar.com/feed/";s:10:"dateFormat";s:4:"F jS";s:14:"itemsToDisplay";i:5;s:11:"showSummary";i:1;s:17:"launchInNewWindow";i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `blocktypepermissionblocktypeaccesslist`
--

CREATE TABLE IF NOT EXISTS `blocktypepermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blocktypepermissionblocktypeaccesslist`
--


-- --------------------------------------------------------

--
-- Table structure for table `blocktypepermissionblocktypeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `blocktypepermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blocktypepermissionblocktypeaccesslistcustom`
--


-- --------------------------------------------------------

--
-- Table structure for table `blocktypes`
--

CREATE TABLE IF NOT EXISTS `blocktypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `blocktypes`
--

INSERT INTO `blocktypes` (`btID`, `btHandle`, `btName`, `btDescription`, `btActiveWhenAdded`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btDisplayOrder`, `btInterfaceWidth`, `btInterfaceHeight`, `pkgID`) VALUES
(1, 'core_scrapbook_display', 'Scrapbook Display (Core)', 'Proxy block for blocks pasted through the scrapbook.', 1, 0, 0, 1, 0, 400, 400, 0),
(2, 'core_stack_display', 'Stack Display (Core)', 'Proxy block for stacks added through the UI.', 1, 0, 0, 1, 0, 400, 400, 0),
(3, 'dashboard_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 1, 0, 0, 1, 0, 300, 100, 0),
(4, 'dashboard_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 1, 0, 0, 1, 0, 300, 100, 0),
(5, 'dashboard_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', 1, 0, 0, 1, 0, 400, 400, 0),
(6, 'dashboard_app_status', 'Dashboard App Status', 'Displays update and welcome back information on your dashboard.', 1, 0, 0, 1, 0, 400, 400, 0),
(7, 'dashboard_site_activity', 'Dashboard Site Activity', 'Displays a summary of website activity.', 1, 0, 0, 1, 0, 400, 400, 0),
(8, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 1, 0, 0, 0, 1, 500, 350, 0),
(9, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 1, 0, 0, 0, 2, 580, 380, 0),
(10, 'date_nav', 'Date Navigation', 'A collapsible date based navigation tree', 1, 0, 0, 0, 3, 500, 350, 0),
(11, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 1, 0, 0, 0, 4, 370, 100, 0),
(12, 'file', 'File', 'Link to files stored in the asset library.', 1, 0, 0, 0, 5, 300, 250, 0),
(13, 'flash_content', 'Flash Content', 'Embeds SWF files, including flash detection.', 1, 0, 0, 0, 6, 380, 200, 0),
(14, 'form', 'Form', 'Build simple forms and surveys.', 1, 0, 0, 0, 7, 420, 430, 0),
(15, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 1, 0, 0, 0, 8, 400, 200, 0),
(16, 'guestbook', 'Guestbook / Comments', 'Adds blog-style comments (a guestbook) to your page.', 1, 0, 1, 0, 9, 370, 480, 0),
(17, 'html', 'HTML', 'For adding HTML by hand.', 1, 0, 0, 0, 10, 600, 465, 0),
(18, 'image', 'Image', 'Adds images and onstates from the library to pages.', 1, 0, 0, 0, 11, 400, 550, 0),
(19, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 1, 0, 0, 0, 12, 430, 400, 0),
(20, 'page_list', 'Page List', 'List pages based on type, area.', 1, 0, 0, 0, 13, 500, 350, 0),
(21, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 1, 0, 0, 0, 14, 400, 330, 0),
(22, 'search', 'Search', 'Add a search box to your site.', 1, 0, 0, 0, 15, 400, 240, 0),
(23, 'slideshow', 'Slideshow', 'Display a running loop of images.', 1, 0, 0, 0, 16, 550, 400, 0),
(24, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 1, 0, 0, 0, 17, 420, 300, 0),
(25, 'tags', 'Tags', 'List pages based on type, area.', 1, 0, 0, 0, 18, 450, 260, 0),
(26, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.', 1, 0, 0, 0, 19, 320, 220, 0),
(27, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 1, 0, 0, 0, 20, 400, 210, 0),
(28, 'date_archive', 'Blog Date Archive', 'Displays month archive for pages', 1, 0, 0, 0, 21, 500, 350, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btcontentfile`
--

CREATE TABLE IF NOT EXISTS `btcontentfile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btcontentfile`
--


-- --------------------------------------------------------

--
-- Table structure for table `btcontentimage`
--

CREATE TABLE IF NOT EXISTS `btcontentimage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btcontentimage`
--

INSERT INTO `btcontentimage` (`bID`, `fID`, `fOnstateID`, `maxWidth`, `maxHeight`, `externalLink`, `internalLinkCID`, `forceImageToMatchDimensions`, `altText`) VALUES
(15, 8, 0, 0, 0, '', 0, NULL, ''),
(16, 2, 0, 960, 212, '', 0, 1, 'My concrete5 Blog'),
(17, 7, 0, 960, 212, '', 0, 1, ''),
(18, 6, 0, 960, 212, '', 0, 1, ''),
(19, 4, 0, 960, 212, '', 0, 1, ''),
(27, 1, 0, 960, 212, '', 0, 1, ''),
(42, 2, 0, 960, 212, '', 0, 1, 'My concrete5 Blog'),
(44, 8, 0, 0, 0, '', 0, NULL, ''),
(48, 2, 0, 0, 0, '', 0, NULL, NULL),
(49, 8, 0, 0, 0, '', 0, NULL, NULL),
(51, 2, 0, 0, 0, '', 0, NULL, NULL),
(52, 8, 0, 0, 0, '', 0, NULL, NULL),
(54, 2, 0, 960, 212, '', 0, 1, 'My concrete5 Blog'),
(55, 8, 0, 0, 0, '', 0, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `btcontentlocal`
--

CREATE TABLE IF NOT EXISTS `btcontentlocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btcontentlocal`
--

INSERT INTO `btcontentlocal` (`bID`, `content`) VALUES
(1, '	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						'),
(2, '<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>'),
(3, '<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>'),
(4, '<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>'),
(5, '\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>'),
(13, '<p>This is my first blog post.</p>'),
(21, '<h3>Links:</h3>'),
(23, '<h1><a title="Home" \n                                	href="{CCM:CID_1}"\n                                >Angin Ribut. PT</a></h1>'),
(24, '<h3>Sidebar</h3>'),
(25, '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>'),
(26, '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="{CCM:CID_110}">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="{CCM:CID_6}">Sitemap</a> and quickly delete the parts you don''t want.</p>'),
(29, '<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>'),
(33, '<h2>Contact Us</h2>\n									<p>Building a form is easy to do. Learn how to <a href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">add a form block</a>.</p>'),
(35, '<h3>Site Map</h3>'),
(39, '<h3>Tags</h3>'),
(43, '<p>Here is some sample content! I''m writing it using composer!</p>'),
(50, '<p>This is my first blog post.</p>'),
(53, '<p>This is my first blog post.</p>'),
(56, '<p>This is my first blog post.</p>'),
(57, '<p><span style="font-size: small;">Selamat datang di web  PT. Angin Ribut !</span></p>\r\n<p><span style="font-size: small;">PT. Angin Ribut ada sebuah perusahaan lokal Penyedia space Hosting dan Domain internet terjangkau untuk Anda. Kami.</span></p>\r\n<p><span style="font-size: small;">Kami menggunakan banyak enggine CMS website, dia antaranya Concrete5 untuk desain website, Wordpress untuk desain Personal Blog, dan masih banyak lagi.</span></p>\r\n<p><span style="font-size: small;">Hanya dengan 200 Ribu pertahunnya kami akan memberikan domain gratis, dengan Space dan Bandwith yang tak terbatas, jangan kawatir akan kehabisan kuota*.</span></p>\r\n<p><span style="font-size: small;">Jika tertarik silahkan menghubungi kami di ikhyar.com@gmail.com </span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `btcorescrapbookdisplay`
--

CREATE TABLE IF NOT EXISTS `btcorescrapbookdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btcorescrapbookdisplay`
--


-- --------------------------------------------------------

--
-- Table structure for table `btcorestackdisplay`
--

CREATE TABLE IF NOT EXISTS `btcorestackdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btcorestackdisplay`
--

INSERT INTO `btcorestackdisplay` (`bID`, `stID`) VALUES
(28, 122),
(30, 122),
(32, 122);

-- --------------------------------------------------------

--
-- Table structure for table `btdashboardnewsflowlatest`
--

CREATE TABLE IF NOT EXISTS `btdashboardnewsflowlatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btdashboardnewsflowlatest`
--

INSERT INTO `btdashboardnewsflowlatest` (`bID`, `slot`) VALUES
(8, 'A'),
(9, 'B'),
(12, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `btdatearchive`
--

CREATE TABLE IF NOT EXISTS `btdatearchive` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `numMonths` int(11) DEFAULT '12',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btdatearchive`
--

INSERT INTO `btdatearchive` (`bID`, `title`, `targetCID`, `numMonths`) VALUES
(41, 'Archives', 134, 12),
(47, 'Archives', 134, 12);

-- --------------------------------------------------------

--
-- Table structure for table `btdatenav`
--

CREATE TABLE IF NOT EXISTS `btdatenav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btdatenav`
--


-- --------------------------------------------------------

--
-- Table structure for table `btexternalform`
--

CREATE TABLE IF NOT EXISTS `btexternalform` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btexternalform`
--


-- --------------------------------------------------------

--
-- Table structure for table `btflashcontent`
--

CREATE TABLE IF NOT EXISTS `btflashcontent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btflashcontent`
--


-- --------------------------------------------------------

--
-- Table structure for table `btform`
--

CREATE TABLE IF NOT EXISTS `btform` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btform`
--

INSERT INTO `btform` (`bID`, `questionSetId`, `surveyName`, `thankyouMsg`, `notifyMeOnSubmission`, `recipientEmail`, `displayCaptcha`, `redirectCID`, `addFilesToSet`) VALUES
(34, 1381649075, 'Contact Us', 'Thanks!', 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btformanswers`
--

CREATE TABLE IF NOT EXISTS `btformanswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `btformanswers`
--


-- --------------------------------------------------------

--
-- Table structure for table `btformanswerset`
--

CREATE TABLE IF NOT EXISTS `btformanswerset` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `btformanswerset`
--


-- --------------------------------------------------------

--
-- Table structure for table `btformquestions`
--

CREATE TABLE IF NOT EXISTS `btformquestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `btformquestions`
--

INSERT INTO `btformquestions` (`qID`, `msqID`, `bID`, `questionSetId`, `question`, `inputType`, `options`, `position`, `width`, `height`, `required`) VALUES
(5, 4, 34, 1381649075, 'Name', 'field', '', 0, 50, 3, 1),
(6, 5, 34, 1381649075, 'Email:', 'email', '', 0, 50, 3, 1),
(7, 6, 34, 1381649075, 'What are you contacting us about?', 'radios', 'Question%%Comment%%Urgent Issue%%To Say Hello%%Other', 0, 50, 3, 1),
(8, 7, 34, 1381649075, 'Message', 'text', '', 0, 50, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `btgooglemap`
--

CREATE TABLE IF NOT EXISTS `btgooglemap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btgooglemap`
--


-- --------------------------------------------------------

--
-- Table structure for table `btguestbook`
--

CREATE TABLE IF NOT EXISTS `btguestbook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btguestbook`
--

INSERT INTO `btguestbook` (`bID`, `requireApproval`, `title`, `dateFormat`, `displayGuestBookForm`, `displayCaptcha`, `authenticationRequired`, `notifyEmail`) VALUES
(31, 0, 'Tell us what you think', 'M jS, Y', 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `btguestbookentries`
--

CREATE TABLE IF NOT EXISTS `btguestbookentries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `btguestbookentries`
--


-- --------------------------------------------------------

--
-- Table structure for table `btnavigation`
--

CREATE TABLE IF NOT EXISTS `btnavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btnavigation`
--

INSERT INTO `btnavigation` (`bID`, `orderBy`, `displayPages`, `displayPagesCID`, `displayPagesIncludeSelf`, `displaySubPages`, `displaySubPageLevels`, `displaySubPageLevelsNum`, `displayUnavailablePages`) VALUES
(20, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(22, 'display_asc', 'second_level', 0, 0, 'all', 'all', 0, 0),
(36, 'display_asc', 'top', 0, 0, 'all', 'all', 0, 0),
(58, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btnextprevious`
--

CREATE TABLE IF NOT EXISTS `btnextprevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btnextprevious`
--


-- --------------------------------------------------------

--
-- Table structure for table `btpagelist`
--

CREATE TABLE IF NOT EXISTS `btpagelist` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btpagelist`
--

INSERT INTO `btpagelist` (`bID`, `num`, `orderBy`, `cParentID`, `cThis`, `includeAllDescendents`, `paginate`, `displayAliases`, `ctID`, `rss`, `rssTitle`, `rssDescription`, `truncateSummaries`, `displayFeaturedOnly`, `truncateChars`) VALUES
(38, 12, 'chrono_desc', 130, 0, 0, 1, 0, 4, 0, '', '', 1, 0, 128);

-- --------------------------------------------------------

--
-- Table structure for table `btrssdisplay`
--

CREATE TABLE IF NOT EXISTS `btrssdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btrssdisplay`
--

INSERT INTO `btrssdisplay` (`bID`, `title`, `url`, `dateFormat`, `itemsToDisplay`, `showSummary`, `launchInNewWindow`) VALUES
(59, 'ikhyarCOM Feed', 'http://ikhyar.com/feed/', 'F jS', 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `btsearch`
--

CREATE TABLE IF NOT EXISTS `btsearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btsearch`
--

INSERT INTO `btsearch` (`bID`, `title`, `buttonText`, `baseSearchPath`, `postTo_cID`, `resultsURL`) VALUES
(37, 'Search This Site', 'Search', '', '', ''),
(45, 'Search Blog', 'Search', '/blog', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `btslideshow`
--

CREATE TABLE IF NOT EXISTS `btslideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btslideshow`
--


-- --------------------------------------------------------

--
-- Table structure for table `btslideshowimg`
--

CREATE TABLE IF NOT EXISTS `btslideshowimg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `btslideshowimg`
--


-- --------------------------------------------------------

--
-- Table structure for table `btsurvey`
--

CREATE TABLE IF NOT EXISTS `btsurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btsurvey`
--


-- --------------------------------------------------------

--
-- Table structure for table `btsurveyoptions`
--

CREATE TABLE IF NOT EXISTS `btsurveyoptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `btsurveyoptions`
--


-- --------------------------------------------------------

--
-- Table structure for table `btsurveyresults`
--

CREATE TABLE IF NOT EXISTS `btsurveyresults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `btsurveyresults`
--


-- --------------------------------------------------------

--
-- Table structure for table `bttags`
--

CREATE TABLE IF NOT EXISTS `bttags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bttags`
--

INSERT INTO `bttags` (`bID`, `title`, `targetCID`, `displayMode`, `cloudCount`) VALUES
(14, 'Tags', 134, 'page', 0),
(40, '', 134, 'cloud', 0),
(46, 'Tags', 134, 'cloud', 0);

-- --------------------------------------------------------

--
-- Table structure for table `btvideo`
--

CREATE TABLE IF NOT EXISTS `btvideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btvideo`
--


-- --------------------------------------------------------

--
-- Table structure for table `btyoutube`
--

CREATE TABLE IF NOT EXISTS `btyoutube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btyoutube`
--


-- --------------------------------------------------------

--
-- Table structure for table `collectionattributevalues`
--

CREATE TABLE IF NOT EXISTS `collectionattributevalues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionattributevalues`
--

INSERT INTO `collectionattributevalues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(3, 1, 3, 1),
(3, 1, 4, 2),
(4, 1, 3, 3),
(4, 1, 4, 4),
(5, 1, 3, 5),
(5, 1, 4, 6),
(6, 1, 3, 7),
(7, 1, 3, 8),
(7, 1, 4, 9),
(8, 1, 3, 10),
(8, 1, 4, 11),
(9, 1, 3, 12),
(9, 1, 4, 13),
(11, 1, 3, 14),
(11, 1, 4, 15),
(12, 1, 3, 16),
(12, 1, 4, 17),
(13, 1, 3, 18),
(13, 1, 4, 19),
(14, 1, 3, 21),
(14, 1, 4, 22),
(14, 1, 5, 20),
(15, 1, 3, 23),
(16, 1, 3, 24),
(16, 1, 4, 25),
(17, 1, 3, 26),
(17, 1, 4, 27),
(18, 1, 3, 28),
(18, 1, 4, 29),
(19, 1, 3, 30),
(19, 1, 4, 32),
(19, 1, 5, 31),
(20, 1, 3, 33),
(20, 1, 4, 35),
(20, 1, 5, 34),
(21, 1, 3, 36),
(21, 1, 4, 37),
(22, 1, 3, 38),
(23, 1, 3, 39),
(23, 1, 4, 40),
(24, 1, 3, 41),
(24, 1, 4, 42),
(25, 1, 3, 43),
(25, 1, 4, 44),
(26, 1, 3, 45),
(26, 1, 4, 46),
(28, 1, 3, 47),
(28, 1, 4, 48),
(29, 1, 3, 49),
(30, 1, 3, 50),
(31, 1, 3, 51),
(32, 1, 3, 52),
(32, 1, 4, 53),
(34, 1, 3, 54),
(34, 1, 4, 55),
(35, 1, 3, 56),
(35, 1, 4, 57),
(36, 1, 3, 58),
(37, 1, 4, 59),
(38, 1, 4, 60),
(40, 1, 3, 61),
(40, 1, 4, 62),
(41, 1, 4, 63),
(42, 1, 5, 64),
(42, 1, 8, 65),
(43, 1, 3, 66),
(43, 1, 4, 67),
(44, 1, 5, 68),
(45, 1, 5, 69),
(46, 1, 3, 70),
(47, 1, 3, 71),
(48, 1, 3, 72),
(49, 1, 3, 73),
(50, 1, 3, 74),
(51, 1, 5, 75),
(53, 1, 3, 76),
(54, 1, 3, 77),
(55, 1, 3, 78),
(56, 1, 3, 79),
(57, 1, 3, 80),
(58, 1, 3, 81),
(60, 1, 3, 82),
(61, 1, 3, 83),
(62, 1, 3, 84),
(63, 1, 3, 85),
(64, 1, 3, 86),
(65, 1, 3, 87),
(67, 1, 3, 88),
(68, 1, 3, 89),
(69, 1, 3, 90),
(71, 1, 3, 91),
(72, 1, 3, 92),
(73, 1, 3, 93),
(74, 1, 3, 94),
(77, 1, 3, 95),
(78, 1, 3, 96),
(79, 1, 3, 97),
(80, 1, 3, 98),
(82, 1, 3, 99),
(83, 1, 3, 100),
(84, 1, 3, 101),
(85, 1, 3, 102),
(86, 1, 3, 103),
(87, 1, 3, 104),
(88, 1, 3, 105),
(89, 1, 3, 106),
(90, 1, 3, 107),
(91, 1, 8, 108),
(92, 1, 3, 109),
(93, 1, 3, 110),
(94, 1, 3, 111),
(95, 1, 3, 112),
(96, 1, 3, 113),
(97, 1, 3, 114),
(99, 1, 3, 115),
(100, 1, 3, 116),
(105, 1, 5, 117),
(106, 1, 5, 118),
(106, 1, 8, 119),
(130, 1, 15, 136),
(133, 1, 15, 137),
(134, 1, 5, 138),
(134, 1, 6, 139),
(134, 1, 8, 140),
(134, 1, 15, 141),
(135, 1, 15, 142),
(136, 1, 15, 143);

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE IF NOT EXISTS `collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=138 ;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2013-10-13 15:24:20', '2013-10-13 15:56:51', 'home'),
(2, '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'dashboard'),
(3, '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'composer'),
(4, '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'write'),
(5, '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'drafts'),
(6, '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'sitemap'),
(7, '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'full'),
(8, '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'explore'),
(9, '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'search'),
(10, '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'files'),
(11, '2013-10-13 15:24:26', '2013-10-13 15:24:27', 'search'),
(12, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'attributes'),
(13, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'sets'),
(14, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'add_set'),
(15, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'users'),
(16, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'search'),
(17, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'groups'),
(18, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'attributes'),
(19, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'add'),
(20, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'add_group'),
(21, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'group_sets'),
(22, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'reports'),
(23, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'statistics'),
(24, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'forms'),
(25, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'surveys'),
(26, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'logs'),
(27, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'pages'),
(28, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'themes'),
(29, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'add'),
(30, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'inspect'),
(31, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'customize'),
(32, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'types'),
(33, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'add'),
(34, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'attributes'),
(35, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'single'),
(36, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'workflow'),
(37, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'list'),
(38, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'me'),
(39, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'blocks'),
(40, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'stacks'),
(41, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'permissions'),
(42, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'list'),
(43, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'types'),
(44, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'extend'),
(45, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'news'),
(46, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'install'),
(47, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'update'),
(48, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'connect'),
(49, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'themes'),
(50, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'add-ons'),
(51, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'system'),
(52, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'basics'),
(53, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'site_name'),
(54, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'icons'),
(55, '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'editor'),
(56, '2013-10-13 15:24:27', '2013-10-13 15:24:28', 'multilingual'),
(57, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'timezone'),
(58, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'interface'),
(59, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'seo'),
(60, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'urls'),
(61, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'bulk_seo_tool'),
(62, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'tracking_codes'),
(63, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'excluded'),
(64, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'statistics'),
(65, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'search_index'),
(66, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'optimization'),
(67, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'cache'),
(68, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'clear_cache'),
(69, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'jobs'),
(70, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'permissions'),
(71, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'site'),
(72, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'files'),
(73, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'file_types'),
(74, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'tasks'),
(75, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'users'),
(76, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'advanced'),
(77, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'ip_blacklist'),
(78, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'captcha'),
(79, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'antispam'),
(80, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'maintenance_mode'),
(81, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'registration'),
(82, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'postlogin'),
(83, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'profiles'),
(84, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'public_registration'),
(85, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'mail'),
(86, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'method'),
(87, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'importers'),
(88, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'attributes'),
(89, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'sets'),
(90, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'types'),
(91, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'environment'),
(92, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'info'),
(93, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'debug'),
(94, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'logging'),
(95, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'file_storage_locations'),
(96, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'proxy'),
(97, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'backup_restore'),
(98, '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'backup'),
(99, '2013-10-13 15:24:29', '2013-10-13 15:24:29', 'update'),
(100, '2013-10-13 15:24:29', '2013-10-13 15:24:29', 'database'),
(101, '2013-10-13 15:24:29', '2013-10-13 15:24:29', 'composer'),
(102, '2013-10-13 15:24:29', '2013-10-13 15:24:29', NULL),
(103, '2013-10-13 15:24:29', '2013-10-13 15:24:29', NULL),
(104, '2013-10-13 15:24:29', '2013-10-13 15:24:29', NULL),
(105, '2013-10-13 15:24:29', '2013-10-13 15:24:29', 'welcome'),
(106, '2013-10-13 15:24:29', '2013-10-13 15:24:29', 'home'),
(107, '2013-10-13 15:24:32', '2013-10-13 15:24:32', '!drafts'),
(108, '2013-10-13 15:24:32', '2013-10-13 15:24:32', '!trash'),
(109, '2013-10-13 15:24:32', '2013-10-13 15:24:32', '!stacks'),
(110, '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'login'),
(111, '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'register'),
(112, '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'profile'),
(113, '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'edit'),
(114, '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'avatar'),
(115, '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'messages'),
(116, '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'friends'),
(117, '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'page_not_found'),
(118, '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'page_forbidden'),
(119, '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'download_file'),
(120, '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'members'),
(121, '2013-10-13 15:24:34', '2013-10-13 15:24:34', 'header-nav'),
(122, '2013-10-13 15:24:34', '2013-10-13 15:24:34', 'side-nav'),
(123, '2013-10-13 15:24:34', '2013-10-13 15:24:34', 'site-name'),
(124, '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL),
(125, '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL),
(126, '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL),
(127, '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL),
(128, '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'about'),
(129, '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'search'),
(130, '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'blog'),
(131, '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'guestbook'),
(132, '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'contact-us'),
(133, '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'hello-world'),
(134, '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'blog-archives'),
(135, '2013-10-13 15:30:23', '2013-10-13 15:30:59', ''),
(136, '2013-10-13 15:32:57', '2013-10-13 15:33:14', ''),
(137, '2013-10-13 15:34:12', '2013-10-13 15:34:12', '');

-- --------------------------------------------------------

--
-- Table structure for table `collectionsearchindexattributes`
--

CREATE TABLE IF NOT EXISTS `collectionsearchindexattributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  `ak_tags` text,
  PRIMARY KEY (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionsearchindexattributes`
--

INSERT INTO `collectionsearchindexattributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`, `ak_tags`) VALUES
(3, NULL, NULL, 'blog, blogging', 'icon-book', 0, 0, NULL, 0, 0, NULL),
(4, NULL, NULL, 'new blog, write blog, blogging', 'icon-pencil', 0, 0, NULL, 0, 0, NULL),
(5, NULL, NULL, 'blog drafts, composer', 'icon-book', 0, 0, NULL, 0, 0, NULL),
(6, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, 0, 0, NULL),
(7, NULL, NULL, 'pages, add page, delete page, copy, move, alias', 'icon-home', 0, 0, NULL, 0, 0, NULL),
(8, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', 'icon-road', 0, 0, NULL, 0, 0, NULL),
(9, NULL, NULL, 'find page, search page, search, find, pages, sitemap', 'icon-search', 0, 0, NULL, 0, 0, NULL),
(11, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', 'icon-picture', 0, 0, NULL, 0, 0, NULL),
(12, NULL, NULL, 'file, file attributes, title, attribute, description, rename', 'icon-cog', 0, 0, NULL, 0, 0, NULL),
(13, NULL, NULL, 'files, category, categories', 'icon-list-alt', 0, 0, NULL, 0, 0, NULL),
(14, NULL, NULL, 'new file set', 'icon-plus-sign', 1, 0, NULL, 0, 0, NULL),
(15, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', NULL, 0, 0, NULL, 0, 0, NULL),
(16, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', 'icon-user', 0, 0, NULL, 0, 0, NULL),
(17, NULL, NULL, 'user, group, people, permissions, access, expire', 'icon-globe', 0, 0, NULL, 0, 0, NULL),
(18, NULL, NULL, 'user attributes, user data, gather data, registration data', 'icon-cog', 0, 0, NULL, 0, 0, NULL),
(19, NULL, NULL, 'new user, create', 'icon-plus-sign', 1, 0, NULL, 0, 0, NULL),
(20, NULL, NULL, 'new user group, new group, group, create', 'icon-plus', 1, 0, NULL, 0, 0, NULL),
(21, NULL, NULL, 'group set', 'icon-list', 0, 0, NULL, 0, 0, NULL),
(22, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', NULL, 0, 0, NULL, 0, 0, NULL),
(23, NULL, NULL, 'hits, pageviews, visitors, activity', 'icon-signal', 0, 0, NULL, 0, 0, NULL),
(24, NULL, NULL, 'forms, questions, response, data', 'icon-briefcase', 0, 0, NULL, 0, 0, NULL),
(25, NULL, NULL, 'questions, quiz, response', 'icon-tasks', 0, 0, NULL, 0, 0, NULL),
(26, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', 'icon-time', 0, 0, NULL, 0, 0, NULL),
(28, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', 'icon-font', 0, 0, NULL, 0, 0, NULL),
(29, NULL, NULL, 'theme', NULL, 0, 0, NULL, 0, 0, NULL),
(30, NULL, NULL, 'page types', NULL, 0, 0, NULL, 0, 0, NULL),
(31, NULL, NULL, 'custom theme, change theme, custom css, css', NULL, 0, 0, NULL, 0, 0, NULL),
(32, NULL, NULL, 'page type defaults, global block, global area, starter, template', 'icon-file', 0, 0, NULL, 0, 0, NULL),
(34, NULL, NULL, 'page attributes, custom', 'icon-cog', 0, 0, NULL, 0, 0, NULL),
(35, NULL, NULL, 'single, page, custom, application', 'icon-wrench', 0, 0, NULL, 0, 0, NULL),
(36, NULL, NULL, 'add workflow, remove workflow', NULL, 0, 0, NULL, 0, 0, NULL),
(37, NULL, NULL, NULL, 'icon-list', 0, 0, NULL, 0, 0, NULL),
(38, NULL, NULL, NULL, 'icon-user', 0, 0, NULL, 0, 0, NULL),
(40, NULL, NULL, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', 'icon-th', 0, 0, NULL, 0, 0, NULL),
(41, NULL, NULL, NULL, 'icon-lock', 0, 0, NULL, 0, 0, NULL),
(42, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, NULL),
(43, NULL, NULL, 'block, refresh, custom', 'icon-wrench', 0, 0, NULL, 0, 0, NULL),
(44, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, NULL),
(45, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, NULL),
(46, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, 0, 0, NULL),
(47, NULL, NULL, 'update, upgrade', NULL, 0, 0, NULL, 0, 0, NULL),
(48, NULL, NULL, 'concrete5.org, my account, marketplace', NULL, 0, 0, NULL, 0, 0, NULL),
(49, NULL, NULL, 'buy theme, new theme, marketplace, template', NULL, 0, 0, NULL, 0, 0, NULL),
(50, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', NULL, 0, 0, NULL, 0, 0, NULL),
(51, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, NULL),
(53, NULL, NULL, 'website name, title', NULL, 0, 0, NULL, 0, 0, NULL),
(54, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', NULL, 0, 0, NULL, 0, 0, NULL),
(55, NULL, NULL, 'tinymce, content block, fonts, editor, content, overlay', NULL, 0, 0, NULL, 0, 0, NULL),
(56, NULL, NULL, 'translate, translation, internationalization, multilingual', NULL, 0, 0, NULL, 0, 0, NULL),
(57, NULL, NULL, 'timezone, profile, locale', NULL, 0, 0, NULL, 0, 0, NULL),
(58, NULL, NULL, 'interface, quick nav, dashboard background, background image', NULL, 0, 0, NULL, 0, 0, NULL),
(60, NULL, NULL, 'vanity, pretty url, seo, pageview, view', NULL, 0, 0, NULL, 0, 0, NULL),
(61, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', NULL, 0, 0, NULL, 0, 0, NULL),
(62, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', NULL, 0, 0, NULL, 0, 0, NULL),
(63, NULL, NULL, 'pretty, slug', NULL, 0, 0, NULL, 0, 0, NULL),
(64, NULL, NULL, 'turn off statistics, tracking, statistics, pageviews, hits', NULL, 0, 0, NULL, 0, 0, NULL),
(65, NULL, NULL, 'configure search, site search, search option', NULL, 0, 0, NULL, 0, 0, NULL),
(67, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, 0, 0, NULL),
(68, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, 0, 0, NULL),
(69, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', NULL, 0, 0, NULL, 0, 0, NULL),
(71, NULL, NULL, 'editors, hide site, offline, private, public, access', NULL, 0, 0, NULL, 0, 0, NULL),
(72, NULL, NULL, 'file options, file manager, upload, modify', NULL, 0, 0, NULL, 0, 0, NULL),
(73, NULL, NULL, 'security, files, media, extension, manager, upload', NULL, 0, 0, NULL, 0, 0, NULL),
(74, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', NULL, 0, 0, NULL, 0, 0, NULL),
(77, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', NULL, 0, 0, NULL, 0, 0, NULL),
(78, NULL, NULL, 'security, registration', NULL, 0, 0, NULL, 0, 0, NULL),
(79, NULL, NULL, 'antispam, block spam, security', NULL, 0, 0, NULL, 0, 0, NULL),
(80, NULL, NULL, 'lock site, under construction, hide, hidden', NULL, 0, 0, NULL, 0, 0, NULL),
(82, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', NULL, 0, 0, NULL, 0, 0, NULL),
(83, NULL, NULL, 'member profile, member page, community, forums, social, avatar', NULL, 0, 0, NULL, 0, 0, NULL),
(84, NULL, NULL, 'signup, new user, community', NULL, 0, 0, NULL, 0, 0, NULL),
(85, NULL, NULL, 'smtp, mail settings', NULL, 0, 0, NULL, 0, 0, NULL),
(86, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', NULL, 0, 0, NULL, 0, 0, NULL),
(87, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', NULL, 0, 0, NULL, 0, 0, NULL),
(88, NULL, NULL, 'attribute configuration', NULL, 0, 0, NULL, 0, 0, NULL),
(89, NULL, NULL, 'attributes, sets', NULL, 0, 0, NULL, 0, 0, NULL),
(90, NULL, NULL, 'attributes, types', NULL, 0, 0, NULL, 0, 0, NULL),
(91, NULL, NULL, NULL, NULL, 0, 0, NULL, 1, 0, NULL),
(92, NULL, NULL, 'overrides, system info, debug, support, help', NULL, 0, 0, NULL, 0, 0, NULL),
(93, NULL, NULL, 'errors, exceptions, develop, support, help', NULL, 0, 0, NULL, 0, 0, NULL),
(94, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, log', NULL, 0, 0, NULL, 0, 0, NULL),
(95, NULL, NULL, 'security, alternate storage, hide files', NULL, 0, 0, NULL, 0, 0, NULL),
(96, NULL, NULL, 'network, proxy server', NULL, 0, 0, NULL, 0, 0, NULL),
(97, NULL, NULL, 'export, backup, database, sql, mysql, encryption, restore', NULL, 0, 0, NULL, 0, 0, NULL),
(99, NULL, NULL, 'upgrade, new version, update', NULL, 0, 0, NULL, 0, 0, NULL),
(100, NULL, NULL, 'export, database, xml, starting, points, schema, refresh, custom, tables', NULL, 0, 0, NULL, 0, 0, NULL),
(105, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, NULL),
(106, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, NULL),
(1, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(128, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(131, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(132, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(129, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL),
(130, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, ''),
(133, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, '\ncomposer\nhello\nworld\nfirst post\n'),
(134, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, ''),
(136, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionarealayouts`
--

CREATE TABLE IF NOT EXISTS `collectionversionarealayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`),
  KEY `cID` (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `collectionversionarealayouts`
--


-- --------------------------------------------------------

--
-- Table structure for table `collectionversionareastyles`
--

CREATE TABLE IF NOT EXISTS `collectionversionareastyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionversionareastyles`
--


-- --------------------------------------------------------

--
-- Table structure for table `collectionversionblocks`
--

CREATE TABLE IF NOT EXISTS `collectionversionblocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionversionblocks`
--

INSERT INTO `collectionversionblocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`) VALUES
(105, 1, 1, 'Header', 0, 1, 0, 0),
(105, 1, 2, 'Column 1', 0, 1, 0, 0),
(105, 1, 3, 'Column 2', 0, 1, 0, 0),
(105, 1, 4, 'Column 3', 0, 1, 0, 0),
(105, 1, 5, 'Column 4', 0, 1, 0, 0),
(106, 1, 6, 'Primary', 0, 1, 0, 0),
(106, 1, 7, 'Primary', 1, 1, 0, 0),
(106, 1, 8, 'Secondary 1', 0, 1, 0, 0),
(106, 1, 9, 'Secondary 2', 0, 1, 0, 0),
(106, 1, 10, 'Secondary 3', 0, 1, 0, 0),
(106, 1, 11, 'Secondary 4', 0, 1, 0, 0),
(106, 1, 12, 'Secondary 5', 0, 1, 0, 0),
(124, 1, 13, 'Main', 0, 1, 0, 0),
(124, 1, 14, 'Sidebar', 0, 1, 0, 0),
(124, 1, 15, 'Thumbnail Image', 0, 1, 0, 0),
(124, 1, 16, 'Header Image', 0, 1, 0, 0),
(125, 1, 17, 'Header Image', 0, 1, 0, 0),
(126, 1, 18, 'Header Image', 0, 1, 0, 0),
(127, 1, 19, 'Header Image', 0, 1, 0, 0),
(121, 1, 20, 'Main', 0, 1, 0, 0),
(122, 1, 21, 'Main', 0, 1, 0, 0),
(122, 1, 22, 'Main', 1, 1, 0, 0),
(123, 1, 23, 'Main', 0, 1, 0, 0),
(1, 1, 24, 'Sidebar', 0, 1, 0, 0),
(1, 1, 25, 'Sidebar', 1, 1, 0, 0),
(1, 1, 26, 'Main', 0, 1, 0, 0),
(1, 1, 27, 'Header Image', 0, 1, 0, 0),
(128, 1, 28, 'Sidebar', 0, 1, 0, 0),
(128, 1, 29, 'Main', 0, 1, 0, 0),
(128, 1, 18, 'Header Image', 0, 0, 0, 0),
(131, 1, 30, 'Sidebar', 0, 1, 0, 0),
(131, 1, 31, 'Main', 0, 1, 0, 1),
(131, 1, 19, 'Header Image', 0, 0, 0, 0),
(132, 1, 32, 'Sidebar', 0, 1, 0, 0),
(132, 1, 33, 'Main', 0, 1, 0, 0),
(132, 1, 34, 'Main', 1, 1, 0, 0),
(132, 1, 18, 'Header Image', 0, 0, 0, 0),
(129, 1, 35, 'Sidebar', 0, 1, 0, 0),
(129, 1, 36, 'Sidebar', 1, 1, 0, 0),
(129, 1, 37, 'Main', 0, 1, 0, 0),
(129, 1, 19, 'Header Image', 0, 0, 0, 0),
(130, 1, 38, 'Main', 0, 1, 0, 0),
(130, 1, 39, 'Sidebar', 0, 1, 0, 0),
(130, 1, 40, 'Sidebar', 1, 1, 0, 0),
(130, 1, 41, 'Sidebar', 2, 1, 0, 0),
(130, 1, 19, 'Header Image', 0, 0, 0, 0),
(133, 1, 42, 'Header Image', 0, 1, 0, 0),
(133, 1, 14, 'Sidebar', 0, 0, 0, 0),
(133, 1, 43, 'Main', 0, 1, 0, 0),
(133, 1, 44, 'Thumbnail Image', 0, 1, 0, 0),
(134, 1, 19, 'Header Image', 0, 0, 0, 0),
(134, 1, 45, 'Main', 0, 1, 0, 0),
(134, 1, 46, 'Sidebar', 0, 1, 0, 0),
(134, 1, 47, 'Sidebar', 1, 1, 0, 0),
(1, 2, 24, 'Sidebar', 0, 0, 0, 0),
(135, 1, 14, 'Sidebar', 0, 0, 0, 0),
(135, 1, 50, 'Main', 0, 1, 0, 0),
(135, 1, 49, 'Thumbnail Image', 0, 1, 0, 0),
(135, 1, 48, 'Header Image', 0, 1, 0, 0),
(136, 1, 14, 'Sidebar', 0, 0, 0, 0),
(136, 1, 53, 'Main', 0, 1, 0, 0),
(136, 1, 52, 'Thumbnail Image', 0, 1, 0, 0),
(136, 1, 51, 'Header Image', 0, 1, 0, 0),
(137, 1, 14, 'Sidebar', 0, 0, 0, 0),
(137, 1, 56, 'Main', 0, 1, 0, 0),
(137, 1, 55, 'Thumbnail Image', 0, 1, 0, 0),
(137, 1, 54, 'Header Image', 0, 1, 0, 0),
(1, 2, 58, 'Sidebar', 2, 1, 0, 0),
(1, 2, 27, 'Header Image', 0, 0, 0, 0),
(1, 2, 59, 'Main', 1, 1, 0, 0),
(1, 2, 57, 'Main', 0, 1, 0, 0),
(1, 3, 24, 'Sidebar', 0, 0, 0, 0),
(1, 3, 27, 'Header Image', 0, 0, 0, 0),
(1, 3, 57, 'Main', 0, 0, 0, 0),
(1, 3, 59, 'Main', 1, 0, 0, 0),
(1, 3, 58, 'Sidebar', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionblocksoutputcache`
--

CREATE TABLE IF NOT EXISTS `collectionversionblocksoutputcache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `btCachedBlockOutput` longtext,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionversionblocksoutputcache`
--

INSERT INTO `collectionversionblocksoutputcache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(1, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/ekoikhyar/web/"\n                                >Angin Ribut. PT</a></h1>', 1539415495),
(1, 1, 27, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/ekoikhyar/web/files/5313/8164/9072/england_village.jpg" width="960" height="212" />', 1539415495),
(1, 1, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/ekoikhyar/web/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/ekoikhyar/web/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1539415495),
(1, 1, 24, 'Sidebar', '<h3>Sidebar</h3>', 1539415495),
(1, 1, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1539415495),
(105, 1, 1, 'Header', '	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						', 1539415496),
(105, 1, 2, 'Column 1', '<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>', 1539415496),
(105, 1, 3, 'Column 2', '<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>', 1539415496),
(105, 1, 4, 'Column 3', '<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>', 1539415496),
(105, 1, 5, 'Column 4', '\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>', 1539415496),
(136, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/ekoikhyar/web/"\n                                >Angin Ribut. PT</a></h1>', 1539415994),
(136, 1, 51, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/ekoikhyar/web/files/4013/8164/9073/europe_england_stonehenge.jpg" width="960" height="212" />', 1539415994),
(136, 1, 53, 'Main', '<p>This is my first blog post.</p>', 1539415994),
(106, 1, 6, 'Primary', '\n<h1>Welcome Back</h1>\n<br/>\n\n\n\n', 1381736037),
(106, 1, 8, 'Secondary 1', '<div>\n<p><img src="http://newsflow.concrete5.org/files/1013/2691/4819/TotallyRandom_Small1.png" alt="TotallyRandom_Small1.png" width="186" height="57" /></p>\r\n<h3>Oct. 11 Video Show</h3>\r\n<p><span id="docs-internal-guid-13deb1a4-a373-7f4d-5208-dc1e659354e7">Join the Core Team for an all new episode of Totally Random. This week we feature a cool record label site built with concrete5 and walk you through adding tracking codes to your site. </span></p>\n<div id="youtube4239" class="youtubeBlock" style="display: none">\n\n	<iframe class="youtube-player" type="text/html" width="425" height="344" src="http://www.youtube.com/embed//qXgBFKR3nUA" frameborder="0"></iframe>\n</div>\n\n<a href="javascript:void(0)" class="primary btn" onclick="$(''#youtube4239'').dialog({modal: true, width: ''453'', height: ''419'', title: ''Totally Random 10/11/2013''})">► Watch Video</a>\n</div>\n\n', 1381656837),
(106, 1, 9, 'Secondary 2', '<div>\n<h3>There''s more...</h3>\r\n<p>Haven''t gotten enough news, concrete5 info, and random stuff? Don''t worry, we''ve got more. <em>(Look for new editions once a week.)</em></p><a href="javascript:void(0)" onclick="ccm_showNewsflowOffsite(298);" class="btn">Read On</a>\n\n</div>\n\n', 1381656837),
(106, 1, 10, 'Secondary 3', '<h6>Featured Theme</h6>\n	<div class="clearfix">\n	<img src="http://www.concrete5.org/files/9113/6726/8573/jacket_theme_icon.png" width="97" height="97" style="float: left; margin-right: 10px; margin-bottom: 10px" />\n	<h3>Jacket</h3>\n	<p>A stylish, fully responsive theme optimized for companies, blogs, magazines and more.</p>\n	</div>\n	\n	<a href="javascript:void(0)" onclick="ccm_getMarketplaceItemDetails(1374)" href="http://www.concrete5.org/marketplace/themes/jacket" class="btn">Learn More</a>\n', 1381656838),
(106, 1, 11, 'Secondary 4', '<h6>Featured Add-On</h6>\n	<div class="clearfix">\n	<img src="http://www.concrete5.org/files/6113/8156/2310/c5dk_multilingual_content_block_icon.png" width="97" height="97" style="float: left; margin-right: 10px; margin-bottom: 10px" />\n	<h3>C5DK Multilingual Content Block</h3>\n	<p>Easy insert of multilingual content on a page</p>\n	</div>\n	\n	<a href="javascript:void(0)" onclick="ccm_getMarketplaceItemDetails(1511)" class="btn">Learn More</a>\n', 1381656839),
(106, 1, 12, 'Secondary 5', '<div>\n<p><img src="http://newsflow.concrete5.org/files/6613/2613/6071/QuickDiversion_Small.png" alt="QuickDiversion_Small.png" width="170" height="30" /></p>\r\n<h3>Color Changing Cars</h3>\r\n<p>A car shop in England uses thermochromic paint on cars so they change color when cooled. See what happens when the car is covered in cold water.</p><div><a href="http://jalopnik.com/you-can-change-the-color-of-this-car-with-a-bottle-of-c-1442872439?utm_source=newsflow&utm_medium=web&utm_content=0&utm_campaign=newsflow" class="btn " target="_blank">Check It Out</a></div>\n</div>\n\n	<div class="newsflow-paging-next"><a href="javascript:void(0)" onclick="ccm_showNewsflowOffsite(298)"><span></span></a></div>\n\n	<script type="text/javascript">\n	$(function() {\n		ccm_setNewsflowPagingArrowHeight();\n	});\n	</script>\n	\n', 1381656840),
(1, 2, 57, 'Main', '<p><span style="font-size: small;">Selamat datang di web  PT. Angin Ribut !</span></p>\r\n<p><span style="font-size: small;">PT. Angin Ribut ada sebuah perusahaan lokal Penyedia space Hosting dan Domain internet terjangkau untuk Anda. Kami.</span></p>\r\n<p><span style="font-size: small;">Kami menggunakan banyak enggine CMS website, dia antaranya Concrete5 untuk desain website, Wordpress untuk desain Personal Blog, dan masih banyak lagi.</span></p>\r\n<p><span style="font-size: small;">Hanya dengan 200 Ribu pertahunnya kami akan memberikan domain gratis, dengan Space dan Bandwith yang tak terbatas, jangan kawatir akan kehabisan kuota*.</span></p>\r\n<p><span style="font-size: small;">Jika tertarik silahkan menghubungi kami di ikhyar.com@gmail.com </span></p>', 1539416689),
(1, 2, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/ekoikhyar/web/"\n                                >Angin Ribut. PT</a></h1>', 1539416698),
(1, 2, 27, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/ekoikhyar/web/files/5313/8164/9072/england_village.jpg" width="960" height="212" />', 1539416698),
(1, 2, 24, 'Sidebar', '<h3>Sidebar</h3>', 1539416698),
(1, 2, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1539416698),
(1, 2, 59, 'Main', '\n<div id="rssSummaryList59" class="rssSummaryList">\n\n	<div class="rssSummaryListTitle" style="margin-bottom:8px">ikhyarCOM Feed</div>\n\n		\n		<div class="rssItem">\n			<div class="rssItemTitle"> \n				<a href="http://ikhyar.com/2013/08/18/merdeka-kah-kita/" target="_blank" >\n					Merdeka kah kita ?				</a>\n			</div>\n			<div class="rssItemDate">August 18th</div>\n			<div class="rssItemSummary">\n				Hari ini 18 agustus 2013 1 hari setelah hari kemerdekaan kita (indonesia) Hari itu adalah hari dimana rakyat bersuka cita, bersorak sorai memekikkan &ldquo;MERDEKA&rdquo; &ldquo;Kita sudah merdeka bung&rdquo; sampai hari ini pun saya tidak tahu, sudah ber…			</div>\n		</div>\n	\n		\n		<div class="rssItem">\n			<div class="rssItemTitle"> \n				<a href="http://ikhyar.com/2013/08/02/selamat-iedul-fitri/" target="_blank" >\n					Selamat Iedul Fitri				</a>\n			</div>\n			<div class="rssItemDate">August 2nd</div>\n			<div class="rssItemSummary">\n				Alhamdulillah wasyukurillah, Puasa tinggal sebentar lagi, hari yang fitri telah menanti, hari ini adalah jumat terakhir di bulan ramadhan ini, mohon maaf lahir bathin yah Kalau meninjau kembali ibadah dari awal ramadhan, wuihhh jauh deh, seakan ramadhan i…			</div>\n		</div>\n	\n		\n		<div class="rssItem">\n			<div class="rssItemTitle"> \n				<a href="http://ikhyar.com/2013/06/23/hidup-adalah-pilihan/" target="_blank" >\n					Hidup adalah Pilihan				</a>\n			</div>\n			<div class="rssItemDate">June 23rd</div>\n			<div class="rssItemSummary">\n				Di setiap sudut dari lembaran hidup ini kita akan selalu di hadapkan oleh pilihan ada kiri atau kanan, iya atau tidak, setuju atau tidak setuju, semua itu adalah rangkaian dari kronologis hidup ini mau atau tidak mau kita harus tetap memilih agar roda keh…			</div>\n		</div>\n	\n		\n		<div class="rssItem">\n			<div class="rssItemTitle"> \n				<a href="http://ikhyar.com/2013/05/22/saya-pengen-pensiun-dari-ginian-hikz-hikz/" target="_blank" >\n					saya pengen pensiun dari ginian hikz..hikz..				</a>\n			</div>\n			<div class="rssItemDate">May 22nd</div>\n			<div class="rssItemSummary">\n				Berawal dari sebuah laptop bersistem operasi windows 7 yang singgah di meja yang berada di kamarku &ldquo;Mau di install kan linux bede&rsquo; dual boot mi saja&rdquo; begitu kata istriku pada ku, sekilas benak ini berpikir mungkin si empunya belum siap m…			</div>\n		</div>\n	\n		\n		<div class="rssItem">\n			<div class="rssItemTitle"> \n				<a href="http://ikhyar.com/2013/05/01/keunikan-dan-peran-warna-di-kehidupan/" target="_blank" >\n					Keunikan dan peran warna di kehidupan				</a>\n			</div>\n			<div class="rssItemDate">May 1st</div>\n			<div class="rssItemSummary">\n				Tulisan ini diikutkan pada 8 Minggu Ngeblog bersama Anging Mammiri, minggu keempat. Teringat sewaktu masih di bangku sekolah teknik menengah dulu, pak guru pernah menjelaskan bahwa warna-warna yang tampak saat kita lihat akan mewakili frequensi yang berbe…			</div>\n		</div>\n	\n</div>', 1381654093),
(1, 1, 20, 'Header Nav', '<ul class="nav"><li class="nav-selected nav-path-selected"><a href="/ekoikhyar/web/" target="_self" class="nav-selected nav-path-selected">Home</a></li><li class=""><a href="/ekoikhyar/web/index.php/about/" target="_self" class="">About</a></li><li class=""><a href="/ekoikhyar/web/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/ekoikhyar/web/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1381650816),
(128, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/ekoikhyar/web/"\n                                >Angin Ribut. PT</a></h1>', 1539416957),
(128, 1, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/ekoikhyar/web/" target="_self" class="">Home</a></li><li class="nav-selected nav-path-selected"><a href="/ekoikhyar/web/index.php/about/" target="_self" class="nav-selected nav-path-selected">About</a></li><li class=""><a href="/ekoikhyar/web/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/ekoikhyar/web/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1381828737),
(128, 1, 18, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/ekoikhyar/web/files/1213/8164/9074/europe_valencia_hemispheric.jpg" width="960" height="212" />', 1539416957),
(128, 1, 21, 'Main', '<h3>Links:</h3>', 1539416957),
(128, 1, 22, 'Main', '<ul class="nav"><li class=""><a href="/ekoikhyar/web/index.php/about/guestbook/" target="_self" class="">Guestbook</a></li><li class=""><a href="/ekoikhyar/web/index.php/about/contact-us/" target="_self" class="">Contact Us</a></li></ul>', 1381828737),
(128, 1, 29, 'Main', '<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>', 1539416957),
(1, 2, 20, 'Header Nav', '<ul class="nav"><li class="nav-selected nav-path-selected"><a href="/ekoikhyar/web/" target="_self" class="nav-selected nav-path-selected">Home</a></li><li class=""><a href="/ekoikhyar/web/index.php/about/" target="_self" class="">About</a></li><li class=""><a href="/ekoikhyar/web/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/ekoikhyar/web/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1381651033),
(1, 2, 58, 'Sidebar', '<ul class="nav"><li class="nav-selected nav-path-selected"><a href="/ekoikhyar/web/" target="_self" class="nav-selected nav-path-selected">Home</a></li><li class=""><a href="/ekoikhyar/web/index.php/about/" target="_self" class="">About</a></li><li class=""><a href="/ekoikhyar/web/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/ekoikhyar/web/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1381651033),
(1, 3, 24, 'Sidebar', '<h3>Sidebar</h3>', 1539417381),
(1, 3, 57, 'Main', '<p><span style="font-size: small;">Selamat datang di web  PT. Angin Ribut !</span></p>\r\n<p><span style="font-size: small;">PT. Angin Ribut ada sebuah perusahaan lokal Penyedia space Hosting dan Domain internet terjangkau untuk Anda. Kami.</span></p>\r\n<p><span style="font-size: small;">Kami menggunakan banyak enggine CMS website, dia antaranya Concrete5 untuk desain website, Wordpress untuk desain Personal Blog, dan masih banyak lagi.</span></p>\r\n<p><span style="font-size: small;">Hanya dengan 200 Ribu pertahunnya kami akan memberikan domain gratis, dengan Space dan Bandwith yang tak terbatas, jangan kawatir akan kehabisan kuota*.</span></p>\r\n<p><span style="font-size: small;">Jika tertarik silahkan menghubungi kami di ikhyar.com@gmail.com </span></p>', 1539417381),
(1, 3, 59, 'Main', '\n<div id="rssSummaryList59" class="rssSummaryList">\n\n	<div class="rssSummaryListTitle" style="margin-bottom:8px">ikhyarCOM Feed</div>\n\n		\n		<div class="rssItem">\n			<div class="rssItemTitle"> \n				<a href="http://ikhyar.com/2013/10/14/curhat-episode-1/" target="_blank" >\n					curhat episode 1				</a>\n			</div>\n			<div class="rssItemDate">October 14th</div>\n			<div class="rssItemSummary">\n				Manusia adalah mahluk sosial, di dalam kehidupannya akan ada nilai tersendiri dari siapa saja di sudut dunia ini,&nbsp;Bersosial=Berkehidupan&nbsp; Hidup ini sudah sangat..sangat.. susah, mempunyai istri dan dua orang anak sudah menjadikan surga tersendir…			</div>\n		</div>\n	\n		\n		<div class="rssItem">\n			<div class="rssItemTitle"> \n				<a href="http://ikhyar.com/2013/10/13/meremajakan-fedora-18-ke-fedora-19/" target="_blank" >\n					Meremajakan Fedora 18 ke fedora 19				</a>\n			</div>\n			<div class="rssItemDate">October 13th</div>\n			<div class="rssItemSummary">\n				Pada artikel ini gunakanlah semua command (perintah) yang di eksekusi menggunakan hak akses root # Pekerjaan yang memakan waktu dan cukup boring, yoi cui Update, bukan Update status yah, tapi kadang aneh juga tuh orang maunya, sukanya update status KTP da…			</div>\n		</div>\n	\n		\n		<div class="rssItem">\n			<div class="rssItemTitle"> \n				<a href="http://ikhyar.com/2013/10/12/niat-yang-tulus/" target="_blank" >\n					Niat yang tulus =))				</a>\n			</div>\n			<div class="rssItemDate">October 12th</div>\n			<div class="rssItemSummary">\n							</div>\n		</div>\n	\n		\n		<div class="rssItem">\n			<div class="rssItemTitle"> \n				<a href="http://ikhyar.com/2013/10/11/jkt-48-generasi-ke-3/" target="_blank" >\n					JKT 48 Generasi ke 3				</a>\n			</div>\n			<div class="rssItemDate">October 11th</div>\n			<div class="rssItemSummary">\n				Generasi ke 3, upz &hellip; &nbsp;sama seperti sebelum nya, kali ini saya tidak akan membahas generasi ke-3 Intel atau Pentium, tetapi mengenai generasi ke 3 JKT48, wow ini nih yang ane tungu-tungu, seperti yang di lansir di showbiz.liputan6.com&nbsp;gemb…			</div>\n		</div>\n	\n		\n		<div class="rssItem">\n			<div class="rssItemTitle"> \n				<a href="http://ikhyar.com/2013/10/10/temukan-di-balik-tutup-botol/" target="_blank" >\n					Temukan di balik tutup botol				</a>\n			</div>\n			<div class="rssItemDate">October 10th</div>\n			<div class="rssItemSummary">\n				Jenggot, rambut, kumis sudah gondrong, kapan di cukur? jangan bilang ikut waiting list yah&nbsp; &nbsp;cuman sekedar ikut budaya tahallul&nbsp;padahal arti harfiahnya adalah dihalalkan, dalam&nbsp;haji&nbsp;dan&nbsp;umrah&nbsp;maksudnya adalah diperbolehk…			</div>\n		</div>\n	\n</div>', 1381832027),
(129, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/ekoikhyar/web/"\n                                >Angin Ribut. PT</a></h1>', 1539594850),
(129, 1, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/ekoikhyar/web/" target="_self" class="">Home</a></li><li class=""><a href="/ekoikhyar/web/index.php/about/" target="_self" class="">About</a></li><li class="nav-selected nav-path-selected"><a href="/ekoikhyar/web/index.php/search/" target="_self" class="nav-selected nav-path-selected">Search</a></li><li class=""><a href="/ekoikhyar/web/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1381828750),
(1, 3, 58, 'Sidebar', '<ul class="nav"><li class="nav-selected nav-path-selected"><a href="/ekoikhyar/web/" target="_self" class="nav-selected nav-path-selected">Home</a></li><li class=""><a href="/ekoikhyar/web/index.php/about/" target="_self" class="">About</a></li><li class=""><a href="/ekoikhyar/web/index.php/search/" target="_self" class="">Search</a></li><li class=""><a href="/ekoikhyar/web/index.php/blog/" target="_self" class="">Blog</a></li></ul>', 1381828722),
(129, 1, 19, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/ekoikhyar/web/files/6013/8164/9073/europe_rotterdam_port.jpg" width="960" height="212" />', 1539594850),
(129, 1, 35, 'Sidebar', '<h3>Site Map</h3>', 1539594850),
(129, 1, 36, 'Sidebar', '<ul class="nav"><li class=""><a href="/ekoikhyar/web/" target="_self" class="">Home</a></li><li class=""><a href="/ekoikhyar/web/index.php/about/" target="_self" class="">About</a><ul><li class=""><a href="/ekoikhyar/web/index.php/about/guestbook/" target="_self" class="">Guestbook</a></li><li class=""><a href="/ekoikhyar/web/index.php/about/contact-us/" target="_self" class="">Contact Us</a></li></ul></li><li class="nav-selected nav-path-selected"><a href="/ekoikhyar/web/index.php/search/" target="_self" class="nav-selected nav-path-selected">Search</a></li><li class=""><a href="/ekoikhyar/web/index.php/blog/" target="_self" class="">Blog</a><ul><li class=""><a href="/ekoikhyar/web/index.php/blog/hello-world/" target="_self" class="">Hello World</a></li><li class=""><a href="/ekoikhyar/web/index.php/blog/test/" target="_self" class="">test</a></li></ul></li></ul>', 1381828750),
(130, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/ekoikhyar/web/"\n                                >Angin Ribut. PT</a></h1>', 1539594852),
(130, 1, 20, 'Header Nav', '<ul class="nav"><li class=""><a href="/ekoikhyar/web/" target="_self" class="">Home</a></li><li class=""><a href="/ekoikhyar/web/index.php/about/" target="_self" class="">About</a></li><li class=""><a href="/ekoikhyar/web/index.php/search/" target="_self" class="">Search</a></li><li class="nav-selected nav-path-selected"><a href="/ekoikhyar/web/index.php/blog/" target="_self" class="nav-selected nav-path-selected">Blog</a></li></ul>', 1381828752),
(130, 1, 19, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/ekoikhyar/web/files/6013/8164/9073/europe_rotterdam_port.jpg" width="960" height="212" />', 1539594852),
(130, 1, 39, 'Sidebar', '<h3>Tags</h3>', 1539594852),
(130, 1, 40, 'Sidebar', '<div class="ccm-tags-display">\n<ul class="ccm-tag-list">\n		<li >				<a href="/ekoikhyar/web/index.php/blog/blog-archives/?akID[15][atSelectOptionID][]=1">composer</a></li><li >				<a href="/ekoikhyar/web/index.php/blog/blog-archives/?akID[15][atSelectOptionID][]=2">hello</a></li><li >				<a href="/ekoikhyar/web/index.php/blog/blog-archives/?akID[15][atSelectOptionID][]=3">world</a></li><li >				<a href="/ekoikhyar/web/index.php/blog/blog-archives/?akID[15][atSelectOptionID][]=4">first post</a></li>	\n	</ul>\n	<div style="clear: both"></div>\n</div>', 1539594853);

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionblockstyles`
--

CREATE TABLE IF NOT EXISTS `collectionversionblockstyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionversionblockstyles`
--


-- --------------------------------------------------------

--
-- Table structure for table `collectionversionrelatededits`
--

CREATE TABLE IF NOT EXISTS `collectionversionrelatededits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionversionrelatededits`
--


-- --------------------------------------------------------

--
-- Table structure for table `collectionversions`
--

CREATE TABLE IF NOT EXISTS `collectionversions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `ctID` (`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionversions`
--

INSERT INTO `collectionversions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `ptID`, `ctID`, `cvActivateDatetime`) VALUES
(1, 1, 'Home', 'home', '', '2013-10-13 15:24:20', '2013-10-13 15:24:20', 'Initial Version', 0, 0, 1, NULL, 4, 7, NULL),
(2, 1, 'Dashboard', 'dashboard', '', '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(3, 1, 'Composer', 'composer', 'Write for your site.', '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(4, 1, 'Write', 'write', '', '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(5, 1, 'Drafts', 'drafts', '', '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(6, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(7, 1, 'Full Sitemap', 'full', '', '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(8, 1, 'Flat View', 'explore', '', '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(9, 1, 'Page Search', 'search', '', '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(10, 1, 'Files', 'files', 'All documents and images.', '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(11, 1, 'File Manager', 'search', '', '2013-10-13 15:24:26', '2013-10-13 15:24:26', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(12, 1, 'Attributes', 'attributes', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(13, 1, 'File Sets', 'sets', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(14, 1, 'Add File Set', 'add_set', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(15, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(16, 1, 'Search Users', 'search', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(17, 1, 'User Groups', 'groups', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(18, 1, 'Attributes', 'attributes', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(19, 1, 'Add User', 'add', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(20, 1, 'Add Group', 'add_group', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(21, 1, 'Group Sets', 'group_sets', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(22, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(23, 1, 'Statistics', 'statistics', 'View your site activity.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(24, 1, 'Form Results', 'forms', 'Get submission data.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(25, 1, 'Surveys', 'surveys', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(26, 1, 'Logs', 'logs', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(27, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(28, 1, 'Themes', 'themes', 'Reskin your site.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(29, 1, 'Add', 'add', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(30, 1, 'Inspect', 'inspect', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(31, 1, 'Customize', 'customize', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(32, 1, 'Page Types', 'types', 'What goes in your site.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(33, 1, 'Add Page Type', 'add', 'Add page types to your site.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(34, 1, 'Attributes', 'attributes', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(35, 1, 'Single Pages', 'single', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(36, 1, 'Workflow', 'workflow', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(37, 1, 'Workflow List', 'list', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(38, 1, 'Waiting for Me', 'me', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(39, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(40, 1, 'Stacks', 'stacks', 'Share content across your site.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(41, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(42, 1, 'Stack List', 'list', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(43, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(44, 1, 'Extend concrete5', 'extend', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(45, 1, 'Dashboard', 'news', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(46, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(47, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(48, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(49, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(50, 1, 'Get More Add-Ons', 'add-ons', 'Download add-ons from concrete5.org.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(51, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(52, 1, 'Basics', 'basics', 'Basic information about your website.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(53, 1, 'Site Name', 'site_name', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(54, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(55, 1, 'Rich Text Editor', 'editor', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(56, 1, 'Languages', 'multilingual', '', '2013-10-13 15:24:27', '2013-10-13 15:24:27', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(57, 1, 'Time Zone', 'timezone', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(58, 1, 'Interface Preferences', 'interface', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(59, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs, statistics and tracking codes.', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(60, 1, 'Pretty URLs', 'urls', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(61, 1, 'Bulk SEO Updater', 'bulk_seo_tool', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(62, 1, 'Tracking Codes', 'tracking_codes', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(63, 1, 'Excluded URL Word List', 'excluded', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(64, 1, 'Statistics', 'statistics', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(65, 1, 'Search Index', 'search_index', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(66, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(67, 1, 'Cache & Speed Settings', 'cache', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(68, 1, 'Clear Cache', 'clear_cache', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(69, 1, 'Automated Jobs', 'jobs', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(70, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(71, 1, 'Site Access', 'site', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(72, 1, 'File Manager Permissions', 'files', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(73, 1, 'Allowed File Types', 'file_types', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(74, 1, 'Task Permissions', 'tasks', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(75, 1, 'User Permissions', 'users', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(76, 1, 'Advanced Permissions', 'advanced', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(77, 1, 'IP Blacklist', 'ip_blacklist', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(78, 1, 'Captcha Setup', 'captcha', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(79, 1, 'Spam Control', 'antispam', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(80, 1, 'Maintenance Mode', 'maintenance_mode', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(81, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(82, 1, 'Login Destination', 'postlogin', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(83, 1, 'Public Profiles', 'profiles', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(84, 1, 'Public Registration', 'public_registration', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(85, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(86, 1, 'SMTP Method', 'method', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(87, 1, 'Email Importers', 'importers', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(88, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(89, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(90, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(91, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(92, 1, 'Environment Information', 'info', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(93, 1, 'Debug Settings', 'debug', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(94, 1, 'Logging Settings', 'logging', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(95, 1, 'File Storage Locations', 'file_storage_locations', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(96, 1, 'Proxy Server', 'proxy', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(97, 1, 'Backup & Restore', 'backup_restore', 'Backup or restore your website.', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(98, 1, 'Backup Database', 'backup', '', '2013-10-13 15:24:28', '2013-10-13 15:24:28', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(99, 1, 'Update concrete5', 'update', '', '2013-10-13 15:24:29', '2013-10-13 15:24:29', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(100, 1, 'Database XML', 'database', '', '2013-10-13 15:24:29', '2013-10-13 15:24:29', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(101, 1, 'Composer', 'composer', '', '2013-10-13 15:24:29', '2013-10-13 15:24:29', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(102, 1, '', NULL, NULL, '2013-10-13 15:24:29', '2013-10-13 15:24:29', 'Initial Version', 1, 0, NULL, NULL, 0, 1, NULL),
(103, 1, '', NULL, NULL, '2013-10-13 15:24:29', '2013-10-13 15:24:29', 'Initial Version', 1, 0, NULL, NULL, 0, 2, NULL),
(104, 1, '', NULL, NULL, '2013-10-13 15:24:29', '2013-10-13 15:24:29', 'Initial Version', 1, 0, NULL, NULL, 0, 3, NULL),
(105, 1, 'Welcome to concrete5', 'welcome', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '2013-10-13 15:24:29', '2013-10-13 15:24:29', 'Initial Version', 1, 0, 1, NULL, 4, 3, NULL),
(106, 1, 'Customize Dashboard Home', 'home', '', '2013-10-13 15:24:29', '2013-10-13 15:24:29', 'Initial Version', 1, 0, 1, NULL, 4, 2, NULL),
(107, 1, 'Drafts', '!drafts', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(108, 1, 'Trash', '!trash', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(109, 1, 'Stacks', '!stacks', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(110, 1, 'Login', 'login', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(111, 1, 'Register', 'register', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(112, 1, 'Profile', 'profile', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(113, 1, 'Edit', 'edit', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(114, 1, 'Avatar', 'avatar', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(115, 1, 'Messages', 'messages', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(116, 1, 'Friends', 'friends', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(117, 1, 'Page Not Found', 'page_not_found', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(118, 1, 'Page Forbidden', 'page_forbidden', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(119, 1, 'Download File', 'download_file', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(120, 1, 'Members', 'members', '', '2013-10-13 15:24:32', '2013-10-13 15:24:32', 'Initial Version', 1, 0, 1, NULL, 4, 0, NULL),
(121, 1, 'Header Nav', 'header-nav', NULL, '2013-10-13 15:24:34', '2013-10-13 15:24:34', 'Initial Version', 1, 0, 1, NULL, 4, 1, NULL),
(122, 1, 'Side Nav', 'side-nav', NULL, '2013-10-13 15:24:34', '2013-10-13 15:24:34', 'Initial Version', 1, 0, 1, NULL, 4, 1, NULL),
(123, 1, 'Site Name', 'site-name', NULL, '2013-10-13 15:24:34', '2013-10-13 15:24:34', 'Initial Version', 1, 0, 1, NULL, 4, 1, NULL),
(124, 1, '', NULL, NULL, '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'Initial Version', 1, 0, NULL, NULL, 0, 4, NULL),
(125, 1, '', NULL, NULL, '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL),
(126, 1, '', NULL, NULL, '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'Initial Version', 1, 0, NULL, NULL, 0, 6, NULL),
(127, 1, '', NULL, NULL, '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'Initial Version', 1, 0, NULL, NULL, 0, 7, NULL),
(128, 1, 'About', 'about', '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'Initial Version', 1, 0, 1, NULL, 4, 6, NULL),
(129, 1, 'Search', 'search', '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'Initial Version', 1, 0, 1, NULL, 4, 7, NULL),
(130, 1, 'Blog', 'blog', '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'Initial Version', 1, 0, 1, NULL, 4, 7, NULL),
(131, 1, 'Guestbook', 'guestbook', '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'Initial Version', 1, 0, 1, NULL, 4, 7, NULL),
(132, 1, 'Contact Us', 'contact-us', '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'Initial Version', 1, 0, 1, NULL, 4, 6, NULL),
(133, 1, 'Hello World', 'hello-world', 'This is my first blog post!', '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'Initial Version', 1, 0, 1, NULL, 4, 4, NULL),
(134, 1, 'Blog Archives', 'blog-archives', '', '2013-10-13 15:24:35', '2013-10-13 15:24:35', 'Initial Version', 1, 0, 1, NULL, 4, 7, NULL),
(135, 1, '', '', '', '2013-10-13 15:30:00', '2013-10-13 15:30:23', 'Initial Version', 0, 1, 1, NULL, 4, 4, NULL),
(136, 1, 'test', 'test', 'test', '2013-10-13 15:32:00', '2013-10-13 15:32:57', 'Initial Version', 1, 0, 1, 1, 4, 4, NULL),
(137, 1, '', '', NULL, '2013-10-13 15:34:12', '2013-10-13 15:34:12', 'Initial Version', 0, 1, 1, NULL, 4, 4, NULL),
(1, 2, 'Home', 'home', '', '2013-10-13 15:24:20', '2013-10-13 15:44:11', 'New Version 2', 0, 0, 1, 1, 4, 7, NULL),
(1, 3, 'Home', 'home', '', '2013-10-13 15:24:20', '2013-10-13 15:56:21', 'New Version 3', 1, 0, 1, 1, 1, 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `composercontentlayout`
--

CREATE TABLE IF NOT EXISTS `composercontentlayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `composercontentlayout`
--

INSERT INTO `composercontentlayout` (`cclID`, `bID`, `akID`, `displayOrder`, `ctID`, `ccFilename`) VALUES
(1, 16, 0, 1, 4, 'header.php'),
(2, 15, 0, 2, 4, 'thumbnail.php'),
(3, 13, 0, 3, 4, ''),
(4, 0, 15, 4, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `composerdrafts`
--

CREATE TABLE IF NOT EXISTS `composerdrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `composerdrafts`
--

INSERT INTO `composerdrafts` (`cID`, `cpPublishParentID`) VALUES
(135, 130),
(137, 130);

-- --------------------------------------------------------

--
-- Table structure for table `composertypes`
--

CREATE TABLE IF NOT EXISTS `composertypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `composertypes`
--

INSERT INTO `composertypes` (`ctID`, `ctComposerPublishPageMethod`, `ctComposerPublishPageTypeID`, `ctComposerPublishPageParentID`) VALUES
(4, 'PARENT', 0, 130);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('ACCESS_ENTITY_UPDATED', '2013-10-13 15:24:32', '1381649072', 0, 0),
('SITE_DEBUG_LEVEL', '2013-10-13 15:24:32', '1', 0, 0),
('ENABLE_LOG_EMAILS', '2013-10-13 15:24:32', '1', 0, 0),
('ENABLE_LOG_ERRORS', '2013-10-13 15:24:32', '1', 0, 0),
('FULL_PAGE_CACHE_GLOBAL', '2013-10-13 15:24:32', '0', 0, 0),
('ENABLE_MARKETPLACE_SUPPORT', '2013-10-13 15:24:32', '1', 0, 0),
('ANTISPAM_LOG_SPAM', '2013-10-13 15:24:32', '1', 0, 0),
('ENABLE_BLOCK_CACHE', '2013-10-13 15:24:32', '1', 0, 0),
('ENABLE_OVERRIDE_CACHE', '2013-10-13 15:24:32', '1', 0, 0),
('SITE', '2013-10-13 15:26:59', 'PT. Angin Ribut', 0, 0),
('SITE_APP_VERSION', '2013-10-13 15:24:36', '5.6.2.1', 0, 0),
('SITE_INSTALLED_APP_VERSION', '2013-10-13 15:24:36', '5.6.2.1', 0, 0),
('NEWSFLOW_LAST_VIEWED', '2013-10-13 15:33:33', '1381649637', 1, 0),
('APP_VERSION_LATEST', '2013-10-13 15:24:37', '5.6.2.1', 0, 0),
('SEEN_INTRODUCTION', '2013-10-13 15:24:55', '1', 0, 0),
('CONTENTS_TXT_EDITOR_MODE', '2013-10-13 15:28:05', 'OFFICE', 0, 0),
('CONTENTS_TXT_EDITOR_WIDTH', '2013-10-13 15:28:05', '580', 0, 0),
('CONTENTS_TXT_EDITOR_HEIGHT', '2013-10-13 15:28:05', '380', 0, 0),
('DO_PAGE_REINDEX_CHECK', '2013-10-13 15:56:52', '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customstylepresets`
--

CREATE TABLE IF NOT EXISTS `customstylepresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customstylepresets`
--


-- --------------------------------------------------------

--
-- Table structure for table `customstylerules`
--

CREATE TABLE IF NOT EXISTS `customstylerules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `customstylerules`
--


-- --------------------------------------------------------

--
-- Table structure for table `downloadstatistics`
--

CREATE TABLE IF NOT EXISTS `downloadstatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `downloadstatistics`
--


-- --------------------------------------------------------

--
-- Table structure for table `fileattributevalues`
--

CREATE TABLE IF NOT EXISTS `fileattributevalues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fileattributevalues`
--

INSERT INTO `fileattributevalues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(1, 1, 12, 120),
(1, 1, 13, 121),
(2, 1, 12, 122),
(2, 1, 13, 123),
(3, 1, 12, 124),
(3, 1, 13, 125),
(4, 1, 12, 126),
(4, 1, 13, 127),
(5, 1, 12, 128),
(5, 1, 13, 129),
(6, 1, 12, 130),
(6, 1, 13, 131),
(7, 1, 12, 132),
(7, 1, 13, 133),
(8, 1, 12, 134),
(8, 1, 13, 135);

-- --------------------------------------------------------

--
-- Table structure for table `filepermissionassignments`
--

CREATE TABLE IF NOT EXISTS `filepermissionassignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filepermissionassignments`
--


-- --------------------------------------------------------

--
-- Table structure for table `filepermissionfiletypes`
--

CREATE TABLE IF NOT EXISTS `filepermissionfiletypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filepermissionfiletypes`
--


-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`fID`, `fDateAdded`, `uID`, `fslID`, `ocID`, `fOverrideSetPermissions`, `fPassword`) VALUES
(1, '2013-10-13 15:24:32', 1, 0, 0, 0, NULL),
(2, '2013-10-13 15:24:33', 1, 0, 0, 0, NULL),
(3, '2013-10-13 15:24:33', 1, 0, 0, 0, NULL),
(4, '2013-10-13 15:24:33', 1, 0, 0, 0, NULL),
(5, '2013-10-13 15:24:33', 1, 0, 0, 0, NULL),
(6, '2013-10-13 15:24:34', 1, 0, 0, 0, NULL),
(7, '2013-10-13 15:24:34', 1, 0, 0, 0, NULL),
(8, '2013-10-13 15:24:34', 1, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `filesearchindexattributes`
--

CREATE TABLE IF NOT EXISTS `filesearchindexattributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filesearchindexattributes`
--

INSERT INTO `filesearchindexattributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
(1, '960.0000', '212.0000', '0.0000'),
(2, '960.0000', '212.0000', '0.0000'),
(3, '960.0000', '212.0000', '0.0000'),
(4, '960.0000', '212.0000', '0.0000'),
(5, '960.0000', '212.0000', '0.0000'),
(6, '960.0000', '212.0000', '0.0000'),
(7, '960.0000', '212.0000', '0.0000'),
(8, '150.0000', '150.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `filesetfiles`
--

CREATE TABLE IF NOT EXISTS `filesetfiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `filesetfiles`
--


-- --------------------------------------------------------

--
-- Table structure for table `filesetpermissionassignments`
--

CREATE TABLE IF NOT EXISTS `filesetpermissionassignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filesetpermissionassignments`
--

INSERT INTO `filesetpermissionassignments` (`fsID`, `paID`, `pkID`) VALUES
(0, 43, 35),
(0, 44, 36),
(0, 45, 37),
(0, 46, 38),
(0, 47, 39),
(0, 48, 40),
(0, 49, 42),
(0, 50, 41),
(0, 51, 43);

-- --------------------------------------------------------

--
-- Table structure for table `filesetpermissionfiletypeaccesslist`
--

CREATE TABLE IF NOT EXISTS `filesetpermissionfiletypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filesetpermissionfiletypeaccesslist`
--


-- --------------------------------------------------------

--
-- Table structure for table `filesetpermissionfiletypeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `filesetpermissionfiletypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filesetpermissionfiletypeaccesslistcustom`
--


-- --------------------------------------------------------

--
-- Table structure for table `filesets`
--

CREATE TABLE IF NOT EXISTS `filesets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `filesets`
--


-- --------------------------------------------------------

--
-- Table structure for table `filesetsavedsearches`
--

CREATE TABLE IF NOT EXISTS `filesetsavedsearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filesetsavedsearches`
--


-- --------------------------------------------------------

--
-- Table structure for table `filestoragelocations`
--

CREATE TABLE IF NOT EXISTS `filestoragelocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filestoragelocations`
--


-- --------------------------------------------------------

--
-- Table structure for table `fileversionlog`
--

CREATE TABLE IF NOT EXISTS `fileversionlog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `fileversionlog`
--

INSERT INTO `fileversionlog` (`fvlID`, `fID`, `fvID`, `fvUpdateTypeID`, `fvUpdateTypeAttributeID`) VALUES
(1, 1, 1, 5, 12),
(2, 1, 1, 5, 13),
(3, 2, 1, 5, 12),
(4, 2, 1, 5, 13),
(5, 3, 1, 5, 12),
(6, 3, 1, 5, 13),
(7, 4, 1, 5, 12),
(8, 4, 1, 5, 13),
(9, 5, 1, 5, 12),
(10, 5, 1, 5, 13),
(11, 6, 1, 5, 12),
(12, 6, 1, 5, 13),
(13, 7, 1, 5, 12),
(14, 7, 1, 5, 13),
(15, 8, 1, 5, 12),
(16, 8, 1, 5, 13);

-- --------------------------------------------------------

--
-- Table structure for table `fileversions`
--

CREATE TABLE IF NOT EXISTS `fileversions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fileversions`
--

INSERT INTO `fileversions` (`fID`, `fvID`, `fvFilename`, `fvPrefix`, `fvGenericType`, `fvSize`, `fvTitle`, `fvDescription`, `fvTags`, `fvIsApproved`, `fvDateAdded`, `fvApproverUID`, `fvAuthorUID`, `fvActivateDatetime`, `fvHasThumbnail1`, `fvHasThumbnail2`, `fvHasThumbnail3`, `fvExtension`, `fvType`) VALUES
(1, 1, 'england_village.jpg', '531381649072', 1, 333117, 'england_village.jpg', '', '', 1, '2013-10-13 15:24:32', 1, 1, '2013-10-13 15:24:32', 1, 1, 0, 'jpg', 1),
(2, 1, 'europe_england_stonehenge.jpg', '401381649073', 1, 286856, 'europe_england_stonehenge.jpg', '', '', 1, '2013-10-13 15:24:33', 1, 1, '2013-10-13 15:24:33', 1, 1, 0, 'jpg', 1),
(3, 1, 'europe_germany_munich_arch.jpg', '471381649073', 1, 229235, 'europe_germany_munich_arch.jpg', '', '', 1, '2013-10-13 15:24:33', 1, 1, '2013-10-13 15:24:33', 1, 1, 0, 'jpg', 1),
(4, 1, 'europe_rotterdam_port.jpg', '601381649073', 1, 203784, 'europe_rotterdam_port.jpg', '', '', 1, '2013-10-13 15:24:33', 1, 1, '2013-10-13 15:24:33', 1, 1, 0, 'jpg', 1),
(5, 1, 'europe_spain_grenada_alhambra.jpg', '521381649073', 1, 320805, 'europe_spain_grenada_alhambra.jpg', '', '', 1, '2013-10-13 15:24:33', 1, 1, '2013-10-13 15:24:33', 1, 1, 0, 'jpg', 1),
(6, 1, 'europe_valencia_hemispheric.jpg', '121381649074', 1, 262679, 'europe_valencia_hemispheric.jpg', '', '', 1, '2013-10-13 15:24:34', 1, 1, '2013-10-13 15:24:34', 1, 1, 0, 'jpg', 1),
(7, 1, 'northern_az_lake_powell_house_boats.jpg', '791381649074', 1, 226976, 'northern_az_lake_powell_house_boats.jpg', '', '', 1, '2013-10-13 15:24:34', 1, 1, '2013-10-13 15:24:34', 1, 1, 0, 'jpg', 1),
(8, 1, 'sh_thumbnail.jpg', '321381649074', 1, 15243, 'sh_thumbnail.jpg', '', '', 1, '2013-10-13 15:24:34', 1, 1, '2013-10-13 15:24:34', 1, 1, 0, 'jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`) VALUES
(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL),
(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL),
(3, 'Administrators', '', 0, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groupsetgroups`
--

CREATE TABLE IF NOT EXISTS `groupsetgroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupsetgroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `groupsets`
--

CREATE TABLE IF NOT EXISTS `groupsets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `groupsets`
--


-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` varchar(255) DEFAULT NULL,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Index Search Engine - Updates', 'Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.', '2013-10-13 15:24:26', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1, 0, 'days', 0),
(2, 'Index Search Engine - All', 'Empties the page search index and reindexes all pages.', '2013-10-13 15:24:26', NULL, 0, NULL, 0, 'ENABLED', 'index_search_all', 1, 0, 'days', 0),
(3, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2013-10-13 15:24:26', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0, 0, 'days', 0),
(4, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2013-10-13 15:24:26', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0, 0, 'days', 0),
(5, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2013-10-13 15:24:26', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobsetjobs`
--

CREATE TABLE IF NOT EXISTS `jobsetjobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobsetjobs`
--

INSERT INTO `jobsetjobs` (`jsID`, `jID`, `jRunOrder`) VALUES
(1, 1, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobsets`
--

CREATE TABLE IF NOT EXISTS `jobsets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jobsets`
--

INSERT INTO `jobsets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Default', 0, NULL, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobslog`
--

CREATE TABLE IF NOT EXISTS `jobslog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` varchar(255) NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jobslog`
--


-- --------------------------------------------------------

--
-- Table structure for table `layoutpresets`
--

CREATE TABLE IF NOT EXISTS `layoutpresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `layoutpresets`
--


-- --------------------------------------------------------

--
-- Table structure for table `layouts`
--

CREATE TABLE IF NOT EXISTS `layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `layouts`
--


-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`logID`, `logType`, `timestamp`, `logText`, `logUserID`, `logIsInternal`) VALUES
(1, 'exceptions', '2013-10-13 15:49:41', 'Mail Exception Occurred. Unable to send mail: Unable to send mail. mail() [&lt;a href=''function.mail''&gt;function.mail&lt;/a&gt;]: Failed to connect to mailserver at &amp;quot;localhost&amp;quot; port 25, verify your &amp;quot;SMTP&amp;quot; and &amp;quot;smtp_port&amp;quot; setting in php.ini or use ini_set()\n#0 C:\\xampp\\htdocs\\ekoikhyar\\web\\concrete\\libraries\\3rdparty\\Zend\\Mail\\Transport\\Abstract.php(348): Zend_Mail_Transport_Sendmail-&gt;_sendMail()\n#1 C:\\xampp\\htdocs\\ekoikhyar\\web\\concrete\\libraries\\3rdparty\\Zend\\Mail.php(1194): Zend_Mail_Transport_Abstract-&gt;send(Object(Zend_Mail))\n#2 C:\\xampp\\htdocs\\ekoikhyar\\web\\concrete\\core\\helpers\\mail.php(349): Zend_Mail-&gt;send(NULL)\n#3 C:\\xampp\\htdocs\\ekoikhyar\\web\\concrete\\core\\controllers\\single_pages\\login.php(484): Concrete5_Helper_Mail-&gt;sendMail()\n#4 [internal function]: Concrete5_Controller_Login-&gt;forgot_password()\n#5 C:\\xampp\\htdocs\\ekoikhyar\\web\\concrete\\core\\libraries\\controller.php(264): call_user_func_array(Array, Array)\n#6 C:\\xampp\\htdocs\\ekoikhyar\\web\\concrete\\core\\libraries\\controller.php(234): Concrete5_Library_Controller-&gt;runTask(''forgot_password'', Array)\n#7 C:\\xampp\\htdocs\\ekoikhyar\\web\\concrete\\core\\libraries\\view.php(783): Concrete5_Library_Controller-&gt;setupAndRun()\n#8 C:\\xampp\\htdocs\\ekoikhyar\\web\\concrete\\dispatcher.php(264): Concrete5_Library_View-&gt;render(Object(Page))\n#9 C:\\xampp\\htdocs\\ekoikhyar\\web\\index.php(2): require(''C:\\xampp\\htdocs...'')\n#10 {main}\nTemplate Used: forgot_password\nTo: ikhyar.com@gmail.com\nFrom: &quot;Forgot Password&quot; &lt;ikhyar.com@gmail.com&gt;\nSubject: Forgot Password\nBody: \n\nDear admin,\n\nYou have requested a new password for the site PT. Angin Ribut \n\nYour username is: admin\n\nYou may change your password at the following address:\n\nhttp://localhost/ekoikhyar/web/index.php/login/change_password/rs82Fi7DuxuH/\n\nThanks for browsing the site!\n\n\n', NULL, 1),
(2, 'sent_emails', '2013-10-13 15:49:41', '**EMAILS ARE ENABLED. THIS EMAIL WAS SENT TO mail()**\nTemplate Used: forgot_password\nTo: ikhyar.com@gmail.com\nFrom: &quot;Forgot Password&quot; &lt;ikhyar.com@gmail.com&gt;\nSubject: Forgot Password\nBody: \n\nDear admin,\n\nYou have requested a new password for the site PT. Angin Ribut \n\nYour username is: admin\n\nYou may change your password at the following address:\n\nhttp://localhost/ekoikhyar/web/index.php/login/change_password/rs82Fi7DuxuH/\n\nThanks for browsing the site!\n\n\n', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mailimporters`
--

CREATE TABLE IF NOT EXISTS `mailimporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mailimporters`
--

INSERT INTO `mailimporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1, 'private_message', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 'POP');

-- --------------------------------------------------------

--
-- Table structure for table `mailvalidationhashes`
--

CREATE TABLE IF NOT EXISTS `mailvalidationhashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `mailvalidationhashes`
--


-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `packages`
--


-- --------------------------------------------------------

--
-- Table structure for table `pagepaths`
--

CREATE TABLE IF NOT EXISTS `pagepaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=128 ;

--
-- Dumping data for table `pagepaths`
--

INSERT INTO `pagepaths` (`ppID`, `cID`, `cPath`, `ppIsCanonical`) VALUES
(1, 2, '/dashboard', '1'),
(2, 3, '/dashboard/composer', '1'),
(3, 4, '/dashboard/composer/write', '1'),
(4, 5, '/dashboard/composer/drafts', '1'),
(5, 6, '/dashboard/sitemap', '1'),
(6, 7, '/dashboard/sitemap/full', '1'),
(7, 8, '/dashboard/sitemap/explore', '1'),
(8, 9, '/dashboard/sitemap/search', '1'),
(9, 10, '/dashboard/files', '1'),
(10, 11, '/dashboard/files/search', '1'),
(11, 12, '/dashboard/files/attributes', '1'),
(12, 13, '/dashboard/files/sets', '1'),
(13, 14, '/dashboard/files/add_set', '1'),
(14, 15, '/dashboard/users', '1'),
(15, 16, '/dashboard/users/search', '1'),
(16, 17, '/dashboard/users/groups', '1'),
(17, 18, '/dashboard/users/attributes', '1'),
(18, 19, '/dashboard/users/add', '1'),
(19, 20, '/dashboard/users/add_group', '1'),
(20, 21, '/dashboard/users/group_sets', '1'),
(21, 22, '/dashboard/reports', '1'),
(22, 23, '/dashboard/reports/statistics', '1'),
(23, 24, '/dashboard/reports/forms', '1'),
(24, 25, '/dashboard/reports/surveys', '1'),
(25, 26, '/dashboard/reports/logs', '1'),
(26, 27, '/dashboard/pages', '1'),
(27, 28, '/dashboard/pages/themes', '1'),
(28, 29, '/dashboard/pages/themes/add', '1'),
(29, 30, '/dashboard/pages/themes/inspect', '1'),
(30, 31, '/dashboard/pages/themes/customize', '1'),
(31, 32, '/dashboard/pages/types', '1'),
(32, 33, '/dashboard/pages/types/add', '1'),
(33, 34, '/dashboard/pages/attributes', '1'),
(34, 35, '/dashboard/pages/single', '1'),
(35, 36, '/dashboard/workflow', '1'),
(36, 37, '/dashboard/workflow/list', '1'),
(37, 38, '/dashboard/workflow/me', '1'),
(38, 39, '/dashboard/blocks', '1'),
(39, 40, '/dashboard/blocks/stacks', '1'),
(40, 41, '/dashboard/blocks/permissions', '1'),
(41, 42, '/dashboard/blocks/stacks/list', '1'),
(42, 43, '/dashboard/blocks/types', '1'),
(43, 44, '/dashboard/extend', '1'),
(44, 45, '/dashboard/news', '1'),
(45, 46, '/dashboard/extend/install', '1'),
(46, 47, '/dashboard/extend/update', '1'),
(47, 48, '/dashboard/extend/connect', '1'),
(48, 49, '/dashboard/extend/themes', '1'),
(49, 50, '/dashboard/extend/add-ons', '1'),
(50, 51, '/dashboard/system', '1'),
(51, 52, '/dashboard/system/basics', '1'),
(52, 53, '/dashboard/system/basics/site_name', '1'),
(53, 54, '/dashboard/system/basics/icons', '1'),
(54, 55, '/dashboard/system/basics/editor', '1'),
(55, 56, '/dashboard/system/basics/multilingual', '1'),
(56, 57, '/dashboard/system/basics/timezone', '1'),
(57, 58, '/dashboard/system/basics/interface', '1'),
(58, 59, '/dashboard/system/seo', '1'),
(59, 60, '/dashboard/system/seo/urls', '1'),
(60, 61, '/dashboard/system/seo/bulk_seo_tool', '1'),
(61, 62, '/dashboard/system/seo/tracking_codes', '1'),
(62, 63, '/dashboard/system/seo/excluded', '1'),
(63, 64, '/dashboard/system/seo/statistics', '1'),
(64, 65, '/dashboard/system/seo/search_index', '1'),
(65, 66, '/dashboard/system/optimization', '1'),
(66, 67, '/dashboard/system/optimization/cache', '1'),
(67, 68, '/dashboard/system/optimization/clear_cache', '1'),
(68, 69, '/dashboard/system/optimization/jobs', '1'),
(69, 70, '/dashboard/system/permissions', '1'),
(70, 71, '/dashboard/system/permissions/site', '1'),
(71, 72, '/dashboard/system/permissions/files', '1'),
(72, 73, '/dashboard/system/permissions/file_types', '1'),
(73, 74, '/dashboard/system/permissions/tasks', '1'),
(74, 75, '/dashboard/system/permissions/users', '1'),
(75, 76, '/dashboard/system/permissions/advanced', '1'),
(76, 77, '/dashboard/system/permissions/ip_blacklist', '1'),
(77, 78, '/dashboard/system/permissions/captcha', '1'),
(78, 79, '/dashboard/system/permissions/antispam', '1'),
(79, 80, '/dashboard/system/permissions/maintenance_mode', '1'),
(80, 81, '/dashboard/system/registration', '1'),
(81, 82, '/dashboard/system/registration/postlogin', '1'),
(82, 83, '/dashboard/system/registration/profiles', '1'),
(83, 84, '/dashboard/system/registration/public_registration', '1'),
(84, 85, '/dashboard/system/mail', '1'),
(85, 86, '/dashboard/system/mail/method', '1'),
(86, 87, '/dashboard/system/mail/importers', '1'),
(87, 88, '/dashboard/system/attributes', '1'),
(88, 89, '/dashboard/system/attributes/sets', '1'),
(89, 90, '/dashboard/system/attributes/types', '1'),
(90, 91, '/dashboard/system/environment', '1'),
(91, 92, '/dashboard/system/environment/info', '1'),
(92, 93, '/dashboard/system/environment/debug', '1'),
(93, 94, '/dashboard/system/environment/logging', '1'),
(94, 95, '/dashboard/system/environment/file_storage_locations', '1'),
(95, 96, '/dashboard/system/environment/proxy', '1'),
(96, 97, '/dashboard/system/backup_restore', '1'),
(97, 98, '/dashboard/system/backup_restore/backup', '1'),
(98, 99, '/dashboard/system/backup_restore/update', '1'),
(99, 100, '/dashboard/system/backup_restore/database', '1'),
(100, 101, '/dashboard/pages/types/composer', '1'),
(101, 105, '/dashboard/welcome', '1'),
(102, 106, '/dashboard/home', '1'),
(103, 107, '/!drafts', '1'),
(104, 108, '/!trash', '1'),
(105, 109, '/!stacks', '1'),
(106, 110, '/login', '1'),
(107, 111, '/register', '1'),
(108, 112, '/profile', '1'),
(109, 113, '/profile/edit', '1'),
(110, 114, '/profile/avatar', '1'),
(111, 115, '/profile/messages', '1'),
(112, 116, '/profile/friends', '1'),
(113, 117, '/page_not_found', '1'),
(114, 118, '/page_forbidden', '1'),
(115, 119, '/download_file', '1'),
(116, 120, '/members', '1'),
(117, 121, '/!stacks/header-nav', '1'),
(118, 122, '/!stacks/side-nav', '1'),
(119, 123, '/!stacks/site-name', '1'),
(120, 128, '/about', '1'),
(121, 129, '/search', '1'),
(122, 130, '/blog', '1'),
(123, 131, '/about/guestbook', '1'),
(124, 132, '/about/contact-us', '1'),
(125, 133, '/blog/hello-world', '1'),
(126, 134, '/blog/blog-archives', '1'),
(127, 136, '/blog/test', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionassignments`
--

CREATE TABLE IF NOT EXISTS `pagepermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagepermissionassignments`
--

INSERT INTO `pagepermissionassignments` (`cID`, `pkID`, `paID`) VALUES
(1, 1, 52),
(1, 2, 53),
(1, 3, 54),
(1, 4, 55),
(1, 5, 56),
(1, 6, 57),
(1, 7, 58),
(1, 8, 59),
(1, 9, 60),
(1, 10, 61),
(1, 11, 62),
(1, 12, 63),
(1, 13, 64),
(1, 14, 65),
(1, 15, 66),
(1, 16, 67),
(2, 1, 18),
(2, 2, 20),
(2, 3, 19),
(2, 4, 25),
(2, 5, 21),
(2, 6, 22),
(2, 7, 27),
(2, 8, 29),
(2, 9, 31),
(2, 10, 28),
(2, 11, 32),
(2, 12, 33),
(2, 13, 23),
(2, 14, 26),
(2, 15, 24),
(2, 16, 30),
(42, 1, 34),
(42, 3, 35),
(110, 1, 38),
(110, 3, 39),
(111, 1, 40),
(111, 3, 41);

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionpagetypeaccesslist`
--

CREATE TABLE IF NOT EXISTS `pagepermissionpagetypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagepermissionpagetypeaccesslist`
--


-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionpagetypeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `pagepermissionpagetypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagepermissionpagetypeaccesslistcustom`
--


-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionpropertyaccesslist`
--

CREATE TABLE IF NOT EXISTS `pagepermissionpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagepermissionpropertyaccesslist`
--


-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionpropertyattributeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `pagepermissionpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagepermissionpropertyattributeaccesslistcustom`
--


-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionthemeaccesslist`
--

CREATE TABLE IF NOT EXISTS `pagepermissionthemeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagepermissionthemeaccesslist`
--


-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionthemeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `pagepermissionthemeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagepermissionthemeaccesslistcustom`
--


-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`cID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 14, 0, 0, 0, -1, '0', 0, 0),
(2, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 13, 0, 0, 0, -1, '0', 0, 1),
(3, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/view.php', 0, NULL, 0, 1, 2, 0, 2, 0, -1, '0', 0, 1),
(4, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/write.php', 0, NULL, 0, 1, 0, 0, 3, 0, -1, '0', 0, 1),
(5, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/drafts.php', 0, NULL, 0, 1, 0, 1, 3, 0, -1, '0', 0, 1),
(6, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 1, 2, 0, -1, '0', 0, 1),
(7, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 6, 0, -1, '0', 0, 1),
(8, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 6, 0, -1, '0', 0, 1),
(9, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 6, 0, -1, '0', 0, 1),
(10, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 4, 2, 2, 0, -1, '0', 0, 1),
(11, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 10, 0, -1, '0', 0, 1),
(12, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 10, 0, -1, '0', 0, 1),
(13, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 10, 0, -1, '0', 0, 1),
(14, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 10, 0, -1, '0', 0, 1),
(15, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 6, 3, 2, 0, -1, '0', 0, 1),
(16, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 15, 0, -1, '0', 0, 1),
(17, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups.php', 0, NULL, 0, 1, 0, 1, 15, 0, -1, '0', 0, 1),
(18, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 15, 0, -1, '0', 0, 1),
(19, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 15, 0, -1, '0', 0, 1),
(20, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 15, 0, -1, '0', 0, 1),
(21, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 15, 0, -1, '0', 0, 1),
(22, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports.php', 0, NULL, 0, 1, 4, 4, 2, 0, -1, '0', 0, 1),
(23, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/statistics.php', 0, NULL, 0, 1, 0, 0, 22, 0, -1, '0', 0, 1),
(24, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 0, 1, 22, 0, -1, '0', 0, 1),
(25, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 2, 22, 0, -1, '0', 0, 1),
(26, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 3, 22, 0, -1, '0', 0, 1),
(27, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/view.php', 0, NULL, 0, 1, 4, 5, 2, 0, -1, '0', 0, 1),
(28, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 3, 0, 27, 0, -1, '0', 0, 1),
(29, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/add.php', 0, NULL, 0, 1, 0, 0, 28, 0, -1, '0', 0, 1),
(30, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 1, 28, 0, -1, '0', 0, 1),
(31, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/customize.php', 0, NULL, 0, 1, 0, 2, 28, 0, -1, '0', 0, 1),
(32, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 2, 1, 27, 0, -1, '0', 0, 1),
(33, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 0, 32, 0, -1, '0', 0, 1),
(34, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 2, 27, 0, -1, '0', 0, 1),
(35, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 3, 27, 0, -1, '0', 0, 1),
(36, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/view.php', 0, NULL, 0, 1, 2, 6, 2, 0, -1, '0', 0, 1),
(37, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/list.php', 0, NULL, 0, 1, 0, 0, 36, 0, -1, '0', 0, 1),
(38, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/me.php', 0, NULL, 0, 1, 0, 1, 36, 0, -1, '0', 0, 1),
(39, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 3, 7, 2, 0, -1, '0', 0, 1),
(40, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 39, 0, -1, '0', 0, 1),
(41, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 39, 0, -1, '0', 0, 1),
(42, 0, 1, 0, NULL, NULL, NULL, 1, 42, 'OVERRIDE', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 40, 0, -1, '0', 0, 1),
(43, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 39, 0, -1, '0', 0, 1),
(44, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 8, 2, 0, -1, '0', 0, 1),
(45, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/news.php', 0, NULL, 0, 1, 0, 9, 2, 0, -1, '0', 0, 1),
(46, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 44, 0, -1, '0', 0, 1),
(47, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 44, 0, -1, '0', 0, 1),
(48, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 44, 0, -1, '0', 0, 1),
(49, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 44, 0, -1, '0', 0, 1),
(50, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/add-ons.php', 0, NULL, 0, 1, 0, 4, 44, 0, -1, '0', 0, 1),
(51, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/view.php', 0, NULL, 0, 1, 9, 10, 2, 0, -1, '0', 0, 1),
(52, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 6, 0, 51, 0, -1, '0', 0, 1),
(53, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/site_name.php', 0, NULL, 0, 1, 0, 0, 52, 0, -1, '0', 0, 1),
(54, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 1, 52, 0, -1, '0', 0, 1),
(55, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 2, 52, 0, -1, '0', 0, 1),
(56, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 0, 3, 52, 0, -1, '0', 0, 1),
(57, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 4, 52, 0, -1, '0', 0, 1),
(58, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/interface.php', 0, NULL, 0, 1, 0, 5, 52, 0, -1, '0', 0, 1),
(59, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 6, 1, 51, 0, -1, '0', 0, 1),
(60, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 59, 0, -1, '0', 0, 1),
(61, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/bulk_seo_tool.php', 0, NULL, 0, 1, 0, 1, 59, 0, -1, '0', 0, 1),
(62, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/tracking_codes.php', 0, NULL, 0, 1, 0, 2, 59, 0, -1, '0', 0, 1),
(63, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 59, 0, -1, '0', 0, 1),
(64, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/statistics.php', 0, NULL, 0, 1, 0, 4, 59, 0, -1, '0', 0, 1),
(65, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/search_index.php', 0, NULL, 0, 1, 0, 5, 59, 0, -1, '0', 0, 1),
(66, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 3, 2, 51, 0, -1, '0', 0, 1),
(67, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 66, 0, -1, '0', 0, 1),
(68, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/clear_cache.php', 0, NULL, 0, 1, 0, 1, 66, 0, -1, '0', 0, 1),
(69, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 66, 0, -1, '0', 0, 1),
(70, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 10, 3, 51, 0, -1, '0', 0, 1),
(71, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 70, 0, -1, '0', 0, 1),
(72, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/files.php', 0, NULL, 0, 1, 0, 1, 70, 0, -1, '0', 0, 1),
(73, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/file_types.php', 0, NULL, 0, 1, 0, 2, 70, 0, -1, '0', 0, 1),
(74, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 3, 70, 0, -1, '0', 0, 1),
(75, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 4, 70, 0, -1, '0', 0, 1),
(76, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 5, 70, 0, -1, '0', 0, 1),
(77, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/ip_blacklist.php', 0, NULL, 0, 1, 0, 6, 70, 0, -1, '0', 0, 1),
(78, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 7, 70, 0, -1, '0', 0, 1),
(79, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 8, 70, 0, -1, '0', 0, 1),
(80, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/maintenance_mode.php', 0, NULL, 0, 1, 0, 9, 70, 0, -1, '0', 0, 1),
(81, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 3, 4, 51, 0, -1, '0', 0, 1),
(82, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 0, 81, 0, -1, '0', 0, 1),
(83, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 1, 81, 0, -1, '0', 0, 1),
(84, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/public_registration.php', 0, NULL, 0, 1, 0, 2, 81, 0, -1, '0', 0, 1),
(85, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 2, 5, 51, 0, -1, '0', 0, 1),
(86, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 0, 0, 85, 0, -1, '0', 0, 1),
(87, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 85, 0, -1, '0', 0, 1),
(88, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 2, 6, 51, 0, -1, '0', 0, 1),
(89, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 0, 88, 0, -1, '0', 0, 1),
(90, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 1, 88, 0, -1, '0', 0, 1),
(91, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 5, 7, 51, 0, -1, '0', 0, 1),
(92, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 91, 0, -1, '0', 0, 1),
(93, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 91, 0, -1, '0', 0, 1),
(94, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 91, 0, -1, '0', 0, 1),
(95, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/file_storage_locations.php', 0, NULL, 0, 1, 0, 3, 91, 0, -1, '0', 0, 1),
(96, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 4, 91, 0, -1, '0', 0, 1),
(97, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/view.php', 0, NULL, 0, 1, 3, 8, 51, 0, -1, '0', 0, 1),
(98, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/backup.php', 0, NULL, 0, 1, 0, 0, 97, 0, -1, '0', 0, 1),
(99, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/update.php', 0, NULL, 0, 1, 0, 1, 97, 0, -1, '0', 0, 1),
(100, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/database.php', 0, NULL, 0, 1, 0, 2, 97, 0, -1, '0', 0, 1),
(101, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/composer.php', 0, NULL, 0, 1, 0, 1, 32, 0, -1, '0', 0, 1),
(102, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(103, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(104, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(105, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 11, 2, 0, -1, '0', 0, 1),
(106, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 12, 2, 0, -1, '0', 0, 1),
(107, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!drafts/view.php', 0, NULL, 0, 1, 2, 0, 0, 0, -1, '0', 0, 1),
(108, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(109, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 3, 0, 0, 0, -1, '0', 0, 1),
(110, 0, 1, 0, NULL, NULL, NULL, 1, 110, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(111, 0, 1, 0, NULL, NULL, NULL, 1, 111, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(112, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/view.php', 0, NULL, 0, 1, 4, 0, 1, 0, -1, '0', 0, 1),
(113, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/edit.php', 0, NULL, 0, 1, 0, 0, 112, 0, -1, '0', 0, 1),
(114, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/avatar.php', 0, NULL, 0, 1, 0, 1, 112, 0, -1, '0', 0, 1),
(115, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/messages.php', 0, NULL, 0, 1, 0, 2, 112, 0, -1, '0', 0, 1),
(116, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/friends.php', 0, NULL, 0, 1, 0, 3, 112, 0, -1, '0', 0, 1),
(117, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_not_found.php', 0, NULL, 0, 1, 0, 1, 0, 0, -1, '0', 0, 1),
(118, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_forbidden.php', 0, NULL, 0, 1, 0, 1, 0, 0, -1, '0', 0, 1),
(119, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 1, 1, 0, -1, '0', 0, 1),
(120, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members.php', 0, NULL, 0, 1, 0, 2, 1, 0, -1, '0', 0, 1),
(121, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 109, 0, -1, '0', 0, 1),
(122, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 109, 0, -1, '0', 0, 1),
(123, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 109, 0, -1, '0', 0, 1),
(124, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(125, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(126, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(127, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(128, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 2, 3, 1, 0, -1, '0', 0, 0),
(129, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 1, 0, -1, '0', 0, 0),
(130, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 3, 5, 1, 0, -1, '0', 0, 0),
(131, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 128, 0, -1, '0', 0, 0),
(132, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 128, 0, -1, '0', 0, 0),
(133, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 130, 0, -1, '0', 0, 0),
(134, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 130, 0, -1, '0', 0, 0),
(135, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 0, 0, 0, 107, 0, -1, '0', 0, 0),
(136, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 130, 0, -1, '0', 0, 0),
(137, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 0, 0, 1, 107, 0, -1, '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagesearchindex`
--

CREATE TABLE IF NOT EXISTS `pagesearchindex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagesearchindex`
--

INSERT INTO `pagesearchindex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(3, '', 'Composer', 'Write for your site.', '/dashboard/composer', '2013-10-13 15:24:26', '2013-10-13 15:24:29', NULL, 0),
(4, '', 'Write', '', '/dashboard/composer/write', '2013-10-13 15:24:26', '2013-10-13 15:24:29', NULL, 0),
(5, '', 'Drafts', '', '/dashboard/composer/drafts', '2013-10-13 15:24:26', '2013-10-13 15:24:29', NULL, 0),
(6, '', 'Sitemap', 'Whole world at a glance.', '/dashboard/sitemap', '2013-10-13 15:24:26', '2013-10-13 15:24:29', NULL, 0),
(7, '', 'Full Sitemap', '', '/dashboard/sitemap/full', '2013-10-13 15:24:26', '2013-10-13 15:24:29', NULL, 0),
(8, '', 'Flat View', '', '/dashboard/sitemap/explore', '2013-10-13 15:24:26', '2013-10-13 15:24:29', NULL, 0),
(9, '', 'Page Search', '', '/dashboard/sitemap/search', '2013-10-13 15:24:26', '2013-10-13 15:24:29', NULL, 0),
(11, '', 'File Manager', '', '/dashboard/files/search', '2013-10-13 15:24:26', '2013-10-13 15:24:29', NULL, 0),
(12, '', 'Attributes', '', '/dashboard/files/attributes', '2013-10-13 15:24:27', '2013-10-13 15:24:29', NULL, 0),
(13, '', 'File Sets', '', '/dashboard/files/sets', '2013-10-13 15:24:27', '2013-10-13 15:24:29', NULL, 0),
(14, '', 'Add File Set', '', '/dashboard/files/add_set', '2013-10-13 15:24:27', '2013-10-13 15:24:29', NULL, 0),
(15, '', 'Members', 'Add and manage the user accounts and groups on your website.', '/dashboard/users', '2013-10-13 15:24:27', '2013-10-13 15:24:29', NULL, 0),
(16, '', 'Search Users', '', '/dashboard/users/search', '2013-10-13 15:24:27', '2013-10-13 15:24:29', NULL, 0),
(17, '', 'User Groups', '', '/dashboard/users/groups', '2013-10-13 15:24:27', '2013-10-13 15:24:29', NULL, 0),
(18, '', 'Attributes', '', '/dashboard/users/attributes', '2013-10-13 15:24:27', '2013-10-13 15:24:29', NULL, 0),
(19, '', 'Add User', '', '/dashboard/users/add', '2013-10-13 15:24:27', '2013-10-13 15:24:29', NULL, 0),
(20, '', 'Add Group', '', '/dashboard/users/add_group', '2013-10-13 15:24:27', '2013-10-13 15:24:29', NULL, 0),
(21, '', 'Group Sets', '', '/dashboard/users/group_sets', '2013-10-13 15:24:27', '2013-10-13 15:24:29', NULL, 0),
(22, '', 'Reports', 'Get data from forms and logs.', '/dashboard/reports', '2013-10-13 15:24:27', '2013-10-13 15:24:29', NULL, 0),
(23, '', 'Statistics', 'View your site activity.', '/dashboard/reports/statistics', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(24, '', 'Form Results', 'Get submission data.', '/dashboard/reports/forms', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(25, '', 'Surveys', '', '/dashboard/reports/surveys', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(26, '', 'Logs', '', '/dashboard/reports/logs', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(28, '', 'Themes', 'Reskin your site.', '/dashboard/pages/themes', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(29, '', 'Add', '', '/dashboard/pages/themes/add', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(30, '', 'Inspect', '', '/dashboard/pages/themes/inspect', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(31, '', 'Customize', '', '/dashboard/pages/themes/customize', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(32, '', 'Page Types', 'What goes in your site.', '/dashboard/pages/types', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(34, '', 'Attributes', '', '/dashboard/pages/attributes', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(35, '', 'Single Pages', '', '/dashboard/pages/single', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(36, '', 'Workflow', '', '/dashboard/workflow', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(37, '', 'Workflow List', '', '/dashboard/workflow/list', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(38, '', 'Waiting for Me', '', '/dashboard/workflow/me', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(40, '', 'Stacks', 'Share content across your site.', '/dashboard/blocks/stacks', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(41, '', 'Block & Stack Permissions', 'Control who can add blocks and stacks on your site.', '/dashboard/blocks/permissions', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(42, '', 'Stack List', '', '/dashboard/blocks/stacks/list', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(43, '', 'Block Types', 'Manage the installed block types in your site.', '/dashboard/blocks/types', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(44, '', 'Extend concrete5', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '/dashboard/extend', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(45, '', 'Dashboard', '', '/dashboard/news', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(46, '', 'Add Functionality', 'Install add-ons & themes.', '/dashboard/extend/install', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(47, '', 'Update Add-Ons', 'Update your installed packages.', '/dashboard/extend/update', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(48, '', 'Connect to the Community', 'Connect to the concrete5 community.', '/dashboard/extend/connect', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(49, '', 'Get More Themes', 'Download themes from concrete5.org.', '/dashboard/extend/themes', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(50, '', 'Get More Add-Ons', 'Download add-ons from concrete5.org.', '/dashboard/extend/add-ons', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(51, '', 'System & Settings', 'Secure and setup your site.', '/dashboard/system', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(53, '', 'Site Name', '', '/dashboard/system/basics/site_name', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(54, '', 'Bookmark Icons', 'Bookmark icon and mobile home screen icon setup.', '/dashboard/system/basics/icons', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(55, '', 'Rich Text Editor', '', '/dashboard/system/basics/editor', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(56, '', 'Languages', '', '/dashboard/system/basics/multilingual', '2013-10-13 15:24:27', '2013-10-13 15:24:30', NULL, 0),
(57, '', 'Time Zone', '', '/dashboard/system/basics/timezone', '2013-10-13 15:24:28', '2013-10-13 15:24:30', NULL, 0),
(58, '', 'Interface Preferences', '', '/dashboard/system/basics/interface', '2013-10-13 15:24:28', '2013-10-13 15:24:30', NULL, 0),
(60, '', 'Pretty URLs', '', '/dashboard/system/seo/urls', '2013-10-13 15:24:28', '2013-10-13 15:24:30', NULL, 0),
(61, '', 'Bulk SEO Updater', '', '/dashboard/system/seo/bulk_seo_tool', '2013-10-13 15:24:28', '2013-10-13 15:24:30', NULL, 0),
(62, '', 'Tracking Codes', '', '/dashboard/system/seo/tracking_codes', '2013-10-13 15:24:28', '2013-10-13 15:24:30', NULL, 0),
(63, '', 'Excluded URL Word List', '', '/dashboard/system/seo/excluded', '2013-10-13 15:24:28', '2013-10-13 15:24:30', NULL, 0),
(64, '', 'Statistics', '', '/dashboard/system/seo/statistics', '2013-10-13 15:24:28', '2013-10-13 15:24:30', NULL, 0),
(65, '', 'Search Index', '', '/dashboard/system/seo/search_index', '2013-10-13 15:24:28', '2013-10-13 15:24:30', NULL, 0),
(67, '', 'Cache & Speed Settings', '', '/dashboard/system/optimization/cache', '2013-10-13 15:24:28', '2013-10-13 15:24:30', NULL, 0),
(68, '', 'Clear Cache', '', '/dashboard/system/optimization/clear_cache', '2013-10-13 15:24:28', '2013-10-13 15:24:30', NULL, 0),
(69, '', 'Automated Jobs', '', '/dashboard/system/optimization/jobs', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(71, '', 'Site Access', '', '/dashboard/system/permissions/site', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(72, '', 'File Manager Permissions', '', '/dashboard/system/permissions/files', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(73, '', 'Allowed File Types', '', '/dashboard/system/permissions/file_types', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(74, '', 'Task Permissions', '', '/dashboard/system/permissions/tasks', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(77, '', 'IP Blacklist', '', '/dashboard/system/permissions/ip_blacklist', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(78, '', 'Captcha Setup', '', '/dashboard/system/permissions/captcha', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(79, '', 'Spam Control', '', '/dashboard/system/permissions/antispam', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(80, '', 'Maintenance Mode', '', '/dashboard/system/permissions/maintenance_mode', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(82, '', 'Login Destination', '', '/dashboard/system/registration/postlogin', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(83, '', 'Public Profiles', '', '/dashboard/system/registration/profiles', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(84, '', 'Public Registration', '', '/dashboard/system/registration/public_registration', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(85, '', 'Email', 'Control how your site send and processes mail.', '/dashboard/system/mail', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(86, '', 'SMTP Method', '', '/dashboard/system/mail/method', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(87, '', 'Email Importers', '', '/dashboard/system/mail/importers', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(88, '', 'Attributes', 'Setup attributes for pages, users, files and more.', '/dashboard/system/attributes', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(89, '', 'Sets', 'Group attributes into sets for easier organization', '/dashboard/system/attributes/sets', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(90, '', 'Types', 'Choose which attribute types are available for different items.', '/dashboard/system/attributes/types', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(92, '', 'Environment Information', '', '/dashboard/system/environment/info', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(93, '', 'Debug Settings', '', '/dashboard/system/environment/debug', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(94, '', 'Logging Settings', '', '/dashboard/system/environment/logging', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(95, '', 'File Storage Locations', '', '/dashboard/system/environment/file_storage_locations', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(96, '', 'Proxy Server', '', '/dashboard/system/environment/proxy', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(97, '', 'Backup & Restore', 'Backup or restore your website.', '/dashboard/system/backup_restore', '2013-10-13 15:24:28', '2013-10-13 15:24:31', NULL, 0),
(99, '', 'Update concrete5', '', '/dashboard/system/backup_restore/update', '2013-10-13 15:24:29', '2013-10-13 15:24:31', NULL, 0),
(100, '', 'Database XML', '', '/dashboard/system/backup_restore/database', '2013-10-13 15:24:29', '2013-10-13 15:24:31', NULL, 0),
(105, '	Welcome to concrete5.\n						It''s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor''s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer''s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer''s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive''s Guide \n						  ', 'Welcome to concrete5', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '/dashboard/welcome', '2013-10-13 15:24:29', '2013-10-13 15:24:31', NULL, 0),
(106, '', 'Customize Dashboard Home', '', '/dashboard/home', '2013-10-13 15:24:29', '2013-10-13 15:24:31', NULL, 0),
(1, 'Sidebar  Selamat datang di web  PT. Angin Ribut ! \r\n PT. Angin Ribut ada sebuah perusahaan lokal Penyedia space Hosting dan Domain internet terjangkau untuk Anda. Kami. \r\n Kami menggunakan banyak enggine CMS website, dia antaranya Concrete5 untuk desain website, Wordpress untuk desain Personal Blog, dan masih banyak lagi. \r\n Hanya dengan 200 Ribu pertahunnya kami akan memberikan domain gratis, dengan Space dan Bandwith yang tak terbatas, jangan kawatir akan kehabisan kuota*. \r\n Jika tertarik silahkan menghubungi kami di ikhyar.com@gmail.com   Merdeka kah kita ? Hari ini 18 agustus 2013 1 hari setelah hari kemerdekaan kita (indonesia) Hari itu adalah hari dimana rakyat bersuka cita, bersorak sorai memekikkan “MERDEKA” “Kita sudah merdeka bung” sampai hari ini pun saya tidak tahu, sudah berapa tahun kita merdeka? Melihat siaran pers di televisi, beragam berita yang terjadi, kasus pembunuhan sadis baru-baru ini terjadi […] Selamat Iedul Fitri Alhamdulillah wasyukurillah, Puasa tinggal sebentar lagi, hari yang fitri telah menanti, hari ini adalah jumat terakhir di bulan ramadhan ini, mohon maaf lahir bathin yah Kalau meninjau kembali ibadah dari awal ramadhan, wuihhh jauh deh, seakan ramadhan itu terlewatkan begitu saja, tetapi walau sedikit amalannya tetap harus semangat yah menanti Iedul Fitri nya, ingat di […] Hidup adalah Pilihan Di setiap sudut dari lembaran hidup ini kita akan selalu di hadapkan oleh pilihan ada kiri atau kanan, iya atau tidak, setuju atau tidak setuju, semua itu adalah rangkaian dari kronologis hidup ini mau atau tidak mau kita harus tetap memilih agar roda kehidupan ini tetap berputar. Terkadang kita menyadari bahwa kita sedang berada di […] saya pengen pensiun dari ginian hikz..hikz.. Berawal dari sebuah laptop bersistem operasi windows 7 yang singgah di meja yang berada di kamarku “Mau di install kan linux bede’ dual boot mi saja” begitu kata istriku pada ku, sekilas benak ini berpikir mungkin si empunya belum siap migrasi ke linux, karena migrasi ke linux itu harus siap lahir batin, jangan setengah-setengah apa […] Keunikan dan peran warna di kehidupan Tulisan ini diikutkan pada 8 Minggu Ngeblog bersama Anging Mammiri, minggu keempat. Teringat sewaktu masih di bangku sekolah teknik menengah dulu, pak guru pernah menjelaskan bahwa warna-warna yang tampak saat kita lihat akan mewakili frequensi yang berbeda-beda, kami pun tidak percaya serta merta dan akhirnya pak guru mengambilkan kami sebuah alat peraga Raster yaitu sebuah […] install fedora di GX8250 Asemmm, sobat ku yang satu ini aseli tukang ngerjain orang, sejak pertama kali kenal emang dia orang nya super dumper, sesama penikmat JKT48 harus saling menghormati (http://www.youtube.com/watch?v=24Of84cbA7E) di simak gan konsernya i love it di tulisan ini gag bahas tentang JKT48 tapi report miting semalam di freenode di room fedora-id. Id nya @anak10thn dulu dia […] Negara api menyerang Di hari itu di mana masa-masa damai ketika Avatar menjaga keseimbangan diantara Suku-suku Air, Kerajaan Bumi, Negara Api, dan Pengembara Udara. Tetapi semua itu berubah sejak Negara Api menyerang. Hanya Avatar yang menguasai keempat elemen, dan hanya dia yang mampu menghentikan serangan para Pengendali Api. Banyak fakta lucu ketika negara api menyerang, coba saja cek […] Kepercayaan terhadap keberadaan Dewa Sebelum suku Tolaki mengenal Islam, mereka telah mengenal tuhan dan menyebutnya sebagai Ombu (yang disembah) Ombu di percaya sebagai pencipta alam raya dengan segala isinya baik yang hidup maupun yang mati dipercaya berada diatas langit, sehingga tak asing jika dalam berdoa orang tua dulu sering menengadahkan kepala ke langit dan mengucapkan “poeheno sangia urano lahuene”. […] Ibuku Inspirasiku Tulisan ini diikutkan pada 8 Minggu Ngeblog bersama Anging Mammiri, minggu ketiga. Surga di bawah telapak kaki ibu, begitulah yang kami percayai selama ini, sosok perempuan yang sangat menginspirasi hidup ku. IBU yah.. ibu, sosok yang tegar terkadang cerewet tapi itulah ibu orang yang kritis, care dan sangat-sangat sayang terhadap kami anak-anak nya. Bercerita tentang […] Tata Cara Ruqyah Yang Benar Kemarin tepatnya tanggal 18 April 2013, pas pulang dari kantor istriku bercerita tentang seorang pegawai kami kerasukan syetan atau kena guna-guna katanya, eits… kok bisa, sepengetahuan saya jika syetan hendak merasuki biasa nya massal, bukan hanya satu orang saja, kamu jangan percaya dengan hal seperti itu karena bisa melunturkan aqidah dan keimanan seseorang, sepengatuhuanku kebanyakan […]  ', 'Home', '', NULL, '2013-10-13 15:24:20', '2013-10-13 15:56:52', NULL, 0),
(128, 'Learn More\n																 Visit concrete5.org to learn more from the community and the documentation. You can also browse our marketplace for more add-ons and themes to quickly build the site you really need.  \n																 \n																Getting Help\n																 You can get free help in the forums and post for free to the jobs board.  \n																 You can also pay the concrete5 team of developers to help with any problem you run into. We offer training courses and hosting packages, just let us know how we can help.  ', 'About', '', '/about', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, 0),
(131, '', 'Guestbook', '', '/about/guestbook', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, 0),
(132, 'Contact Us\n									 Building a form is easy to do. Learn how to add a form block.  ', 'Contact Us', '', '/about/contact-us', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, 0),
(129, 'Site Map ', 'Search', '', '/search', '2013-10-13 15:24:35', '2013-10-13 15:24:35', NULL, 0),
(130, 'Tags ', 'Blog', '', '/blog', '2013-10-13 15:24:35', '2013-10-13 15:24:36', NULL, 0),
(133, ' Here is some sample content! I''m writing it using composer!  ', 'Hello World', 'This is my first blog post!', '/blog/hello-world', '2013-10-13 15:24:35', '2013-10-13 15:24:36', NULL, 0),
(134, '', 'Blog Archives', '', '/blog/blog-archives', '2013-10-13 15:24:35', '2013-10-13 15:24:36', NULL, 0),
(136, ' This is my first blog post.  ', 'test', 'test', '/blog/test', '2013-10-13 15:32:00', '2013-10-13 15:33:15', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagestatistics`
--

CREATE TABLE IF NOT EXISTS `pagestatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `pagestatistics`
--

INSERT INTO `pagestatistics` (`pstID`, `cID`, `date`, `timestamp`, `uID`) VALUES
(1, 1, '2013-10-13', '2013-10-13 15:24:31', 1),
(2, 105, '2013-10-13', '2013-10-13 15:24:31', 1),
(3, 2, '2013-10-13', '2013-10-13 15:25:06', 1),
(4, 1, '2013-10-13', '2013-10-13 15:25:29', 1),
(5, 51, '2013-10-13', '2013-10-13 15:26:18', 1),
(6, 53, '2013-10-13', '2013-10-13 15:26:25', 1),
(7, 53, '2013-10-13', '2013-10-13 15:26:35', 1),
(8, 53, '2013-10-13', '2013-10-13 15:26:35', 1),
(9, 2, '2013-10-13', '2013-10-13 15:26:42', 1),
(10, 51, '2013-10-13', '2013-10-13 15:26:47', 1),
(11, 54, '2013-10-13', '2013-10-13 15:26:51', 1),
(12, 51, '2013-10-13', '2013-10-13 15:27:07', 1),
(13, 55, '2013-10-13', '2013-10-13 15:27:10', 1),
(14, 55, '2013-10-13', '2013-10-13 15:27:41', 1),
(15, 55, '2013-10-13', '2013-10-13 15:27:41', 1),
(16, 57, '2013-10-13', '2013-10-13 15:27:45', 1),
(17, 58, '2013-10-13', '2013-10-13 15:27:54', 1),
(18, 51, '2013-10-13', '2013-10-13 15:28:12', 1),
(19, 71, '2013-10-13', '2013-10-13 15:28:22', 1),
(20, 72, '2013-10-13', '2013-10-13 15:28:38', 1),
(21, 73, '2013-10-13', '2013-10-13 15:28:52', 1),
(22, 74, '2013-10-13', '2013-10-13 15:28:56', 1),
(23, 1, '2013-10-13', '2013-10-13 15:29:20', 1),
(24, 51, '2013-10-13', '2013-10-13 15:29:33', 1),
(25, 4, '2013-10-13', '2013-10-13 15:29:58', 1),
(26, 4, '2013-10-13', '2013-10-13 15:29:58', 1),
(27, 4, '2013-10-13', '2013-10-13 15:29:59', 1),
(28, 4, '2013-10-13', '2013-10-13 15:30:07', 1),
(29, 4, '2013-10-13', '2013-10-13 15:30:14', 1),
(30, 4, '2013-10-13', '2013-10-13 15:30:20', 1),
(31, 4, '2013-10-13', '2013-10-13 15:30:27', 1),
(32, 1, '2013-10-13', '2013-10-13 15:30:30', 1),
(33, 4, '2013-10-13', '2013-10-13 15:30:35', 1),
(34, 1, '2013-10-13', '2013-10-13 15:30:36', 1),
(35, 73, '2013-10-13', '2013-10-13 15:31:29', 1),
(36, 2, '2013-10-13', '2013-10-13 15:31:35', 1),
(37, 35, '2013-10-13', '2013-10-13 15:32:02', 1),
(38, 4, '2013-10-13', '2013-10-13 15:32:33', 1),
(39, 4, '2013-10-13', '2013-10-13 15:32:33', 1),
(40, 4, '2013-10-13', '2013-10-13 15:32:33', 1),
(41, 4, '2013-10-13', '2013-10-13 15:32:41', 1),
(42, 4, '2013-10-13', '2013-10-13 15:32:48', 1),
(43, 4, '2013-10-13', '2013-10-13 15:32:49', 1),
(44, 136, '2013-10-13', '2013-10-13 15:32:50', 1),
(45, 1, '2013-10-13', '2013-10-13 15:33:01', 1),
(46, 1, '2013-10-13', '2013-10-13 15:33:07', 1),
(47, 1, '2013-10-13', '2013-10-13 15:33:24', 1),
(48, 45, '2013-10-13', '2013-10-13 15:33:32', 1),
(49, 4, '2013-10-13', '2013-10-13 15:33:47', 1),
(50, 4, '2013-10-13', '2013-10-13 15:33:47', 1),
(51, 4, '2013-10-13', '2013-10-13 15:33:48', 1),
(52, 2, '2013-10-13', '2013-10-13 15:33:52', 1),
(53, 9, '2013-10-13', '2013-10-13 15:34:05', 1),
(54, 1, '2013-10-13', '2013-10-13 15:34:29', 1),
(55, 1, '2013-10-13', '2013-10-13 15:35:09', 1),
(56, 1, '2013-10-13', '2013-10-13 15:44:34', 1),
(57, 110, '2013-10-13', '2013-10-13 15:48:12', 1),
(58, 1, '2013-10-13', '2013-10-13 15:48:12', 0),
(59, 1, '2013-10-13', '2013-10-13 15:48:19', 0),
(60, 1, '2013-10-13', '2013-10-13 15:48:25', 0),
(61, 1, '2013-10-13', '2013-10-13 15:48:36', 0),
(62, 1, '2013-10-13', '2013-10-13 15:48:50', 0),
(63, 128, '2013-10-13', '2013-10-13 15:48:53', 0),
(64, 1, '2013-10-13', '2013-10-13 15:48:56', 0),
(65, 110, '2013-10-13', '2013-10-13 15:49:14', 0),
(66, 110, '2013-10-13', '2013-10-13 15:49:30', 0),
(67, 110, '2013-10-13', '2013-10-13 15:49:40', 0),
(68, 110, '2013-10-13', '2013-10-13 15:49:41', 0),
(69, 110, '2013-10-13', '2013-10-13 15:51:16', 0),
(70, 110, '2013-10-13', '2013-10-13 15:51:25', 0),
(71, 1, '2013-10-13', '2013-10-13 15:51:26', 1),
(72, 1, '2013-10-13', '2013-10-13 15:51:38', 1),
(73, 110, '2013-10-13', '2013-10-13 15:51:49', 1),
(74, 1, '2013-10-13', '2013-10-13 15:51:49', 0),
(75, 110, '2013-10-13', '2013-10-13 15:52:21', 0),
(76, 110, '2013-10-13', '2013-10-13 15:52:33', 0),
(77, 1, '2013-10-13', '2013-10-13 15:52:34', 1),
(78, 2, '2013-10-13', '2013-10-13 15:52:45', 1),
(79, 35, '2013-10-13', '2013-10-13 15:53:04', 1),
(80, 1, '2013-10-13', '2013-10-13 15:53:09', 1),
(81, 51, '2013-10-13', '2013-10-13 15:53:21', 1),
(82, 51, '2013-10-13', '2013-10-13 15:54:01', 1),
(83, 1, '2013-10-13', '2013-10-13 15:54:29', 1),
(84, 1, '2013-10-13', '2013-10-13 15:54:34', 1),
(85, 1, '2013-10-13', '2013-10-13 15:55:57', 1),
(86, 110, '2013-10-13', '2013-10-13 15:56:10', 1),
(87, 1, '2013-10-13', '2013-10-13 15:56:10', 0),
(88, 110, '2013-10-13', '2013-10-13 15:56:17', 0),
(89, 110, '2013-10-13', '2013-10-13 15:56:25', 0),
(90, 1, '2013-10-13', '2013-10-13 15:56:25', 1),
(91, 1, '2013-10-13', '2013-10-13 15:56:27', 1),
(92, 110, '2013-10-13', '2013-10-13 15:56:40', 1),
(93, 1, '2013-10-13', '2013-10-13 15:56:40', 0),
(94, 1, '2013-10-13', '2013-10-13 15:56:42', 0),
(95, 1, '2013-10-15', '2013-10-15 17:13:16', 0),
(96, 128, '2013-10-15', '2013-10-15 17:13:33', 0),
(97, 1, '2013-10-15', '2013-10-15 17:13:40', 0),
(98, 128, '2013-10-15', '2013-10-15 17:13:43', 0),
(99, 129, '2013-10-15', '2013-10-15 17:13:45', 0),
(100, 130, '2013-10-15', '2013-10-15 17:13:48', 0),
(101, 1, '2013-10-15', '2013-10-15 17:13:54', 0),
(102, 1, '2013-10-15', '2013-10-15 17:14:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagethemes`
--

CREATE TABLE IF NOT EXISTS `pagethemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pagethemes`
--

INSERT INTO `pagethemes` (`ptID`, `ptHandle`, `ptName`, `ptDescription`, `pkgID`) VALUES
(1, 'default', 'Plain Yogurt', 'Plain Yogurt is concrete5''s default theme.', 0),
(2, 'greensalad', 'Green Salad Theme', 'This is concrete5''s Green Salad site theme.', 0),
(3, 'dark_chocolate', 'Dark Chocolate', 'Dark Chocolate is concrete5''s default theme in black.', 0),
(4, 'greek_yogurt', 'Greek Yogurt', 'An elegant theme for concrete5.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagethemestyles`
--

CREATE TABLE IF NOT EXISTS `pagethemestyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagethemestyles`
--


-- --------------------------------------------------------

--
-- Table structure for table `pagetypeattributes`
--

CREATE TABLE IF NOT EXISTS `pagetypeattributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagetypeattributes`
--


-- --------------------------------------------------------

--
-- Table structure for table `pagetypes`
--

CREATE TABLE IF NOT EXISTS `pagetypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pagetypes`
--

INSERT INTO `pagetypes` (`ctID`, `ctHandle`, `ctIcon`, `ctName`, `ctIsInternal`, `pkgID`) VALUES
(1, 'core_stack', 'main.png', 'Stack', 1, 0),
(2, 'dashboard_primary_five', 'main.png', 'Dashboard Primary + Five', 1, 0),
(3, 'dashboard_header_four_col', 'main.png', 'Dashboard Header + Four Column', 1, 0),
(4, 'blog_entry', 'template1.png', 'Blog Entry', 0, 0),
(5, 'full', 'main.png', 'Full', 0, 0),
(6, 'left_sidebar', 'template1.png', 'Left Sidebar', 0, 0),
(7, 'right_sidebar', 'right_sidebar.png', 'Right Sidebar', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pageworkflowprogress`
--

CREATE TABLE IF NOT EXISTS `pageworkflowprogress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pageworkflowprogress`
--


-- --------------------------------------------------------

--
-- Table structure for table `permissionaccess`
--

CREATE TABLE IF NOT EXISTS `permissionaccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `permissionaccess`
--

INSERT INTO `permissionaccess` (`paID`, `paIsInUse`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentities`
--

CREATE TABLE IF NOT EXISTS `permissionaccessentities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `permissionaccessentities`
--

INSERT INTO `permissionaccessentities` (`peID`, `petID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 5),
(5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentitygroups`
--

CREATE TABLE IF NOT EXISTS `permissionaccessentitygroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `permissionaccessentitygroups`
--

INSERT INTO `permissionaccessentitygroups` (`pegID`, `peID`, `gID`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentitygroupsets`
--

CREATE TABLE IF NOT EXISTS `permissionaccessentitygroupsets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissionaccessentitygroupsets`
--


-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentitytypecategories`
--

CREATE TABLE IF NOT EXISTS `permissionaccessentitytypecategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissionaccessentitytypecategories`
--

INSERT INTO `permissionaccessentitytypecategories` (`petID`, `pkCategoryID`) VALUES
(1, 1),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(2, 1),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(4, 1),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(5, 1),
(6, 6),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentitytypes`
--

CREATE TABLE IF NOT EXISTS `permissionaccessentitytypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `permissionaccessentitytypes`
--

INSERT INTO `permissionaccessentitytypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1, 'group', 'Group', 0),
(2, 'user', 'User', 0),
(3, 'group_set', 'Group Set', 0),
(4, 'group_combination', 'Group Combination', 0),
(5, 'page_owner', 'Page Owner', 0),
(6, 'file_uploader', 'File Uploader', 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentityusers`
--

CREATE TABLE IF NOT EXISTS `permissionaccessentityusers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissionaccessentityusers`
--


-- --------------------------------------------------------

--
-- Table structure for table `permissionaccesslist`
--

CREATE TABLE IF NOT EXISTS `permissionaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissionaccesslist`
--

INSERT INTO `permissionaccesslist` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1, 1, 0, 10),
(2, 1, 0, 10),
(3, 1, 0, 10),
(4, 1, 0, 10),
(5, 1, 0, 10),
(6, 1, 0, 10),
(7, 1, 0, 10),
(8, 1, 0, 10),
(9, 1, 0, 10),
(10, 1, 0, 10),
(11, 1, 0, 10),
(12, 1, 0, 10),
(13, 1, 0, 10),
(14, 1, 0, 10),
(15, 1, 0, 10),
(16, 1, 0, 10),
(17, 1, 0, 10),
(18, 1, 0, 10),
(19, 1, 0, 10),
(20, 1, 0, 10),
(21, 1, 0, 10),
(22, 1, 0, 10),
(23, 1, 0, 10),
(24, 1, 0, 10),
(25, 1, 0, 10),
(26, 1, 0, 10),
(27, 1, 0, 10),
(28, 1, 0, 10),
(29, 1, 0, 10),
(30, 1, 0, 10),
(31, 1, 0, 10),
(32, 1, 0, 10),
(33, 1, 0, 10),
(34, 2, 0, 10),
(35, 2, 0, 10),
(36, 2, 0, 10),
(37, 2, 0, 10),
(38, 2, 0, 10),
(38, 3, 0, 10),
(39, 2, 0, 10),
(39, 3, 0, 10),
(40, 2, 0, 10),
(41, 2, 0, 10),
(42, 2, 0, 10),
(43, 2, 0, 10),
(43, 1, 0, 10),
(44, 1, 0, 10),
(45, 1, 0, 10),
(46, 1, 0, 10),
(47, 1, 0, 10),
(48, 1, 0, 10),
(49, 1, 0, 10),
(50, 1, 0, 10),
(51, 1, 0, 10),
(52, 2, 0, 10),
(53, 1, 0, 10),
(54, 1, 0, 10),
(55, 1, 0, 10),
(56, 1, 0, 10),
(57, 1, 0, 10),
(58, 1, 0, 10),
(59, 1, 0, 10),
(60, 1, 0, 10),
(61, 1, 0, 10),
(62, 1, 0, 10),
(63, 1, 0, 10),
(64, 1, 0, 10),
(65, 1, 0, 10),
(66, 1, 0, 10),
(67, 1, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessworkflows`
--

CREATE TABLE IF NOT EXISTS `permissionaccessworkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissionaccessworkflows`
--


-- --------------------------------------------------------

--
-- Table structure for table `permissionassignments`
--

CREATE TABLE IF NOT EXISTS `permissionassignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissionassignments`
--

INSERT INTO `permissionassignments` (`paID`, `pkID`) VALUES
(1, 17),
(2, 18),
(3, 55),
(4, 56),
(5, 57),
(6, 58),
(7, 60),
(8, 61),
(9, 62),
(10, 63),
(11, 64),
(12, 66),
(13, 67),
(14, 68),
(15, 69),
(16, 70),
(17, 71);

-- --------------------------------------------------------

--
-- Table structure for table `permissiondurationobjects`
--

CREATE TABLE IF NOT EXISTS `permissiondurationobjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `permissiondurationobjects`
--


-- --------------------------------------------------------

--
-- Table structure for table `permissionkeycategories`
--

CREATE TABLE IF NOT EXISTS `permissionkeycategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `permissionkeycategories`
--

INSERT INTO `permissionkeycategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'single_page', NULL),
(3, 'stack', NULL),
(4, 'composer_page', NULL),
(5, 'user', NULL),
(6, 'file_set', NULL),
(7, 'file', NULL),
(8, 'area', NULL),
(9, 'block_type', NULL),
(10, 'block', NULL),
(11, 'admin', NULL),
(12, 'sitemap', NULL),
(13, 'marketplace_newsflow', NULL),
(14, 'basic_workflow', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissionkeys`
--

CREATE TABLE IF NOT EXISTS `permissionkeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `permissionkeys`
--

INSERT INTO `permissionkeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
(3, 'view_page_in_sitemap', 'View Page in Sitemap', 0, 0, 'Controls whether a user can see a page in the sitemap or intelligent search.', 1, 0),
(4, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
(5, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
(6, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
(7, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
(8, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
(9, 'edit_page_type', 'Change Page Type', 0, 0, 'Ability to change just the page type for this page, also check out Theme permissions.', 1, 0),
(10, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
(11, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site''s Trash.', 1, 0),
(12, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
(13, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
(14, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
(15, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
(16, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
(17, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 9, 0),
(18, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 9, 0),
(19, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 8, 0),
(20, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 8, 0),
(21, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 8, 0),
(22, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 8, 0),
(23, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 8, 0),
(24, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area''s custom CSS.', 8, 0),
(25, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 8, 0),
(26, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 8, 0),
(27, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 8, 0),
(28, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 10, 0),
(29, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 10, 0),
(30, 'edit_block_custom_template', 'Change Custom Template', 0, 0, 'Controls whether users can change the custom template on this block. This overrides any area or page permissions.', 10, 0),
(31, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 10, 0),
(32, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 10, 0),
(33, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 10, 0),
(34, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 10, 0),
(35, 'view_file_set_file', 'View Files', 0, 0, 'Can view and download files in the site.', 6, 0),
(36, 'search_file_set', 'Search Files in File Manager', 0, 0, 'Can access the file manager', 6, 0),
(37, 'edit_file_set_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 6, 0),
(38, 'edit_file_set_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in set.', 6, 0),
(39, 'copy_file_set_files', 'Copy File', 0, 0, 'Can copy files in file set.', 6, 0),
(40, 'edit_file_set_permissions', 'Edit File Access', 0, 0, 'Can edit access to file sets.', 6, 0),
(41, 'delete_file_set', 'Delete File Set', 0, 0, '', 6, 0),
(42, 'delete_file_set_files', 'Delete File', 0, 0, 'Can delete files in set.', 6, 0),
(43, 'add_file', 'Add File', 0, 1, 'Can add files to set.', 6, 0),
(44, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 7, 0),
(45, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 7, 0),
(46, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 7, 0),
(47, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 7, 0),
(48, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 7, 0),
(49, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 7, 0),
(50, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 7, 0),
(51, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 14, 0),
(52, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 14, 0),
(53, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 14, 0),
(54, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 14, 0),
(55, 'access_user_search', 'Access User Search', 0, 1, '', 5, 0),
(56, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 5, 0),
(57, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 5, 0),
(58, 'activate_user', 'Activate/Deactivate User', 0, 0, NULL, 5, 0),
(59, 'sudo', 'Sign in as User', 0, 0, NULL, 5, 0),
(60, 'delete_user', 'Delete User', 0, 0, NULL, 5, 0),
(61, 'access_group_search', 'Access Group Search', 0, 0, '', 5, 0),
(62, 'edit_groups', 'Edit Groups', 0, 0, '', 5, 0),
(63, 'assign_user_groups', 'Assign Groups to User', 0, 1, '', 5, 0),
(64, 'backup', 'Perform Backups', 0, 0, NULL, 11, 0),
(65, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 11, 0),
(66, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 12, 0),
(67, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 11, 0),
(68, 'empty_trash', 'Empty Trash', 0, 0, NULL, 11, 0),
(69, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 13, 0),
(70, 'install_packages', 'Install Packages', 0, 0, NULL, 13, 0),
(71, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pilecontents`
--

CREATE TABLE IF NOT EXISTS `pilecontents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `pilecontents`
--


-- --------------------------------------------------------

--
-- Table structure for table `piles`
--

CREATE TABLE IF NOT EXISTS `piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `piles`
--


-- --------------------------------------------------------

--
-- Table structure for table `queuemessages`
--

CREATE TABLE IF NOT EXISTS `queuemessages` (
  `message_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) DEFAULT NULL,
  `body` varchar(8192) NOT NULL,
  `md5` varchar(32) NOT NULL,
  `timeout` decimal(14,0) unsigned DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `queuemessages`
--


-- --------------------------------------------------------

--
-- Table structure for table `queuepageduplicationrelations`
--

CREATE TABLE IF NOT EXISTS `queuepageduplicationrelations` (
  `queue_name` varchar(255) NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queuepageduplicationrelations`
--


-- --------------------------------------------------------

--
-- Table structure for table `queues`
--

CREATE TABLE IF NOT EXISTS `queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) NOT NULL,
  `timeout` int(5) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `queues`
--


-- --------------------------------------------------------

--
-- Table structure for table `signuprequests`
--

CREATE TABLE IF NOT EXISTS `signuprequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `signuprequests`
--


-- --------------------------------------------------------

--
-- Table structure for table `stacks`
--

CREATE TABLE IF NOT EXISTS `stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `stacks`
--

INSERT INTO `stacks` (`stID`, `stName`, `stType`, `cID`) VALUES
(1, 'Header Nav', 20, 121),
(2, 'Side Nav', 0, 122),
(3, 'Site Name', 20, 123);

-- --------------------------------------------------------

--
-- Table structure for table `systemantispamlibraries`
--

CREATE TABLE IF NOT EXISTS `systemantispamlibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `systemantispamlibraries`
--


-- --------------------------------------------------------

--
-- Table structure for table `systemcaptchalibraries`
--

CREATE TABLE IF NOT EXISTS `systemcaptchalibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `systemcaptchalibraries`
--

INSERT INTO `systemcaptchalibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('securimage', 'SecurImage (Default)', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `systemnotifications`
--

CREATE TABLE IF NOT EXISTS `systemnotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `systemnotifications`
--


-- --------------------------------------------------------

--
-- Table structure for table `userattributekeys`
--

CREATE TABLE IF NOT EXISTS `userattributekeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userattributekeys`
--

INSERT INTO `userattributekeys` (`akID`, `uakProfileDisplay`, `uakMemberListDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `displayOrder`, `uakIsActive`) VALUES
(10, 0, 0, 1, 0, 1, 0, 1, 1),
(11, 0, 0, 1, 0, 1, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userattributevalues`
--

CREATE TABLE IF NOT EXISTS `userattributevalues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userattributevalues`
--


-- --------------------------------------------------------

--
-- Table structure for table `userbannedips`
--

CREATE TABLE IF NOT EXISTS `userbannedips` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userbannedips`
--


-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE IF NOT EXISTS `usergroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usergroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `useropenids`
--

CREATE TABLE IF NOT EXISTS `useropenids` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useropenids`
--


-- --------------------------------------------------------

--
-- Table structure for table `userpermissionassigngroupaccesslist`
--

CREATE TABLE IF NOT EXISTS `userpermissionassigngroupaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpermissionassigngroupaccesslist`
--


-- --------------------------------------------------------

--
-- Table structure for table `userpermissionassigngroupaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `userpermissionassigngroupaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpermissionassigngroupaccesslistcustom`
--


-- --------------------------------------------------------

--
-- Table structure for table `userpermissioneditpropertyaccesslist`
--

CREATE TABLE IF NOT EXISTS `userpermissioneditpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpermissioneditpropertyaccesslist`
--


-- --------------------------------------------------------

--
-- Table structure for table `userpermissioneditpropertyattributeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `userpermissioneditpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpermissioneditpropertyattributeaccesslistcustom`
--


-- --------------------------------------------------------

--
-- Table structure for table `userpermissionusersearchaccesslist`
--

CREATE TABLE IF NOT EXISTS `userpermissionusersearchaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpermissionusersearchaccesslist`
--


-- --------------------------------------------------------

--
-- Table structure for table `userpermissionusersearchaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `userpermissionusersearchaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpermissionusersearchaccesslistcustom`
--


-- --------------------------------------------------------

--
-- Table structure for table `userpermissionviewattributeaccesslist`
--

CREATE TABLE IF NOT EXISTS `userpermissionviewattributeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpermissionviewattributeaccesslist`
--


-- --------------------------------------------------------

--
-- Table structure for table `userpermissionviewattributeaccesslistcustom`
--

CREATE TABLE IF NOT EXISTS `userpermissionviewattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpermissionviewattributeaccesslistcustom`
--


-- --------------------------------------------------------

--
-- Table structure for table `userpointhistory`
--

CREATE TABLE IF NOT EXISTS `userpointhistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `userpointhistory`
--


-- --------------------------------------------------------

--
-- Table structure for table `userprivatemessages`
--

CREATE TABLE IF NOT EXISTS `userprivatemessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `userprivatemessages`
--


-- --------------------------------------------------------

--
-- Table structure for table `userprivatemessagesto`
--

CREATE TABLE IF NOT EXISTS `userprivatemessagesto` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userprivatemessagesto`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(64) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsValidated`, `uIsFullRecord`, `uDateAdded`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uLastIP`, `uPreviousLogin`, `uNumLogins`, `uTimezone`, `uDefaultLanguage`) VALUES
(1, 'admin', 'ikhyar.com@gmail.com', '57e58a867a54f9c8f7b34ba4168a70f9', '1', -1, 1, '2013-10-13 15:24:20', 0, 1381651009, 1381651009, 0, 1381650778, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usersearchindexattributes`
--

CREATE TABLE IF NOT EXISTS `usersearchindexattributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usersearchindexattributes`
--


-- --------------------------------------------------------

--
-- Table structure for table `usersfriends`
--

CREATE TABLE IF NOT EXISTS `usersfriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `usersfriends`
--


-- --------------------------------------------------------

--
-- Table structure for table `uservalidationhashes`
--

CREATE TABLE IF NOT EXISTS `uservalidationhashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `uservalidationhashes`
--

INSERT INTO `uservalidationhashes` (`uvhID`, `uID`, `uHash`, `type`, `uDateGenerated`, `uDateRedeemed`) VALUES
(1, 1, 'rs82Fi7DuxuH', 1, 1381650604, 0);

-- --------------------------------------------------------

--
-- Table structure for table `workflowprogress`
--

CREATE TABLE IF NOT EXISTS `workflowprogress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wrID` (`wrID`),
  KEY `wpIsCompleted` (`wpIsCompleted`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `workflowprogress`
--


-- --------------------------------------------------------

--
-- Table structure for table `workflowprogresscategories`
--

CREATE TABLE IF NOT EXISTS `workflowprogresscategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `workflowprogresscategories`
--

INSERT INTO `workflowprogresscategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'file', NULL),
(3, 'user', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workflowprogresshistory`
--

CREATE TABLE IF NOT EXISTS `workflowprogresshistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `workflowprogresshistory`
--

INSERT INTO `workflowprogresshistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1, 1, '2013-10-13 15:32:50', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:3:"136";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"1";}'),
(2, 2, '2013-10-13 15:51:37', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"2";}'),
(3, 3, '2013-10-13 15:56:27', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"13";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"3";s:4:"wrID";s:1:"3";}');

-- --------------------------------------------------------

--
-- Table structure for table `workflowrequestobjects`
--

CREATE TABLE IF NOT EXISTS `workflowrequestobjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `workflowrequestobjects`
--


-- --------------------------------------------------------

--
-- Table structure for table `workflows`
--

CREATE TABLE IF NOT EXISTS `workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `workflows`
--


-- --------------------------------------------------------

--
-- Table structure for table `workflowtypes`
--

CREATE TABLE IF NOT EXISTS `workflowtypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `workflowtypes`
--

INSERT INTO `workflowtypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1, 'basic', 'Basic Workflow', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
