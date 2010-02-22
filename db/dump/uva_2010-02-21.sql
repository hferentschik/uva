# Sequel Pro dump
# Version 1630
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.40)
# Database: uva_development
# Generation Time: 2010-02-21 23:53:10 -0300
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`id`,`key`,`value`)
VALUES
	(1,'admin.title','Radiant CMS'),
	(2,'admin.subtitle','Publishing for Small Teams'),
	(3,'defaults.page.parts','body, extended'),
	(4,'defaults.page.status','draft'),
	(5,'defaults.page.filter',''),
	(6,'session_timeout','1209600');

/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table extension_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `extension_meta`;

CREATE TABLE `extension_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `schema_version` int(11) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table layouts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `layouts`;

CREATE TABLE `layouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `content_type` varchar(40) DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `layouts` WRITE;
/*!40000 ALTER TABLE `layouts` DISABLE KEYS */;
INSERT INTO `layouts` (`id`,`name`,`content`,`created_at`,`updated_at`,`created_by_id`,`updated_by_id`,`content_type`,`lock_version`)
VALUES
	(1,'Normal','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\"\r\n  \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">\r\n<html>\r\n  <head>\r\n    <title>Unidos por la vida animal - <r:title /></title>\r\n    <link href=\"/rss/\" rel=\"alternate\" title=\"RSS\" type=\"application/rss+xml\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"/reset.css\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"/uva-style.css\" />\r\n    <script type=\"text/javascript\" src=\"http://www.jeroenwijering.com/embed/swfobject.js\"></script>\r\n    <script type=\"text/javascript\" src=\"http://spurrd.com/javascripts/prototype.js\"></script>\r\n    <script type=\"text/javascript\" src=\"http://spurrd.com/javascripts/scriptaculous.js?load=effects,builder\"></script>\r\n    <script type=\"text/javascript\" src=\"http://spurrd.com/javascripts/lightbox.js\"></script>\r\n\r\n    <!--[if IE 6]>\r\n      <style type=\"text/css\" media=\"screen\">\r\n        @import url(\"/stylesheets/ie6.css\");\r\n      </style>\r\n    <![endif]-->\r\n\r\n    <!--[if IE 7]>\r\n      <style type=\"text/css\" media=\"screen\">\r\n        @import url(\"/stylesheets/ie7.css\");\r\n      </style>\r\n    <![endif]-->\r\n  </head>\r\n  <body id=\"startpage\">\r\n     <div id=\"page\">\r\n        <r:snippet name=\"header\" />\r\n        <div id=\"main\">\r\n           <r:content />\r\n        </div>\r\n        <r:snippet name=\"footer\" />\r\n     </div>\r\n  </body>\r\n</html>','2008-12-24 01:08:45','2010-02-22 02:43:09',1,1,'',38),
	(2,'Stylesheet','<r:content />\n','2008-12-24 01:08:45','2009-01-02 10:00:53',1,NULL,'text/css',1),
	(3,'XML Feed','<r:content />\n','2008-12-24 01:08:45','2008-12-24 01:08:45',1,NULL,'text/xml',0),
	(5,'TwoColumns','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\"\r\n  \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">\r\n<html>\r\n  <head>\r\n    <title>Unidos por la vida animal - <r:title /></title>\r\n    <link href=\"/rss/\" rel=\"alternate\" title=\"RSS\" type=\"application/rss+xml\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"/reset.css\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"/uva-style.css\" />\r\n    <script type=\"text/javascript\" src=\"http://www.jeroenwijering.com/embed/swfobject.js\"></script>\r\n    <script type=\"text/javascript\" src=\"http://spurrd.com/javascripts/prototype.js\"></script>\r\n    <script type=\"text/javascript\" src=\"http://spurrd.com/javascripts/scriptaculous.js?load=effects,builder\"></script>\r\n    <script type=\"text/javascript\" src=\"http://spurrd.com/javascripts/lightbox.js\"></script>\r\n\r\n    <!--[if IE 6]>\r\n      <style type=\"text/css\" media=\"screen\">\r\n        @import url(\"/stylesheets/ie6.css\");\r\n      </style>\r\n    <![endif]-->\r\n\r\n    <!--[if IE 7]>\r\n      <style type=\"text/css\" media=\"screen\">\r\n        @import url(\"/stylesheets/ie7.css\");\r\n      </style>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n     <div id=\"page\">\r\n        <r:snippet name=\"header\" />\r\n            <div id=\"main\" class=\"clearfix\">\r\n                <div id=\"content\">\r\n                   <r:content/>\r\n                </div>\r\n                <div id=\"sidebar\">\r\n                    <hr/><h1>About UVA</h1>\r\n                    <ul id=\"submenu\">\r\n                        <li>\r\n                            <a href=\"/\">What we do</a>\r\n                        </li>\r\n                        <li class=\"selected\">\r\n                            <a href=\"/\">The Team</a>\r\n                        </li>\r\n                        <li class=\"selected\">\r\n                            <a href=\"/\">History</a>\r\n                        </li>\r\n                        <li class=\"selected\">\r\n                            <a href=\"/\">Blog/News</a>\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        <r:snippet name=\"footer\" />\r\n     </div>\r\n  </body>\r\n</html>','2010-02-22 02:33:34','2010-02-22 02:45:46',1,1,'',2);

