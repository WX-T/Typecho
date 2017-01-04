/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : typecho

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-01-04 16:24:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `coid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0',
  `post_id` bigint(64) NOT NULL DEFAULT '0',
  `created` int(10) unsigned DEFAULT '0',
  `author` varchar(200) DEFAULT NULL,
  `authorId` int(10) unsigned DEFAULT '0',
  `ownerId` int(10) unsigned DEFAULT '0',
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `text` text,
  `type` varchar(16) DEFAULT 'comment',
  `status` varchar(16) DEFAULT 'approved',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`coid`),
  KEY `cid` (`cid`),
  KEY `created` (`created`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '1', '0', '1483432368', 'Typecho', '0', '1', null, 'http://typecho.org', '127.0.0.1', 'Typecho 1.0/14.10.10', '欢迎加入 Typecho 大家族', 'comment', 'approved', '0');

-- ----------------------------
-- Table structure for contents
-- ----------------------------
DROP TABLE IF EXISTS `contents`;
CREATE TABLE `contents` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `modified` int(10) unsigned DEFAULT '0',
  `text` text,
  `order` int(10) unsigned DEFAULT '0',
  `authorId` int(10) unsigned DEFAULT '0',
  `template` varchar(32) DEFAULT NULL,
  `type` varchar(16) DEFAULT 'post',
  `status` varchar(16) DEFAULT 'publish',
  `password` varchar(32) DEFAULT NULL,
  `commentsNum` int(10) unsigned DEFAULT '0',
  `allowComment` char(1) DEFAULT '0',
  `allowPing` char(1) DEFAULT '0',
  `allowFeed` char(1) DEFAULT '0',
  `parent` int(10) unsigned DEFAULT '0',
  `views` int(10) DEFAULT '0',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `slug` (`slug`),
  KEY `created` (`created`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contents
-- ----------------------------
INSERT INTO `contents` VALUES ('1', '欢迎使用 Typecho', 'start', '1483432368', '1483432368', '<!--markdown-->如果您看到这篇文章,表示您的 blog 已经安装成功.', '0', '1', null, 'post', 'publish', null, '1', '1', '1', '1', '0', '7');
INSERT INTO `contents` VALUES ('2', '关于', 'start-page', '1483432368', '1483432368', '<!--markdown-->本页面由 Typecho 创建, 这只是个测试页面.', '0', '1', null, 'page', 'publish', null, '0', '1', '1', '1', '0', '2');
INSERT INTO `contents` VALUES ('3', 'asdsadsdasd', '3', '1483512540', '1483512645', '<!--markdown-->**加粗文字qweqwe**\r\n![75_18090143_2.gif][1]\r\n    <?php\r\n    echo 123;\r\n?>\r\n\r\n----------\r\n\r\n - 列表项目\r\n\r\n----\r\ngfdgd\r\n\r\n\r\ndfgd\r\n\r\n\r\n<!--more-->\r\n\r\nfgdgd\r\n\r\n> dfgdgdgdg\r\n\r\n-------\r\n\r\n\r\n  [1]: http://localhost/build/usr/uploads/2017/01/531181444.gif', '0', '1', null, 'post', 'publish', null, '0', '1', '1', '1', '0', '0');
INSERT INTO `contents` VALUES ('4', '75_18090143_2.gif', '75_18090143_2-gif', '1483512639', '1483512639', 'a:5:{s:4:\"name\";s:17:\"75_18090143_2.gif\";s:4:\"path\";s:34:\"/usr/uploads/2017/01/531181444.gif\";s:4:\"size\";i:551034;s:4:\"type\";s:3:\"gif\";s:4:\"mime\";s:9:\"image/gif\";}', '1', '1', null, 'attachment', 'publish', null, '0', '1', '0', '1', '3', '0');
INSERT INTO `contents` VALUES ('5', 'sdfsf', '5', '1483515955', '1483515955', '<!--markdown-->sdfsaf', '0', '1', 'page-timeline-material.php', 'page', 'publish', null, '0', '1', '1', '1', '0', '0');

-- ----------------------------
-- Table structure for duoshuo
-- ----------------------------
DROP TABLE IF EXISTS `duoshuo`;
CREATE TABLE `duoshuo` (
  `name` varchar(32) NOT NULL,
  `value` varchar(200) NOT NULL DEFAULT '',
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of duoshuo
-- ----------------------------
INSERT INTO `duoshuo` VALUES ('short_name', '', '多说 short_name');
INSERT INTO `duoshuo` VALUES ('secret', '', '多说密匙');
INSERT INTO `duoshuo` VALUES ('synchronized', '0', '是否已同步');
INSERT INTO `duoshuo` VALUES ('sync_lock', '0', '同步锁定');
INSERT INTO `duoshuo` VALUES ('last_log_id', '0', '最后同步log_id');
INSERT INTO `duoshuo` VALUES ('user_id', '0', '管理员对应多说ID');

-- ----------------------------
-- Table structure for fields
-- ----------------------------
DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` varchar(8) DEFAULT 'str',
  `str_value` text,
  `int_value` int(10) DEFAULT '0',
  `float_value` float DEFAULT '0',
  PRIMARY KEY (`cid`,`name`),
  KEY `int_value` (`int_value`),
  KEY `float_value` (`float_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fields
-- ----------------------------
INSERT INTO `fields` VALUES ('3', 'dfgd', 'int', null, '12122221', '0');
INSERT INTO `fields` VALUES ('3', 'asdad', 'str', 'asdadada', '0', '0');

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'links表主键',
  `name` varchar(200) DEFAULT NULL COMMENT 'links名称',
  `url` varchar(200) DEFAULT NULL COMMENT 'links网址',
  `sort` varchar(200) DEFAULT NULL COMMENT 'links分类',
  `image` varchar(200) DEFAULT NULL COMMENT 'links图片',
  `description` varchar(200) DEFAULT NULL COMMENT 'links描述',
  `user` varchar(200) DEFAULT NULL COMMENT '自定义',
  `order` int(10) unsigned DEFAULT '0' COMMENT 'links排序',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of links
-- ----------------------------

-- ----------------------------
-- Table structure for metas
-- ----------------------------
DROP TABLE IF EXISTS `metas`;
CREATE TABLE `metas` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `count` int(10) unsigned DEFAULT '0',
  `order` int(10) unsigned DEFAULT '0',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`mid`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of metas
-- ----------------------------
INSERT INTO `metas` VALUES ('1', 'PHP', 'PHP', 'category', 'php', '2', '1', '0');
INSERT INTO `metas` VALUES ('2', 'Python', 'py', 'category', 'python', '0', '2', '0');

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `name` varchar(32) NOT NULL,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`name`,`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES ('theme', '0', 'Material');
INSERT INTO `options` VALUES ('theme:Material', '0', 'a:36:{s:6:\"switch\";a:3:{i:0;s:12:\"SmoothScroll\";i:1;s:15:\"ShowLoadingLine\";i:2;s:5:\"Pangu\";}s:8:\"analysis\";s:0:\"\";s:12:\"loadingcolor\";s:7:\"#FFB5C5\";s:13:\"loadingbuffer\";s:2:\"20\";s:6:\"BGtype\";s:1:\"1\";s:7:\"bgcolor\";s:0:\"\";s:12:\"GradientType\";s:1:\"0\";s:15:\"ThumbnailOption\";s:1:\"1\";s:10:\"TitleColor\";s:4:\"#FFF\";s:13:\"RandomPicAmnt\";s:1:\"5\";s:9:\"commentis\";s:1:\"0\";s:11:\"DSshortname\";s:0:\"\";s:6:\"CDNURL\";s:0:\"\";s:6:\"langis\";s:1:\"0\";s:8:\"sticky_1\";s:0:\"\";s:8:\"sticky_2\";s:0:\"\";s:10:\"ThemeColor\";s:7:\"#039BE5\";s:10:\"alinkcolor\";s:7:\"#039BE5\";s:16:\"ChromeThemeColor\";s:7:\"#039BE5\";s:9:\"avatarURL\";s:56:\"http://localhost/build/usr/themes/Material/img/hiyou.jpg\";s:7:\"favicon\";s:0:\"\";s:8:\"dailypic\";s:56:\"http://localhost/build/usr/themes/Material/img/hiyou.jpg\";s:4:\"logo\";s:56:\"http://localhost/build/usr/themes/Material/img/hiyou.jpg\";s:12:\"dailypicLink\";s:1:\"#\";s:8:\"logoLink\";s:0:\"\";s:6:\"slogan\";s:12:\"叫我尔康\";s:9:\"footersns\";a:1:{i:0;s:10:\"ShowGithub\";}s:10:\"TwitterURL\";s:13:\"www.baidu.com\";s:11:\"FacebookURL\";s:13:\"www.baidu.com\";s:13:\"GooglePlusURL\";s:13:\"www.baidu.com\";s:8:\"WeiboURL\";s:13:\"www.baidu.com\";s:12:\"InstagramURL\";s:13:\"www.baidu.com\";s:9:\"GithubURL\";s:13:\"www.baidu.com\";s:9:\"TumblrURL\";s:13:\"www.baidu.com\";s:11:\"CustomFonts\";s:124:\"Roboto, \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'微软雅黑\', Arial, sans-serif\";s:12:\"RobotoSource\";s:1:\"1\";}');
INSERT INTO `options` VALUES ('Duoshuo_theme', '0', 'default');
INSERT INTO `options` VALUES ('timezone', '0', '28800');
INSERT INTO `options` VALUES ('lang', '0', null);
INSERT INTO `options` VALUES ('charset', '0', 'UTF-8');
INSERT INTO `options` VALUES ('contentType', '0', 'text/html');
INSERT INTO `options` VALUES ('gzip', '0', '0');
INSERT INTO `options` VALUES ('generator', '0', 'Typecho 1.0/14.10.10');
INSERT INTO `options` VALUES ('title', '0', 'Hello World');
INSERT INTO `options` VALUES ('description', '0', 'Just So So ...');
INSERT INTO `options` VALUES ('keywords', '0', 'php,blog');
INSERT INTO `options` VALUES ('rewrite', '0', '0');
INSERT INTO `options` VALUES ('frontPage', '0', 'recent');
INSERT INTO `options` VALUES ('frontArchive', '0', '0');
INSERT INTO `options` VALUES ('commentsRequireMail', '0', '1');
INSERT INTO `options` VALUES ('commentsWhitelist', '0', '0');
INSERT INTO `options` VALUES ('commentsRequireURL', '0', '0');
INSERT INTO `options` VALUES ('commentsRequireModeration', '0', '0');
INSERT INTO `options` VALUES ('plugins', '0', 'a:2:{s:9:\"activated\";a:2:{s:10:\"HelloWorld\";a:1:{s:7:\"handles\";a:1:{s:21:\"admin/menu.php:navBar\";a:1:{i:0;a:2:{i:0;s:17:\"HelloWorld_Plugin\";i:1;s:6:\"render\";}}}}s:6:\"Uptime\";a:1:{s:7:\"handles\";a:1:{s:21:\"Widget_Archive:footer\";a:1:{i:0;a:2:{i:0;s:13:\"Uptime_Plugin\";i:1;s:6:\"footer\";}}}}}s:7:\"handles\";a:2:{s:21:\"admin/menu.php:navBar\";a:1:{i:0;a:2:{i:0;s:17:\"HelloWorld_Plugin\";i:1;s:6:\"render\";}}s:21:\"Widget_Archive:footer\";a:1:{i:0;a:2:{i:0;s:13:\"Uptime_Plugin\";i:1;s:6:\"footer\";}}}}');
INSERT INTO `options` VALUES ('commentDateFormat', '0', 'F jS, Y \\a\\t h:i a');
INSERT INTO `options` VALUES ('siteUrl', '0', 'http://localhost/build');
INSERT INTO `options` VALUES ('defaultCategory', '0', '1');
INSERT INTO `options` VALUES ('allowRegister', '0', '0');
INSERT INTO `options` VALUES ('defaultAllowComment', '0', '1');
INSERT INTO `options` VALUES ('defaultAllowPing', '0', '1');
INSERT INTO `options` VALUES ('defaultAllowFeed', '0', '1');
INSERT INTO `options` VALUES ('pageSize', '0', '5');
INSERT INTO `options` VALUES ('postsListSize', '0', '10');
INSERT INTO `options` VALUES ('commentsListSize', '0', '10');
INSERT INTO `options` VALUES ('commentsHTMLTagAllowed', '0', null);
INSERT INTO `options` VALUES ('postDateFormat', '0', 'Y-m-d');
INSERT INTO `options` VALUES ('feedFullText', '0', '0');
INSERT INTO `options` VALUES ('editorSize', '0', '350');
INSERT INTO `options` VALUES ('autoSave', '0', '0');
INSERT INTO `options` VALUES ('markdown', '0', '1');
INSERT INTO `options` VALUES ('commentsMaxNestingLevels', '0', '5');
INSERT INTO `options` VALUES ('commentsPostTimeout', '0', '2592000');
INSERT INTO `options` VALUES ('commentsUrlNofollow', '0', '1');
INSERT INTO `options` VALUES ('commentsShowUrl', '0', '1');
INSERT INTO `options` VALUES ('commentsMarkdown', '0', '0');
INSERT INTO `options` VALUES ('commentsPageBreak', '0', '0');
INSERT INTO `options` VALUES ('commentsThreaded', '0', '1');
INSERT INTO `options` VALUES ('commentsPageSize', '0', '20');
INSERT INTO `options` VALUES ('commentsPageDisplay', '0', 'last');
INSERT INTO `options` VALUES ('commentsOrder', '0', 'ASC');
INSERT INTO `options` VALUES ('commentsCheckReferer', '0', '1');
INSERT INTO `options` VALUES ('commentsAutoClose', '0', '0');
INSERT INTO `options` VALUES ('commentsPostIntervalEnable', '0', '1');
INSERT INTO `options` VALUES ('commentsPostInterval', '0', '60');
INSERT INTO `options` VALUES ('commentsShowCommentOnly', '0', '0');
INSERT INTO `options` VALUES ('commentsAvatar', '0', '1');
INSERT INTO `options` VALUES ('commentsAvatarRating', '0', 'G');
INSERT INTO `options` VALUES ('commentsAntiSpam', '0', '1');
INSERT INTO `options` VALUES ('routingTable', '0', 'a:26:{i:0;a:25:{s:5:\"index\";a:6:{s:3:\"url\";s:1:\"/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:8:\"|^[/]?$|\";s:6:\"format\";s:1:\"/\";s:6:\"params\";a:0:{}}s:7:\"archive\";a:6:{s:3:\"url\";s:6:\"/blog/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:13:\"|^/blog[/]?$|\";s:6:\"format\";s:6:\"/blog/\";s:6:\"params\";a:0:{}}s:2:\"do\";a:6:{s:3:\"url\";s:22:\"/action/[action:alpha]\";s:6:\"widget\";s:9:\"Widget_Do\";s:6:\"action\";s:6:\"action\";s:4:\"regx\";s:32:\"|^/action/([_0-9a-zA-Z-]+)[/]?$|\";s:6:\"format\";s:10:\"/action/%s\";s:6:\"params\";a:1:{i:0;s:6:\"action\";}}s:4:\"post\";a:6:{s:3:\"url\";s:24:\"/archives/[cid:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:26:\"|^/archives/([0-9]+)[/]?$|\";s:6:\"format\";s:13:\"/archives/%s/\";s:6:\"params\";a:1:{i:0;s:3:\"cid\";}}s:10:\"attachment\";a:6:{s:3:\"url\";s:26:\"/attachment/[cid:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:28:\"|^/attachment/([0-9]+)[/]?$|\";s:6:\"format\";s:15:\"/attachment/%s/\";s:6:\"params\";a:1:{i:0;s:3:\"cid\";}}s:8:\"category\";a:6:{s:3:\"url\";s:17:\"/category/[slug]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:25:\"|^/category/([^/]+)[/]?$|\";s:6:\"format\";s:13:\"/category/%s/\";s:6:\"params\";a:1:{i:0;s:4:\"slug\";}}s:3:\"tag\";a:6:{s:3:\"url\";s:12:\"/tag/[slug]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:20:\"|^/tag/([^/]+)[/]?$|\";s:6:\"format\";s:8:\"/tag/%s/\";s:6:\"params\";a:1:{i:0;s:4:\"slug\";}}s:6:\"author\";a:6:{s:3:\"url\";s:22:\"/author/[uid:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:24:\"|^/author/([0-9]+)[/]?$|\";s:6:\"format\";s:11:\"/author/%s/\";s:6:\"params\";a:1:{i:0;s:3:\"uid\";}}s:6:\"search\";a:6:{s:3:\"url\";s:19:\"/search/[keywords]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:23:\"|^/search/([^/]+)[/]?$|\";s:6:\"format\";s:11:\"/search/%s/\";s:6:\"params\";a:1:{i:0;s:8:\"keywords\";}}s:10:\"index_page\";a:6:{s:3:\"url\";s:21:\"/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:22:\"|^/page/([0-9]+)[/]?$|\";s:6:\"format\";s:9:\"/page/%s/\";s:6:\"params\";a:1:{i:0;s:4:\"page\";}}s:12:\"archive_page\";a:6:{s:3:\"url\";s:26:\"/blog/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:27:\"|^/blog/page/([0-9]+)[/]?$|\";s:6:\"format\";s:14:\"/blog/page/%s/\";s:6:\"params\";a:1:{i:0;s:4:\"page\";}}s:13:\"category_page\";a:6:{s:3:\"url\";s:32:\"/category/[slug]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:34:\"|^/category/([^/]+)/([0-9]+)[/]?$|\";s:6:\"format\";s:16:\"/category/%s/%s/\";s:6:\"params\";a:2:{i:0;s:4:\"slug\";i:1;s:4:\"page\";}}s:8:\"tag_page\";a:6:{s:3:\"url\";s:27:\"/tag/[slug]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:29:\"|^/tag/([^/]+)/([0-9]+)[/]?$|\";s:6:\"format\";s:11:\"/tag/%s/%s/\";s:6:\"params\";a:2:{i:0;s:4:\"slug\";i:1;s:4:\"page\";}}s:11:\"author_page\";a:6:{s:3:\"url\";s:37:\"/author/[uid:digital]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:33:\"|^/author/([0-9]+)/([0-9]+)[/]?$|\";s:6:\"format\";s:14:\"/author/%s/%s/\";s:6:\"params\";a:2:{i:0;s:3:\"uid\";i:1;s:4:\"page\";}}s:11:\"search_page\";a:6:{s:3:\"url\";s:34:\"/search/[keywords]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:32:\"|^/search/([^/]+)/([0-9]+)[/]?$|\";s:6:\"format\";s:14:\"/search/%s/%s/\";s:6:\"params\";a:2:{i:0;s:8:\"keywords\";i:1;s:4:\"page\";}}s:12:\"archive_year\";a:6:{s:3:\"url\";s:18:\"/[year:digital:4]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:19:\"|^/([0-9]{4})[/]?$|\";s:6:\"format\";s:4:\"/%s/\";s:6:\"params\";a:1:{i:0;s:4:\"year\";}}s:13:\"archive_month\";a:6:{s:3:\"url\";s:36:\"/[year:digital:4]/[month:digital:2]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:30:\"|^/([0-9]{4})/([0-9]{2})[/]?$|\";s:6:\"format\";s:7:\"/%s/%s/\";s:6:\"params\";a:2:{i:0;s:4:\"year\";i:1;s:5:\"month\";}}s:11:\"archive_day\";a:6:{s:3:\"url\";s:52:\"/[year:digital:4]/[month:digital:2]/[day:digital:2]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:41:\"|^/([0-9]{4})/([0-9]{2})/([0-9]{2})[/]?$|\";s:6:\"format\";s:10:\"/%s/%s/%s/\";s:6:\"params\";a:3:{i:0;s:4:\"year\";i:1;s:5:\"month\";i:2;s:3:\"day\";}}s:17:\"archive_year_page\";a:6:{s:3:\"url\";s:38:\"/[year:digital:4]/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:33:\"|^/([0-9]{4})/page/([0-9]+)[/]?$|\";s:6:\"format\";s:12:\"/%s/page/%s/\";s:6:\"params\";a:2:{i:0;s:4:\"year\";i:1;s:4:\"page\";}}s:18:\"archive_month_page\";a:6:{s:3:\"url\";s:56:\"/[year:digital:4]/[month:digital:2]/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:44:\"|^/([0-9]{4})/([0-9]{2})/page/([0-9]+)[/]?$|\";s:6:\"format\";s:15:\"/%s/%s/page/%s/\";s:6:\"params\";a:3:{i:0;s:4:\"year\";i:1;s:5:\"month\";i:2;s:4:\"page\";}}s:16:\"archive_day_page\";a:6:{s:3:\"url\";s:72:\"/[year:digital:4]/[month:digital:2]/[day:digital:2]/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:55:\"|^/([0-9]{4})/([0-9]{2})/([0-9]{2})/page/([0-9]+)[/]?$|\";s:6:\"format\";s:18:\"/%s/%s/%s/page/%s/\";s:6:\"params\";a:4:{i:0;s:4:\"year\";i:1;s:5:\"month\";i:2;s:3:\"day\";i:3;s:4:\"page\";}}s:12:\"comment_page\";a:6:{s:3:\"url\";s:53:\"[permalink:string]/comment-page-[commentPage:digital]\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:36:\"|^(.+)/comment\\-page\\-([0-9]+)[/]?$|\";s:6:\"format\";s:18:\"%s/comment-page-%s\";s:6:\"params\";a:2:{i:0;s:9:\"permalink\";i:1;s:11:\"commentPage\";}}s:4:\"feed\";a:6:{s:3:\"url\";s:20:\"/feed[feed:string:0]\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:4:\"feed\";s:4:\"regx\";s:17:\"|^/feed(.*)[/]?$|\";s:6:\"format\";s:7:\"/feed%s\";s:6:\"params\";a:1:{i:0;s:4:\"feed\";}}s:8:\"feedback\";a:6:{s:3:\"url\";s:31:\"[permalink:string]/[type:alpha]\";s:6:\"widget\";s:15:\"Widget_Feedback\";s:6:\"action\";s:6:\"action\";s:4:\"regx\";s:29:\"|^(.+)/([_0-9a-zA-Z-]+)[/]?$|\";s:6:\"format\";s:5:\"%s/%s\";s:6:\"params\";a:2:{i:0;s:9:\"permalink\";i:1;s:4:\"type\";}}s:4:\"page\";a:6:{s:3:\"url\";s:12:\"/[slug].html\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";s:4:\"regx\";s:22:\"|^/([^/]+)\\.html[/]?$|\";s:6:\"format\";s:8:\"/%s.html\";s:6:\"params\";a:1:{i:0;s:4:\"slug\";}}}s:5:\"index\";a:3:{s:3:\"url\";s:1:\"/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:7:\"archive\";a:3:{s:3:\"url\";s:6:\"/blog/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:2:\"do\";a:3:{s:3:\"url\";s:22:\"/action/[action:alpha]\";s:6:\"widget\";s:9:\"Widget_Do\";s:6:\"action\";s:6:\"action\";}s:4:\"post\";a:3:{s:3:\"url\";s:24:\"/archives/[cid:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:10:\"attachment\";a:3:{s:3:\"url\";s:26:\"/attachment/[cid:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:8:\"category\";a:3:{s:3:\"url\";s:17:\"/category/[slug]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:3:\"tag\";a:3:{s:3:\"url\";s:12:\"/tag/[slug]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:6:\"author\";a:3:{s:3:\"url\";s:22:\"/author/[uid:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:6:\"search\";a:3:{s:3:\"url\";s:19:\"/search/[keywords]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:10:\"index_page\";a:3:{s:3:\"url\";s:21:\"/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:12:\"archive_page\";a:3:{s:3:\"url\";s:26:\"/blog/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:13:\"category_page\";a:3:{s:3:\"url\";s:32:\"/category/[slug]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:8:\"tag_page\";a:3:{s:3:\"url\";s:27:\"/tag/[slug]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:11:\"author_page\";a:3:{s:3:\"url\";s:37:\"/author/[uid:digital]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:11:\"search_page\";a:3:{s:3:\"url\";s:34:\"/search/[keywords]/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:12:\"archive_year\";a:3:{s:3:\"url\";s:18:\"/[year:digital:4]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:13:\"archive_month\";a:3:{s:3:\"url\";s:36:\"/[year:digital:4]/[month:digital:2]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:11:\"archive_day\";a:3:{s:3:\"url\";s:52:\"/[year:digital:4]/[month:digital:2]/[day:digital:2]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:17:\"archive_year_page\";a:3:{s:3:\"url\";s:38:\"/[year:digital:4]/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:18:\"archive_month_page\";a:3:{s:3:\"url\";s:56:\"/[year:digital:4]/[month:digital:2]/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:16:\"archive_day_page\";a:3:{s:3:\"url\";s:72:\"/[year:digital:4]/[month:digital:2]/[day:digital:2]/page/[page:digital]/\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:12:\"comment_page\";a:3:{s:3:\"url\";s:53:\"[permalink:string]/comment-page-[commentPage:digital]\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}s:4:\"feed\";a:3:{s:3:\"url\";s:20:\"/feed[feed:string:0]\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:4:\"feed\";}s:8:\"feedback\";a:3:{s:3:\"url\";s:31:\"[permalink:string]/[type:alpha]\";s:6:\"widget\";s:15:\"Widget_Feedback\";s:6:\"action\";s:6:\"action\";}s:4:\"page\";a:3:{s:3:\"url\";s:12:\"/[slug].html\";s:6:\"widget\";s:14:\"Widget_Archive\";s:6:\"action\";s:6:\"render\";}}');
INSERT INTO `options` VALUES ('actionTable', '0', 'a:0:{}');
INSERT INTO `options` VALUES ('panelTable', '0', 'a:2:{s:5:\"child\";a:1:{i:3;a:0:{}}s:4:\"file\";a:0:{}}');
INSERT INTO `options` VALUES ('attachmentTypes', '0', '@image@');
INSERT INTO `options` VALUES ('secret', '0', 'WQRfYuyVIAFdROrZmfRT4T9tLH9Q)t%e');
INSERT INTO `options` VALUES ('plugin:HelloWorld', '0', 'a:1:{s:4:\"word\";s:11:\"Hello World\";}');
INSERT INTO `options` VALUES ('plugin:Uptime', '0', 'a:1:{s:10:\"start_time\";s:19:\"2014-01-01 00:00:00\";}');
INSERT INTO `options` VALUES ('autoSave', '1', '0');
INSERT INTO `options` VALUES ('markdown', '1', '1');
INSERT INTO `options` VALUES ('defaultAllowComment', '1', '1');
INSERT INTO `options` VALUES ('defaultAllowPing', '1', '1');
INSERT INTO `options` VALUES ('defaultAllowFeed', '1', '1');

-- ----------------------------
-- Table structure for relationships
-- ----------------------------
DROP TABLE IF EXISTS `relationships`;
CREATE TABLE `relationships` (
  `cid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relationships
-- ----------------------------
INSERT INTO `relationships` VALUES ('1', '1');
INSERT INTO `relationships` VALUES ('3', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `screenName` varchar(32) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `activated` int(10) unsigned DEFAULT '0',
  `logged` int(10) unsigned DEFAULT '0',
  `group` varchar(16) DEFAULT 'visitor',
  `authCode` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `mail` (`mail`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '$P$BFqIF7IXLOfPIYf.t7geH5yqjRMDor/', '154199219@qq.com', 'http://localhost/build/', 'admin', '1483432368', '1483518173', '1483513287', 'administrator', '43488ff081780b04dcb4b581643ec68d');
