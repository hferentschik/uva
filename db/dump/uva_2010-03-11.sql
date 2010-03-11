# Sequel Pro dump
# Version 1630
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.40)
# Database: uva_development
# Generation Time: 2010-03-11 13:39:29 -0300
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
  `caption` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `asset_file_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `asset_content_type` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `asset_file_size` int(11) DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` (`id`,`caption`,`title`,`asset_file_name`,`asset_content_type`,`asset_file_size`,`created_by_id`,`updated_by_id`,`created_at`,`updated_at`)
VALUES
	(1,'Rotweiler Gino','Rotweiler','rotweiler_1.jpg','image/jpeg',42456,1,1,'2010-02-27 02:58:54','2010-02-27 03:17:28'),
	(2,'','Adopt me','adoptme.jpg','image/jpeg',62255,1,1,'2010-03-02 02:38:05','2010-03-02 02:38:57'),
	(3,'','Mercado de Frutas','market.jpg','image/jpeg',111989,1,NULL,'2010-03-02 02:38:43','2010-03-02 02:38:43'),
	(4,'','Team','team.jpg','image/jpeg',92798,1,NULL,'2010-03-02 02:39:33','2010-03-02 02:39:33'),
	(8,'','Capitana','perro2.jpg','image/jpeg',1830785,1,NULL,'2010-03-05 02:27:55','2010-03-05 02:27:55'),
	(9,'','Silvino','perro3.jpg','image/jpeg',1503722,1,NULL,'2010-03-05 02:30:36','2010-03-05 02:30:36'),
	(10,'','Pimpollo','perro4.jpg','image/jpeg',2186430,1,NULL,'2010-03-05 02:32:07','2010-03-05 02:32:07'),
	(11,'','Nube','perro5.jpg','image/jpeg',697437,1,NULL,'2010-03-05 02:33:18','2010-03-05 02:33:18'),
	(12,'','Nano','perro6.1.jpg','image/jpeg',934275,1,1,'2010-03-05 02:33:47','2010-03-10 17:39:32'),
	(13,'','Florcita','perro7.jpg','image/jpeg',1102708,1,NULL,'2010-03-05 02:34:22','2010-03-05 02:34:22'),
	(15,'','Pelusa','perro8_5.jpg','image/jpeg',811341,1,NULL,'2010-03-10 17:36:44','2010-03-10 17:36:44'),
	(16,'','Lupita','perro9.jpg','image/jpeg',590895,1,NULL,'2010-03-10 17:37:22','2010-03-10 17:37:22'),
	(17,'','Jovita','perro10_3.jpg','image/jpeg',701742,1,NULL,'2010-03-10 17:38:15','2010-03-10 17:38:15'),
	(18,'','Julian','perro11_1.jpg','image/jpeg',1214166,1,NULL,'2010-03-10 17:39:16','2010-03-10 17:39:16'),
	(19,'','Negra','perro12_1.jpg','image/jpeg',858351,1,NULL,'2010-03-10 17:40:06','2010-03-10 17:40:06'),
	(20,'','Juanita','perro13.jpg','image/jpeg',841192,1,NULL,'2010-03-10 17:41:06','2010-03-10 17:41:06'),
	(21,'','Morena','perro14_1.jpg','image/jpeg',565626,1,NULL,'2010-03-10 17:41:39','2010-03-10 17:41:39'),
	(22,'','Mota','perro15.jpg','image/jpeg',346678,1,NULL,'2010-03-10 17:42:31','2010-03-10 17:42:31'),
	(23,'','Lito','perro16.jpg','image/jpeg',689150,1,NULL,'2010-03-10 17:42:55','2010-03-10 17:42:55'),
	(24,'','Linda','perro17_1.jpg','image/jpeg',668051,1,NULL,'2010-03-10 17:43:36','2010-03-10 17:43:36'),
	(25,'','Olivia','perro18_1.jpg','image/jpeg',699334,1,NULL,'2010-03-10 17:44:33','2010-03-10 17:44:33'),
	(26,'','Negra','perro19.jpg','image/jpeg',675161,1,NULL,'2010-03-10 17:44:59','2010-03-10 17:44:59'),
	(27,'','Antifaz','perro20_1.jpg','image/jpeg',1008534,1,NULL,'2010-03-10 17:45:31','2010-03-10 17:45:31'),
	(28,'','El gordo','perro21_1.jpg','image/jpeg',1005974,1,NULL,'2010-03-10 17:46:08','2010-03-10 17:46:08');

/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `value` varchar(255) CHARACTER SET latin1 DEFAULT '',
  `description` text CHARACTER SET latin1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
	(8,'assets.additional_thumbnails','list=125x112> ','Defines the default sizes for image assets that are created when an image is uploaded. Use \"#\" to crop the image to a specific size. \"42x42#\" would be a square thumbnail, cropped in the center 42 pixels by 42 pixels.'),
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
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `gender` varchar(255) CHARACTER SET latin1 NOT NULL,
  `birthdate` date NOT NULL,
  `description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `size` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `adopted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