/*!40000 ALTER TABLE `layouts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_parts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_parts`;

CREATE TABLE `page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `filter_id` varchar(25) DEFAULT NULL,
  `content` text,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parts_by_page` (`page_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

LOCK TABLES `page_parts` WRITE;
/*!40000 ALTER TABLE `page_parts` DISABLE KEYS */;
INSERT INTO `page_parts` (`id`,`name`,`filter_id`,`content`,`page_id`)
VALUES
	(1,'body','','                <div id=\"intro\">\r\n                    <p>\r\n                        UVA:s mission is to rescue animals and find them new homes. UVA:s mission is rescue animals and find them new homes.\r\n                    </p>\r\n                </div>\r\n                <div id=\"dog-list-header\">\r\n                    <h3>Adopt me</h3>\r\n					<br/>\r\n					We have currently 70 dogs for adoptions. Look here if you want to <a href=\"./Adoption\">search</a> for more dogs\r\n                </div>\r\n                <div id=\"doglist-wrapper\" class=\"clearfix\">\r\n                    <table id=\"dog-list\">\r\n                        <td>\r\n                            <a class=\"doglink\" href=\"#\" ><img src=\"images/perro1.jpg\" alt=\"link\" width=\"125\"/></a>\r\n							<br/>\r\n							<a class=\"doglink\" href=\"#\">Sancho</a>\r\n                        </td>\r\n                        <td>\r\n                            <a class=\"doglink\" href=\"#\"><img src=\"images/perro2.jpg\" alt=\"link\" width=\"125\"/></a>\r\n							<br/>\r\n							<a class=\"doglink\" href=\"#\">Pancho</a>\r\n                        </td>\r\n                        <td>\r\n                            <a class=\"doglink\" href=\"#\"><img src=\"images/perro3.jpg\" alt=\"link\" width=\"125\"/></a>\r\n							<br/>\r\n							<a class=\"doglink\" href=\"#\">Speedy</a>\r\n                        </td>\r\n                        <td>\r\n                            <a class=\"doglink\" href=\"#\"><img src=\"images/perro4.jpg\" alt=\"link\" width=\"125\"/></a>\r\n							<br/>\r\n							<a class=\"doglink\" href=\"#\">Gonzales</a>\r\n                        </td>\r\n                        <td>\r\n                            <a class=\"doglink\" href=\"#\"><img src=\"images/perro5.jpg\" alt=\"link\" width=\"125\"/></a>\r\n							<br/>\r\n							<a class=\"doglink\" href=\"#\">Snoopy</a>\r\n                        </td>\r\n                    </table>\r\n                </div>\r\n      \r\n',1),
	(2,'body','Textile','The file you were looking for could not be found.\n\nAttempted URL: @<r:attempted_url />@\n\nIt is possible that you typed the URL incorrectly or that you clicked on a bad link.\n\n\"<< Back to Home Page\":/\n',2),
	(3,'body','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<rss version=\"2.0\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\">\n  <channel>\n    <title>Article RSS Feed</title>\n    <link>http://your-web-site.com<r:url /></link>\n    <language>en-us</language>\n    <ttl>40</ttl>\n    <description>The main blog feed for my Web site.</description>\n    <r:find url=\"/news/\">\n    <r:children:each limit=\"10\" order=\"desc\">\n        <item>\n          <title><r:title /></title>\n          <description><r:escape_html><r:content /></r:escape_html></description>\n          <pubDate><r:rfc1123_date /></pubDate>\n          <guid>http://your-web-site.com<r:url /></guid>\n          <link>http://your-web-site.com<r:url /></link>\n        </item>\n    </r:children:each>\n    </r:find>\n  </channel>\n</rss>\n',3),
	(4,'body','','<r:children:each limit=\"5\" order=\"desc\">\n<div class=\"entry\">\n  <h3><r:link /></h3>\n    <div class=\"posted\">\n      Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a><em>|</em><r:link>Read full article</r:link>    \n    </div>\n  <r:content part=\"summary\" />\n</div>\n</r:children:each>\n\n<r:snippet name=\"comments_summary\" />',4),
	(5,'body','Textile','<h3><r:title /></h3>\n<r:snippet name=\"posted\" />\n\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\n\nTemporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\n\n<r:snippet name=\"comments\" />\n',5),
	(6,'body','Textile','<h3><r:title /></h3>\n<r:snippet name=\"posted\" />\n\nUt enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. \n\n<r:snippet name=\"comments\" />',6),
	(7,'body','','/*---------------------------------  Styles.css  ---*/ \r\n\r\nbody {\r\n  background-color: #BFC1C4;\r\n  font-family: Verdana, Arial, Helvetica, sans-serif;\r\n  font-size: 80%;\r\n  padding: 0;\r\n  margin: 0;\r\n  text-align: center; }\r\n\r\n#page {\r\n  margin: 15px auto;\r\n  width: 900px;\r\n  text-align: left;\r\n  border: 1px solid #9EA3AC;\r\n  padding: 1px;\r\n  background-color: #FFFFFF;\r\n  clear: both; }\r\n\r\n#header {\r\n  color: #FFFFFF;\r\n  font-family: Arial,Helvetica,Geneva,sans-serif;\r\n  font-size: 35px;\r\n  font-weight: bold;\r\n  letter-spacing: 0.02em;\r\n  line-height: 0.72em;\r\n  text-transform: uppercase; }\r\n\r\n#main {\r\n  background-color: white;\r\n  float: left;\r\n  width: 100%;\r\n  margin: 15px 0px 30px; }\r\n\r\nh1 {\r\n  color: #FFFFFF;\r\n  font-family: Arial, Helvetica, sans-serif;\r\n  font-size: 35px;\r\n  font-weight: bold;\r\n  letter-spacing: 0.02em;\r\n  line-height: 0.72em;\r\n  text-transform: uppercase; }\r\n\r\nh2 {\r\n  color: #451811;\r\n  font-family: Georgia, sans-serif;\r\n  font-size: 270%;\r\n  font-weight: normal;\r\n  margin: 0px; }\r\n\r\nh3 {\r\n  font-family: Helvetica, Arial, Verdana, sans-serif;\r\n  font-size: 195%;\r\n  margin: 0px;\r\n  font-weight: bold; }\r\n\r\nh3 a {\r\n  color: #451811;\r\n  text-decoration: none;\r\n  border-bottom: none;\r\n  margin: 0px; }\r\n\r\nh3 a:hover {\r\n  color: #902f1c;\r\n  border-bottom: none; }\r\n\r\na {\r\n  color: #711e11;\r\n  text-decoration: none;\r\n  border-bottom: 1px solid #DBD6D1; }  \r\n\r\na:hover {\r\n  color: #451811;\r\n  text-decoration: none;\r\n  border-bottom: 2px solid #DBD6D1; }\r\n\r\np {\r\n  color: #232323;\r\n  font-family: Georgia, Times, \"Times New Roman\";\r\n  font-size: 1.3em;\r\n  line-height: 1.3em;\r\n  margin: 0px 0px 10px; }\r\n\r\nul {\r\n  padding: 0; }\r\n\r\nli {\r\n  padding: 0; }\r\n\r\n\r\n/*---MAIN COLUMN---*/  \r\n\r\n#content-wrapper {\r\n  float: left;\r\n  width: 600px; }\r\n\r\n#content {\r\n  padding: 0px 15px; }\r\n\r\n\r\n/*---SIDEBAR---*/  \r\n\r\n#sidebar-wrapper {\r\n  float: right;\r\n  width: 300px; }\r\n\r\n#sidebar {\r\n  font-size: 90%;\r\n  padding: 15px;\r\n  padding-top: 0px; }\r\n\r\n#sidebar h3 {\r\n  color: #222222;\r\n  font-family: Helvetica, Arial, Verdana, sans-serif;\r\n  font-size: 17px;\r\n  font-weight: bold;\r\n  margin: 0px; }\r\n\r\n#sidebar p {\r\n  line-height: 1.4em; }\r\n\r\n\r\n/*---ARTICLE---*/ \r\n\r\n.entry {\r\n  margin-bottom: 20px; }\r\n\r\n.entry .info {\r\n  margin-top: 1em;\r\n  font-size: 1em; }\r\n\r\n.entry p {\r\n  font-size: 1.1em; }\r\n\r\n.posted {\r\n  color: #918C7E;\r\n  font-family: \"lucida grande\",arial,helvetica,verdana,sans-serif;\r\n  font-size: 10px;\r\n  margin: -3px 0 5px;\r\n  padding: 0px; }\r\n\r\n.posted em {\r\n  color: #451811;\r\n  font-style: italic;\r\n  margin: 0px 6px;\r\n  font-weight: bold; }\r\n\r\n.posted img {\r\n  background: transparent none repeat scroll 0 0;\r\n  border: medium none;\r\n  margin: 0 4px -5px 2px;\r\n  text-decoration: none; }\r\n\r\n\r\n/*---STYLES---*/ \r\n\r\n#extra {\r\n  margin-bottom: 10px; }\r\n\r\n#extra .box {\r\n  background-color: #e8f0f6;\r\n  border-color: #D5E9F6; }\r\n\r\n#extra p {\r\n  line-height: 1.2em;\r\n  margin: 0px 0px 5px 0px; }\r\n\r\n#extra em {\r\n  font-style: italic; }\r\n\r\n#extra span {\r\n  color: #d26511;\r\n  font-size: 120%; }\r\n\r\n#player, #gallery {\r\n  background: #FFFFFF;\r\n  float: left;\r\n  clear: both;\r\n  margin: 0px 15px 15px 0px;\r\n  padding: 3px;\r\n  border: 1px solid #a9cde5; }\r\n\r\n#gallery a, \r\n#gallery a:hover, \r\n#player a, \r\n#player a:hover,\r\n#extra img a,\r\n#extra img a:hover {\r\n  border-bottom: none !important;\r\n  text-decoration: none !important; }\r\n\r\n#extra a img {\r\n  margin-bottom: -3px; }\r\n\r\n.spot {\r\n  margin-bottom: 20px;\r\n  clear: both; }\r\n\r\n.spot p {\r\n  font-family: Verdana, sans-serif;\r\n  font-size: 11px; \r\n  color: #333333;\r\n  margin-top: 0px; }\r\n\r\n.spot img {\r\n  float: left;\r\n  padding: 0px 12px 10px 0px; }\r\n\r\n.box {\r\n  padding: 15px;\r\n  border: 1px solid #dbd6d1;\r\n  background-color: #efedeb;\r\n  margin-bottom: 20px; }\r\n\r\n.box h3 {\r\n  font-size: 18px;\r\n  margin-bottom: 2px; }\r\n\r\n.box input {\r\n  margin-top: 5px; }\r\n\r\n.box input.email {\r\n  font-size: 10px;\r\n  padding: 3px; \r\n  color: #a29e96; \r\n  width: 140px; }\r\n\r\n.box input.subscribe {\r\n  width: 70px;\r\n  margin-left: 5px;\r\n  color: #232323; }\r\n\r\n.box ul {\r\n  margin-left: 20px; }\r\n\r\n.hidden {\r\n  display: none; }\r\n\r\n.clear {\r\n  clear: both; }\r\n\r\n/*---SITEMAP---*/ \r\n\r\n#sitemap ul {\r\n  list-style-type: disc;\r\n  margin: 5px 0px 10px 35px;\r\n  line-height: 2em; }\r\n\r\n#sitemap li a {\r\n  font-family: Helvetica, Arial, Verdana, sans-serif;\r\n  font-size: 180%;\r\n  font-weight: bold;\r\n  margin: 0px; \r\n  color: #451811;\r\n  text-decoration: none;\r\n  border-bottom: none; }\r\n\r\n#sitemap li a:hover {\r\n  color: #902f1c;\r\n  border-bottom: none; }\r\n\r\n#sitemap ul.second {\r\n  font-size: 80%; }\r\n\r\n/*---FOOTER---*/ \r\n\r\n#footer-wrapper {\r\n  margin: 5px auto;\r\n  width: 900px; }\r\n\r\n#footer {\r\n  color: #595452;\r\n  float: right;\r\n  font-family: \"Lucida Grande\", Verdana, Helvetica, Arial, sans-serif;\r\n  font-size: 90%;\r\n  margin-bottom: 30px; }\r\n\r\n\r\n/*---------------------------------  Navigation.css  ---*/ \r\n\r\n#nav {\r\n	height: 38px;\r\n	background: transparent url(http://spurrd.com/assets/132/nav-background.gif) repeat-x top left; }\r\n\r\n#nav ul {\r\n	display: block;\r\n	margin: 0;\r\n	padding: 0;\r\n	list-style-type: none;\r\n	width: auto; }\r\n\r\n#nav ul li {\r\n	display: block;\r\n	float: left;\r\n	margin: 0;\r\n	padding: 0; }\r\n\r\n#nav ul li a {\r\n  font-family: \"Lucida Sans\", \"Lucida Grande\", Helvetica, Arial, sans-serif;\r\n  font-size: 13px;\r\n	display: block;\r\n	float: left;\r\n	color: #3D3D3D;\r\n	text-decoration: none;\r\n	padding: 8px 16px 7px;\r\n	border-bottom: none;\r\n	background: transparent url(http://spurrd.com/assets/150/nav-divider.gif) no-repeat top right; }\r\n\r\n#nav ul li a:hover {\r\n  color: #FFFFFF;\r\n  background: #49140c;\r\n  border-bottom: 1px solid #49140c; }\r\n\r\n#nav ul li.selected a {\r\n  color: #FFFFFF;\r\n  background: #0b0b0a;\r\n  border-bottom: 1px solid #0b0b0a; }\r\n\r\n\r\n/*---------------------------------  Lightbox.css  ---*/ \r\n\r\n#lightbox{	position: absolute;	left: 0; width: 100%; z-index: 100; text-align: center; line-height: 0;}\r\n#lightbox img{ width: auto; height: auto;}\r\n#lightbox a img{ border: none; }\r\n\r\n#outerImageContainer{ position: relative; background-color: #fff; width: 250px; height: 250px; margin: 0 auto; }\r\n#imageContainer{ padding: 10px; }\r\n\r\n#loading{ position: absolute; top: 40%; left: 0%; height: 25%; width: 100%; text-align: center; line-height: 0; }\r\n#hoverNav{ position: absolute; top: 0; left: 0; height: 100%; width: 100%; z-index: 10; border-bottom: none; }\r\n#imageContainer>#hoverNav{ left: 0;}\r\n#hoverNav a{ outline: none; border-bottom: none;}\r\n\r\n#prevLink, #nextLink{ width: 49%; height: 100%; background-image: url(data:image/gif;base64,AAAA); /* Trick IE into showing hover */ display: block; }\r\n#prevLink { left: 0; float: left;}\r\n#nextLink { right: 0; float: right;} \r\n#prevLink:hover, #prevLink:visited:hover { background: url(http://spurrd.com/assets/192/prevlabel.gif) left 15% no-repeat; }\r\n#nextLink:hover, #nextLink:visited:hover { background: url(http://www.spurrd.com/assets/189/nextlabel.gif) right 15% no-repeat; }\r\n\r\n#imageDataContainer{ font: 10px Verdana, Helvetica, sans-serif; background-color: #fff; margin: 0 auto; line-height: 1.4em; overflow: auto; width: 100%	; }\r\n\r\n#imageData{	padding:0 10px; color: #666; }\r\n#imageData #imageDetails{ width: 70%; float: left; text-align: left; }	\r\n#imageData #caption{ font-weight: bold;	}\r\n#imageData #numberDisplay{ display: block; clear: left; padding-bottom: 1.0em;	}			\r\n#imageData #bottomNavClose{ width: 66px; float: right;  padding-bottom: 0.7em; outline: none;}	 	\r\n\r\n#overlay{ position: absolute; top: 0; left: 0; z-index: 90; width: 100%; height: 500px; background-color: #000; }\r\n',7),
	(8,'sidebar','','<div class=\"spot\">\r\n<img src=\"http://spurrd.com/assets/141/prize.gif\" />\r\n<h3>Best of Show</h3>\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia <a href=\"/about\">consequuntur</a> magni dolor eos qui ration volupt sequi nesciunt. Proin varius urna. In varius bibendum nisl. Donec nec nisi ut nisi varius porttitor.</p>\r\n</div>\r\n\r\n<div class=\"spot\">\r\n<img src=\"http://spurrd.com/assets/129/green.gif\" />\r\n<h3>Happy Planet</h3>\r\n<p>Mauris elit lacus, iaculis a, cons nec, vehicula <a href=\"/about\">condimentum</a> at. Suspendisse sapien enim, tempus ut, facilisis at, vestibulum nec, nunc. Aliquam erat volutpat. Ut sit amet quam. Cum soci natoque penati et magnis dis partur montes, nascet ridiculus mus. Aen vel urna. In justo nisl, cursus in, molestie a, vulputate nec. </p> \r\n</div>\r\n\r\n<div class=\"spot\">\r\n<img src=\"http://spurrd.com/assets/144/recycle.gif\" />\r\n<h3>Round and round</h3>\r\n<p>Donec tempor mollis ante. Nunc felis. Proin ac pede vel nulla lacinia congue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi cursus, dui quis pretium blandit, erat massa lacinia neque, eu porttitor lacus erat ac leo.</p>\r\n</div>\r\n\r\n<r:snippet name=\"newsletter\" />\r\n\r\n<div class=\"spot\"><r:snippet name=\"rss\" /></div>\r\n',1),
	(9,'body','Textile','<h3><r:title /></h3>\n<r:snippet name=\"posted\" />\n\nVivamus mollis porttitor odio. Vestibulum id mi. Suspendisse a tortor quis metus imperdiet eleifend. Pellentesque libero nulla, aliquam in, tristique vel, elementum et, odio. Fusce id ligula. Vivamus dapibus imperdiet ante. Aliquam id eros ut velit eleifend aliquet. Nulla commodo viverra orci. Sed auctor. Maecenas commodo. Mauris adipiscing lectus quis quam. Nulla a nisl in augue suscipit tincidunt. Nunc eros. Nam eget sapien eget lorem ultrices pulvinar. Vivamus dolor.\n\nSuspendisse auctor risus nec odio. Sed tortor sem, tempor eu, molestie ac, viverra et, arcu. Donec aliquet pede eget tellus. Pellentesque facilisis nibh in ante. Mauris et lectus. Nullam pede. Nam sed pede sollicitudin mi congue vestibulum. Suspendisse et diam sed odio venenatis dictum. \n\nInteger eget nunc sit amet felis interdum sollicitudin. Mauris posuere, quam eu aliquam iaculis, ipsum magna pellentesque arcu, id rutrum augue erat luctus magna.\n\nPraesent ut lacus. Fusce interdum metus laoreet mi. Duis aliquet. Nunc malesuada leo id nulla. Praesent condimentum metus nec odio. Ut ut velit dapibus nibh interdum eleifend. Proin tempor sodales enim. Donec ultricies. Duis bibendum urna id ante. Donec ipsum lorem, venenatis et, tempus ut, vehicula et, mi. \n\n<r:snippet name=\"comments\" />',8),
	(10,'body','Textile','                    <h1>The Team</h1>\r\n                    <hr/><img src=\"./images/team.png\" alt=\"The UVA team\" width=\"600px\"/>\r\n                    <br/>\r\n                    <div id=\"main-text\">\r\n                        <p>\r\n                            Unidos por la Vida Animal, se forma con un  grupo de habitantes y contribuyentes de la Localidad de Tigre en el aÃ±o 1999 , que se une ante las matanzas ocurridas dentro de el Centro de Zoonosis .\r\n                            Este grupo se reune con el Intendente y le hacen una propuesta diferente, la de empezar a castrar, vacunar  y desparasitar para poder dar en adopciÃ³n dichos animales.\r\n                            Este grupo formado por mujeres y hombres de esta Ciudad se distribuyeron las tareas, de lunes a domingos ,o sea  los 365 dÃ­as del aÃ±o.ConsistiÃ³,en alimentarlos, mantener la higiene del lugar y sacarlos a pasear .\r\n                            El Profesional Veterinario, comenzo a castrar 30 animales por dÃ­a, contando con la ayuda de U.V.A que colaboraba  llevando los animales preparÃ¡ndoles para dicha operaciÃ³n y su posterior recuperaciÃ³n para luego dar en adopciÃ³n.\r\n                            U.V.A modifico el lugar ya que se inundaba y por ello los animales morÃ­an ahogandose en sus jaulas.\r\n                        </p>\r\n                        <p>\r\n                            Los perros ya no estaban en jaulas de 2 x 2, si no que se construyeron caniles con patios donde podÃ­an moverse ,caminar y correr, En invierno se colocaron estufas con interruptores y todo esto fue realizado por la AsociaciÃ³n..\r\n                            Cuando las autoridades por el aÃ±o 2006 deciden hacer un nuevo Zoonosis, U.V.A presenta por iniciativa de una Voluntaria, un plano de instalaciones traÃ­do de E.E.U.U  y dicho plano es aceptado y  adaptado al lugar.\r\n                            La construcciÃ³n se termina en el aÃ±o 2007 y se realiza la mudanza con los animales, U.V.A habÃ­a cumplido otra etapa.........se habÃ­an cambiado las instalaciones y se podÃ­an ahora realizar mas tareas aun, en beneficio de los animales !!!!!!\r\n                            HabÃ­a que empezar con campaÃ±as de esterilizaciÃ³n masivas y sostenidas ,para ello se necesitan mas  Veterinarios.\r\n                            La AsociaciÃ³n habla con las Autoridades Municipales sobre la necesidad de aumentar las esterilizaciones, mayor cantidad de consultas y vacunaciÃ³n\r\n                            para prevencion de enfermedades.\r\n                        </p>\r\n                        <p>\r\n                            Como la demanda es cada ves mayor , hoy el Centro de Zoonosis cuenta con 5 Profesionales Municipales y un Profesional contratado por la Cooperadora.\r\n                            Como ayuda U.V.A a los Veterinarios y al Municipio y a la PoblaciÃ³n de Tigre. ? \r\n                            Tigre es un Municipio de 330.000 habitantes que tienen un perro cada 3 habitantes,para poder mermar dicha cantidad , los Voluntarios organizan en los diferentes Barrios campaÃ±as de esterilizaciÃ³n que  realiza gratuitamente el Municipio con sus Profesionales. \r\n                            U.V.A dona hoy dia vacunas quintuples y medicacion que se aplica dentro del Centro de Zoonosis \r\n                            La AsociaciÃ³n ,junto con Municipio trabajan dÃ­a a dÃ­a para poder mejorar el Bienestar que conlleva al Bienestar Humano.\r\n                        </p>\r\n                    </div>',9),
	(11,'sidebar','','<div class=\"box\" style=\"margin-top:50px\">\r\n  <h3>Main office</h3>\r\n  222 Address Street<br />\r\n  Portland, OR 97008<br />\r\n  (503) 545-7777\r\n</div>\r\n',9),
	(12,'sidebar','','<div class=\"box\">\n<h3>News Archives</h3>\n<ul>\n<r:find url=\"/news/\">\n<r:children:each order=\"desc\">\n<r:header><li><a href=\"<r:date format=\"/news/%Y/%m/\" />\"><r:date format=\"%B %Y\" /></a></li></r:header>\n</r:children:each>\n</r:find>\n</ul>\n</div>\n\n<r:snippet name=\"newsletter\" />\n\n<div class=\"spot\"><r:snippet name=\"rss\" /></div>',4),
	(13,'body','','<r:archive:children:each order=\"desc\">\n<div class=\"entry\">\n<h3><r:link /></h3>\n    <div class=\"posted\">\n      Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a><em>|</em><r:link>Read full article</r:link>    \n    </div>\n  <r:content part=\"summary\" />\n</div>\n</r:archive:children:each>\n\n<r:snippet name=\"comments_summary\" />',10),
	(14,'summary','Textile','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.',5),
	(15,'summary','Textile','Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',6),
	(16,'summary','Textile','Vivamus mollis porttitor odio. Vestibulum id mi. Suspendisse a tortor quis metus imperdiet eleifend. Pellentesque libero nulla, aliquam in, tristique vel, elementum et, odio. Fusce id ligula. Vivamus dapibus imperdiet ante. Aliquam id eros ut velit eleifend aliquet. Nulla commodo viverra orci. Sed auctor. Maecenas commodo. Mauris adipiscing lectus quis quam. Nulla a nisl in augue suscipit tincidunt. Nunc eros. Nam eget sapien eget lorem ultrices pulvinar. Vivamus dolor.',8),
	(17,'body','','<h2>Site Map</h2>\n\n<div id=\"sitemap\">\n <ul>\n   <r:find url=\"/\">\n     <r:snippet name=\"sitemap\" />\n   </r:find>\n </ul>\n</div>\n',11),
	(18,'extended','','',11),
	(19,'no-map','','',7),
	(20,'no-map','','',11),
	(21,'body','Textile','h1. How to help\r\n\r\nThis is what you can do to help UVA\r\n',12),
	(22,'sidebar','','',12),
	(23,'body','','<div id=\"extra\">\r\n  <div class=\"box\">\r\n    <div id=\"gallery\">\r\n      <a href=\"http://spurrd.com/assets/162/gallery1.jpg\" rel=\"lightbox[growers]\" title=\"This is a caption.\" /><img src=\"http://spurrd.com/assets/198/thumb-grower.jpg\" /></a>\r\n      <a href=\"http://spurrd.com/assets/165/gallery2.jpg\" rel=\"lightbox[growers]\" title=\"This is a caption.\"></a>\r\n      <a href=\"http://spurrd.com/assets/168/gallery3.jpg\" rel=\"lightbox[growers]\" title=\"This is a caption.\"></a>\r\n      <a href=\"http://spurrd.com/assets/171/gallery4.jpg\" rel=\"lightbox[growers]\" title=\"This is a caption.\"></a>\r\n    </div>\r\n    <h2>Our growers</h2>\r\n    <p><span>Fromus neatus farmus alwaze.</span><br /> In portor auctor neque. Morbi gravida elit non ante. Praesent eros elit, consequat et, rhoncuses atet, rhoncus posuere, massa. Praesent tempor, felis varius gravida!</p>\r\n  </div>\r\n</div>\r\n\r\n<div id=\"extra\">\r\n  <div class=\"box\">\r\n    <div id=\"gallery\">\r\n      <a href=\"http://spurrd.com/assets/162/gallery1.jpg\" rel=\"lightbox[roasters]\" title=\"This is a caption.\" /><img src=\"http://spurrd.com/assets/201/thumb-roaster.jpg\" /></a>\r\n      <a href=\"http://spurrd.com/assets/165/gallery2.jpg\" rel=\"lightbox[roasters]\" title=\"This is a caption.\"></a>\r\n      <a href=\"http://spurrd.com/assets/168/gallery3.jpg\" rel=\"lightbox[roasters]\" title=\"This is a caption.\"></a>\r\n      <a href=\"http://spurrd.com/assets/171/gallery4.jpg\" rel=\"lightbox[roasters]\" title=\"This is a caption.\"></a>\r\n    </div>\r\n    <h2>Our roasters</h2>\r\n    <p><span>Bestes machinum inde wurlde.</span><br /> In portor auctor neque. Morbi gravida elit non ante. Praesent eros elit, consequat et, rhoncuses atet, rhoncus posuere, massa. Praesent tempor, felis varius gravida!</p>\r\n  </div>\r\n</div>\r\n\r\n<div id=\"extra\">\r\n  <div class=\"box\">\r\n    <div id=\"gallery\">\r\n      <a href=\"http://spurrd.com/assets/162/gallery1.jpg\" rel=\"lightbox[grinders]\" title=\"This is a caption.\" /><img src=\"http://spurrd.com/assets/195/thumb-grinder.jpg\" /></a>\r\n      <a href=\"http://spurrd.com/assets/165/gallery2.jpg\" rel=\"lightbox[grinders]\" title=\"This is a caption.\"></a>\r\n      <a href=\"http://spurrd.com/assets/168/gallery3.jpg\" rel=\"lightbox[grinders]\" title=\"This is a caption.\"></a>\r\n      <a href=\"http://spurrd.com/assets/171/gallery4.jpg\" rel=\"lightbox[grinders]\" title=\"This is a caption.\"></a>\r\n    </div>\r\n    <h2>Our grinders</h2>\r\n    <p><span>Whata treet itis tu heerit.</span><br /> In portor auctor neque. Morbi gravida elit non ante. Praesent eros elit, consequat et, rhoncuses atet, rhoncus posuere, massa. Praesent tempor, felis varius gravida!</p>\r\n  </div>\r\n</div>\r\n',13),
	(24,'sidebar','','<div class=\"spot\">\r\n<img src=\"http://spurrd.com/assets/156/open.gif\" />\r\n<h3>Almost always open</h3>\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia <a href=\"/about\">consequuntur</a> magni dolor eos qui ration volupt sequi nesciunt. Proin varius urna. In varius bibendum nisl. Donec nec nisi ut nisi varius porttitor.</p>\r\n</div>\r\n\r\n<div class=\"spot\">\r\n<img src=\"http://spurrd.com/assets/153/gift.gif\" />\r\n<h3>Roaster gift cards</h3>\r\n<p>Mauris elit lacus, iaculis a, cons nec, vehicula <a href=\"/about\">condimentum</a> at. Suspendisse sapien enim, tempus ut, facilisis at, vestibulum nec, nunc. Aliquam erat volutpat. Ut sit amet quam. Cum soci natoque penati et magnis dis partur montes, nascet ridiculus mus. Aen vel urna. In justo nisl, cursus in, molestie a, vulputate nec. </p> \r\n</div>\r\n\r\n<div class=\"spot\">\r\n<img src=\"http://spurrd.com/assets/159/truck.gif\" />\r\n<h3>Metro delivery</h3>\r\n<p>Iaculis a, cons nec, condi<a href=\"/about\"> vehicula</a>. Suspendisse sapien enim, tempus ut, facilisis at, vestibulum nec, nunc. Aliquam erat volutpat. Ut sit amet quam. Cum soci natoque penati et magnis dis partur montes, nascet ridiculus mus. Aen vel urna. In justo nisl, cursus in, molestie. </p> \r\n</div>\r\n',13),
	(25,'body','','/* -------------------------------------------------------------- \n\n   reset.css\n   * Resets default browser CSS.\n\n   Based on work by Eric Meyer:\n   * meyerweb.com/eric/thoughts/2007/05/01/reset-reloaded/\n\n   Icons are available for purchase at:\n   * http://www.istockphoto.com/file_closeup/arts-and-entertainment/arts-symbols/4575877-satin-icons-set-9.php?id=4575877\n\n-------------------------------------------------------------- */\n\nhtml, body, div, span, object, iframe,\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\na, abbr, acronym, address, code,\ndel, dfn, em, img, q, dl, dt, dd, ol, ul, li,\nfieldset, form, label, legend,\ntable, caption, tbody, tfoot, thead, tr, th, td {\n	margin: 0;\n	padding: 0;\n	border: 0;\n	font-weight: inherit;\n	font-style: inherit;\n	font-size: 100%;\n	font-family: inherit;\n	vertical-align: baseline;\n}\n\n\nbody { line-height: 1.5; background: #fff; margin:1.5em 0; }\n\n/* Tables still need \'cellspacing=\"0\"\' in the markup. */\ntable { border-collapse: separate; border-spacing: 0; }\ncaption, th, td { text-align: left; font-weight:400; }\n\n/* Remove possible quote marks (\") from <q>, <blockquote>. */\nblockquote:before, blockquote:after, q:before, q:after { content: \"\"; }\nblockquote, q { quotes: \"\" \"\"; }\n\na img { border: none; }\n',14),
	(26,'no-map','','',14),
	(27,'body','','One more success story ...',15),
	(28,'extended','','',15),
	(29,'body','','Come and visit us in Tigre',16),
	(30,'extended','','',16),
	(31,'body','','Please contact us',17),
	(32,'extended','','',17),
	(33,'body','','/* CSS Document for UVA */\r\nbody {\r\n    background-color: #BFC1C4;\r\n    font: normal 0.94em Arial, Helvetica, Verdana, sans-serif;\r\n    color: #474b4f;\r\n    line-height: 1.33em;\r\n    padding: 0;\r\n    margin: 0;\r\n    text-align: center;\r\n    margin-top: 45px;\r\n}\r\n\r\n/* LAYOUT */\r\n#page {\r\n    width: 942px;\r\n    text-align: left;\r\n    border: 1px solid #9EA3AC;\r\n    margin: 15px auto;\r\n    padding: 1px;\r\n    background: #FFFFFF;\r\n    clear: both;\r\n}\r\n\r\n#header {\r\n    color: #FFFFFF;\r\n    font: normal 1.20em Georgia, \"Times New Roman\", Times, serif;\r\n    height: 110px;\r\n    background: url(../images/bg-header.png)\r\n}\r\n\r\n#main {\r\n    margin: 15px 0px 30px;\r\n    padding: 0 30px 0 30px;\r\n}\r\n\r\n#startpage #main {\r\n    margin: 0 0px 30px;\r\n    padding: 0;\r\n}\r\n\r\n#content {\r\n    float: left;\r\n    width: 600px;\r\n    padding: 50px 0px 0px 0px\r\n}\r\n\r\n#sidebar {\r\n    float: right;\r\n    width: 250px;\r\n    font-size: 90%;\r\n    padding: 72px 15px 0px 15px;\r\n}\r\n\r\n#footer {\r\n    padding: 30px 30px 50px 30px;\r\n    background: #dfe0e1;\r\n}\r\n\r\n.clearfix:after {\r\n    clear: both;\r\n    content: \".\";\r\n    display: block;\r\n    height: 0;\r\n    line-height: 0;\r\n    visibility: hidden;\r\n}\r\n\r\n/* GENERAL*/\r\nh1 {\r\n    font: normal 1.20em Georgia, \"Times New Roman\", Times, serif;\r\n    margin: 0;\r\n}\r\n\r\nh2 {\r\n    font: normal 1.20em Georgia, \"Times New Roman\", Times, serif;\r\n    margin: 0;\r\n}\r\n\r\nh3 {\r\n    font: normal 1.20em Georgia, \"Times New Roman\", Times, serif;\r\n    margin: 0;\r\n}\r\n\r\nh3 a {\r\n    color: #451811;\r\n    text-decoration: none;\r\n    border-bottom: none;\r\n    margin: 0px;\r\n}\r\n\r\nh3 a:hover {\r\n    color: #902f1c;\r\n    border-bottom: none;\r\n}\r\n\r\na {\r\n    color: #711e11;\r\n    text-decoration: none;\r\n}\r\n\r\na:hover {\r\n    color: #451811;\r\n    text-decoration: underlined;\r\n    border-bottom: 2px solid #DBD6D1;\r\n}\r\n\r\np {\r\n    margin: 0px 0px 10px;\r\n}\r\n\r\nul {\r\n    padding: 0;\r\n    margin: 0;\r\n    list-style: none;\r\n}\r\n\r\nli {\r\n    padding: 0;\r\n    margin: 0;\r\n    list-style: none;\r\n}\r\n\r\n/* NAVIGATIONS */\r\nul#mainmenu {\r\n    float: right;\r\n    display: block;\r\n    margin: 65px 0 0 0;\r\n    padding: 0;\r\n}\r\n\r\nul#mainmenu li {\r\n    float: left;\r\n    padding: 0 30px 0 0;\r\n}\r\n\r\nul#mainmenu li a {\r\n    float: left;\r\n    display: block;\r\n    color: #fff;\r\n    font-weight: bold;\r\n    text-decoration: none;\r\n}\r\n\r\nul#mainmenu li a:hover {\r\n    tect-decoration: underlined;\r\n}\r\n\r\nul#mainmenu li.selected a {\r\n    color: #ffc600;\r\n}\r\n\r\n/* HEADER */\r\n.logo {\r\n    border: none;\r\n    margin-top: -45px;\r\n    margin-left: 20px;\r\n}\r\n\r\n/* FOOTER */\r\n.column-blog {\r\n    float: left;\r\n    width: 290px;\r\n    margin: 0 30px 0 0;\r\n}\r\n\r\n.column {\r\n    float: left;\r\n    width: 274px;\r\n    margin: 0 30px 0 0;\r\n}\r\n\r\n.no-margin {\r\n    margin: 0;\r\n}\r\n\r\n/* START PAGE*/\r\n#intro {\r\n    height: 310px;\r\n    background: url(../images/intro-about-uva.jpg);\r\n    padding: 0 0 0 30px;\r\n}\r\n\r\n#intro p {\r\n    position: relative;\r\n    top: 140px;\r\n    font: normal 1.33em Georgia, \"Times New Roman\", Times, serif;\r\n    color: #fff;\r\n    background: #474b4f;\r\n    width: 410px;\r\n    padding: 20px 20px 30px 20px;\r\n    border: 1px solid #9c9993;\r\n}\r\n\r\n#doglist-wrapper {\r\n}\r\n\r\n#dog-list-header {\r\n    padding: 20px 0px 30px 30px;\r\n}\r\n\r\n#dog-list {\r\n    margin: 0;\r\n    padding: 0px 0px 0px 30px;\r\n    list-style: none;\r\n    width: 100%;\r\n}\r\n\r\n#dog-list td {\r\n    vertical-align: bottom;\r\n}\r\n\r\n#dog-list td a {\r\n    text-decoration: none;\r\n    border-bottom: 0px;\r\n}\r\n\r\n#dog-list td img {\r\n    border: none;\r\n}\r\n\r\n/* TEXT PAGE */\r\n#main-text {\r\n    padding: 20px 0px 0px 0px;\r\n}\r\n\r\n.entry {\r\n    margin-bottom: 20px;\r\n}\r\n\r\n.entry .info {\r\n    margin-top: 1em;\r\n    font-size: 1em;\r\n}\r\n\r\n.entry p {\r\n    font-size: 1.1em;\r\n}\r\n\r\n.posted {\r\n    color: #918C7E;\r\n    font-family: \"lucida grande\", arial, helvetica, verdana, sans-serif;\r\n    font-size: 10px;\r\n    margin: -3px 0 5px;\r\n    padding: 0px;\r\n}\r\n\r\n.posted em {\r\n    color: #451811;\r\n    font-style: italic;\r\n    margin: 0px 6px;\r\n    font-weight: bold;\r\n}\r\n\r\n.posted img {\r\n    background: transparent none repeat scroll 0 0;\r\n    border: medium none;\r\n    margin: 0 4px -5px 2px;\r\n    text-decoration: none;\r\n}\r\n\r\n/*---STYLES---*/\r\n.box {\r\n    padding: 15px;\r\n    border: 1px solid #dbd6d1;\r\n    background-color: #efedeb;\r\n    margin-bottom: 20px;\r\n}\r\n\r\n.box h3 {\r\n    font-size: 18px;\r\n    margin-bottom: 2px;\r\n}\r\n\r\n.box input {\r\n    margin-top: 5px;\r\n}\r\n\r\n.box input.email {\r\n    font-size: 10px;\r\n    padding: 3px;\r\n    color: #a29e96;\r\n    width: 140px;\r\n}\r\n\r\n.box input.subscribe {\r\n    width: 70px;\r\n    margin-left: 5px;\r\n    color: #232323;\r\n}\r\n\r\n.box ul {\r\n    margin-left: 20px;\r\n}\r\n\r\n.hidden {\r\n    display: none;\r\n}\r\n\r\n.clear {\r\n    clear: both;\r\n}\r\n\r\n\r\n',18),
	(34,'extended','','',18);

