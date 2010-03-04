# Sequel Pro dump
# Version 1630
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.40)
# Database: uva_development
# Generation Time: 2010-03-01 23:46:56 -0300
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table assets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assets`;

CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `asset_file_name` varchar(255) DEFAULT NULL,
  `asset_content_type` varchar(255) DEFAULT NULL,
  `asset_file_size` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` (`id`,`caption`,`title`,`asset_file_name`,`asset_content_type`,`asset_file_size`,`created_by_id`,`updated_by_id`,`created_at`,`updated_at`)
VALUES
	(1,'Rotweiler Gino','Rotweiler','rotweiler_1.jpg','image/jpeg',42456,1,1,'2010-02-27 02:58:54','2010-02-27 03:17:28'),
	(2,'','Adopt me','adoptme.jpg','image/jpeg',62255,1,1,'2010-03-02 02:38:05','2010-03-02 02:38:57'),
	(3,'','Mercado de Frutas','market.jpg','image/jpeg',111989,1,NULL,'2010-03-02 02:38:43','2010-03-02 02:38:43'),
	(4,'','Team','team.jpg','image/jpeg',92798,1,NULL,'2010-03-02 02:39:33','2010-03-02 02:39:33');

/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`id`,`key`,`value`,`description`)
VALUES
	(1,'admin.title','Radiant CMS','Title text displayed at the top of all administration screens.'),
	(2,'admin.subtitle','Publishing for Small Teams','The tagline displayed underneath the main administration title'),
	(3,'defaults.page.parts','body, extended','Defines the page parts that a new page is created with.  It should be a list, separated by a comma and a space.  For example:\n\nbq. @body, extended, sidebar@\n'),
	(4,'defaults.page.status','draft','Defines the publishing status of new pages.  This can any one of:\n\n* draft\n* published\n* reviewed\n* hidden\n'),
	(5,'defaults.page.filter','','Sets the text filter a new page has by default.  Valid options, in a vanilla Radiant install are:\n\n* _leave blank to set no default filter_\n* Markdown\n* SmartyPants\n* Textile\n'),
	(6,'session_timeout','1209600',NULL),
	(7,'roles.settings','admin','List of user roles that may see the settings tabs.'),
	(8,'assets.additional_thumbnails','normal=640x640>','Defines the default sizes for image assets that are created when an image is uploaded. Use \"#\" to crop the image to a specific size. \"42x42#\" would be a square thumbnail, cropped in the center 42 pixels by 42 pixels.'),
	(9,'assets.display_size','original','Sets which of your image sizes is shown is the edit view. Defaults to the \"original\" image size, but any size may be used. '),
	(10,'assets.content_types','image/jpeg, image/pjpeg, image/gif, image/png, image/x-png, image/jpg, video/x-m4v, video/quicktime, application/x-shockwave-flash, audio/mpeg, video/mpeg','Defines the content types of that will be allowed to be uploaded as assets.'),
	(11,'assets.max_asset_size','5','The size in megabytes that will be the max size allowed to be uploaded for an asset'),
	(12,'assets.skip_filetype_validation','true',NULL);

/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dogs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dogs`;

CREATE TABLE `dogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



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
	(5,'TwoColumns','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\"\r\n  \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">\r\n<html>\r\n  <head>\r\n    <title>Unidos por la vida animal - <r:title /></title>\r\n    <link href=\"/rss/\" rel=\"alternate\" title=\"RSS\" type=\"application/rss+xml\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"/reset.css\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"/uva-style.css\" />\r\n    <script type=\"text/javascript\" src=\"http://www.jeroenwijering.com/embed/swfobject.js\"></script>\r\n    <script type=\"text/javascript\" src=\"http://spurrd.com/javascripts/prototype.js\"></script>\r\n    <script type=\"text/javascript\" src=\"http://spurrd.com/javascripts/scriptaculous.js?load=effects,builder\"></script>\r\n    <script type=\"text/javascript\" src=\"http://spurrd.com/javascripts/lightbox.js\"></script>\r\n\r\n    <!--[if IE 6]>\r\n      <style type=\"text/css\" media=\"screen\">\r\n        @import url(\"/stylesheets/ie6.css\");\r\n      </style>\r\n    <![endif]-->\r\n\r\n    <!--[if IE 7]>\r\n      <style type=\"text/css\" media=\"screen\">\r\n        @import url(\"/stylesheets/ie7.css\");\r\n      </style>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n     <div id=\"page\">\r\n        <r:snippet name=\"header\" />\r\n            <div id=\"main\" class=\"clearfix\">\r\n                <div id=\"content\">\r\n                   <r:content/>\r\n                </div>\r\n                <div id=\"sidebar\">\r\n                    <r:content part=\"sidebar\" inherit=\"true\" />\r\n                </div>\r\n            </div>\r\n        <r:snippet name=\"footer\" />\r\n     </div>\r\n  </body>\r\n</html>','2010-02-22 02:33:34','2010-02-26 01:33:20',1,1,'',6);