LOCK TABLES `dogs` WRITE;
/*!40000 ALTER TABLE `dogs` DISABLE KEYS */;
INSERT INTO `dogs` (`id`,`name`,`gender`,`birthdate`,`description`,`created_at`,`updated_at`,`asset_id`,`size`,`adopted`)
VALUES
	(2,'Capitana','f','2008-09-01','CarÃ¡cter muy bueno, es muy sociable y mimosa. \nEsta perrita estaba viviendo en el Hospital de Pacheco, la alimentaban las enfermeras y la buena gente que concurre al hospital, hasta que se embarazo, entonces la trasladamos hasta Zoonosis con sus bebes, a','2010-03-10 16:12:51',NULL,8,'m',0),
	(3,'Silvino','m','2009-03-01','CarÃ¡cter sociable. \nUna voluntaria lo encontrÃ³ abandonado en el Puerto de Frutos de Tigre lo llevo a Zoonosis donde se lo controlo sanitariamente se desparasito y vacuno, castro y se le dio amor y alimento. Hoy ya quiere irse a una casa que siempre dese','2010-03-10 16:12:51',NULL,9,'m',0),
	(4,'Pimpollo','m','2008-03-01','CarÃ¡cter bueno, el convive con otro compaÃ±erito dentro del canil (un perro ciego). Fue abandonado por su dueÃ±o en Zoonosis, presentaba sarna y otras lesiones que se le curaron dentro del Centro, se vacuno y desparasito y castro y como verÃ¡n hoy tiene ','2010-03-10 16:12:51',NULL,10,'m',0),
	(5,'Nube','f','2009-03-01','CarÃ¡cter muy bueno.\nFue abandonado y encontrado por una voluntaria en el Puerto de Frutos y luego llevado al Centro de Zoonosis donde espera ansiosamente ser adoptado y compartir su vida con gente que lo ame mucho.','2010-03-10 16:12:51',NULL,11,'m',0),
	(6,'Nano','m','2002-09-01','Estaba en un colegio compartiendo un acto con los chicos, hasta que la Directora de la Escuela lo hizo retirar y llevar a Zoonosis, el tenia collar y por supuesto un dueÃ±o, pero nadie reclamo ni lo fue a buscar lo abandonaron a su edad sin importarle que','2010-03-10 16:12:51',NULL,12,'m',0),
	(7,'Florcita','f','2008-09-01','Caracter muy sociable y muy buena.\nFue abandonada en Zoonosis, recogida por una voluntaria con gran desnutricion y sarna, miren que bella esta ahora!','2010-03-10 16:12:51',NULL,13,'m',0),
	(8,'Pelusa','f','2007-09-01','Caracter muy sociable y buena. \nAbandonada en la calle, desnutrida y con sarna, rescatada por la Protectora, curada desparasitada y castrada busca hogar donde la mimen mucho.','2010-03-10 16:12:51',NULL,15,'m',0),
	(9,'Lupita','f','2007-03-01','Caracter muy bueno.\nElla fue abandonada con la excusa de que era mordedora, aunque luego se comprobo en los caniles que no era asi porque es sunmamente tranquila y da muchos besos sin jamas demostrar agresion con los voluntarios ni con otros perros.','2010-03-10 16:12:51',NULL,16,'m',0),
	(10,'Jovita','f','2007-09-01','Caracter bueno y muy inquieta, necesita espacio para correr y jugar.\nFue rescatada por una Voluntaria, habia sido abandonada, atada en la puerta de Zoonosis, con desnutricion y sarna. Fue curada, vacunada y castrada. Necesita hogar y muchos mimos y juegos','2010-03-10 16:12:51',NULL,17,'m',0),
	(11,'Julian','m','2009-03-01','Caracter muy bueno y sociable.\nFue abandona en la calle atado con una cadena a un poste de luz con sarna muy muy flaco y muy triste.\nHoy es un hermoso perro de pelaje negro y muy brillante! Quiere como todos los demas vivir libre en una casa donde le den ','2010-03-10 16:12:51',NULL,18,'m',0),
	(12,'Negra','f','2007-03-01','Castrada, vacunada y desparasitada.\nMuy buen caracter y sociable.\nFue abandonada en Zoonosis, atada a un arbol de la vereda, desnutrida y con sarna, hoy se encuentra totalmente recuperada y esta esperando un hogar y muchos mimos!','2010-03-10 16:12:51',NULL,19,'m',0),
	(13,'Juanita','f','2008-03-01','Caracter muy docil y es muy amigable con otros perros.\nRescatada de la via publica por una Voluntaria de U.V.A se encontraba con gusanos y muy triste.\nHoy esta muy bien, curada, castrada, vacunada, desparasitada y necesita un hogar y mucho amor.','2010-03-10 16:12:51',NULL,20,'m',0),
	(14,'Morena','f','2006-03-01','Rescatada de la via publica en malas condiciones sanitarias y muy debil. \nHoy esta castrada, vacunada, desparasitada y esperando un hogar que le brinde lo que hasta ahora no pudo tener.','2010-03-10 16:12:51',NULL,21,'m',0),
	(15,'Mota','f','2006-03-01','Castrada, vacunada y desparasitada. \nAbandonada y atada en la puerta de Zoonosis, desnutrida y con sarna caracter muy cariÃ±oso, adaptable, le gusta jugar y comparte la vida perfectamente con otros animales.','2010-03-10 16:12:51',NULL,22,'m',0),
	(16,'Lito','m','2009-03-01','Castrado vacunado y desparasitado.\nMuy desnutrido iba deambulando por la calle en muy mal estado. Lita una voluntaria de U.V.A lo miro y le pregunto... adonde vas??? El comenzo a seguirla hasta Zoonosis... se le hizo tratamiento, y hoy es un perro totalme','2010-03-10 16:12:51',NULL,23,'m',0),
	(17,'Linda','f','2008-03-01','Castrada vacunada y desparasitada.\nMuy buen caracter. Es muy juguetona.\nFue rescatada del Puerto de Frutos por una voluntaria de U.V.A ella necesita un hogar como todos los demas y mucho cariÃ±o!','2010-03-10 16:12:51',NULL,24,'m',0),
	(18,'Olivia','f','2008-03-01','Castrada vacunada y desparasitada. \nMuy dulce. Muy buen caracter y le encanta jugar con otros perros.\nFue abandonada en muy mal estado de salud en el Centro de Zoonosis. Hoy es una perrita muy saludable y merece tener un hogar donde la quieran mucho! No l','2010-03-10 16:12:51',NULL,25,'l',0),
	(19,'Negra','f','2009-03-01','Castrada vacunada y desparasitada. Buen caracter, sociable.\nFue rescatada por una Voluntaria en situacion de riesgo. Hoy esta a salvo y necesita urgente un hogar!','2010-03-10 16:12:51',NULL,26,'m',0),
	(20,'Antifaz','m','2006-03-01','Castrado vacunado y desparasitado. Caracter dulce y sociable.\nFue abandonado porque sus dueÃ±os se mudaron y no quisieron llevarlo con elllos, lo dejaron en la via publica, U.V.A lo recogio y como es muy dulce y sociable sabemos que pronto alguien le dara','2010-03-10 16:12:51',NULL,27,'l',0),
	(21,'El gordo','m','2006-03-01','Castrado vacunado y desparasitado. \nCaracter sociable.\nFue abandonado en zoonosis como tantos otros en malas condiciones de salud, aqui se lo curo atendio y como se puede ver engordo!','2010-03-10 16:12:51',NULL,28,'l',0);