/*!40000 ALTER TABLE `page_parts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `breadcrumb` varchar(160) DEFAULT NULL,
  `class_name` varchar(25) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `layout_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `virtual` tinyint(1) NOT NULL DEFAULT '0',
  `lock_version` int(11) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_class_name` (`class_name`),
  KEY `pages_parent_id` (`parent_id`),
  KEY `pages_child_slug` (`slug`,`parent_id`),
  KEY `pages_published` (`virtual`,`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`,`title`,`slug`,`breadcrumb`,`class_name`,`status_id`,`parent_id`,`layout_id`,`created_at`,`updated_at`,`published_at`,`created_by_id`,`updated_by_id`,`virtual`,`lock_version`,`description`,`keywords`)
VALUES
	(1,'UVA','/','Home','',100,NULL,1,'2008-12-24 01:08:45','2010-02-21 22:44:48','2008-12-23 18:08:45',1,1,0,81,'',''),
	(2,'File Not Found','file-not-found','File Not Found','FileNotFoundPage',100,1,NULL,'2008-12-24 01:08:45','2008-12-24 01:08:45','2008-12-23 18:08:45',1,NULL,1,0,NULL,NULL),
	(3,'RSS Feed','rss','RSS Feed',NULL,100,1,3,'2008-12-24 01:08:45','2008-12-24 01:08:45','2008-12-23 18:08:45',1,NULL,0,0,NULL,NULL),
	(4,'Articles','news','News','ArchivePage',100,1,NULL,'2008-12-24 01:08:45','2009-01-02 07:27:53','2008-12-23 18:08:45',1,NULL,0,18,'',''),
	(5,'New location opening tonight','new-location-opening-tonight','New location opening tonight','Page',100,4,NULL,'2008-12-24 01:08:45','2009-01-02 09:27:43','2006-06-09 00:00:00',1,NULL,0,16,'',''),
	(6,'Grass-fed foam from Jersey','grass-fed-foam-from-jersey','Grass-fed foam from Jersey','Page',100,4,NULL,'2008-12-24 01:08:45','2009-01-02 07:31:42','2006-06-10 00:00:00',1,NULL,0,8,'',''),
	(7,'Styles','styles.css','Styles','',100,1,2,'2008-12-24 01:08:45','2010-02-09 21:30:46','2008-12-23 18:08:45',1,1,0,6,'',''),
	(8,'The Finest grind','the-finest-grind','The Finest grind','Page',100,4,NULL,'2008-12-24 01:08:45','2009-01-02 09:27:11','2008-12-23 18:08:45',1,NULL,0,11,'',''),
	(9,'About','about','About','',100,1,5,'2008-12-24 01:08:45','2010-02-22 02:38:45','2008-12-23 18:08:45',1,1,0,11,'',''),
	(10,'%B %Y Archives','monthly-archives','Monthly Archives','ArchiveMonthIndexPage',100,4,NULL,'2008-12-24 01:08:45','2009-01-02 07:29:46','2008-12-23 18:08:45',1,NULL,1,9,'',''),
	(11,'Site Map','sitemap','Site Map','Page',100,1,NULL,'2009-01-01 23:49:07','2009-01-02 01:31:41','2009-01-01 16:49:07',1,NULL,0,11,'',''),
	(12,'Help','help','Help','',100,1,5,'2009-01-02 02:11:32','2010-02-22 02:46:56','2009-01-01 19:11:32',1,1,0,10,'',''),
	(13,'Adoption','adoption','Adoption','',100,1,NULL,'2009-01-02 07:36:32','2010-02-09 21:38:22','2009-01-02 00:49:40',1,1,0,26,'',''),
	(14,'Reset','reset.css','Reset','Page',100,1,2,'2009-01-02 10:00:27','2009-01-02 10:06:13','2009-01-02 03:06:13',1,NULL,0,2,'',''),
	(15,'Dog rescued from cruel owner','dog-rescued-from-cruel-owner','Dog rescued from cruel owner','',100,4,NULL,'2010-02-05 22:29:22','2010-02-05 22:31:24','2010-02-05 16:31:24',1,1,0,2,'',''),
	(16,'New puppies arrived','new-puppies-arrived','New puppies arrived','',100,4,NULL,'2010-02-06 02:17:10','2010-02-06 02:17:58','2010-02-05 20:17:58',1,1,0,2,'',''),
	(17,'Contact','contact','Contact','',100,1,5,'2010-02-09 21:43:57','2010-02-22 02:47:23','2010-02-09 18:45:33',1,1,0,2,'',''),
	(18,'uva-style','uva-style.css','uva-style','',100,1,2,'2010-02-21 22:42:39','2010-02-21 22:55:54','2010-02-21 19:48:36',1,1,0,5,'','');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`)
VALUES
	('1'),
	('10'),
	('11'),
	('12'),
	('13'),
	('14'),
	('15'),
	('16'),
	('17'),
	('18'),
	('19'),
	('2'),
	('20'),
	('20081203140407'),
	('21'),
	('3'),
	('4'),
	('5'),
	('6'),
	('7'),
	('8'),
	('9');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) DEFAULT NULL,
  `data` text,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table snippets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `snippets`;

CREATE TABLE `snippets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `filter_id` varchar(25) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

LOCK TABLES `snippets` WRITE;
/*!40000 ALTER TABLE `snippets` DISABLE KEYS */;
INSERT INTO `snippets` (`id`,`name`,`filter_id`,`content`,`created_at`,`updated_at`,`created_by_id`,`updated_by_id`,`lock_version`)
VALUES
	(1,'header','','            <div id=\"header\" class=\"clearfix\">\r\n                <a href=\"./index.html\"><span><img class=\"logo\" src=\"./images/logo.gif\" alt=\"Unidos por la vida animal\"/></span></a>\r\n                <r:snippet name=\"navigation\" />\r\n            </div>\r\n','2008-12-24 01:08:44','2010-02-22 02:28:32',1,1,15),
	(2,'footer','','            <div id=\"footer\" class=\"clearfix\">\r\n                <div class=\"column\">\r\n                    <h3>Blog</h3>\r\n                    <p>\r\n                        <a href=\"#\">20/02/2010 Dog rescued from cruel owner</a>\r\n                        <br/>\r\n                        <a href=\"#\">21/02/2010 Success - Pancho adopted!</a>\r\n                    </p>\r\n                </div>\r\n                <div class=\"column\">\r\n                    <h3>Visit us</h3>\r\n                    <p>\r\n                        Zoonosis de Tigre\r\n                        <br/>\r\n                        PueyrredÃ³n 211\r\n						<br/> \r\n						Tigre\r\n                    </p>\r\n                </div>\r\n                <div class=\"column no-margin\">\r\n                    <h3>Contact us</h3>\r\n                    <p>\r\n                        Telephone: 4512-4568 \r\n                        <br/>\r\n                        E-mail:    <a href=\"mailto:info@uva-tigre.com.ar\">info@uva-tigre.com.ar</a>\r\n                    </p>\r\n                </div>\r\n            </div>','2008-12-24 01:08:44','2010-02-21 23:23:31',1,1,7),
	(3,'navigation','','<ul id=\"mainmenu\">\r\n  <r:navigation urls=\"Home: /\">\r\n      <r:normal><li><a href=\"<r:url />\"><r:title /></a></li></r:normal>\r\n      <r:here><li class=\"selected\"><a href=\"<r:url />\"><r:title /></a></li></r:here>\r\n      <r:selected><li><a href=\"<r:url />\"><r:title /></a></li></r:selected>\r\n  </r:navigation>\r\n  <r:navigation urls=\"Adoption: /adoption | How to help: /help | About: /about | Contact: /contact\">\r\n    <r:normal><li><a href=\"<r:url />\"><r:title /></a></li></r:normal>\r\n    <r:here><li class=\"selected\"><a href=\"<r:url />\"><r:title /></a></li></r:here>\r\n    <r:selected><li class=\"selected\"><a href=\"<r:url />\"><r:title /></a></li></r:selected>\r\n  </r:navigation>\r\n</ul>    ','2008-12-30 21:38:09','2010-02-22 02:28:01',1,1,11),
	(4,'newsletter','','<div class=\"box\">\n  <h3>Our Newsletter</h3>\n    <input class=\"email\" value=\"Enter your email address...\" type=\"text\" onfocus=\"this.value=\'\'\"  id=\"\" name=\"\" />\n    <input class=\"subscribe\" type=\"submit\" value=\"Subscribe\" />\n</div>','2008-12-31 01:08:12','2009-01-02 06:11:14',1,NULL,19),
	(5,'rss','','<img src=\"http://spurrd.com/assets/147/rss.gif\" />\n<h3>RSS</h3>\n<p>Get the <a href=\"/rss/\">feed</a> for our latest news. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora.</p>\n','2008-12-31 07:04:11','2009-01-02 07:05:37',1,NULL,5),
	(6,'articles','','<r:find url=\"/news\">\n  <r:children:each order=\"desc\" limit=\"3\">\n  <div class=\"entry\">\n    <h3><r:link /></h3>\n    <div class=\"posted\">\n      Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a><em>|</em><r:link>Read full article</r:link>    \n    </div>\n    <r:content part=\"summary\" />\n  </div>\n  </r:children:each>\n</r:find>\n\n<r:snippet name=\"comments_summary\" />','2009-01-01 22:40:23','2009-01-02 07:19:28',1,NULL,19),
	(7,'sitemap','',' <r:children:each by=\"title\" order=\"asc\">\r\n   <r:unless_content part=\"no-map\">\r\n     <li>\r\n       <r:link />\r\n       <r:if_children>\r\n         <ul class=\"second\">\r\n           <r:snippet name=\"sitemap\" />\r\n         </ul>\r\n       </r:if_children>\r\n     </li>\r\n   </r:unless_content>\r\n </r:children:each>\r\n\r\n','2009-01-01 23:51:52','2009-01-02 00:45:01',1,NULL,14),
	(8,'comments','','<img src=\"http://spurrd.com/assets/126/comments.jpg\" />\n\n<div id=\"disqus_thread\"></div><r:comment><script type=\"text/javascript\" src=\"http://disqus.com/forums/radiant/embed.js\"></script><noscript><a href=\"http://radiant.disqus.com/?url=ref\">View the discussion thread.</a></noscript></r:comment><a href=\"http://disqus.com\" class=\"dsq-brlink\">blog comments powered by <span class=\"logo-disqus\">Disqus</span></a>','2009-01-02 02:17:21','2009-01-02 07:20:55',1,NULL,3),
	(9,'comments_summary','','ï»¿ï»¿ï»¿ï»¿<script type=\"text/javascript\">\r\n//<![CDATA[\r\n(function() {\r\n		var links = document.getElementsByTagName(\'a\');\r\n		var query = \'?\';\r\n		for(var i = 0; i < links.length; i++) {\r\n			if(links[i].href.indexOf(\'#disqus_thread\') >= 0) {\r\n				query += \'url\' + i + \'=\' + encodeURIComponent(links[i].href) + \'&\';\r\n			}\r\n		}\r\n		document.write(\'<script type=\"text/javascript\" src=\"http://disqus.com/forums/radiant/get_num_replies.js\' + query + \'\"></\' + \'script>\');\r\n	})();\r\n//]]>\r\n</script>\r\n\r\n','2009-01-02 02:18:23','2009-01-02 02:59:44',1,NULL,4),
	(10,'posted','','<div class=\"posted\">Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a></div>','2009-01-02 07:32:00','2009-01-02 07:32:00',1,NULL,0);

/*!40000 ALTER TABLE `snippets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login` varchar(40) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `developer` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text,
  `lock_version` int(11) DEFAULT '0',
  `salt` varchar(255) DEFAULT NULL,
  `session_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`email`,`login`,`password`,`created_at`,`updated_at`,`created_by_id`,`updated_by_id`,`admin`,`developer`,`notes`,`lock_version`,`salt`,`session_token`)
VALUES
	(1,'admin',NULL,'admin','fb0f384234484f70f19590a173b532448774d1b5','2010-02-05 18:05:31','2010-02-06 02:14:33',NULL,NULL,1,0,NULL,2,'a336f7871d1c2dba95b8b836f14653e0e436fa22','64f3df3e7f59cb23a5cfac3931f8e395e145b4f5');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
