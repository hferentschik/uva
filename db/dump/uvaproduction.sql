-- MySQL dump 10.11
--
-- Host: localhost    Database: uvatigre_uvaproduction
-- ------------------------------------------------------
-- Server version	5.0.89-community-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(11) NOT NULL auto_increment,
  `key` varchar(40) NOT NULL default '',
  `value` varchar(255) default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`id`, `key`, `value`) VALUES (1,'admin.title','Radiant CMS'),(2,'admin.subtitle','Publishing for Small Teams'),(3,'defaults.page.parts','body, extended'),(4,'defaults.page.status','draft'),(5,'defaults.page.filter',''),(6,'session_timeout','1209600');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extension_meta`
--

DROP TABLE IF EXISTS `extension_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extension_meta` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `schema_version` int(11) default '0',
  `enabled` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extension_meta`
--

LOCK TABLES `extension_meta` WRITE;
/*!40000 ALTER TABLE `extension_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `extension_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layouts`
--

DROP TABLE IF EXISTS `layouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layouts` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `content` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `content_type` varchar(40) default NULL,
  `lock_version` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layouts`
--

LOCK TABLES `layouts` WRITE;
/*!40000 ALTER TABLE `layouts` DISABLE KEYS */;
INSERT INTO `layouts` (`id`, `name`, `content`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `content_type`, `lock_version`) VALUES (1,'Normal','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\"\n  \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">\n<html>\n  <head>\n    <title><r:title /></title>\n    <link href=\"/rss/\" rel=\"alternate\" title=\"RSS\" type=\"application/rss+xml\" />\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"/reset.css\" />\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"/styles.css\" />\n    <script type=\"text/javascript\" src=\"http://www.jeroenwijering.com/embed/swfobject.js\"></script>\n    <script type=\"text/javascript\" src=\"http://spurrd.com/javascripts/prototype.js\"></script>\n    <script type=\"text/javascript\" src=\"http://spurrd.com/javascripts/scriptaculous.js?load=effects,builder\"></script>\n    <script type=\"text/javascript\" src=\"http://spurrd.com/javascripts/lightbox.js\"></script>\n\n    <!--[if IE 6]>\n      <style type=\"text/css\" media=\"screen\">\n        @import url(\"/stylesheets/ie6.css\");\n      </style>\n    <![endif]-->\n\n    <!--[if IE 7]>\n      <style type=\"text/css\" media=\"screen\">\n        @import url(\"/stylesheets/ie7.css\");\n      </style>\n    <![endif]-->\n\n  </head>\n  <body>\n    <div id=\"page\">\n      <r:snippet name=\"header\" />\n      <div id=\"nav\">\n        <r:snippet name=\"navigation\" />\n      </div>\n      <div id=\"main\">\n        <div id=\"content-wrapper\">\n          <div id=\"content\">\n            <r:content />\n            <r:if_content part=\"extended\">\n            <div id=\"extended\">\n              <r:content part=\"extended\" />\n            </div>\n            </r:if_content>\n          </div>\n        </div>\n        <div id=\"sidebar-wrapper\">\n          <div id=\"sidebar\">\n            <r:content part=\"sidebar\" inherit=\"true\" />\n          </div>\n        </div>\n      </div>\n    <div style=\"clear:both\"></div>\n    </div>\n  </body>\n  <div id=\"footer-wrapper\">\n    <div id=\"footer\">\n      <r:snippet name=\"footer\" />\n    </div>\n  </div>\n</html>\n','2008-12-24 01:08:45','2009-01-02 10:07:28',1,NULL,'',35),(2,'Stylesheet','<r:content />\n','2008-12-24 01:08:45','2009-01-02 10:00:53',1,NULL,'text/css',1),(3,'XML Feed','<r:content />\n','2008-12-24 01:08:45','2008-12-24 01:08:45',1,NULL,'text/xml',0);
/*!40000 ALTER TABLE `layouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_parts`
--

DROP TABLE IF EXISTS `page_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_parts` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `filter_id` varchar(25) default NULL,
  `content` text,
  `page_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `parts_by_page` (`page_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_parts`
--

LOCK TABLES `page_parts` WRITE;
/*!40000 ALTER TABLE `page_parts` DISABLE KEYS */;
INSERT INTO `page_parts` (`id`, `name`, `filter_id`, `content`, `page_id`) VALUES (1,'body','','<div id=\"extra\">\n  <div class=\"box\">\n    <div id=\"player\">\n    <script type=\"text/javascript\">\n    var so = new SWFObject(\'/video/player.swf\',\'mpl\',\'200\',\'145\',\'8\');\n    so.addParam(\'allowscriptaccess\',\'always\');\n    so.addParam(\'allowfullscreen\',\'true\');\n    so.addParam(\'flashvars\',\'&file=http://content.bitsontherun.com/videos/3ta6fhJQ.flv&image=http://spurrd.com/assets/138/preview.jpg&controlbar=none\');\n    so.write(\'player\');\n    </script>\n    </div>\n<h2>Yummy!</h2>\n    <p><span>Vivamust consumey morfoamy.</span><br /> In portor auctor neque. Morbi gravida elit non ante. Praesent eros elit, consequat et, rhoncuses atet, rhoncus posuere, massa. Praesent tempor, felis varius gravida!</p>\n  </div>\n</div>\n\n<r:snippet name=\"articles\" />\n',1),(2,'body','Textile','The file you were looking for could not be found.\n\nAttempted URL: @<r:attempted_url />@\n\nIt is possible that you typed the URL incorrectly or that you clicked on a bad link.\n\n\"<< Back to Home Page\":/\n',2),(3,'body','','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<rss version=\"2.0\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\">\n  <channel>\n    <title>Article RSS Feed</title>\n    <link>http://your-web-site.com<r:url /></link>\n    <language>en-us</language>\n    <ttl>40</ttl>\n    <description>The main blog feed for my Web site.</description>\n    <r:find url=\"/news/\">\n    <r:children:each limit=\"10\" order=\"desc\">\n        <item>\n          <title><r:title /></title>\n          <description><r:escape_html><r:content /></r:escape_html></description>\n          <pubDate><r:rfc1123_date /></pubDate>\n          <guid>http://your-web-site.com<r:url /></guid>\n          <link>http://your-web-site.com<r:url /></link>\n        </item>\n    </r:children:each>\n    </r:find>\n  </channel>\n</rss>\n',3),(4,'body','','<r:children:each limit=\"5\" order=\"desc\">\n<div class=\"entry\">\n  <h3><r:link /></h3>\n    <div class=\"posted\">\n      Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a><em>|</em><r:link>Read full article</r:link>    \n    </div>\n  <r:content part=\"summary\" />\n</div>\n</r:children:each>\n\n<r:snippet name=\"comments_summary\" />',4),(5,'body','Textile','<h3><r:title /></h3>\n<r:snippet name=\"posted\" />\n\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.\n\nTemporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\n\nSed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.\n\n<r:snippet name=\"comments\" />\n',5),(6,'body','Textile','<h3><r:title /></h3>\n<r:snippet name=\"posted\" />\n\nUt enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nNemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. \n\n<r:snippet name=\"comments\" />',6),(7,'body','','/*---------------------------------  Styles.css  ---*/ \n\nbody {\n  background-color: #BFC1C4;\n  font-family: Verdana, Arial, Helvetica, sans-serif;\n  font-size: 80%;\n  padding: 0;\n  margin: 0;\n  text-align: center; }\n\n#page {\n  margin: 15px auto;\n  width: 900px;\n  text-align: left;\n  border: 2px solid #9EA3AC;\n  padding: 5px;\n  background-color: #FFFFFF;\n  clear: both; }\n\n#header {\n  color: #FFFFFF;\n  font-family: Arial,Helvetica,Geneva,sans-serif;\n  font-size: 35px;\n  font-weight: bold;\n  letter-spacing: 0.02em;\n  line-height: 0.72em;\n  text-transform: uppercase; }\n\n#main {\n  background-color: white;\n  float: left;\n  width: 100%;\n  margin: 15px 0px 30px; }\n\nh1 {\n  color: #FFFFFF;\n  font-family: Arial, Helvetica, sans-serif;\n  font-size: 35px;\n  font-weight: bold;\n  letter-spacing: 0.02em;\n  line-height: 0.72em;\n  text-transform: uppercase; }\n\nh2 {\n  color: #451811;\n  font-family: Georgia, sans-serif;\n  font-size: 270%;\n  font-weight: normal;\n  margin: 0px; }\n\nh3 {\n  font-family: Helvetica, Arial, Verdana, sans-serif;\n  font-size: 195%;\n  margin: 0px;\n  font-weight: bold; }\n\nh3 a {\n  color: #451811;\n  text-decoration: none;\n  border-bottom: none;\n  margin: 0px; }\n\nh3 a:hover {\n  color: #902f1c;\n  border-bottom: none; }\n\na {\n  color: #711e11;\n  text-decoration: none;\n  border-bottom: 1px solid #DBD6D1; }  \n\na:hover {\n  color: #451811;\n  text-decoration: none;\n  border-bottom: 2px solid #DBD6D1; }\n\np {\n  color: #232323;\n  font-family: Georgia, Times, \"Times New Roman\";\n  font-size: 1.3em;\n  line-height: 1.3em;\n  margin: 0px 0px 10px; }\n\nul {\n  padding: 0; }\n\nli {\n  padding: 0; }\n\n\n/*---MAIN COLUMN---*/  \n\n#content-wrapper {\n  float: left;\n  width: 600px; }\n\n#content {\n  padding: 0px 15px; }\n\n\n/*---SIDEBAR---*/  \n\n#sidebar-wrapper {\n  float: right;\n  width: 300px; }\n\n#sidebar {\n  font-size: 90%;\n  padding: 15px;\n  padding-top: 0px; }\n\n#sidebar h3 {\n  color: #222222;\n  font-family: Helvetica, Arial, Verdana, sans-serif;\n  font-size: 17px;\n  font-weight: bold;\n  margin: 0px; }\n\n#sidebar p {\n  line-height: 1.4em; }\n\n\n/*---ARTICLE---*/ \n\n.entry {\n  margin-bottom: 20px; }\n\n.entry .info {\n  margin-top: 1em;\n  font-size: 1em; }\n\n.entry p {\n  font-size: 1.1em; }\n\n.posted {\n  color: #918C7E;\n  font-family: \"lucida grande\",arial,helvetica,verdana,sans-serif;\n  font-size: 10px;\n  margin: -3px 0 5px;\n  padding: 0px; }\n\n.posted em {\n  color: #451811;\n  font-style: italic;\n  margin: 0px 6px;\n  font-weight: bold; }\n\n.posted img {\n  background: transparent none repeat scroll 0 0;\n  border: medium none;\n  margin: 0 4px -5px 2px;\n  text-decoration: none; }\n\n\n/*---STYLES---*/ \n\n#extra {\n  margin-bottom: 10px; }\n\n#extra .box {\n  background-color: #e8f0f6;\n  border-color: #D5E9F6; }\n\n#extra p {\n  line-height: 1.2em;\n  margin: 0px 0px 5px 0px; }\n\n#extra em {\n  font-style: italic; }\n\n#extra span {\n  color: #d26511;\n  font-size: 120%; }\n\n#player, #gallery {\n  background: #FFFFFF;\n  float: left;\n  clear: both;\n  margin: 0px 15px 15px 0px;\n  padding: 3px;\n  border: 1px solid #a9cde5; }\n\n#gallery a, \n#gallery a:hover, \n#player a, \n#player a:hover,\n#extra img a,\n#extra img a:hover {\n  border-bottom: none !important;\n  text-decoration: none !important; }\n\n#extra a img {\n  margin-bottom: -3px; }\n\n.spot {\n  margin-bottom: 20px;\n  clear: both; }\n\n.spot p {\n  font-family: Verdana, sans-serif;\n  font-size: 11px; \n  color: #333333;\n  margin-top: 0px; }\n\n.spot img {\n  float: left;\n  padding: 0px 12px 10px 0px; }\n\n.box {\n  padding: 15px;\n  border: 1px solid #dbd6d1;\n  background-color: #efedeb;\n  margin-bottom: 20px; }\n\n.box h3 {\n  font-size: 18px;\n  margin-bottom: 2px; }\n\n.box input {\n  margin-top: 5px; }\n\n.box input.email {\n  font-size: 10px;\n  padding: 3px; \n  color: #a29e96; \n  width: 140px; }\n\n.box input.subscribe {\n  width: 70px;\n  margin-left: 5px;\n  color: #232323; }\n\n.box ul {\n  margin-left: 20px; }\n\n.hidden {\n  display: none; }\n\n.clear {\n  clear: both; }\n\n/*---SITEMAP---*/ \n\n#sitemap ul {\n  list-style-type: disc;\n  margin: 5px 0px 10px 35px;\n  line-height: 2em; }\n\n#sitemap li a {\n  font-family: Helvetica, Arial, Verdana, sans-serif;\n  font-size: 180%;\n  font-weight: bold;\n  margin: 0px; \n  color: #451811;\n  text-decoration: none;\n  border-bottom: none; }\n\n#sitemap li a:hover {\n  color: #902f1c;\n  border-bottom: none; }\n\n#sitemap ul.second {\n  font-size: 80%; }\n\n/*---FOOTER---*/ \n\n#footer-wrapper {\n  margin: 5px auto;\n  width: 900px; }\n\n#footer {\n  color: #595452;\n  float: right;\n  font-family: \"Lucida Grande\", Verdana, Helvetica, Arial, sans-serif;\n  font-size: 90%;\n  margin-bottom: 30px; }\n\n\n/*---------------------------------  Navigation.css  ---*/ \n\n#nav {\n	height: 38px;\n	background: transparent url(http://spurrd.com/assets/132/nav-background.gif) repeat-x top left; }\n\n#nav ul {\n	display: block;\n	margin: 0;\n	padding: 0;\n	list-style-type: none;\n	width: auto; }\n\n#nav ul li {\n	display: block;\n	float: left;\n	margin: 0;\n	padding: 0; }\n\n#nav ul li a {\n  font-family: \"Lucida Sans\", \"Lucida Grande\", Helvetica, Arial, sans-serif;\n  font-size: 13px;\n	display: block;\n	float: left;\n	color: #3D3D3D;\n	text-decoration: none;\n	padding: 8px 16px 7px;\n	border-bottom: none;\n	background: transparent url(http://spurrd.com/assets/150/nav-divider.gif) no-repeat top right; }\n\n#nav ul li a:hover {\n  color: #FFFFFF;\n  background: #49140c;\n  border-bottom: 1px solid #49140c; }\n\n#nav ul li.selected a {\n  color: #FFFFFF;\n  background: #0b0b0a;\n  border-bottom: 1px solid #0b0b0a; }\n\n\n/*---------------------------------  Lightbox.css  ---*/ \n\n#lightbox{	position: absolute;	left: 0; width: 100%; z-index: 100; text-align: center; line-height: 0;}\n#lightbox img{ width: auto; height: auto;}\n#lightbox a img{ border: none; }\n\n#outerImageContainer{ position: relative; background-color: #fff; width: 250px; height: 250px; margin: 0 auto; }\n#imageContainer{ padding: 10px; }\n\n#loading{ position: absolute; top: 40%; left: 0%; height: 25%; width: 100%; text-align: center; line-height: 0; }\n#hoverNav{ position: absolute; top: 0; left: 0; height: 100%; width: 100%; z-index: 10; border-bottom: none; }\n#imageContainer>#hoverNav{ left: 0;}\n#hoverNav a{ outline: none; border-bottom: none;}\n\n#prevLink, #nextLink{ width: 49%; height: 100%; background-image: url(data:image/gif;base64,AAAA); /* Trick IE into showing hover */ display: block; }\n#prevLink { left: 0; float: left;}\n#nextLink { right: 0; float: right;} \n#prevLink:hover, #prevLink:visited:hover { background: url(http://spurrd.com/assets/192/prevlabel.gif) left 15% no-repeat; }\n#nextLink:hover, #nextLink:visited:hover { background: url(http://www.spurrd.com/assets/189/nextlabel.gif) right 15% no-repeat; }\n\n#imageDataContainer{ font: 10px Verdana, Helvetica, sans-serif; background-color: #fff; margin: 0 auto; line-height: 1.4em; overflow: auto; width: 100%	; }\n\n#imageData{	padding:0 10px; color: #666; }\n#imageData #imageDetails{ width: 70%; float: left; text-align: left; }	\n#imageData #caption{ font-weight: bold;	}\n#imageData #numberDisplay{ display: block; clear: left; padding-bottom: 1.0em;	}			\n#imageData #bottomNavClose{ width: 66px; float: right;  padding-bottom: 0.7em; outline: none;}	 	\n\n#overlay{ position: absolute; top: 0; left: 0; z-index: 90; width: 100%; height: 500px; background-color: #000; }\n',7),(8,'sidebar','','<div class=\"spot\">\n<img src=\"http://spurrd.com/assets/141/prize.gif\" />\n<h3>Best of Show</h3>\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia <a href=\"/about\">consequuntur</a> magni dolor eos qui ration volupt sequi nesciunt. Proin varius urna. In varius bibendum nisl. Donec nec nisi ut nisi varius porttitor.</p>\n</div>\n\n<div class=\"spot\">\n<img src=\"http://spurrd.com/assets/129/green.gif\" />\n<h3>Happy Planet</h3>\n<p>Mauris elit lacus, iaculis a, cons nec, vehicula <a href=\"/about\">condimentum</a> at. Suspendisse sapien enim, tempus ut, facilisis at, vestibulum nec, nunc. Aliquam erat volutpat. Ut sit amet quam. Cum soci natoque penati et magnis dis partur montes, nascet ridiculus mus. Aen vel urna. In justo nisl, cursus in, molestie a, vulputate nec. </p> \n</div>\n\n<div class=\"spot\">\n<img src=\"http://spurrd.com/assets/144/recycle.gif\" />\n<h3>Round and round</h3>\n<p>Donec tempor mollis ante. Nunc felis. Proin ac pede vel nulla lacinia congue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi cursus, dui quis pretium blandit, erat massa lacinia neque, eu porttitor lacus erat ac leo.</p>\n</div>\n\n<r:snippet name=\"newsletter\" />\n\n<div class=\"spot\"><r:snippet name=\"rss\" /></div>\n',1),(9,'body','Textile','<h3><r:title /></h3>\n<r:snippet name=\"posted\" />\n\nVivamus mollis porttitor odio. Vestibulum id mi. Suspendisse a tortor quis metus imperdiet eleifend. Pellentesque libero nulla, aliquam in, tristique vel, elementum et, odio. Fusce id ligula. Vivamus dapibus imperdiet ante. Aliquam id eros ut velit eleifend aliquet. Nulla commodo viverra orci. Sed auctor. Maecenas commodo. Mauris adipiscing lectus quis quam. Nulla a nisl in augue suscipit tincidunt. Nunc eros. Nam eget sapien eget lorem ultrices pulvinar. Vivamus dolor.\n\nSuspendisse auctor risus nec odio. Sed tortor sem, tempor eu, molestie ac, viverra et, arcu. Donec aliquet pede eget tellus. Pellentesque facilisis nibh in ante. Mauris et lectus. Nullam pede. Nam sed pede sollicitudin mi congue vestibulum. Suspendisse et diam sed odio venenatis dictum. \n\nInteger eget nunc sit amet felis interdum sollicitudin. Mauris posuere, quam eu aliquam iaculis, ipsum magna pellentesque arcu, id rutrum augue erat luctus magna.\n\nPraesent ut lacus. Fusce interdum metus laoreet mi. Duis aliquet. Nunc malesuada leo id nulla. Praesent condimentum metus nec odio. Ut ut velit dapibus nibh interdum eleifend. Proin tempor sodales enim. Donec ultricies. Duis bibendum urna id ante. Donec ipsum lorem, venenatis et, tempus ut, vehicula et, mi. \n\n<r:snippet name=\"comments\" />',8),(10,'body','Textile','h2. About Uva\r\n\r\nThe history of uva',9),(11,'sidebar','','<div class=\"box\" style=\"margin-top:50px\">\r\n  <h3>Main office</h3>\r\n  222 Address Street<br />\r\n  Portland, OR 97008<br />\r\n  (503) 545-7777\r\n</div>\r\n',9),(12,'sidebar','','<div class=\"box\">\n<h3>News Archives</h3>\n<ul>\n<r:find url=\"/news/\">\n<r:children:each order=\"desc\">\n<r:header><li><a href=\"<r:date format=\"/news/%Y/%m/\" />\"><r:date format=\"%B %Y\" /></a></li></r:header>\n</r:children:each>\n</r:find>\n</ul>\n</div>\n\n<r:snippet name=\"newsletter\" />\n\n<div class=\"spot\"><r:snippet name=\"rss\" /></div>',4),(13,'body','','<r:archive:children:each order=\"desc\">\n<div class=\"entry\">\n<h3><r:link /></h3>\n    <div class=\"posted\">\n      Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a><em>|</em><r:link>Read full article</r:link>    \n    </div>\n  <r:content part=\"summary\" />\n</div>\n</r:archive:children:each>\n\n<r:snippet name=\"comments_summary\" />',10),(14,'summary','Textile','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.',5),(15,'summary','Textile','Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',6),(16,'summary','Textile','Vivamus mollis porttitor odio. Vestibulum id mi. Suspendisse a tortor quis metus imperdiet eleifend. Pellentesque libero nulla, aliquam in, tristique vel, elementum et, odio. Fusce id ligula. Vivamus dapibus imperdiet ante. Aliquam id eros ut velit eleifend aliquet. Nulla commodo viverra orci. Sed auctor. Maecenas commodo. Mauris adipiscing lectus quis quam. Nulla a nisl in augue suscipit tincidunt. Nunc eros. Nam eget sapien eget lorem ultrices pulvinar. Vivamus dolor.',8),(17,'body','','<h2>Site Map</h2>\n\n<div id=\"sitemap\">\n <ul>\n   <r:find url=\"/\">\n     <r:snippet name=\"sitemap\" />\n   </r:find>\n </ul>\n</div>\n',11),(18,'extended','','',11),(19,'no-map','','',7),(20,'no-map','','',11),(21,'body','Textile','<iframe width=\"868\" height=\"480\" frameborder=\"0\" style=\"border:1px solid #dbd6d1;\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com/maps/ms?ie=UTF8&amp;hl=en&amp;t=k&amp;s=AARTsJoMI8Z8NYIgz5ckH51H72GUL2fOcw&amp;msa=0&amp;msid=113091985902776583734.00045f77d6a96be3a6389&amp;ll=45.519759,-122.668791&amp;spn=0.030069,0.075531&amp;z=14&amp;output=embed\"></iframe><br /><small><a href=\"http://maps.google.com/maps/ms?ie=UTF8&amp;hl=en&amp;t=k&amp;msa=0&amp;msid=113091985902776583734.00045f77d6a96be3a6389&amp;ll=45.519759,-122.668791&amp;spn=0.030069,0.075531&amp;z=14&amp;source=embed\" style=\"color:#0000FF;text-align:left\">View Larger Map</a></small>\n',12),(22,'sidebar','','',12),(23,'body','','<div id=\"extra\">\n  <div class=\"box\">\n    <div id=\"gallery\">\n      <a href=\"http://spurrd.com/assets/162/gallery1.jpg\" rel=\"lightbox[growers]\" title=\"This is a caption.\" /><img src=\"http://spurrd.com/assets/198/thumb-grower.jpg\" /></a>\n      <a href=\"http://spurrd.com/assets/165/gallery2.jpg\" rel=\"lightbox[growers]\" title=\"This is a caption.\"></a>\n      <a href=\"http://spurrd.com/assets/168/gallery3.jpg\" rel=\"lightbox[growers]\" title=\"This is a caption.\"></a>\n      <a href=\"http://spurrd.com/assets/171/gallery4.jpg\" rel=\"lightbox[growers]\" title=\"This is a caption.\"></a>\n    </div>\n    <h2>Our growers</h2>\n    <p><span>Fromus neatus farmus alwaze.</span><br /> In portor auctor neque. Morbi gravida elit non ante. Praesent eros elit, consequat et, rhoncuses atet, rhoncus posuere, massa. Praesent tempor, felis varius gravida!</p>\n  </div>\n</div>\n\n<div id=\"extra\">\n  <div class=\"box\">\n    <div id=\"gallery\">\n      <a href=\"http://spurrd.com/assets/162/gallery1.jpg\" rel=\"lightbox[roasters]\" title=\"This is a caption.\" /><img src=\"http://spurrd.com/assets/201/thumb-roaster.jpg\" /></a>\n      <a href=\"http://spurrd.com/assets/165/gallery2.jpg\" rel=\"lightbox[roasters]\" title=\"This is a caption.\"></a>\n      <a href=\"http://spurrd.com/assets/168/gallery3.jpg\" rel=\"lightbox[roasters]\" title=\"This is a caption.\"></a>\n      <a href=\"http://spurrd.com/assets/171/gallery4.jpg\" rel=\"lightbox[roasters]\" title=\"This is a caption.\"></a>\n    </div>\n    <h2>Our roasters</h2>\n    <p><span>Bestes machinum inde wurlde.</span><br /> In portor auctor neque. Morbi gravida elit non ante. Praesent eros elit, consequat et, rhoncuses atet, rhoncus posuere, massa. Praesent tempor, felis varius gravida!</p>\n  </div>\n</div>\n\n<div id=\"extra\">\n  <div class=\"box\">\n    <div id=\"gallery\">\n      <a href=\"http://spurrd.com/assets/162/gallery1.jpg\" rel=\"lightbox[grinders]\" title=\"This is a caption.\" /><img src=\"http://spurrd.com/assets/195/thumb-grinder.jpg\" /></a>\n      <a href=\"http://spurrd.com/assets/165/gallery2.jpg\" rel=\"lightbox[grinders]\" title=\"This is a caption.\"></a>\n      <a href=\"http://spurrd.com/assets/168/gallery3.jpg\" rel=\"lightbox[grinders]\" title=\"This is a caption.\"></a>\n      <a href=\"http://spurrd.com/assets/171/gallery4.jpg\" rel=\"lightbox[grinders]\" title=\"This is a caption.\"></a>\n    </div>\n    <h2>Our grinders</h2>\n    <p><span>Whata treet itis tu heerit.</span><br /> In portor auctor neque. Morbi gravida elit non ante. Praesent eros elit, consequat et, rhoncuses atet, rhoncus posuere, massa. Praesent tempor, felis varius gravida!</p>\n  </div>\n</div>\n',13),(24,'sidebar','','<div class=\"spot\">\n<img src=\"http://spurrd.com/assets/156/open.gif\" />\n<h3>Almost always open</h3>\n<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia <a href=\"/about\">consequuntur</a> magni dolor eos qui ration volupt sequi nesciunt. Proin varius urna. In varius bibendum nisl. Donec nec nisi ut nisi varius porttitor.</p>\n</div>\n\n<div class=\"spot\">\n<img src=\"http://spurrd.com/assets/153/gift.gif\" />\n<h3>Roaster gift cards</h3>\n<p>Mauris elit lacus, iaculis a, cons nec, vehicula <a href=\"/about\">condimentum</a> at. Suspendisse sapien enim, tempus ut, facilisis at, vestibulum nec, nunc. Aliquam erat volutpat. Ut sit amet quam. Cum soci natoque penati et magnis dis partur montes, nascet ridiculus mus. Aen vel urna. In justo nisl, cursus in, molestie a, vulputate nec. </p> \n</div>\n\n<div class=\"spot\">\n<img src=\"http://spurrd.com/assets/159/truck.gif\" />\n<h3>Metro delivery</h3>\n<p>Iaculis a, cons nec, condi<a href=\"/about\"> vehicula</a>. Suspendisse sapien enim, tempus ut, facilisis at, vestibulum nec, nunc. Aliquam erat volutpat. Ut sit amet quam. Cum soci natoque penati et magnis dis partur montes, nascet ridiculus mus. Aen vel urna. In justo nisl, cursus in, molestie. </p> \n</div>\n',13),(25,'body','','/* -------------------------------------------------------------- \n\n   reset.css\n   * Resets default browser CSS.\n\n   Based on work by Eric Meyer:\n   * meyerweb.com/eric/thoughts/2007/05/01/reset-reloaded/\n\n   Icons are available for purchase at:\n   * http://www.istockphoto.com/file_closeup/arts-and-entertainment/arts-symbols/4575877-satin-icons-set-9.php?id=4575877\n\n-------------------------------------------------------------- */\n\nhtml, body, div, span, object, iframe,\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\na, abbr, acronym, address, code,\ndel, dfn, em, img, q, dl, dt, dd, ol, ul, li,\nfieldset, form, label, legend,\ntable, caption, tbody, tfoot, thead, tr, th, td {\n	margin: 0;\n	padding: 0;\n	border: 0;\n	font-weight: inherit;\n	font-style: inherit;\n	font-size: 100%;\n	font-family: inherit;\n	vertical-align: baseline;\n}\n\n\nbody { line-height: 1.5; background: #fff; margin:1.5em 0; }\n\n/* Tables still need \'cellspacing=\"0\"\' in the markup. */\ntable { border-collapse: separate; border-spacing: 0; }\ncaption, th, td { text-align: left; font-weight:400; }\n\n/* Remove possible quote marks (\") from <q>, <blockquote>. */\nblockquote:before, blockquote:after, q:before, q:after { content: \"\"; }\nblockquote, q { quotes: \"\" \"\"; }\n\na img { border: none; }\n',14),(26,'no-map','','',14),(27,'body','','One more success story ...',15),(28,'extended','','',15),(29,'body','','Come and visit us in Tigre',16),(30,'extended','','',16);
/*!40000 ALTER TABLE `page_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `slug` varchar(100) default NULL,
  `breadcrumb` varchar(160) default NULL,
  `class_name` varchar(25) default NULL,
  `status_id` int(11) NOT NULL default '1',
  `parent_id` int(11) default NULL,
  `layout_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `published_at` datetime default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `virtual` tinyint(1) NOT NULL default '0',
  `lock_version` int(11) default '0',
  `description` varchar(255) default NULL,
  `keywords` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `pages_class_name` (`class_name`),
  KEY `pages_parent_id` (`parent_id`),
  KEY `pages_child_slug` (`slug`,`parent_id`),
  KEY `pages_published` (`virtual`,`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `title`, `slug`, `breadcrumb`, `class_name`, `status_id`, `parent_id`, `layout_id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `virtual`, `lock_version`, `description`, `keywords`) VALUES (1,'Home Page','/','Home','Page',100,NULL,1,'2008-12-24 01:08:45','2009-01-02 07:38:13','2008-12-23 18:08:45',1,NULL,0,78,'',''),(2,'File Not Found','file-not-found','File Not Found','FileNotFoundPage',100,1,NULL,'2008-12-24 01:08:45','2008-12-24 01:08:45','2008-12-23 18:08:45',1,NULL,1,0,NULL,NULL),(3,'RSS Feed','rss','RSS Feed',NULL,100,1,3,'2008-12-24 01:08:45','2008-12-24 01:08:45','2008-12-23 18:08:45',1,NULL,0,0,NULL,NULL),(4,'Articles','news','News','ArchivePage',100,1,NULL,'2008-12-24 01:08:45','2009-01-02 07:27:53','2008-12-23 18:08:45',1,NULL,0,18,'',''),(5,'New location opening tonight','new-location-opening-tonight','New location opening tonight','Page',100,4,NULL,'2008-12-24 01:08:45','2009-01-02 09:27:43','2006-06-09 00:00:00',1,NULL,0,16,'',''),(6,'Grass-fed foam from Jersey','grass-fed-foam-from-jersey','Grass-fed foam from Jersey','Page',100,4,NULL,'2008-12-24 01:08:45','2009-01-02 07:31:42','2006-06-10 00:00:00',1,NULL,0,8,'',''),(7,'Styles','styles.css','Styles','Page',100,1,2,'2008-12-24 01:08:45','2009-01-02 10:00:35','2008-12-23 18:08:45',1,NULL,0,5,'',''),(8,'The Finest grind','the-finest-grind','The Finest grind','Page',100,4,NULL,'2008-12-24 01:08:45','2009-01-02 09:27:11','2008-12-23 18:08:45',1,NULL,0,11,'',''),(9,'About','about','About','',100,1,NULL,'2008-12-24 01:08:45','2010-02-05 22:20:25','2008-12-23 18:08:45',1,1,0,10,'',''),(10,'%B %Y Archives','monthly-archives','Monthly Archives','ArchiveMonthIndexPage',100,4,NULL,'2008-12-24 01:08:45','2009-01-02 07:29:46','2008-12-23 18:08:45',1,NULL,1,9,'',''),(11,'Site Map','sitemap','Site Map','Page',100,1,NULL,'2009-01-01 23:49:07','2009-01-02 01:31:41','2009-01-01 16:49:07',1,NULL,0,11,'',''),(12,'Locations','locations','Locations','Page',100,1,NULL,'2009-01-02 02:11:32','2009-01-02 04:08:35','2009-01-01 19:11:32',1,NULL,0,8,'',''),(13,'Tour','tour','Tour','Page',100,1,NULL,'2009-01-02 07:36:32','2009-01-02 09:48:51','2009-01-02 00:49:40',1,NULL,0,25,'',''),(14,'Reset','reset.css','Reset','Page',100,1,2,'2009-01-02 10:00:27','2009-01-02 10:06:13','2009-01-02 03:06:13',1,NULL,0,2,'',''),(15,'Dog rescued from cruel owner','dog-rescued-from-cruel-owner','Dog rescued from cruel owner','',100,4,NULL,'2010-02-05 22:29:22','2010-02-05 22:31:24','2010-02-05 16:31:24',1,1,0,2,'',''),(16,'New puppies arrived','new-puppies-arrived','New puppies arrived','',100,4,NULL,'2010-02-06 02:17:10','2010-02-06 02:17:58','2010-02-05 20:17:58',1,1,0,2,'','');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`) VALUES ('1'),('10'),('11'),('12'),('13'),('14'),('15'),('16'),('17'),('18'),('19'),('2'),('20'),('20081203140407'),('21'),('3'),('4'),('5'),('6'),('7'),('8'),('9');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL auto_increment,
  `session_id` varchar(255) default NULL,
  `data` text,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snippets`
--

DROP TABLE IF EXISTS `snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snippets` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `filter_id` varchar(25) default NULL,
  `content` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `lock_version` int(11) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snippets`
--

LOCK TABLES `snippets` WRITE;
/*!40000 ALTER TABLE `snippets` DISABLE KEYS */;
INSERT INTO `snippets` (`id`, `name`, `filter_id`, `content`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `lock_version`) VALUES (1,'header','','<div id=\"header\">\n<img src=\"http://spurrd.com/assets/120/banner.jpg\" width=\"900px\" alt=\"Your Company\" />\n</div>\n','2008-12-24 01:08:44','2009-01-02 07:01:43',1,NULL,9),(2,'footer','','Copyright &copy; <r:date format=\"%Y\" /> your company. All rights reserved | <a href=\"mailto:info@yourcompany.com\">Contact</a> | <a href=\"/sitemap\">Site Map</a> | Powered by <a href=\"http://radiantcms.org/\">Radiant</a>\n','2008-12-24 01:08:44','2009-01-02 07:45:16',1,NULL,5),(3,'navigation','','<ul>\r\n  <r:navigation urls=\"Home: /\">\r\n      <r:normal><li><a href=\"<r:url />\"><r:title /></a></li></r:normal>\r\n      <r:here><li class=\"selected\"><a href=\"<r:url />\"><r:title /></a></li></r:here>\r\n      <r:selected><li><a href=\"<r:url />\"><r:title /></a></li></r:selected>\r\n  </r:navigation>\r\n  <r:navigation urls=\"Tour: /tour | News: /news | Locations: /locations | About: /about\">\r\n    <r:normal><li><a href=\"<r:url />\"><r:title /></a></li></r:normal>\r\n    <r:here><li class=\"selected\"><a href=\"<r:url />\"><r:title /></a></li></r:here>\r\n    <r:selected><li class=\"selected\"><a href=\"<r:url />\"><r:title /></a></li></r:selected>\r\n  </r:navigation>\r\n</ul>    ','2008-12-30 21:38:09','2009-01-02 07:45:54',1,NULL,9),(4,'newsletter','','<div class=\"box\">\n  <h3>Our Newsletter</h3>\n    <input class=\"email\" value=\"Enter your email address...\" type=\"text\" onfocus=\"this.value=\'\'\"  id=\"\" name=\"\" />\n    <input class=\"subscribe\" type=\"submit\" value=\"Subscribe\" />\n</div>','2008-12-31 01:08:12','2009-01-02 06:11:14',1,NULL,19),(5,'rss','','<img src=\"http://spurrd.com/assets/147/rss.gif\" />\n<h3>RSS</h3>\n<p>Get the <a href=\"/rss/\">feed</a> for our latest news. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora.</p>\n','2008-12-31 07:04:11','2009-01-02 07:05:37',1,NULL,5),(6,'articles','','<r:find url=\"/news\">\n  <r:children:each order=\"desc\" limit=\"3\">\n  <div class=\"entry\">\n    <h3><r:link /></h3>\n    <div class=\"posted\">\n      Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a><em>|</em><r:link>Read full article</r:link>    \n    </div>\n    <r:content part=\"summary\" />\n  </div>\n  </r:children:each>\n</r:find>\n\n<r:snippet name=\"comments_summary\" />','2009-01-01 22:40:23','2009-01-02 07:19:28',1,NULL,19),(7,'sitemap','',' <r:children:each by=\"title\" order=\"asc\">\r\n   <r:unless_content part=\"no-map\">\r\n     <li>\r\n       <r:link />\r\n       <r:if_children>\r\n         <ul class=\"second\">\r\n           <r:snippet name=\"sitemap\" />\r\n         </ul>\r\n       </r:if_children>\r\n     </li>\r\n   </r:unless_content>\r\n </r:children:each>\r\n\r\n','2009-01-01 23:51:52','2009-01-02 00:45:01',1,NULL,14),(8,'comments','','<img src=\"http://spurrd.com/assets/126/comments.jpg\" />\n\n<div id=\"disqus_thread\"></div><r:comment><script type=\"text/javascript\" src=\"http://disqus.com/forums/radiant/embed.js\"></script><noscript><a href=\"http://radiant.disqus.com/?url=ref\">View the discussion thread.</a></noscript></r:comment><a href=\"http://disqus.com\" class=\"dsq-brlink\">blog comments powered by <span class=\"logo-disqus\">Disqus</span></a>','2009-01-02 02:17:21','2009-01-02 07:20:55',1,NULL,3),(9,'comments_summary','','ï»¿ï»¿ï»¿ï»¿<script type=\"text/javascript\">\r\n//<![CDATA[\r\n(function() {\r\n		var links = document.getElementsByTagName(\'a\');\r\n		var query = \'?\';\r\n		for(var i = 0; i < links.length; i++) {\r\n			if(links[i].href.indexOf(\'#disqus_thread\') >= 0) {\r\n				query += \'url\' + i + \'=\' + encodeURIComponent(links[i].href) + \'&\';\r\n			}\r\n		}\r\n		document.write(\'<script type=\"text/javascript\" src=\"http://disqus.com/forums/radiant/get_num_replies.js\' + query + \'\"></\' + \'script>\');\r\n	})();\r\n//]]>\r\n</script>\r\n\r\n','2009-01-02 02:18:23','2009-01-02 02:59:44',1,NULL,4),(10,'posted','','<div class=\"posted\">Posted by <r:author /> on <r:date format=\"%B %d, %Y\" /><em>|</em><img src=\"http://spurrd.com/assets/123/comment.png\" /><a href=\"<r:url />#disqus_thread\">Comments</a></div>','2009-01-02 07:32:00','2009-01-02 07:32:00',1,NULL,0);
/*!40000 ALTER TABLE `snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `email` varchar(255) default NULL,
  `login` varchar(40) NOT NULL default '',
  `password` varchar(40) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `admin` tinyint(1) NOT NULL default '0',
  `developer` tinyint(1) NOT NULL default '0',
  `notes` text,
  `lock_version` int(11) default '0',
  `salt` varchar(255) default NULL,
  `session_token` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `login`, `password`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `admin`, `developer`, `notes`, `lock_version`, `salt`, `session_token`) VALUES (1,'admin',NULL,'admin','fb0f384234484f70f19590a173b532448774d1b5','2010-02-05 18:05:31','2010-02-06 02:14:33',NULL,NULL,1,0,NULL,2,'a336f7871d1c2dba95b8b836f14653e0e436fa22','64f3df3e7f59cb23a5cfac3931f8e395e145b4f5');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-02-08  7:53:48