/*!40000 ALTER TABLE `dogs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table extension_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `extension_meta`;

CREATE TABLE `extension_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `schema_version` int(11) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table layouts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `layouts`;

CREATE TABLE `layouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `content` text CHARACTER SET latin1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `content_type` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

LOCK TABLES `layouts` WRITE;
/*!40000 ALTER TABLE `layouts` DISABLE KEYS */;
INSERT INTO `layouts` (`id`,`name`,`content`,`created_at`,`updated_at`,`created_by_id`,`updated_by_id`,`content_type`,`lock_version`)
VALUES
	(1,'Normal','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\"\r\n  \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">\r\n<html>\r\n  <head>\r\n    <title>Unidos por la vida animal - <r:title /></title>\r\n    <link href=\"/rss/\" rel=\"alternate\" title=\"RSS\" type=\"application/rss+xml\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"/uva-style.css\" />\r\n  </head>\r\n  <body id=\"startpage\">\r\n     <div id=\"page\">\r\n        <r:snippet name=\"header\" />\r\n        <div id=\"main\" class=\"clearfix\">\r\n           <r:content />\r\n        </div>\r\n        <r:snippet name=\"footer\" />\r\n     </div>\r\n  </body>\r\n</html>','2008-12-24 01:08:45','2010-03-11 04:08:06',1,1,'',40),
	(2,'Stylesheet','<r:content />\n','2008-12-24 01:08:45','2009-01-02 10:00:53',1,NULL,'text/css',1),
	(3,'XML Feed','<r:content />\n','2008-12-24 01:08:45','2008-12-24 01:08:45',1,NULL,'text/xml',0),
	(5,'TwoColumns','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\"\r\n  \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">\r\n<html>\r\n  <head>\r\n    <title>Unidos por la vida animal - <r:title /></title>\r\n    <link href=\"/rss/\" rel=\"alternate\" title=\"RSS\" type=\"application/rss+xml\" />\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"/uva-style.css\" />\r\n  </head>\r\n  <body>\r\n     <div id=\"page\">\r\n        <r:snippet name=\"header\" />\r\n            <div id=\"main\" class=\"clearfix\">\r\n                <div id=\"content\">\r\n                   <r:content/>\r\n                </div>\r\n                <div id=\"sidebar\">\r\n                    <r:content part=\"sidebar\" inherit=\"true\" />\r\n                </div>\r\n            </div>\r\n        <r:snippet name=\"footer\" />\r\n     </div>\r\n  </body>\r\n</html>','2010-02-22 02:33:34','2010-03-04 00:09:47',1,1,'',8);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `page_attachments` WRITE;
/*!40000 ALTER TABLE `page_attachments` DISABLE KEYS */;
INSERT INTO `page_attachments` (`id`,`asset_id`,`page_id`,`position`)
VALUES
	(1,9,1,1),
	(2,10,1,2);