/*!40000 ALTER TABLE `layouts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_attachments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_attachments`;

CREATE TABLE `page_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

LOCK TABLES `page_parts` WRITE;
/*!40000 ALTER TABLE `page_parts` DISABLE KEYS */;
INSERT INTO `page_parts` (`id`,`name`,`filter_id`,`content`,`page_id`)
VALUES
	(1,'body','','<div id=\"intro\">\r\n    <p>\r\n       <r:snippet name=\"mission_statement\" />   \r\n    </p>\r\n</div>\r\n<div id=\"dog-list-header\">\r\n    <h3>Adopt me</h3>\r\n	<br/>\r\n	We have currently 70 dogs for adoptions. Look here if you want to <a href=\"./Adoption\">search</a> for more dogs\r\n</div>\r\n<div id=\"doglist-wrapper\" class=\"clearfix\">\r\n    <table id=\"dog-list\">\r\n        <td>\r\n            <a class=\"doglink\" href=\"#\" ><img src=\"images/perro1.jpg\" alt=\"link\" width=\"125\"/></a>\r\n			<br/>\r\n			<a class=\"doglink\" href=\"#\">Sancho</a>\r\n        </td>\r\n        <td>\r\n            <a class=\"doglink\" href=\"#\"><img src=\"images/perro2.jpg\" alt=\"link\" width=\"125\"/></a>\r\n			<br/>\r\n			<a class=\"doglink\" href=\"#\">Pancho</a>\r\n        </td>\r\n        <td>\r\n            <a class=\"doglink\" href=\"#\"><img src=\"images/perro3.jpg\" alt=\"link\" width=\"125\"/></a>\r\n			<br/>\r\n			<a class=\"doglink\" href=\"#\">Speedy</a>\r\n        </td>\r\n        <td>\r\n            <a class=\"doglink\" href=\"#\"><img src=\"images/perro4.jpg\" alt=\"link\" width=\"125\"/></a>\r\n			<br/>\r\n			<a class=\"doglink\" href=\"#\">Gonzales</a>\r\n        </td>\r\n        <td>\r\n            <a class=\"doglink\" href=\"#\"><img src=\"images/perro5.jpg\" alt=\"link\" width=\"125\"/></a>\r\n			<br/>\r\n			<a class=\"doglink\" href=\"#\">Snoopy</a>\r\n        </td>\r\n    </table>\r\n</div>',1),
	(2,'body','Textile','The file you were looking for could not be found.\n\nAttempted URL: @<r:attempted_url />@\n\nIt is possible that you typed the URL incorrectly or that you clicked on a bad link.\n\n\"<< Back to Home Page\":/\n',2),
	(3,'body','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<rss version=\"2.0\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\">\n  <channel>\n    <title>Article RSS Feed</title>\n    <link>http://your-web-site.com<r:url /></link>\n    <language>en-us</language>\n    <ttl>40</ttl>\n    <description>The main blog feed for my Web site.</description>\n    <r:find url=\"/news/\">\n    <r:children:each limit=\"10\" order=\"desc\">\n        <item>\n          <title><r:title /></title>\n          <description><r:escape_html><r:content /></r:escape_html></description>\n          <pubDate><r:rfc1123_date /></pubDate>\n          <guid>http://your-web-site.com<r:url /></guid>\n          <link>http://your-web-site.com<r:url /></link>\n        </item>\n    </r:children:each>\n    </r:find>\n  </channel>\n</rss>\n',3),
	(4,'body','','<r:children:each limit=\"5\" order=\"desc\">\r\n<div class=\"entry\">\r\n  <h3><r:link /></h3>\r\n    <div class=\"posted\">\r\n      Posted by <r:author /> on <r:date format=\"%d/%m/%Y\" /><em></em><r:link>Read full article</r:link>    \r\n    </div>\r\n  <r:content part=\"summary\" />\r\n</div>\r\n</r:children:each>\r\n\r\n<r:snippet name=\"comments_summary\" />',4),
	(8,'sidebar','','',1),
	(10,'body','Textile','h2. What we do\r\n<hr/>\r\n<r:assets:image title=\"Mercado de Frutas\" />\r\n\r\nNos organizamos por grupos, distribuyendo las tareas de acuerdo a la capacidad y elecciÃ³n acorde a cada uno.Un grupo trabajaÂ  en rescate , recuperaciÃ³n fÃ­sica yÂ  socializacion de animales deÂ compaÃ±Ã­a ( perros y gatos ), para luego encontrarles un hogar , estos son rescatadosÂ  enÂ situaciÃ³n de riesgo ( maltrato, accidentados,abandonados etc ) Hay otro grupo que trabaja conÂ caballos y animales exÃ³ticos, en secuestros ,recuperaciÃ³n y vuelta a hÃ¡bitat natural o lugar acorde a sus necesidades \r\n\r\nh3. Adopciones en el Puerto de Frutos de Tigre\r\n\r\nEste es un Paseo TurÃ­sticoÂ  y de compras muy importante en la Zona por donde transitan 60.000 personas por fin de semana. U.V.A tiene un Stand, espacio otorgadoÂ por la Municipalidad de Tigre desde Junio del 2008,Â enÂ donde se dan animales ( perros y gatosÂ  ).Estos se dan vacunados, desparasitados y con la castraciÃ³n gratuita. Se hace una estricta seleccion del adoptante,quien firma un acta compromiso de adopciÃ³n con todos los datos incluyendo numero deÂ documento. Hasta la fecha hemos dado 5.500 animales aprox en dicho lugar. TambiÃ©n se realizan constantemente charlas sobre tenencia responsable educando a niÃ±os y adultos en el lugar. Otro grupo desarrolla su voluntariado, dentro del Centro de Zoonosis , donde se atienden diariamente a Â 60 animales aprox. se los alimenta y se realiza la limpieza de los caniles y se los atiende sanitariamente.Cada perro que ingresa se lo desparasita,vacuna y castra para su posterior adopciÃ³n. Se clasifican por temperamento, para luego poder reubicarlos con una familia. SeÂ reciben telefonicamente alrededor de 30 llamados diarios por denuncias de maltratoÂ ,animales heridos ,perras preÃ±adas o pariciones en la vÃ­a publica , perras en celo,consultas sobreÂ donde dejar sus animales en vacacionesÂ  donde dar en adopciÃ³n etc.Todos estas consultas son personalizadas por las voluntarias , que resuelven el problema acorde a la temÃ¡tica.\r\n\r\n',9),
	(11,'sidebar','','<h1>About UVA\r\n</h1>\r\n<hr/>\r\n<ul id=\"submenu\">\r\n    <r:navigation urls=\"What we do: /about\">\r\n       <r:normal><li><a href=\"<r:url />\"><r:title /></a></li></r:normal>\r\n       <r:here><li class=\"selected\"><a href=\"<r:url />\"><r:title /></a></li></r:here>\r\n       <r:selected><li><a href=\"<r:url />\"><r:title /></a></li></r:selected>\r\n    </r:navigation>\r\n    <r:navigation urls=\"The Team:  /about/team | History: /about/history | How to help: /about/help/\">\r\n       <r:normal><li><a href=\"<r:url/>\"><r:title /></a></li></r:normal>\r\n       <r:here><li><a class=\"selected\" href=\"<r:url />\"><r:title/></a></li></r:here>\r\n       <r:selected><li><a class=\"selected\" href=\"<r:url />\"><r:title/></a></li></r:selected>\r\n   </r:navigation>    \r\n</ul>    ',9),
	(12,'sidebar','','<div class=\"box\">\r\n<h3>News Archives</h3>\r\n<ul>\r\n<r:find url=\"/news/\">\r\n<r:children:each order=\"desc\">\r\n<r:header><li><a href=\"<r:date format=\"/news/%Y/%m/\" />\"><r:date format=\"%B %Y\" /></a></li></r:header>\r\n</r:children:each>\r\n</r:find>\r\n</ul>\r\n</div>\r\n\r\n<!--r:snippet name=\"newsletter\" /-->\r\n<!--div class=\"spot\"><r:snippet name=\"rss\" /></div-->',4),
	(17,'body','','<h2>Site Map</h2>\n\n<div id=\"sitemap\">\n <ul>\n   <r:find url=\"/\">\n     <r:snippet name=\"sitemap\" />\n   </r:find>\n </ul>\n</div>\n',11),
	(18,'extended','','',11),
	(20,'no-map','','',11),
	(21,'body','Textile','h1. How to help\r\n\r\nThis is what you can do to help UVA\r\n',12),
	(22,'sidebar','','',12),
	(23,'body','','h2 Dog Search Page\r\n',13),
	(24,'sidebar','','<div class=\"spot\">\r\n<img src=\"http://spurrd.com/assets/156/open.gif\" />\r\n<h3>Almost always open</h3>\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia <a href=\"/about\">consequuntur</a> magni dolor eos qui ration volupt sequi nesciunt. Proin varius urna. In varius bibendum nisl. Donec nec nisi ut nisi varius porttitor.</p>\r\n</div>\r\n\r\n<div class=\"spot\">\r\n<img src=\"http://spurrd.com/assets/153/gift.gif\" />\r\n<h3>Roaster gift cards</h3>\r\n<p>Mauris elit lacus, iaculis a, cons nec, vehicula <a href=\"/about\">condimentum</a> at. Suspendisse sapien enim, tempus ut, facilisis at, vestibulum nec, nunc. Aliquam erat volutpat. Ut sit amet quam. Cum soci natoque penati et magnis dis partur montes, nascet ridiculus mus. Aen vel urna. In justo nisl, cursus in, molestie a, vulputate nec. </p> \r\n</div>\r\n\r\n<div class=\"spot\">\r\n<img src=\"http://spurrd.com/assets/159/truck.gif\" />\r\n<h3>Metro delivery</h3>\r\n<p>Iaculis a, cons nec, condi<a href=\"/about\"> vehicula</a>. Suspendisse sapien enim, tempus ut, facilisis at, vestibulum nec, nunc. Aliquam erat volutpat. Ut sit amet quam. Cum soci natoque penati et magnis dis partur montes, nascet ridiculus mus. Aen vel urna. In justo nisl, cursus in, molestie. </p> \r\n</div>\r\n',13),
	(25,'body','','/* -------------------------------------------------------------- \n\n   reset.css\n   * Resets default browser CSS.\n\n   Based on work by Eric Meyer:\n   * meyerweb.com/eric/thoughts/2007/05/01/reset-reloaded/\n\n   Icons are available for purchase at:\n   * http://www.istockphoto.com/file_closeup/arts-and-entertainment/arts-symbols/4575877-satin-icons-set-9.php?id=4575877\n\n-------------------------------------------------------------- */\n\nhtml, body, div, span, object, iframe,\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\na, abbr, acronym, address, code,\ndel, dfn, em, img, q, dl, dt, dd, ol, ul, li,\nfieldset, form, label, legend,\ntable, caption, tbody, tfoot, thead, tr, th, td {\n	margin: 0;\n	padding: 0;\n	border: 0;\n	font-weight: inherit;\n	font-style: inherit;\n	font-size: 100%;\n	font-family: inherit;\n	vertical-align: baseline;\n}\n\n\nbody { line-height: 1.5; background: #fff; margin:1.5em 0; }\n\n/* Tables still need \'cellspacing=\"0\"\' in the markup. */\ntable { border-collapse: separate; border-spacing: 0; }\ncaption, th, td { text-align: left; font-weight:400; }\n\n/* Remove possible quote marks (\") from <q>, <blockquote>. */\nblockquote:before, blockquote:after, q:before, q:after { content: \"\"; }\nblockquote, q { quotes: \"\" \"\"; }\n\na img { border: none; }\n',14),
	(26,'no-map','','',14),
	(33,'body','','/* CSS Document for UVA */\r\nbody {\r\n    background-color: #BFC1C4;\r\n    font: normal 0.94em Arial, Helvetica, Verdana, sans-serif;\r\n    color: #474b4f;\r\n    line-height: 1.33em;\r\n    padding: 0;\r\n    margin: 0;\r\n    text-align: center;\r\n    margin-top: 45px;\r\n}\r\n\r\n/* LAYOUT */\r\n#page {\r\n    width: 942px;\r\n    text-align: left;\r\n    border: 1px solid #9EA3AC;\r\n    margin: 15px auto;\r\n    padding: 1px;\r\n    background: #FFFFFF;\r\n    clear: both;\r\n}\r\n\r\n#header {\r\n    color: #FFFFFF;\r\n    font: normal 1.20em Georgia, \"Times New Roman\", Times, serif;\r\n    height: 110px;\r\n    background: url(/images/bg-header.png)\r\n}\r\n\r\n#main {\r\n    margin: 15px 0px 30px;\r\n    padding: 0 30px 0 30px;\r\n}\r\n\r\n#startpage #main {\r\n    margin: 0 0px 30px;\r\n    padding: 0;\r\n}\r\n\r\n#content {\r\n    float: left;\r\n    width: 600px;\r\n    padding: 50px 0px 0px 0px\r\n}\r\n\r\n#sidebar {\r\n    float: right;\r\n    width: 250px;\r\n    font-size: 90%;\r\n    padding: 53px 15px 0px 15px;\r\n}\r\n\r\n#footer {\r\n    padding: 30px 30px 50px 30px;\r\n    background: #dfe0e1;\r\n}\r\n\r\n.clearfix:after {\r\n    clear: both;\r\n    content: \".\";\r\n    display: block;\r\n    height: 0;\r\n    line-height: 0;\r\n    visibility: hidden;\r\n}\r\n\r\n/* GENERAL*/\r\nh1 {\r\n    font: normal 1.20em Georgia, \"Times New Roman\", Times, serif;\r\n    margin: 0;\r\n}\r\n\r\nh2 {\r\n    font: normal 1.20em Georgia, \"Times New Roman\", Times, serif;\r\n    margin: 0;\r\n}\r\n\r\nh3 {\r\n    font: normal 1.20em Georgia, \"Times New Roman\", Times, serif;\r\n    margin: 0;\r\n}\r\n\r\nh3 a {\r\n    color: #451811;\r\n    text-decoration: none;\r\n    border-bottom: none;\r\n    margin: 0px;\r\n}\r\n\r\nh3 a:hover {\r\n    color: #902f1c;\r\n    border-bottom: none;\r\n}\r\n\r\na {\r\n    color: #711e11;\r\n    text-decoration: none;\r\n}\r\n\r\na:hover {\r\n    color: #451811;\r\n    text-decoration: underlined;\r\n    border-bottom: 2px solid #DBD6D1;\r\n}\r\n\r\np {\r\n    margin: 0px 0px 10px;\r\n}\r\n\r\nul {\r\n    padding: 0;\r\n    margin: 0;\r\n    list-style: none;\r\n}\r\n\r\nli {\r\n    padding: 0;\r\n    margin: 0;\r\n    list-style: none;\r\n}\r\n\r\n/* NAVIGATIONS */\r\nul#mainmenu {\r\n    float: right;\r\n    display: block;\r\n    margin: 65px 0 0 0;\r\n    padding: 0;\r\n}\r\n\r\nul#mainmenu li {\r\n    float: left;\r\n    padding: 0 30px 0 0;\r\n}\r\n\r\nul#mainmenu li a {\r\n    float: left;\r\n    display: block;\r\n    color: #fff;\r\n    font-weight: bold;\r\n    text-decoration: none;\r\n}\r\n\r\nul#mainmenu li a:hover {\r\n    tect-decoration: underlined;\r\n}\r\n\r\nul#mainmenu li.selected a {\r\n    color: #ffc600;\r\n}\r\n\r\n/* HEADER */\r\n.logo {\r\n    border: none;\r\n    text-decoration: none;\r\n    margin-top: -45px;\r\n    margin-left: 20px;\r\n}\r\n\r\n/* FOOTER */\r\n.column-blog {\r\n    float: left;\r\n    width: 290px;\r\n    margin: 0 30px 0 0;\r\n}\r\n\r\n.column {\r\n    float: left;\r\n    width: 274px;\r\n    margin: 0 30px 0 0;\r\n}\r\n\r\n.no-margin {\r\n    margin: 0;\r\n}\r\n\r\n/* START PAGE*/\r\n#intro {\r\n    height: 310px;\r\n    background: url(../images/intro-about-uva.jpg);\r\n    padding: 0 0 0 30px;\r\n}\r\n\r\n#intro p {\r\n    position: relative;\r\n    top: 130px;\r\n    font: normal 1.33em Georgia, \"Times New Roman\", Times, serif;\r\n    color: #fff;\r\n    background: #474b4f;\r\n    width: 420px;\r\n    padding: 20px 20px 20px 20px;\r\n    border: 1px solid #9c9993;\r\n}\r\n\r\n#doglist-wrapper {\r\n}\r\n\r\n#dog-list-header {\r\n    padding: 20px 0px 30px 30px;\r\n}\r\n\r\n#dog-list {\r\n    margin: 0;\r\n    padding: 0px 0px 0px 30px;\r\n    list-style: none;\r\n    width: 100%;\r\n}\r\n\r\n#dog-list td {\r\n    vertical-align: bottom;\r\n}\r\n\r\n#dog-list td a {\r\n    text-decoration: none;\r\n    border-bottom: 0px;\r\n}\r\n\r\n#dog-list td img {\r\n    border: none;\r\n}\r\n\r\n/* TEXT PAGE */\r\n#main-text {\r\n    padding: 0px 0px 0px 0px;\r\n}\r\n\r\n.entry {\r\n    margin-bottom: 20px;\r\n}\r\n\r\n.entry .info {\r\n    margin-top: 1em;\r\n    font-size: 1em;\r\n}\r\n\r\n.entry p {\r\n    font-size: 1.1em;\r\n}\r\n\r\n.posted {\r\n    color: #918C7E;\r\n    font-family: \"lucida grande\", arial, helvetica, verdana, sans-serif;\r\n    font-size: 10px;\r\n    margin: -3px 0 5px;\r\n    padding: 0px;\r\n}\r\n\r\n.posted em {\r\n    color: #451811;\r\n    font-style: italic;\r\n    margin: 0px 6px;\r\n    font-weight: bold;\r\n}\r\n\r\n.posted img {\r\n    background: transparent none repeat scroll 0 0;\r\n    border: medium none;\r\n    margin: 0 4px -5px 2px;\r\n    text-decoration: none;\r\n}\r\n\r\n/*---STYLES---*/\r\n.box {\r\n    padding: 15px;\r\n    border: 1px solid #dbd6d1;\r\n    background-color: #efedeb;\r\n    margin-bottom: 20px;\r\n}\r\n\r\n.box h3 {\r\n    font-size: 18px;\r\n    margin-bottom: 2px;\r\n}\r\n\r\n.box input {\r\n    margin-top: 5px;\r\n}\r\n\r\n.box input.email {\r\n    font-size: 10px;\r\n    padding: 3px;\r\n    color: #a29e96;\r\n    width: 140px;\r\n}\r\n\r\n.box input.subscribe {\r\n    width: 70px;\r\n    margin-left: 5px;\r\n    color: #232323;\r\n}\r\n\r\n.box ul {\r\n    margin-left: 20px;\r\n}\r\n\r\n.hidden {\r\n    display: none;\r\n}\r\n\r\n.clear {\r\n    clear: both;\r\n}\r\n\r\n\r\n',18),
	(34,'extended','','',18),
	(35,'body','Textile','h1. The Team\r\n<hr/>\r\n<r:assets:image title=\"Team\" />\r\n\r\nUnidos por la Vida Animal, se forma con un  grupo de habitantes y contribuyentes de la Localidad de Tigre en el aÃ±o 1999 , que se une ante las matanzas ocurridas dentro de el Centro de Zoonosis. Este grupo se reune con el Intendente y le hacen una propuesta diferente, la de empezar a castrar, vacunar  y desparasitar para poder dar en adopciÃ³n\r\ndichos animales. Este grupo formado por mujeres y hombres de esta Ciudad se distribuyeron las tareas, de lunes a domingos ,o sea  los 365 dÃ­as del aÃ±o.ConsistiÃ³, en\r\nalimentarlos, mantener la higiene del lugar y sacarlos a pasear. El Profesional Veterinario, comenzo a castrar 30 animales por dÃ­a, contando con la ayuda de U.V.A que colaboraba  llevando los animales preparÃ¡ndoles para dicha operaciÃ³n y su posterior recuperaciÃ³n para luego dar en adopciÃ³n. U.V.A modifico el lugar ya que se inundaba y por ello los animales morÃ­an ahogandose en sus jaulas.\r\n\r\nLos perros ya no estaban en jaulas de 2 x 2, si no que se construyeron caniles con patios donde podÃ­an moverse ,caminar y correr, En invierno se colocaron estufas con interruptores y todo esto fue realizado por la AsociaciÃ³n. Cuando las autoridades por el aÃ±o 2006 deciden hacer un nuevo Zoonosis, U.V.A presenta por iniciativa de una Voluntaria, un plano de instalaciones traÃ­do de E.E.U.U  y dicho plano es aceptado y  adaptado al lugar. La construcciÃ³n se termina en el aÃ±o 2007 y se realiza la mudanza con los animales, U.V.A habÃ­a cumplido otra etapa.........se habÃ­an cambiado las instalaciones y se podÃ­an ahora realizar mas tareas aun, en beneficio de los animales !!!!!! HabÃ­a que empezar con campaÃ±as de esterilizaciÃ³n masivas y sostenidas ,para ello se necesitan mas  Veterinarios. La AsociaciÃ³n habla con las Autoridades Municipales sobre la necesidad de aumentar las esterilizaciones, mayor cantidad de consultas y vacunaciÃ³n para prevencion de enfermedades.\r\n\r\nComo la demanda es cada ves mayor , hoy el Centro de Zoonosis cuenta con 5 Profesionales Municipales y un Profesional contratado por la Cooperadora. Como ayuda U.V.A a los Veterinarios y al Municipio y a la PoblaciÃ³n de Tigre?  Tigre es un Municipio de 330.000 habitantes que tienen un perro cada 3 habitantes,para poder mermar dicha cantidad , los Voluntarios organizan en los diferentes Barrios campaÃ±as de esterilizaciÃ³n que  realiza gratuitamente el Municipio con sus Profesionales. U.V.A dona hoy dia vacunas quintuples y medicacion que se aplica dentro del Centro de Zoonosis La AsociaciÃ³n ,junto con Municipio trabajan dÃ­a a dÃ­a para poder mejorar el Bienestar que conlleva al Bienestar Humano.\r\n',19),
	(36,'extended','','',19),
	(37,'body','','h1. History\r\n<hr/>\r\n\r\nUnidos por la Vida Animal, se forma con un  grupo de habitantes y contribuyentes de la Localidad de Tigre en el aÃ±o 1999 , que se une ante las matanzas ocurridas dentro de el\r\nCentro de Zoonosis. Este grupo se reune con el Intendente y le hacen una propuesta diferente, la de empezar a castrar, vacunar  y desparasitar para poder dar en adopciÃ³n dichos animales. Este grupo formado por mujeres y hombres de esta Ciudad se distribuyeron las tareas, de lunes a domingos ,o sea  los 365 dÃ­as del aÃ±o.ConsistiÃ³,en alimentarlos, mantener \r\nla higiene del lugar y sacarlos a pasear .El Profesional Veterinario, comenzo a castrar 30 animales por dÃ­a, contando con la ayuda de U.V.A que colaboraba  llevando los animales preparÃ¡ndoles para dicha operaciÃ³n y su posterior recuperaciÃ³n para luego dar en adopciÃ³n. U.V.A modifico el lugar ya que se inundaba y por ello los animales morÃ­an ahogandose en sus jaulas.Los perros ya no estaban en jaulas de 2 x 2, si no que se construyeron caniles con patios donde podÃ­an moverse ,caminar y correr, En invierno se colocaron estufas con \r\ninterruptores y todo esto fue realizado por la AsociaciÃ³n. Cuando las autoridades por el aÃ±o 2006 deciden hacer un nuevo Zoonosis, U.V.A presenta por iniciativa de una Voluntaria, un plano de instalaciones traÃ­do de E.E.U.U  y dicho plano es aceptado y  adaptado al lugar. La construcciÃ³n se termina en el aÃ±o 2007 y se realiza la mudanza con los animales, U.V.A habÃ­a cumplido otra etapa.........se habÃ­an cambiado las instalaciones y se podÃ­an ahora realizar mas tareas aun, en beneficio de los animales !!!!!!\r\nHabÃ­a que empezar con campaÃ±as de esterilizaciÃ³n masivas y sostenidas ,para ello se necesitan mas  Veterinarios. La AsociaciÃ³n habla con las Autoridades Municipales sobre la necesidad de aumentar las esterilizaciones, mayor cantidad de consultas y vacunaciÃ³n para prevencion de enfermedades. Como la demanda es cada ves mayor , hoy el Centro de Zoonosis cuenta con 5 Profesionales Municipales y un Profesional contratado por la Cooperadora.\r\n\r\nComo ayuda U.V.A a los Veterinarios y al Municipio y a la PoblaciÃ³n de Tigre?\r\n\r\nTigre es un Municipio de 330.000 habitantes que tienen un perro cada 3 habitantes,para poder mermar dicha cantidad , los Voluntarios organizan en los diferentes Barrios campaÃ±as de esterilizaciÃ³n que  realiza gratuitamente el Municipio con sus Profesionales. U.V.A dona hoy dia vacunas quintuples y medicacion que se aplica dentro del Centro de Zoonosis La AsociaciÃ³n, junto con Municipio trabajan dÃ­a a dÃ­a para poder mejorar el Bienestar que conlleva al Bienestar Humano.\r\n',20),
	(38,'extended','','',20),
	(39,'body','Textile','h1. How to help\r\n<hr/>\r\n<r:assets:image title=\"Adopt me\" />\r\n\r\nPlease help!',21),
	(40,'extended','','',21),
	(43,'body','','<r:archive:children:each order=\"desc\">\r\n<div class=\"entry\">\r\n<h3><r:link /></h3>\r\n    <div class=\"posted\">\r\n      Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a><em>|</em><r:link>Read full article</r:link>    \r\n    </div>\r\n  <r:content part=\"summary\" />\r\n</div>\r\n</r:archive:children:each>\r\n\r\n<r:snippet name=\"comments_summary\" />',23),
	(44,'extended','','',23),
	(45,'body','Textile','h3. <r:title />\r\n<r:snippet name=\"posted\" />\r\n\r\n<r:assets:image title=\"Rotweiler\" />\r\n\r\nUn lunes por la maÃ±ana, caminando muy lentamente y con la cabeza muy baja, conocÃ­ a Gino, un perro rottwailer de aproximadamente 2 aÃ±os de edad VolvÃ­ al lugar para descubrir  porque se movilizaba asÃ­ y descubrÃ­ que su cara estaba totalmente desfigurada del lado izquierdo y llena de orificios y gusanos. No podÃ­a creer lo que veÃ­a, comencÃ© a llamarlo tratando de que me siguiera hasta mi casa (que quedaba cerca ), pero el prefiriÃ³ entrar a un negocio de  venta de lanchas y se acostÃ³ detrÃ¡s de un bote,. Le pedÃ­ por favor a la dueÃ±a del Comercio que le permitiera quedarse allÃ­ unos minutos y llame urgente al Jefe de Zoonosis de Tigre para que me enviara el mÃ³vil, no habÃ­an pasado 20 minutos que llego el mÃ³vil, y el, muy sumiso se dejo subir al mismo y lo transladamos a Zoonosis. Inmediatamente fue atendido por los Profesionales Veterinarios, y a partir de allÃ­ empezÃ³ la gran recuperaciÃ³n de Gino. Hoy dÃ­a se encuentra en los caniles a cargo de U.V.A. y tenemos muchas esperanzas de que lo podremos dar en adopciÃ³n a una buena familia que lo ame como se merece, El tiene buen carÃ¡cter, ya esta castrado y vacunado, y pronto podrÃ¡ ser un perro feliz en un nuevo hogar.',24),
	(46,'extended','','',24);

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`,`title`,`slug`,`breadcrumb`,`class_name`,`status_id`,`parent_id`,`layout_id`,`created_at`,`updated_at`,`published_at`,`created_by_id`,`updated_by_id`,`virtual`,`lock_version`,`description`,`keywords`)
VALUES
	(1,'UVA','/','Home','',100,NULL,1,'2008-12-24 01:08:45','2010-02-21 22:44:48','2008-12-23 18:08:45',1,1,0,81,'',''),
	(2,'File Not Found','file-not-found','File Not Found','FileNotFoundPage',100,1,NULL,'2008-12-24 01:08:45','2008-12-24 01:08:45','2008-12-23 18:08:45',1,NULL,1,0,NULL,NULL),
	(3,'RSS Feed','rss','RSS Feed',NULL,100,1,3,'2008-12-24 01:08:45','2008-12-24 01:08:45','2008-12-23 18:08:45',1,NULL,0,0,NULL,NULL),
	(4,'Articles','news','News','ArchivePage',100,1,5,'2008-12-24 01:08:45','2010-02-25 23:37:25','2008-12-23 18:08:45',1,1,0,19,'',''),
	(9,'About','about','About','',100,1,5,'2008-12-24 01:08:45','2010-02-22 02:38:45','2008-12-23 18:08:45',1,1,0,11,'',''),
	(11,'Site Map','sitemap','Site Map','Page',100,1,NULL,'2009-01-01 23:49:07','2009-01-02 01:31:41','2009-01-01 16:49:07',1,NULL,0,11,'',''),
	(12,'Help','help','Help','',100,1,5,'2009-01-02 02:11:32','2010-02-22 02:46:56','2009-01-01 19:11:32',1,1,0,10,'',''),
	(13,'Adoption','adoption','Adoption','',100,1,NULL,'2009-01-02 07:36:32','2010-02-09 21:38:22','2009-01-02 00:49:40',1,1,0,26,'',''),
	(14,'Reset','reset.css','Reset','Page',100,1,2,'2009-01-02 10:00:27','2009-01-02 10:06:13','2009-01-02 03:06:13',1,NULL,0,2,'',''),
	(18,'uva-style','uva-style.css','uva-style','',100,1,2,'2010-02-21 22:42:39','2010-02-21 22:55:54','2010-02-21 19:48:36',1,1,0,5,'',''),
	(19,'Team','team','Team','',100,9,NULL,'2010-02-26 00:16:50','2010-02-26 00:21:18','2010-02-25 21:21:18',1,1,0,2,'',''),
	(20,'History','history','History','',100,9,NULL,'2010-02-26 00:17:41','2010-02-26 00:21:10','2010-02-25 21:21:10',1,1,0,2,'',''),
	(21,'Help','help','Help','',100,9,NULL,'2010-02-26 00:18:11','2010-02-26 00:21:01','2010-02-25 21:21:01',1,1,0,2,'',''),
	(23,' %B %Y Archives ','b-y-archives',' %B %Y Archives ','ArchiveMonthIndexPage',100,4,NULL,'2010-03-02 01:01:26','2010-03-02 01:03:33','2010-03-01 22:01:39',1,1,1,2,'',''),
	(24,'La historia de Gino','la-historia-de-gino','La historia de Gino','',100,4,NULL,'2010-03-02 01:02:13','2010-03-02 01:12:10','2010-03-01 22:03:08',1,1,0,3,'','');

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
	('20100222200719'),
	('20100301090900'),
	('21'),
	('3'),
	('4'),
	('5'),
	('6'),
	('7'),
	('8'),
	('9'),
	('Dog-20100222200719'),
	('Paperclipped-1'),
	('Paperclipped-2'),
	('Paperclipped-20090316132151'),
	('Paperclipped-3'),
	('Paperclipped-4'),
	('Paperclipped-5'),
	('Paperclipped-6'),
	('Paperclipped-7'),
	('Settings-1'),
	('Settings-2');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

LOCK TABLES `snippets` WRITE;
/*!40000 ALTER TABLE `snippets` DISABLE KEYS */;
INSERT INTO `snippets` (`id`,`name`,`filter_id`,`content`,`created_at`,`updated_at`,`created_by_id`,`updated_by_id`,`lock_version`)
VALUES
	(1,'header','','<div id=\"header\" class=\"clearfix\">\r\n    <a href=\"/\"><span><img class=\"logo\" src=\"/images/logo.gif\" alt=\"Unidos por la vida animal\"/></span></a>\r\n    <r:snippet name=\"navigation\" />\r\n</div>\r\n','2008-12-24 01:08:44','2010-03-02 00:58:59',1,1,18),
	(2,'footer','','<div id=\"footer\" class=\"clearfix\">\r\n    <div class=\"column\">\r\n        <h3>Blog</h3>\r\n        <p>\r\n            <r:snippet name=\"news_links\" />\r\n        </p>\r\n    </div>\r\n    <div class=\"column\">\r\n        <h3>Visit us</h3>\r\n        <p>\r\n            Zoonosis de Tigre\r\n            <br/>\r\n            PueyrredÃ³n 211\r\n			<br/> \r\n			Tigre\r\n        </p>\r\n    </div>\r\n    <div class=\"column no-margin\">\r\n        <h3>Contactar</h3>\r\n        <p>\r\n            Telephone: 4512-4568 \r\n            <br/>\r\n            E-mail:    <a href=\"mailto:info@uva-tigre.com.ar\">info@uva-tigre.com.ar</a>\r\n        </p>\r\n    </div>\r\n</div>','2008-12-24 01:08:44','2010-03-02 00:55:24',1,1,11),
	(3,'navigation','','<ul id=\"mainmenu\">\r\n  <r:navigation urls=\"Home: /\">\r\n      <r:normal><li><a href=\"<r:url />\"><r:title /></a></li></r:normal>\r\n      <r:here><li class=\"selected\"><a href=\"<r:url />\"><r:title /></a></li></r:here>\r\n      <r:selected><li><a href=\"<r:url />\"><r:title /></a></li></r:selected>\r\n  </r:navigation>\r\n  <r:navigation urls=\"Adoption: /dogs | News: /news | About: /about\">\r\n    <r:normal><li><a href=\"<r:url />\"><r:title /></a></li></r:normal>\r\n    <r:here><li class=\"selected\"><a href=\"<r:url />\"><r:title /></a></li></r:here>\r\n    <r:selected><li class=\"selected\"><a href=\"<r:url />\"><r:title /></a></li></r:selected>\r\n  </r:navigation>\r\n</ul>    ','2008-12-30 21:38:09','2010-02-27 02:23:54',1,1,14),
	(4,'newsletter','','<div class=\"box\">\n  <h3>Our Newsletter</h3>\n    <input class=\"email\" value=\"Enter your email address...\" type=\"text\" onfocus=\"this.value=\'\'\"  id=\"\" name=\"\" />\n    <input class=\"subscribe\" type=\"submit\" value=\"Subscribe\" />\n</div>','2008-12-31 01:08:12','2009-01-02 06:11:14',1,NULL,19),
	(5,'rss','','<img src=\"http://spurrd.com/assets/147/rss.gif\" />\n<h3>RSS</h3>\n<p>Get the <a href=\"/rss/\">feed</a> for our latest news. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora.</p>\n','2008-12-31 07:04:11','2009-01-02 07:05:37',1,NULL,5),
	(6,'news_links','','<r:find url=\"/news\">\r\n  <r:children:each order=\"desc\" limit=\"3\">\r\n    <r:date format=\"%d/%m/%Y\" /> <r:link />\r\n    <br/>\r\n  </r:children:each>\r\n</r:find>\r\n','2009-01-01 22:40:23','2010-03-02 00:59:34',1,1,24),
	(7,'sitemap','',' <r:children:each by=\"title\" order=\"asc\">\r\n   <r:unless_content part=\"no-map\">\r\n     <li>\r\n       <r:link />\r\n       <r:if_children>\r\n         <ul class=\"second\">\r\n           <r:snippet name=\"sitemap\" />\r\n         </ul>\r\n       </r:if_children>\r\n     </li>\r\n   </r:unless_content>\r\n </r:children:each>\r\n\r\n','2009-01-01 23:51:52','2009-01-02 00:45:01',1,NULL,14),
	(8,'comments','','<img src=\"http://spurrd.com/assets/126/comments.jpg\" />\n\n<div id=\"disqus_thread\"></div><r:comment><script type=\"text/javascript\" src=\"http://disqus.com/forums/radiant/embed.js\"></script><noscript><a href=\"http://radiant.disqus.com/?url=ref\">View the discussion thread.</a></noscript></r:comment><a href=\"http://disqus.com\" class=\"dsq-brlink\">blog comments powered by <span class=\"logo-disqus\">Disqus</span></a>','2009-01-02 02:17:21','2009-01-02 07:20:55',1,NULL,3),
	(9,'comments_summary','','ï»¿ï»¿ï»¿ï»¿<script type=\"text/javascript\">\r\n//<![CDATA[\r\n(function() {\r\n		var links = document.getElementsByTagName(\'a\');\r\n		var query = \'?\';\r\n		for(var i = 0; i < links.length; i++) {\r\n			if(links[i].href.indexOf(\'#disqus_thread\') >= 0) {\r\n				query += \'url\' + i + \'=\' + encodeURIComponent(links[i].href) + \'&\';\r\n			}\r\n		}\r\n		document.write(\'<script type=\"text/javascript\" src=\"http://disqus.com/forums/radiant/get_num_replies.js\' + query + \'\"></\' + \'script>\');\r\n	})();\r\n//]]>\r\n</script>\r\n\r\n','2009-01-02 02:18:23','2009-01-02 02:59:44',1,NULL,4),
	(10,'posted','','<div class=\"posted\">Posted by <r:author /> on <r:date format=\"%d/%m/%Y\" /></div>','2009-01-02 07:32:00','2010-03-02 01:12:56',1,1,2),
	(11,'mission_statement','','U.V.A realiza: Rescates de Animales en riesgo, recuperaciÃ³n de enfermos, castraciones, adopciones, promueve la Tenencia Responsable y presenta proyectos a nivel Municipal y Nacional.','2010-03-02 00:50:22','2010-03-02 00:50:22',1,NULL,0);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`email`,`login`,`password`,`created_at`,`updated_at`,`created_by_id`,`updated_by_id`,`admin`,`developer`,`notes`,`lock_version`,`salt`,`session_token`)
VALUES
	(1,'admin',NULL,'admin','fb0f384234484f70f19590a173b532448774d1b5','2010-02-05 18:05:31','2010-02-06 02:14:33',NULL,NULL,1,0,NULL,2,'a336f7871d1c2dba95b8b836f14653e0e436fa22','64f3df3e7f59cb23a5cfac3931f8e395e145b4f5'),
	(2,'cristina','hardy@ferentschik.de','cristina','302bfdf8dc6849dd0f11ce9ba77a356e29a10de2','2010-03-02 01:07:30','2010-03-02 01:07:30',1,NULL,0,1,'',0,'5ab7f78272b97a1d7f97909ff32f5fc20f637dd5',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