/*!40000 ALTER TABLE `page_attachments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page_parts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_parts`;

CREATE TABLE `page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `filter_id` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `content` text CHARACTER SET latin1,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parts_by_page` (`page_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

LOCK TABLES `page_parts` WRITE;
/*!40000 ALTER TABLE `page_parts` DISABLE KEYS */;
INSERT INTO `page_parts` (`id`,`name`,`filter_id`,`content`,`page_id`)
VALUES
	(1,'body','','<div id=\"intro\">\r\n    <p>\r\n       <r:snippet name=\"mission_statement\" />   \r\n    </p>\r\n</div>\r\n<div id=\"doglist-wrapper\" class=\"clearfix\">\r\n    <h2>Adopta me</h2>\r\n    <p>Tenemos muchos perros lindos que buscan una nueva casa. Mira <a href=\"/dogs\">aquÃ­</a> para encontrar tu nuevo amigo.\r\n    <ul\r\n        <li>\r\n            <a class=\"doglink\" href=\"#\" ><r:assets:image id=\"9\" size=\"list\"/></a>\r\n	    <br/>\r\n	    <a class=\"doglink\" href=\"#\">Sancho</a>\r\n        </li>\r\n        <li>\r\n            <a class=\"doglink\" href=\"#\"><r:assets:image id=\"8\" size=\"list\" /></a>\r\n	    <br/>\r\n	    <a class=\"doglink\" href=\"#\">Pancho</a>\r\n        </li>\r\n        <li>\r\n            <a class=\"doglink\" href=\"#\"><r:assets:image id=\"13\" size=\"list\" /></a>\r\n	    <br/>\r\n	    <a class=\"doglink\" href=\"#\">Speedy</a>\r\n        </li>\r\n        <li>\r\n            <a class=\"doglink\" href=\"#\"><r:assets:image id=\"11\" size=\"list\" /></a>\r\n	    <br/>\r\n	    <a class=\"doglink\" href=\"#\">Gonzales</a>\r\n        </li>\r\n        <li>\r\n            <a class=\"doglink\" href=\"#\"><r:assets:image id=\"12\" size=\"list\" /></a>\r\n	    <br/>\r\n	    <a class=\"doglink\" href=\"#\">Snoopy</a>\r\n        </li>\r\n        <li>\r\n            <a class=\"doglink\" href=\"#\"><r:assets:image id=\"10\" size=\"list\" /></a>\r\n	    <br/>\r\n	    <a class=\"doglink\" href=\"#\">Snoopy</a>\r\n        </li>\r\n    </ul>\r\n</div>',1),
	(2,'body','Textile','The file you were looking for could not be found.\n\nAttempted URL: @<r:attempted_url />@\n\nIt is possible that you typed the URL incorrectly or that you clicked on a bad link.\n\n\"<< Back to Home Page\":/\n',2),
	(3,'body','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<rss version=\"2.0\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\">\n  <channel>\n    <title>Article RSS Feed</title>\n    <link>http://your-web-site.com<r:url /></link>\n    <language>en-us</language>\n    <ttl>40</ttl>\n    <description>The main blog feed for my Web site.</description>\n    <r:find url=\"/news/\">\n    <r:children:each limit=\"10\" order=\"desc\">\n        <item>\n          <title><r:title /></title>\n          <description><r:escape_html><r:content /></r:escape_html></description>\n          <pubDate><r:rfc1123_date /></pubDate>\n          <guid>http://your-web-site.com<r:url /></guid>\n          <link>http://your-web-site.com<r:url /></link>\n        </item>\n    </r:children:each>\n    </r:find>\n  </channel>\n</rss>\n',3),
	(4,'body','','<r:children:each limit=\"5\" order=\"desc\">\r\n<div class=\"entry\">\r\n  <h3><r:link /></h3>\r\n    <div class=\"posted\">\r\n      Posted by <r:author /> on <r:date format=\"%d/%m/%Y\" /><em></em><r:link>Read full article</r:link>    \r\n    </div>\r\n  <r:content part=\"summary\" />\r\n</div>\r\n</r:children:each>\r\n\r\n<r:snippet name=\"comments_summary\" />',4),
	(8,'sidebar','','',1),
	(10,'body','Textile','h1. Lo que hacemo\r\n\r\n<r:assets:image title=\"Mercado de Frutas\" />\r\n\r\nNos organizamos por grupos, distribuyendo las tareas de acuerdo a la capacidad y elecciÃ³n acorde a cada uno.Un grupo trabajaÂ  en rescate , recuperaciÃ³n fÃ­sica yÂ  socializacion de animales deÂ compaÃ±Ã­a ( perros y gatos ), para luego encontrarles un hogar , estos son rescatadosÂ  enÂ situaciÃ³n de riesgo ( maltrato, accidentados,abandonados etc ) Hay otro grupo que trabaja conÂ caballos y animales exÃ³ticos, en secuestros ,recuperaciÃ³n y vuelta a hÃ¡bitat natural o lugar acorde a sus necesidades \r\n\r\nh3. Adopciones en el Puerto de Frutos de Tigre\r\n\r\nEste es un Paseo TurÃ­sticoÂ  y de compras muy importante en la Zona por donde transitan 60.000 personas por fin de semana. U.V.A tiene un Stand, espacio otorgadoÂ por la Municipalidad de Tigre desde Junio del 2008,Â enÂ donde se dan animales ( perros y gatosÂ  ).Estos se dan vacunados, desparasitados y con la castraciÃ³n gratuita. Se hace una estricta seleccion del adoptante,quien firma un acta compromiso de adopciÃ³n con todos los datos incluyendo numero deÂ documento. Hasta la fecha hemos dado 5.500 animales aprox en dicho lugar. TambiÃ©n se realizan constantemente charlas sobre tenencia responsable educando a niÃ±os y adultos en el lugar. Otro grupo desarrolla su voluntariado, dentro del Centro de Zoonosis , donde se atienden diariamente a Â 60 animales aprox. se los alimenta y se realiza la limpieza de los caniles y se los atiende sanitariamente.Cada perro que ingresa se lo desparasita,vacuna y castra para su posterior adopciÃ³n. Se clasifican por temperamento, para luego poder reubicarlos con una familia. SeÂ reciben telefonicamente alrededor de 30 llamados diarios por denuncias de maltratoÂ ,animales heridos ,perras preÃ±adas o pariciones en la vÃ­a publica , perras en celo,consultas sobreÂ donde dejar sus animales en vacacionesÂ  donde dar en adopciÃ³n etc.Todos estas consultas son personalizadas por las voluntarias , que resuelven el problema acorde a la temÃ¡tica.\r\n\r\n',9),
	(11,'sidebar','','<h1>Acerca de U.V.A.</h1>\r\n<ul id=\"submenu\">\r\n    <li <r:if_url matches=\"^.*acerca-de/$\">class=\"selected\"</r:if_url>><a href=\"/acerca-de\">Lo que hacemo</a></li>\r\n    <r:navigation urls=\"El Equipo:  /acerca-de/el-equipo | Historia: /acerca-de/historia | Como ayudar: /acerca-de/como-ayudar/\">\r\n       <r:normal><li><a href=\"<r:url/>\"><r:title /></a></li></r:normal>\r\n       <r:here><li class=\"selected\"><a href=\"<r:url />\"><r:title/></a></li></r:here>\r\n       <r:selected><li class=\"selected\"><a href=\"<r:url />\"><r:title/></a></li></r:selected>\r\n   </r:navigation>    \r\n</ul>    ',9),
	(12,'sidebar','','<div class=\"box\">\r\n<h3>News Archives</h3>\r\n<ul>\r\n<r:find url=\"/noticias/\">\r\n<r:children:each order=\"desc\">\r\n<r:header><li><a href=\"<r:date format=\"/noticias/%Y/%m/\" />\"><r:date format=\"%B %Y\" /></a></li></r:header>\r\n</r:children:each>\r\n</r:find>\r\n</ul>\r\n</div>\r\n\r\n<!--r:snippet name=\"newsletter\" /-->\r\n<!--div class=\"spot\"><r:snippet name=\"rss\" /></div-->',4),
	(17,'body','','<h2>Site Map</h2>\n\n<div id=\"sitemap\">\n <ul>\n   <r:find url=\"/\">\n     <r:snippet name=\"sitemap\" />\n   </r:find>\n </ul>\n</div>\n',11),
	(18,'extended','','',11),
	(20,'no-map','','',11),
	(23,'body','','h2 Dog Search Page\r\n',13),
	(24,'sidebar','','<div class=\"spot\">\r\n<img src=\"http://spurrd.com/assets/156/open.gif\" />\r\n<h3>Almost always open</h3>\r\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia <a href=\"/about\">consequuntur</a> magni dolor eos qui ration volupt sequi nesciunt. Proin varius urna. In varius bibendum nisl. Donec nec nisi ut nisi varius porttitor.</p>\r\n</div>\r\n\r\n<div class=\"spot\">\r\n<img src=\"http://spurrd.com/assets/153/gift.gif\" />\r\n<h3>Roaster gift cards</h3>\r\n<p>Mauris elit lacus, iaculis a, cons nec, vehicula <a href=\"/about\">condimentum</a> at. Suspendisse sapien enim, tempus ut, facilisis at, vestibulum nec, nunc. Aliquam erat volutpat. Ut sit amet quam. Cum soci natoque penati et magnis dis partur montes, nascet ridiculus mus. Aen vel urna. In justo nisl, cursus in, molestie a, vulputate nec. </p> \r\n</div>\r\n\r\n<div class=\"spot\">\r\n<img src=\"http://spurrd.com/assets/159/truck.gif\" />\r\n<h3>Metro delivery</h3>\r\n<p>Iaculis a, cons nec, condi<a href=\"/about\"> vehicula</a>. Suspendisse sapien enim, tempus ut, facilisis at, vestibulum nec, nunc. Aliquam erat volutpat. Ut sit amet quam. Cum soci natoque penati et magnis dis partur montes, nascet ridiculus mus. Aen vel urna. In justo nisl, cursus in, molestie. </p> \r\n</div>\r\n',13),
	(25,'body','','/* -------------------------------------------------------------- \r\n\r\n   reset.css\r\n   * Resets default browser CSS.\r\n\r\n   Based on work by Eric Meyer:\r\n   * meyerweb.com/eric/thoughts/2007/05/01/reset-reloaded/\r\n\r\n   Icons are available for purchase at:\r\n   * http://www.istockphoto.com/file_closeup/arts-and-entertainment/arts-symbols/4575877-satin-icons-set-9.php?id=4575877\r\n\r\n-------------------------------------------------------------- */\r\n\r\nhtml, body, div, span, object, iframe,\r\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\r\na, abbr, acronym, address, code,\r\ndel, dfn, em, img, q, dl, dt, dd, ol, ul, li,\r\nfieldset, form, label, legend,\r\ntable, caption, tbody, tfoot, thead, tr, th, td {\r\n	margin: 0;\r\n	padding: 0;\r\n	border: 0;\r\n	font-weight: inherit;\r\n	font-style: inherit;\r\n	font-size: 100%;\r\n	font-family: inherit;\r\n	vertical-align: baseline;\r\n}\r\n\r\n\r\nbody { line-height: 1.5; background: #fff; margin:1.5em 0; }\r\n\r\n/* Tables still need \'cellspacing=\"0\"\' in the markup. */\r\ntable { border-collapse: separate; border-spacing: 0; }\r\ncaption, th, td { text-align: left; font-weight:400; }\r\n\r\n/* Remove possible quote marks (\") from <q>, <blockquote>. */\r\nblockquote:before, blockquote:after, q:before, q:after { content: \"\"; }\r\nblockquote, q { quotes: \"\" \"\"; }\r\n\r\na img { border: none; }\r\n',14),
	(26,'no-map','','',14),
	(33,'body','','/* CSS Document for U.V.A */\r\nbody {\r\n    background-color: #BFC1C4;\r\n    font: normal 0.94em Arial, Helvetica, Verdana, sans-serif;\r\n    color: #474b4f;\r\n    line-height: 1.33em;\r\n    padding: 0;\r\n    margin: 0;\r\n    text-align: center;\r\n    margin-top: 45px;\r\n}\r\n\r\n/* LAYOUT */\r\n#page {\r\n    width: 942px;\r\n    text-align: left;\r\n    border: 1px solid #9EA3AC;\r\n    margin: 15px auto;\r\n    padding: 1px;\r\n    background: #FFFFFF;\r\n    clear: both;\r\n}\r\n\r\n#header {\r\n    position: relative;\r\n    color: #FFFFFF;\r\n    font: normal 1.20em Georgia, \"Times New Roman\", Times, serif;\r\n    height: 110px;\r\n    background: url(/images/bg-header.png)\r\n}\r\n\r\n#main {\r\n    margin: 15px 0px 30px;\r\n    padding: 50px 30px 0 30px;\r\n}\r\n\r\n#startpage #main {\r\n    margin: 0 0px 30px;\r\n    padding: 0;\r\n}\r\n\r\n#content {\r\n    float: left;\r\n    width: 577px;\r\n    padding: 0 0 30px 0;\r\n}\r\n\r\n#sidebar {\r\n    float: right;\r\n    width: 275px;\r\n    padding: 23px 0 30px 0;\r\n    margin-top: 41px;\r\n    border-top: 1px solid #dfe0e1;\r\n    background: url(/images/bg-rightcol.gif) repeat-x left top;\r\n}\r\n\r\n#footer {\r\n    padding: 30px 30px 30px 30px;\r\n    background: #dfe0e1;\r\n    width: 882px;\r\n}\r\n\r\n.clearfix:after {\r\n    clear: both;\r\n    content: \".\";\r\n    display: block;\r\n    height: 0;\r\n    line-height: 0;\r\n    visibility: hidden;\r\n}\r\n\r\n/* GENERAL*/\r\nh1 {\r\n    font: normal 1.8em Georgia, \"Times New Roman\", Times, serif;\r\n    margin: 0 0 20px 0;\r\n}\r\n\r\n#content h1 {\r\n    border-bottom: 1px solid #dfe0e1;\r\n    padding: 0 0 10px 0;\r\n}\r\n\r\nh2 {\r\n    font: normal 1.33em Georgia, \"Times New Roman\", Times, serif;\r\n    margin: 0 0 10px 0;\r\n}\r\n\r\nh3 {\r\n    font: normal 1.07em Georgia, \"Times New Roman\", Times, serif;\r\n    margin: 0 0 10px 0;\r\n}\r\n\r\nh3 a {\r\n    color: #474b4f;\r\n    margin: 0px;\r\n}\r\n\r\nh3 a:hover {\r\n    color: #474b4f;\r\n    text-decoration: underline;\r\n}\r\n\r\na {\r\n    color: #0c6cc6;\r\n    text-decoration: none;\r\n}\r\n\r\na:hover {\r\n    color: #0c6cc6;\r\n    text-decoration: underline;\r\n}\r\n\r\np {\r\n    margin: 0px 0px 15px 0;\r\n}\r\n\r\nul {\r\n    padding: 0;\r\n    margin: 0;\r\n    list-style: none;\r\n}\r\n\r\nli {\r\n    padding: 0;\r\n    margin: 0;\r\n    list-style: none;\r\n}\r\n\r\n#content img {\r\n    margin-bottom: 15px;\r\n}\r\n\r\n#content img.leftaligned {\r\n    margin: 0 10px 15px 0;\r\n}\r\n\r\n#content img.rightaligned {\r\n    margin: 0 0 15px 10px;\r\n}\r\n\r\n/* NAVIGATIONS */\r\nul#mainmenu {\r\n    float: right;\r\n    display: block;\r\n    margin: 65px 0 0 0;\r\n    padding: 0;\r\n}\r\n\r\nul#mainmenu li {\r\n    float: left;\r\n    padding: 0 30px 0 0;\r\n}\r\n\r\nul#mainmenu li a {\r\n    float: left;\r\n    display: block;\r\n    color: #fff;\r\n    font-weight: bold;\r\n    text-decoration: none;\r\n}\r\n\r\nul#mainmenu li a:hover {\r\n    text-decoration: underline;\r\n}\r\n\r\nul#mainmenu li.selected a {\r\n    color: #ffc600;\r\n}\r\n\r\n/* SUB MENU */\r\nul#submenu {\r\n    display: block;\r\n    margin: 0;\r\n    padding: 0 15px 50px 15px;\r\n}\r\n\r\nul#submenu li {\r\n    padding: 0 30px 0 13px;\r\n    margin-bottom: 10px;\r\n    background: url(/images/arrow.gif) no-repeat 0 5px;\r\n}\r\n\r\nul#submenu li a {\r\n    display: block;\r\n    text-decoration: none;\r\n}\r\n\r\nul#submenu li a:hover {\r\n    text-decoration: underline;\r\n}\r\n\r\nul#submenu li.selected a {\r\n    color: #333333;\r\n}\r\n\r\n/* Side bar*/\r\n#sidebar h1 {\r\n    padding: 0 15px 0 15px;\r\n    font-size: 1.33em;\r\n}\r\n\r\n/* HEADER */\r\n.logo {\r\n    border: none;\r\n    text-decoration: none;\r\n    margin-top: -45px;\r\n    margin-left: 20px;\r\n}\r\n\r\n.logo span {\r\n    display: none;\r\n}\r\n\r\n/* FOOTER */\r\n.column ul li {\r\n    font-weight: bolf;\r\n}\r\n\r\n.column ul li {\r\n    font-weight: bolf;\r\n}\r\n\r\n.column ul li span {\r\n    color: #474b4f;\r\n    font-weight: normal;\r\n}\r\n\r\n.column {\r\n    float: left;\r\n    width: 273px;\r\n    margin: 0 30px 0 0;\r\n}\r\n\r\n.column li, .column p {\r\n    font-size: 0.80em;\r\n    line-height: 1.33em;\r\n}\r\n\r\n.no-margin {\r\n    margin: 0;\r\n}\r\n\r\n/* START PAGE*/\r\n#intro {\r\n    height: 310px;\r\n    background: url(/images/intro-about-uva.jpg);\r\n    padding: 0 0 0 30px;\r\n    margin-bottom: 20px;\r\n}\r\n\r\n#intro p {\r\n    position: relative;\r\n    top: 120px;\r\n    font: normal 1.33em Georgia, \"Times New Roman\", Times, serif;\r\n    color: #fff;\r\n    background: #474b4f;\r\n    width: 410px;\r\n    padding: 20px 20px 20px 20px;\r\n    border: 1px solid #9c9993;\r\n}\r\n\r\n#doglist-wrapper {\r\n    padding: 0 0 0 30px;\r\n}\r\n\r\n#doglist-wrapper li {\r\n    float: left;\r\n    margin: 0 26px 0 0;\r\n    vertical-align: bottom;\r\n}\r\n\r\n#doglist-wrapper li a {\r\n    font-size: 0.88em;\r\n}\r\n\r\n#doglist-wrapper p {\r\n    margin: 0px 0px 25px 0;\r\n}\r\n\r\n#doglist-wrapper img {\r\n    border: none;\r\n}\r\n\r\n/* images*/\r\n.aligncenter {\r\n    display: block;\r\n    margin: 0 auto 20px auto;\r\n}\r\n\r\n.alignright {\r\n    float: right;\r\n    margin: 0 0 20px 20px;\r\n}\r\n\r\n.alignleft {\r\n    float: left;\r\n    margin: 0 20px 20px 0;\r\n}\r\n\r\n/* TEXT PAGE, LISPAGE */\r\n#main-text {\r\n    padding: 20px 0px 0px 0px;\r\n}\r\n\r\n.entry {\r\n    margin: 0 0 20px 0;\r\n    border-bottom: 1px solid #dfe0e1;\r\n    padding: 0 0 10px 0;\r\n}\r\n\r\n.entry img {\r\n    margin-top: 3px;\r\n}\r\n\r\n.posted {\r\n    color: #918C7E;\r\n    font-family: Arial, helvetica, verdana, sans-serif;\r\n    font-size: 0.8em;\r\n    margin: 0 0 15px 0;\r\n    padding: 0;\r\n}\r\n\r\n.posted span {\r\n    padding: 0 9px;\r\n}\r\n\r\n#formwrapper {\r\n    border: 1px solid #e8eaec;\r\n    background: #f9f9f9;\r\n    padding: 15px;\r\n    margin: 0 0 30px 0;\r\n}\r\n\r\n#formwrapper select {\r\n    width: 150px;\r\n}\r\n\r\n.submitbutton {\r\n    background: #eb872f;\r\n    border: 1px solid #eb872f;\r\n    color: #fff;\r\n    font-weight: bold;\r\n}\r\n\r\n/*---STYLES---*/\r\n.box {\r\n    padding: 15px;\r\n    border: 1px solid #e8eaec;\r\n    background: #f9f9f9;\r\n    margin-bottom: 20px;\r\n}\r\n\r\n.box h3 {\r\n    font-size: 1em;\r\n    font-weight: bold;\r\n    margin-bottom: 8px;\r\n}\r\n\r\n.box p {\r\n    font-size: 0.88em;\r\n}\r\n\r\n.box input {\r\n    margin-top: 5px;\r\n}\r\n\r\n.box input.email {\r\n    font-size: 10px;\r\n    padding: 3px;\r\n    color: #a29e96;\r\n    width: 140px;\r\n}\r\n\r\n.box input.subscribe {\r\n    width: 70px;\r\n    margin-left: 5px;\r\n    color: #232323;\r\n}\r\n\r\n.box ul {\r\n    margin-left: 20px;\r\n}\r\n\r\n.hidden {\r\n    display: none;\r\n}\r\n\r\n.clear {\r\n    clear: both;\r\n}',18),
	(34,'extended','','',18),
	(35,'body','Textile','h1. El Equipo\r\n\r\n<r:assets:image title=\"Team\" />\r\n\r\nUnidos por la Vida Animal, se forma con un  grupo de habitantes y contribuyentes de la Localidad de Tigre en el aÃ±o 1999 , que se une ante las matanzas ocurridas dentro de el Centro de Zoonosis. Este grupo se reune con el Intendente y le hacen una propuesta diferente, la de empezar a castrar, vacunar  y desparasitar para poder dar en adopciÃ³n dichos animales. Este grupo formado por mujeres y hombres de esta Ciudad se distribuyeron las tareas, de lunes a domingos ,o sea  los 365 dÃ­as del aÃ±o.ConsistiÃ³, en alimentarlos, mantener la higiene del lugar y sacarlos a pasear. El Profesional Veterinario, comenzo a castrar 30 animales por dÃ­a, contando con la ayuda de U.V.A que colaboraba  llevando los animales preparÃ¡ndoles para dicha operaciÃ³n y su posterior recuperaciÃ³n para luego dar en adopciÃ³n. U.V.A modifico el lugar ya que se inundaba y por ello los animales morÃ­an ahogandose en sus jaulas.\r\n\r\nLos perros ya no estaban en jaulas de 2 x 2, si no que se construyeron caniles con patios donde podÃ­an moverse ,caminar y correr, En invierno se colocaron estufas con interruptores y todo esto fue realizado por la AsociaciÃ³n. Cuando las autoridades por el aÃ±o 2006 deciden hacer un nuevo Zoonosis, U.V.A presenta por iniciativa de una Voluntaria, un plano de instalaciones traÃ­do de E.E.U.U  y dicho plano es aceptado y  adaptado al lugar. La construcciÃ³n se termina en el aÃ±o 2007 y se realiza la mudanza con los animales, U.V.A habÃ­a cumplido otra etapa.........se habÃ­an cambiado las instalaciones y se podÃ­an ahora realizar mas tareas aun, en beneficio de los animales !!!!!! HabÃ­a que empezar con campaÃ±as de esterilizaciÃ³n masivas y sostenidas ,para ello se necesitan mas  Veterinarios. La AsociaciÃ³n habla con las Autoridades Municipales sobre la necesidad de aumentar las esterilizaciones, mayor cantidad de consultas y vacunaciÃ³n para prevencion de enfermedades.\r\n\r\nComo la demanda es cada ves mayor , hoy el Centro de Zoonosis cuenta con 5 Profesionales Municipales y un Profesional contratado por la Cooperadora. Como ayuda U.V.A a los Veterinarios y al Municipio y a la PoblaciÃ³n de Tigre?  Tigre es un Municipio de 330.000 habitantes que tienen un perro cada 3 habitantes,para poder mermar dicha cantidad , los Voluntarios organizan en los diferentes Barrios campaÃ±as de esterilizaciÃ³n que  realiza gratuitamente el Municipio con sus Profesionales. U.V.A dona hoy dia vacunas quintuples y medicacion que se aplica dentro del Centro de Zoonosis La AsociaciÃ³n ,junto con Municipio trabajan dÃ­a a dÃ­a para poder mejorar el Bienestar que conlleva al Bienestar Humano.\r\n',19),
	(36,'extended','','',19),
	(37,'body','Textile','h1. Historia\r\n\r\nUnidos por la Vida Animal, se forma con un  grupo de habitantes y contribuyentes de la Localidad de Tigre en el aÃ±o 1999 , que se une ante las matanzas ocurridas dentro de el Centro de Zoonosis. Este grupo se reune con el Intendente y le hacen una propuesta diferente, la de empezar a castrar, vacunar  y desparasitar para poder dar en adopciÃ³n dichos animales. Este grupo formado por mujeres y hombres de esta Ciudad se distribuyeron las tareas, de lunes a domingos ,o sea  los 365 dÃ­as del aÃ±o.ConsistiÃ³,en alimentarlos, mantener la higiene del lugar y sacarlos a pasear .El Profesional Veterinario, comenzo a castrar 30 animales por dÃ­a, contando con la ayuda de U.V.A que colaboraba  llevando los animales preparÃ¡ndoles para dicha operaciÃ³n y su posterior recuperaciÃ³n para luego dar en adopciÃ³n. U.V.A modifico el lugar ya que se inundaba y por ello los animales morÃ­an ahogandose en sus jaulas.Los perros ya no estaban en jaulas de 2 x 2, si no que se construyeron caniles con patios donde podÃ­an moverse ,caminar y correr, En invierno se colocaron estufas con interruptores y todo esto fue realizado por la AsociaciÃ³n. Cuando las autoridades por el aÃ±o 2006 deciden hacer un nuevo Zoonosis, U.V.A presenta por iniciativa de una Voluntaria, un plano de instalaciones traÃ­do de E.E.U.U  y dicho plano es aceptado y  adaptado al lugar. La construcciÃ³n se termina en el aÃ±o 2007 y se realiza la mudanza con los animales, U.V.A habÃ­a cumplido otra etapa.........se habÃ­an cambiado las instalaciones y se podÃ­an ahora realizar mas tareas aun, en beneficio de los animales !!!!!!\r\nHabÃ­a que empezar con campaÃ±as de esterilizaciÃ³n masivas y sostenidas ,para ello se necesitan mas  Veterinarios. La AsociaciÃ³n habla con las Autoridades Municipales sobre la necesidad de aumentar las esterilizaciones, mayor cantidad de consultas y vacunaciÃ³n para prevencion de enfermedades. Como la demanda es cada ves mayor , hoy el Centro de Zoonosis cuenta con 5 Profesionales Municipales y un Profesional contratado por la Cooperadora.\r\n\r\nComo ayuda U.V.A a los Veterinarios y al Municipio y a la PoblaciÃ³n de Tigre?\r\n\r\nTigre es un Municipio de 330.000 habitantes que tienen un perro cada 3 habitantes,para poder mermar dicha cantidad , los Voluntarios organizan en los diferentes Barrios campaÃ±as de esterilizaciÃ³n que  realiza gratuitamente el Municipio con sus Profesionales. U.V.A dona hoy dia vacunas quintuples y medicacion que se aplica dentro del Centro de Zoonosis La AsociaciÃ³n, junto con Municipio trabajan dÃ­a a dÃ­a para poder mejorar el Bienestar que conlleva al Bienestar Humano.\r\n',20),
	(38,'extended','','',20),
	(39,'body','Textile','h1. Como ayudar\r\n\r\n<r:assets:image title=\"Adopt me\" />\r\n\r\n...',21),
	(40,'extended','','',21),
	(43,'body','','<r:archive:children:each order=\"desc\">\r\n<div class=\"entry\">\r\n<h3><r:link /></h3>\r\n    <div class=\"posted\">\r\n      Posted by <r:author /> on <r:date format=\"%m/%d/%Y\" /> </em><r:link>Read full article</r:link>    \r\n    </div>\r\n  <r:content part=\"summary\" />\r\n</div>\r\n</r:archive:children:each>\r\n\r\n<r:snippet name=\"comments_summary\" />',23),
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
  `title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `breadcrumb` varchar(160) CHARACTER SET latin1 DEFAULT NULL,
  `class_name` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
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
  `description` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_class_name` (`class_name`),
  KEY `pages_parent_id` (`parent_id`),
  KEY `pages_child_slug` (`slug`,`parent_id`),
  KEY `pages_published` (`virtual`,`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`,`title`,`slug`,`breadcrumb`,`class_name`,`status_id`,`parent_id`,`layout_id`,`created_at`,`updated_at`,`published_at`,`created_by_id`,`updated_by_id`,`virtual`,`lock_version`,`description`,`keywords`)
VALUES
	(1,'UVA','/','Home','',100,NULL,1,'2008-12-24 01:08:45','2010-02-21 22:44:48','2008-12-23 18:08:45',1,1,0,81,'',''),
	(2,'File Not Found','file-not-found','File Not Found','FileNotFoundPage',100,1,NULL,'2008-12-24 01:08:45','2008-12-24 01:08:45','2008-12-23 18:08:45',1,NULL,1,0,NULL,NULL),
	(3,'RSS Feed','rss','RSS Feed',NULL,100,1,3,'2008-12-24 01:08:45','2008-12-24 01:08:45','2008-12-23 18:08:45',1,NULL,0,0,NULL,NULL),
	(4,'Noticias','noticias','News','ArchivePage',100,1,5,'2008-12-24 01:08:45','2010-03-05 01:19:50','2008-12-23 18:08:45',1,1,0,21,'',''),
	(9,'Acerca de','acerca-de','Acerca de','',100,1,5,'2008-12-24 01:08:45','2010-03-05 01:15:25','2008-12-23 18:08:45',1,1,0,12,'',''),
	(11,'Site Map','sitemap','Site Map','Page',100,1,NULL,'2009-01-01 23:49:07','2009-01-02 01:31:41','2009-01-01 16:49:07',1,NULL,0,11,'',''),
	(13,'Adoptame','adoptame','Adoptame','',100,1,NULL,'2009-01-02 07:36:32','2010-03-05 01:10:16','2009-01-02 00:49:40',1,1,0,27,'',''),
	(14,'reset','reset.css','reset','',100,1,2,'2009-01-02 10:00:27','2010-03-05 01:55:51','2009-01-02 03:06:13',1,1,0,3,'',''),
	(18,'uva-style','uva-style.css','uva-style','',100,1,2,'2010-02-21 22:42:39','2010-02-21 22:55:54','2010-02-21 19:48:36',1,1,0,5,'',''),
	(19,'El Equipo','el-equipo','El Equipo','',100,9,NULL,'2010-02-26 00:16:50','2010-03-05 01:28:37','2010-02-25 21:21:18',1,1,0,3,'',''),
	(20,'Historia','historia','Historia','',100,9,NULL,'2010-02-26 00:17:41','2010-03-05 01:29:34','2010-02-25 21:21:10',1,1,0,3,'',''),
	(21,'Como ayudar','como-ayudar','Como ayudar','',100,9,NULL,'2010-02-26 00:18:11','2010-03-05 01:31:51','2010-02-25 21:21:01',1,1,0,3,'',''),
	(23,' %B %Y Archives ','b-y-archives',' %B %Y Archives ','ArchiveMonthIndexPage',100,4,NULL,'2010-03-02 01:01:26','2010-03-02 01:03:33','2010-03-01 22:01:39',1,1,1,2,'',''),
	(24,'La historia de Gino','la-historia-de-gino','La historia de Gino','',100,4,NULL,'2010-03-02 01:02:13','2010-03-02 01:12:10','2010-03-01 22:03:08',1,1,0,3,'','');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) CHARACTER SET latin1 NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
	('20100304190300'),
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
  `session_id` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `data` text CHARACTER SET latin1,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table snippets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `snippets`;

CREATE TABLE `snippets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `filter_id` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `content` text CHARACTER SET latin1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `lock_version` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

LOCK TABLES `snippets` WRITE;
/*!40000 ALTER TABLE `snippets` DISABLE KEYS */;
INSERT INTO `snippets` (`id`,`name`,`filter_id`,`content`,`created_at`,`updated_at`,`created_by_id`,`updated_by_id`,`lock_version`)
VALUES
	(1,'header','','<div id=\"header\" class=\"clearfix\">\r\n    <a href=\"/\"><span><img class=\"logo\" src=\"/images/logo.gif\" alt=\"Unidos por la vida animal\"/></span></a>\r\n    <r:snippet name=\"navigation\" />\r\n</div>\r\n','2008-12-24 01:08:44','2010-03-02 00:58:59',1,1,18),
	(2,'footer','','<div id=\"footer\" class=\"clearfix\">\r\n    <div class=\"column\">\r\n        <h3>Noticias</h3>\r\n        <p>\r\n            <r:snippet name=\"news_links\" />\r\n        </p>\r\n    </div>\r\n    <div class=\"column\">\r\n        <h3>Visita</h3>\r\n        <p>\r\n            Zoonosis de Tigre\r\n            <br/>\r\n            PueyrredÃ³n 211\r\n	    <br/> \r\n	    Barrio San Jose, Tigre\r\n        </p>\r\n    </div>\r\n    <div class=\"column no-margin\">\r\n        <h3>Contactar</h3>\r\n        <p>\r\n            TelÃ©fono: +54 (0)1 4512-4568 \r\n            <br/>\r\n            E-mail: <a href=\"mailto:info@uva-tigre.com.ar\">info@uvanimal.com.ar</a>\r\n        </p>\r\n    </div>\r\n</div>','2008-12-24 01:08:44','2010-03-05 01:45:09',1,1,16),
	(3,'navigation','','<ul id=\"mainmenu\">\r\n  <r:navigation urls=\"Inicio: /\">\r\n      <r:normal><li><a href=\"<r:url />\"><r:title /></a></li></r:normal>\r\n      <r:here><li class=\"selected\"><a href=\"<r:url />\"><r:title /></a></li></r:here>\r\n      <r:selected><li><a href=\"<r:url />\"><r:title /></a></li></r:selected>\r\n  </r:navigation>\r\n  <r:navigation urls=\"Adoptame: /dogs | Noticias: /noticias | Acerca de: /acerca-de\">\r\n    <r:normal><li><a href=\"<r:url />\"><r:title /></a></li></r:normal>\r\n    <r:here><li class=\"selected\"><a href=\"<r:url />\"><r:title /></a></li></r:here>\r\n    <r:selected><li class=\"selected\"><a href=\"<r:url />\"><r:title /></a></li></r:selected>\r\n  </r:navigation>\r\n</ul>    ','2008-12-30 21:38:09','2010-03-05 01:22:26',1,1,23),
	(5,'rss','','<img src=\"http://spurrd.com/assets/147/rss.gif\" />\n<h3>RSS</h3>\n<p>Get the <a href=\"/rss/\">feed</a> for our latest news. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora.</p>\n','2008-12-31 07:04:11','2009-01-02 07:05:37',1,NULL,5),
	(6,'news_links','','<r:find url=\"/noticias\">\r\n  <r:children:each order=\"desc\" limit=\"3\">\r\n    <r:date format=\"%d/%m/%Y\" /> <r:link />\r\n    <br/>\r\n  </r:children:each>\r\n</r:find>\r\n','2009-01-01 22:40:23','2010-03-05 01:34:01',1,1,25),
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
  `name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `login` varchar(40) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `password` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `developer` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text CHARACTER SET latin1,
  `lock_version` int(11) DEFAULT '0',
  `salt` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `session_token` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`email`,`login`,`password`,`created_at`,`updated_at`,`created_by_id`,`updated_by_id`,`admin`,`developer`,`notes`,`lock_version`,`salt`,`session_token`)
VALUES
	(1,'admin',NULL,'admin','fb0f384234484f70f19590a173b532448774d1b5','2010-02-05 18:05:31','2010-02-06 02:14:33',NULL,NULL,1,0,NULL,2,'a336f7871d1c2dba95b8b836f14653e0e436fa22','64f3df3e7f59cb23a5cfac3931f8e395e145b4f5'),
	(2,'cristina','hardy@ferentschik.de','cristina','302bfdf8dc6849dd0f11ce9ba77a356e29a10de2','2010-03-02 01:07:30','2010-03-02 01:07:30',1,NULL,0,1,'',0,'5ab7f78272b97a1d7f97909ff32f5fc20f637dd5',NULL),
	(3,'Regina','','regina','0701ffb24b403ab3ae0ce545b6170341ef824ab3','2010-03-05 02:04:32','2010-03-05 02:04:32',1,NULL,0,1,'',0,'8c817d1060cb71065fb78c9bca75bed13353cdd1',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
