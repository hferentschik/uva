-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 18, 2010 at 01:22 PM
-- Server version: 5.0.91
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `uvatigre_uvaproduction`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE IF NOT EXISTS `assets` (
  `id` int(11) NOT NULL auto_increment,
  `caption` varchar(255) character set latin1 default NULL,
  `title` varchar(255) character set latin1 default NULL,
  `asset_file_name` varchar(255) character set latin1 default NULL,
  `asset_content_type` varchar(255) character set latin1 default NULL,
  `asset_file_size` int(11) default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `caption`, `title`, `asset_file_name`, `asset_content_type`, `asset_file_size`, `created_by_id`, `updated_by_id`, `created_at`, `updated_at`) VALUES
(1, 'Rotweiler Gino', 'Rotweiler', 'rotweiler_1.jpg', 'image/jpeg', 42456, 1, 1, '2010-02-27 02:58:54', '2010-02-27 03:17:28'),
(2, '', 'Adopt me', 'adoptme.jpg', 'image/jpeg', 62255, 1, 1, '2010-03-02 02:38:05', '2010-03-02 02:38:57'),
(3, '', 'Mercado de Frutas', 'market.jpg', 'image/jpeg', 111989, 1, NULL, '2010-03-02 02:38:43', '2010-03-02 02:38:43'),
(4, '', 'Team', 'team.jpg', 'image/jpeg', 92798, 1, NULL, '2010-03-02 02:39:33', '2010-03-02 02:39:33'),
(8, 'Capitana', 'Capitana', 'perro2.jpg', 'image/jpeg', 1830785, 1, 1, '2010-03-05 02:27:55', '2010-03-14 19:53:21'),
(9, 'Silvino', 'Silvino', 'perro3.jpg', 'image/jpeg', 1503722, 1, 1, '2010-03-05 02:30:36', '2010-03-14 19:54:00'),
(10, 'Pimpollo', 'Pimpollo', 'perro4.jpg', 'image/jpeg', 2186430, 1, 1, '2010-03-05 02:32:07', '2010-03-14 19:54:15'),
(11, 'Nube', 'Nube', 'nube.jpg', 'image/jpeg', 262422, 1, 1, '2010-03-05 02:33:18', '2010-03-15 23:25:42'),
(12, 'Nano', 'Nano', 'nano.jpg', 'image/jpeg', 45902, 1, 1, '2010-03-05 02:33:47', '2010-03-20 23:30:15'),
(13, 'Florcita', 'Florcita', 'perro7.jpg', 'image/jpeg', 1102708, 1, 1, '2010-03-05 02:34:22', '2010-03-14 19:55:15'),
(16, 'Lupita', 'Lupita', 'Lupita.jpg', 'image/jpeg', 95708, 1, 1, '2010-03-10 17:37:22', '2010-03-16 22:30:20'),
(17, 'Jovita', 'Jovita', 'Jovita.jpg', 'image/jpeg', 51620, 1, 1, '2010-03-10 17:38:15', '2010-03-16 22:23:11'),
(18, 'Julian', 'Julian', 'Julian.jpg', 'image/jpeg', 96685, 1, 1, '2010-03-10 17:39:16', '2010-03-16 22:26:13'),
(19, 'Negra', 'Negra', 'perro12_1.jpg', 'image/jpeg', 858351, 1, 1, '2010-03-10 17:40:06', '2010-03-14 19:52:44'),
(20, 'Juanita', 'Juanita', 'Juanita.jpg', 'image/jpeg', 35018, 1, 1, '2010-03-10 17:41:06', '2010-03-16 22:29:12'),
(21, 'Morena', 'Morena', 'morena.jpg', 'image/jpeg', 59625, 1, 1, '2010-03-10 17:41:39', '2010-03-16 02:07:02'),
(22, 'Mota', 'Mota', 'mota.jpg', 'image/jpeg', 61552, 1, 1, '2010-03-10 17:42:31', '2010-03-15 23:32:23'),
(23, 'Lito', 'Lito', 'lito.jpg', 'image/jpeg', 119938, 1, 1, '2010-03-10 17:42:55', '2010-03-15 23:40:58'),
(24, 'Linda', 'Linda', 'linda.jpg', 'image/jpeg', 72194, 1, 1, '2010-03-10 17:43:36', '2010-03-16 01:52:48'),
(25, 'Olivia', 'Olivia', 'Olivia.jpg', 'image/jpeg', 61335, 1, 1, '2010-03-10 17:44:33', '2010-03-16 22:27:44'),
(26, 'Negra', 'Negra', 'negra.jpg', 'image/jpeg', 66638, 1, 1, '2010-03-10 17:44:59', '2010-03-15 23:34:44'),
(27, 'Antifaz', 'Antifaz', 'perro20_1.jpg', 'image/jpeg', 1008534, 1, 1, '2010-03-10 17:45:31', '2010-03-14 19:50:30'),
(28, 'El gordo', 'El gordo', 'elgordo.jpg', 'image/jpeg', 59382, 1, 1, '2010-03-10 17:46:08', '2010-03-16 01:55:37'),
(29, 'Cristina, Virginia y Regina', 'El Negro', 'El_Negro1.jpg', 'image/jpeg', 166744, 1, NULL, '2010-03-15 21:05:30', '2010-03-15 21:05:30'),
(30, 'El Negro feliz de tener su isla propia', 'El Negro ', 'Negro2.jpg', 'image/jpeg', 228462, 1, NULL, '2010-03-15 21:15:16', '2010-03-15 21:15:16'),
(31, 'Regina y la policia', 'El Negro', 'Negro3.jpg', 'image/jpeg', 151879, 1, 1, '2010-03-15 21:19:05', '2010-03-15 21:19:38'),
(32, '', 'Paulina Queen', 'WebUniversidad_de_Veterinaria_Paulina2.JPG', 'image/jpeg', 470319, 1, 1, '2010-03-15 21:31:05', '2010-03-15 21:31:45'),
(33, '', 'Gino', 'Gino.JPG', 'image/jpeg', 798048, 1, NULL, '2010-03-15 21:39:57', '2010-03-15 21:39:57'),
(34, '', 'Jack', 'Jack1.jpg', 'image/jpeg', 52289, 1, NULL, '2010-03-17 16:41:10', '2010-03-17 16:41:10'),
(35, '', 'Jack', 'Jack4.jpg', 'image/jpeg', 46180, 1, NULL, '2010-03-17 16:41:29', '2010-03-17 16:41:29'),
(36, '', 'Jack', 'Jack5.jpg', 'image/jpeg', 53616, 1, NULL, '2010-03-17 16:41:49', '2010-03-17 16:41:49'),
(37, '', 'Jack', 'Jack6.jpg', 'image/jpeg', 39177, 1, NULL, '2010-03-17 16:42:06', '2010-03-17 16:42:06'),
(38, '', 'Silvia y Arielweb', 'silvia_Arielweb.jpg', 'image/jpeg', 41602, 1, 1, '2010-03-17 16:58:10', '2010-03-17 16:58:29'),
(43, '', 'Gatito de playa', 'gatito1.JPG', 'image/jpeg', 24910, 1, NULL, '2010-03-17 17:21:42', '2010-03-17 17:21:42'),
(44, '', 'Gatito de playa', 'gatito2.JPG', 'image/jpeg', 28550, 1, 1, '2010-03-17 17:22:02', '2010-03-17 17:22:11'),
(45, '', 'Gatito de playa', 'gatito3.JPG', 'image/jpeg', 40196, 1, NULL, '2010-03-17 17:22:33', '2010-03-17 17:22:33'),
(46, '', 'Certificado para rellenar y firmar cuando adoptas un perro o gato', 'Certificado_de_adopcion_negro.pdf', 'application/pdf', 340525, 1, 1, '2010-03-17 19:50:35', '2010-03-18 01:37:37'),
(47, '', 'Â¿EstÃ¡s listo para adoptar un cachorro?', 'cachorro_adoptado.pdf', 'application/pdf', 313671, 1, 1, '2010-03-17 19:51:56', '2010-03-20 02:28:03'),
(48, '', 'Antes de adoptar un perro Â¿quÃ© es lo que vos necesita saber?', 'adoptado.pdf', 'application/pdf', 488418, 1, 1, '2010-03-17 19:52:42', '2010-03-18 01:29:41'),
(49, '', 'Pelusa', 'Pelusa.jpg', 'image/jpeg', 109342, 1, 1, '2010-03-17 20:26:38', '2010-03-19 01:01:49'),
(50, '', 'pdficon', 'pdficon_small.gif', 'image/gif', 361, 1, NULL, '2010-03-17 21:06:05', '2010-03-17 21:06:05'),
(51, '', 'Logo WSPA', 'wspa.jpg', 'image/jpeg', 70150, 1, 1, '2010-03-18 02:12:36', '2010-03-18 02:43:50'),
(52, '', 'WESTRIC', 'WESTRIC.jpg', 'image/jpeg', 23055, 1, 1, '2010-03-18 02:15:22', '2010-03-18 02:57:43'),
(53, '', 'pedigree', 'pedigree.jpg', 'image/jpeg', 35778, 1, 1, '2010-03-18 02:23:33', '2010-03-18 02:49:28'),
(54, '', 'Municipio de Tigre', 'Municipio.jpg', 'image/jpeg', 12779, 1, NULL, '2010-03-18 02:24:04', '2010-03-18 02:24:04'),
(55, '', 'jc', 'jc.jpg', 'image/jpeg', 6922, 1, 1, '2010-03-18 02:24:45', '2010-03-18 02:59:15'),
(56, '', 'Regina y Cristina', 'web_regina_cristina_puerto.jpg', 'image/jpeg', 129959, 1, 1, '2010-03-20 01:27:12', '2010-03-20 01:31:12'),
(57, '', 'Nuevo Zoonozis', 'web_zoonozis2.jpg', 'image/jpeg', 145900, 1, NULL, '2010-03-20 01:35:56', '2010-03-20 01:35:56'),
(58, '', 'Cachorro', 'web_perrito1.jpg', 'image/jpeg', 46480, 1, NULL, '2010-03-20 01:40:45', '2010-03-20 01:40:45'),
(59, '', 'Gatito', 'web_gatito.jpg', 'image/jpeg', 23066, 1, NULL, '2010-03-20 01:41:06', '2010-03-20 01:41:06'),
(60, '', 'Zoonozis', 'webdogs.jpg', 'image/jpeg', 110146, 1, 1, '2010-03-20 01:45:01', '2010-03-20 01:47:41'),
(61, '', 'Estacion', 'estacion6.jpg', 'image/jpeg', 101593, 1, NULL, '2010-03-20 02:11:08', '2010-03-20 02:11:08'),
(62, NULL, 'web_perro_estacion', 'web_perro_estacion.jpg', 'image/jpeg', 41133, 1, NULL, '2010-03-20 02:14:17', '2010-03-20 02:14:17'),
(63, '', 'Nana', 'nana2.jpg', 'image/jpeg', 33503, 1, 1, '2010-03-20 02:54:49', '2010-03-20 02:57:16'),
(64, '', 'Nana', 'nana3.jpg', 'image/jpeg', 28183, 1, 1, '2010-03-20 02:55:22', '2010-03-20 02:56:50'),
(65, '', 'Isla', 'DSC03795.JPG', 'image/jpeg', 89282, 1, 1, '2010-03-23 16:17:58', '2010-03-23 16:20:39'),
(66, '', 'Dana', 'dana1.jpg', 'image/jpeg', 78603, 1, 1, '2010-04-30 13:56:58', '2010-04-30 13:57:11'),
(67, '', 'Dana', 'dana2.jpg', 'image/jpeg', 88470, 1, NULL, '2010-04-30 13:57:30', '2010-04-30 13:57:30'),
(68, '', 'Dana', 'dana3.jpg', 'image/jpeg', 88519, 1, NULL, '2010-04-30 13:57:54', '2010-04-30 13:57:54'),
(69, '', 'Julieta', 'Julieta.2.jpg', 'image/jpeg', 132327, 1, NULL, '2010-04-30 14:31:26', '2010-04-30 14:31:26'),
(70, '', 'Julieta', 'Julieta1.jpg', 'image/jpeg', 115330, 1, 1, '2010-04-30 14:31:57', '2010-04-30 14:32:19'),
(71, '', 'Pancho', 'Pancho3.jpg', 'image/jpeg', 29388, 1, 1, '2010-04-30 14:46:06', '2010-04-30 14:46:13'),
(72, '', 'Pancho', 'Pancho2.jpg', 'image/jpeg', 54593, 1, NULL, '2010-04-30 14:46:35', '2010-04-30 14:46:35'),
(73, '', 'Pancho', 'Pancho1.jpg', 'image/jpeg', 25894, 1, NULL, '2010-04-30 14:46:56', '2010-04-30 14:46:56'),
(74, '', 'Dominga', 'Dominga.JPG', 'image/jpeg', 38627, 1, NULL, '2010-07-18 16:17:58', '2010-07-18 16:17:58'),
(75, '', 'Dominga', 'Dominga1.JPG', 'image/jpeg', 39118, 1, NULL, '2010-07-18 16:18:30', '2010-07-18 16:18:30'),
(76, NULL, 'Dominga', 'Dominga.JPG', 'image/jpeg', 38627, 1, NULL, '2010-07-18 16:21:07', '2010-07-18 16:21:07'),
(77, NULL, 'Dominga1', 'Dominga1.JPG', 'image/jpeg', 39118, 1, NULL, '2010-07-18 16:21:18', '2010-07-18 16:21:18'),
(78, NULL, 'Pancho3', 'Pancho3.jpg', 'image/jpeg', 29388, 1, NULL, '2010-07-18 16:30:35', '2010-07-18 16:30:35'),
(79, NULL, 'Clara', 'Clara.jpg', 'image/jpeg', 157738, 1, NULL, '2010-07-18 16:42:40', '2010-07-18 16:42:40'),
(80, NULL, 'Clara2', 'Clara2.jpg', 'image/jpeg', 124599, 1, NULL, '2010-07-18 16:45:44', '2010-07-18 16:45:44'),
(81, NULL, 'Cafe1', 'Cafe1.JPG', 'image/jpeg', 27226, 1, NULL, '2010-07-18 16:50:28', '2010-07-18 16:50:28'),
(82, NULL, 'Cafe2', 'Cafe2.JPG', 'image/jpeg', 33084, 1, NULL, '2010-07-18 16:50:41', '2010-07-18 16:50:41'),
(83, NULL, 'Cafe3', 'Cafe3.JPG', 'image/jpeg', 41291, 1, NULL, '2010-07-18 16:50:55', '2010-07-18 16:50:55'),
(84, NULL, 'Castracion', 'Castracion.JPG', 'image/jpeg', 39972, 1, NULL, '2010-07-18 17:13:48', '2010-07-18 17:13:48'),
(85, NULL, 'Castracion3', 'Castracion3.JPG', 'image/jpeg', 51437, 1, NULL, '2010-07-18 17:14:07', '2010-07-18 17:14:07'),
(86, NULL, 'Castracion5', 'Castracion5.JPG', 'image/jpeg', 55251, 1, NULL, '2010-07-18 17:14:25', '2010-07-18 17:14:25'),
(87, NULL, 'Castracion6', 'Castracion6.JPG', 'image/jpeg', 82454, 1, NULL, '2010-07-18 17:14:41', '2010-07-18 17:14:41'),
(88, NULL, 'Castracion8', 'Castracion8.JPG', 'image/jpeg', 73158, 1, NULL, '2010-07-18 17:15:03', '2010-07-18 17:15:03'),
(89, NULL, 'Castracion12', 'Castracion12.JPG', 'image/jpeg', 55291, 1, NULL, '2010-07-18 17:15:29', '2010-07-18 17:15:29'),
(90, NULL, 'Castracion13', 'Castracion13.JPG', 'image/jpeg', 45012, 1, NULL, '2010-07-18 17:15:49', '2010-07-18 17:15:49'),
(91, NULL, 'Castracion14', 'Castracion14.JPG', 'image/jpeg', 43152, 1, NULL, '2010-07-18 17:16:05', '2010-07-18 17:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL auto_increment,
  `key` varchar(40) character set latin1 NOT NULL default '',
  `value` varchar(255) character set latin1 default '',
  `description` text character set latin1,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `key`, `value`, `description`) VALUES
(1, 'admin.title', 'Radiant CMS', 'Title text displayed at the top of all administration screens.'),
(2, 'admin.subtitle', 'Publishing for Small Teams', 'The tagline displayed underneath the main administration title'),
(3, 'defaults.page.parts', 'body, extended', 'Defines the page parts that a new page is created with.  It should be a list, separated by a comma and a space.  For example:\n\nbq. @body, extended, sidebar@\n'),
(4, 'defaults.page.status', 'draft', 'Defines the publishing status of new pages.  This can any one of:\n\n* draft\n* published\n* reviewed\n* hidden\n'),
(5, 'defaults.page.filter', '', 'Sets the text filter a new page has by default.  Valid options, in a vanilla Radiant install are:\n\n* _leave blank to set no default filter_\n* Markdown\n* SmartyPants\n* Textile\n'),
(6, 'session_timeout', '1209600', NULL),
(7, 'roles.settings', 'admin', 'List of user roles that may see the settings tabs.'),
(8, 'assets.additional_thumbnails', 'list=125x112', 'Defines the default sizes for image assets that are created when an image is uploaded. Use "#" to crop the image to a specific size. "42x42#" would be a square thumbnail, cropped in the center 42 pixels by 42 pixels.'),
(9, 'assets.display_size', 'original', 'Sets which of your image sizes is shown is the edit view. Defaults to the "original" image size, but any size may be used. '),
(10, 'assets.content_types', 'image/jpeg, image/pjpeg, image/gif, image/png, image/x-png, image/jpg, video/x-m4v, video/quicktime, application/x-shockwave-flash, audio/mpeg, video/mpeg', 'Defines the content types of that will be allowed to be uploaded as assets.'),
(11, 'assets.max_asset_size', '5', 'The size in megabytes that will be the max size allowed to be uploaded for an asset'),
(12, 'assets.skip_filetype_validation', 'true', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dogs`
--

CREATE TABLE IF NOT EXISTS `dogs` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) character set latin1 NOT NULL,
  `gender` varchar(255) character set latin1 NOT NULL,
  `birthdate` date NOT NULL,
  `description` varchar(2000) character set latin1 NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `asset_id` int(11) default NULL,
  `size` varchar(255) character set latin1 default NULL,
  `adopted` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `dogs`
--

INSERT INTO `dogs` (`id`, `name`, `gender`, `birthdate`, `description`, `created_at`, `updated_at`, `asset_id`, `size`, `adopted`) VALUES
(2, 'Capitana', 'f', '2008-01-01', 'Capitana estaba viviendo en el Hospital de Pacheco, la alimentaban las enfermeras y la buena gente que concurre al hospital, hasta que se embarazo, entonces la trasladamos hasta Zoonosis con sus bebes, allÃ­ dimos en adopciÃ³n los cachorros. Ahora ella tambien espera una nueva casa.\r\n\r\nEsterilizada, vacunado y desparasitado.', '2010-03-10 16:12:51', '2010-03-17 23:24:05', 8, 'm', 0),
(3, 'Silvino', 'm', '2009-01-01', 'CarÃ¡cter sociable. \r\nUna voluntaria lo encontrÃ³ abandonado en el Puerto de Frutos de Tigre lo llevo a Zoonosis donde se lo controlo sanitariamente se desparasito y vacuno ,castro y se le dio amor y alimento.\r\nHoy ya quiere irse a una casa que siempre deseo tener.\r\nCastrado, vacunado y desparasitado.', '2010-03-10 16:12:51', '2010-03-17 23:23:35', 9, 'm', 0),
(4, 'Pimpollo', 'm', '2008-01-01', 'CarÃ¡cter bueno, el convive con otro compaÃ±erito dentro del canil(un perro ciego)\r\nFue abandonado por su dueÃ±o en Zoonosis, presentaba sarna y otras lesiones que se le curaron dentro del Centro, se vacuno y desparasito y castro y como verÃ¡n hoy tiene un hermoso pelo! \r\n\r\nCastrado, vacunado y desparasitado.', '2010-03-10 16:12:51', '2010-03-17 23:23:07', 10, 'l', 0),
(5, 'Nube', 'f', '2009-01-01', 'CarÃ¡cter muy bueno.\r\nFue abandonado y encontrado por una voluntaria en el Puerto de Frutos y luego llevado al Centro de Zoonosis donde espera ansiosamente ser adoptado y compartir su vida con gente que lo ame mucho.\r\nEsterilizada, vacunado y desparasitado.', '2010-03-10 16:12:51', '2010-03-17 23:24:30', 11, 's', 0),
(6, 'Nano', 'm', '2002-01-01', 'Estaba en un colegio compartiendo un acto con los chicos, hasta que la Directora de la Escuela lo hizo retirar y llevar a Zoonosis, el tenia collar y por supuesto un dueÃ±o, pero nadie reclamo ni lo fue a buscar lo abandonaron a su edad sin importarle que el espera todos los dÃ­as volver a su casa de la nunca lo tendrÃ­an que haber abandonado. SueÃ±a todo los dÃ­as encontrar un nuevo dueÃ±o que no lo importa que es viejo. \r\nCastrado, vacunado y desparasitado.', '2010-03-10 16:12:51', '2010-03-17 23:25:06', 12, 's', 0),
(7, 'Florcita', 'f', '2008-01-01', 'Caracter muy sociable y muy buena.\r\nFue abandonada en Zoonosis, recogida por una voluntaria con gran desnutricion y sarna, miren que bella esta ahora!\r\nEsterilizada, vacunado y desparasitado.', '2010-03-10 16:12:51', '2010-03-17 23:26:06', 13, 'l', 0),
(8, 'Pelusa', 'f', '2007-01-01', 'Caracter muy sociable y buena. \r\nAbandonada en la calle, desnutrida y con sarna, rescatada por la Protectora, curada desparasitada y castrada busca hogar donde la mimen mucho y adonde le gustan rascar su estÃ³mago.\r\nEsterilizada, vacunado y desparasitado', '2010-03-10 16:12:51', '2010-03-17 23:29:39', 49, 'm', 0),
(9, 'Lupita', 'f', '2007-01-01', 'Caracter muy bueno.\r\nElla fue abandonada con la excusa de que era mordedora, aunque luego se comprobo en los caniles que no era asi porque es sunmamente tranquila y da muchos besos sin jamas demostrar agresion con los voluntarios ni con otros perros.\r\nEsterilizada, vacunado y desparasitado.', '2010-03-10 16:12:51', '2010-03-17 23:25:37', 16, 'l', 0),
(10, 'Jovita', 'f', '2007-01-01', 'Caracter bueno y muy inquieta, necesita espacio para correr y jugar.\r\nFue rescatada por una Voluntaria, habia sido abandonada, atada en la puerta de Zoonosis, con desnutricion y sarna. Fue curada, vacunada y castrada. Necesita hogar y muchos mimos y juegos.\r\nEsterilizada, vacunado y desparasitado', '2010-03-10 16:12:51', '2010-03-17 23:30:12', 17, 'm', 0),
(11, 'Julian', 'm', '2009-01-01', 'Caracter muy bueno y sociable.\r\nFue  abandona en la calle atado con una cadena a un poste  de  luz con sarna muy muy flaco y muy triste.\r\nHoy es un hermoso perro de pelaje negro y muy brillante! quiere como todos los demas vivir libre en una casa donde le den cariÃ±o. \r\nCastrado, vacunado y desparasitado', '2010-03-10 16:12:51', '2010-03-17 23:30:46', 18, 'l', 0),
(12, 'Negra', 'f', '2007-01-01', 'Muy buen caracter y sociable.\r\nFue abandonada en Zoonosis, atada a un arbol de la vereda, desnutrida y con sarna, hoy se encuentra totalmente recuperada y esta esperando un hogar y muchos mimos!\r\nEsterilizada, vacunada y desparasitada.', '2010-03-10 16:12:51', '2010-03-17 23:31:47', 19, 'm', 0),
(13, 'Juanita', 'f', '2008-01-01', 'Caracter muy docil y es muy amigable con otros perros.\r\nRescatada de la via publica por una Voluntaria de U.V.A se encontraba con gusanos y muy triste.\r\nHoy esta muy bien, curada, castrada, vacunada, desparasitada y necesita un hogar y mucho amor.\r\nEsterilizada, vacunada y desparasitada.', '2010-03-10 16:12:51', '2010-03-17 23:32:13', 20, 'm', 0),
(14, 'Morena', 'f', '2006-01-01', 'Rescatada de la via publica en malas condiciones sanitarias y muy debil. \r\nAhora esta esperando un hogar que le brinde lo que hasta ahora no pudo tener. Ella le encanta los coches entra en todos para ver si alguien lo lleva a su casa.\r\nEsterilizada, vacunada y desparasitada.', '2010-03-10 16:12:51', '2010-03-17 23:34:04', 21, 'm', 0),
(15, 'Mota', 'f', '2006-01-01', 'Abandonada y atada en la puerta de Zoonosis, desnutrida y con sarna caracter muy cariÃ±oso, adaptable, le gusta jugar y comparte la vida perfectamente con otros animales.\r\nCastrada, vacunada y desparasitada.', '2010-03-10 16:12:51', '2010-03-17 23:34:36', 22, 'l', 0),
(16, 'Lito', 'm', '2009-01-01', 'cachorron y jugueton\r\nMuy desnutrido iba deambulando por la calle en muy mal estado. Lita una voluntaria de U.V.A lo miro y le pregunto - adonde vas? el comenzo a seguirla hasta Zoonosis.  Se le hizo tratamiento, y hoy es un perro totalmente sano y  adaptado para vivir con la gente.\r\nCastrado, vacunada y desparasitada.', '2010-03-10 16:12:51', '2010-03-17 23:47:41', 23, 'm', 0),
(17, 'Linda', 'f', '2008-01-01', 'Muy buen caracter. Es muy juguetona.\r\nFue rescatada del Puerto de Frutos por una voluntaria de U.V.A ella necesita un hogar como todos los demas y mucho cariÃ±o!\r\nCastrada vacunada y desparasitada.', '2010-03-10 16:12:51', '2010-03-17 23:48:18', 24, 'm', 0),
(18, 'Olivia', 'f', '2008-01-01', 'muy dulce, muy buen caracter y\r\nle encanta jugar con otros perros \r\nfue abandonada en muy mal estado de salud en el Centro de Zoonosis. Hoy es una perrita muy saludable y merece tener un hogar donde la quieran mucho! No le importa nada que esta coja en una pata y seguro a ti tampoco!\r\nEsterilizada, vacunado y desparasitado.', '2010-03-10 16:12:51', '2010-03-17 23:48:47', 25, 'l', 0),
(19, 'Negra', 'f', '2009-01-01', 'Buen caracter, sociable.\r\nFue rescatada por una Voluntaria en situacion de riesgo. Hoy esta a salvo y necesita urgente un hogar!\r\nEsterilizada vacunado y desparasitado.', '2010-03-10 16:12:51', '2010-03-17 23:49:13', 26, 'm', 0),
(20, 'Antifaz', 'm', '2006-01-01', 'Fue abandonado porque sus dueÃ±os se mudaron y no quisieron llevarlo con elllos, lo dejaron en la via publica, U.V.A lo recogio y como es muy dulce y sociable sabemos que pronto alguien le dara el amor que siempre se merecio!\r\nCastrado vacunado y desparasitado.', '2010-03-10 16:12:51', '2010-03-17 23:49:45', 27, 'l', 0),
(21, 'El gordo', 'm', '2006-01-01', 'Caracter sociable.\r\nFue abandonado en zoonosis como tantos otros en malas condiciones de salud, aqui se lo curo atendio y como se puede ver engordo!\r\nCastrado, vacunado y desparasitado.', '2010-03-10 16:12:51', '2010-03-17 23:50:24', 28, 'l', 0);

-- --------------------------------------------------------

--
-- Table structure for table `extension_meta`
--

CREATE TABLE IF NOT EXISTS `extension_meta` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) character set latin1 default NULL,
  `schema_version` int(11) default '0',
  `enabled` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `extension_meta`
--


-- --------------------------------------------------------

--
-- Table structure for table `layouts`
--

CREATE TABLE IF NOT EXISTS `layouts` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) character set latin1 default NULL,
  `content` text character set latin1,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `content_type` varchar(40) character set latin1 default NULL,
  `lock_version` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `layouts`
--

INSERT INTO `layouts` (`id`, `name`, `content`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `content_type`, `lock_version`) VALUES
(1, 'Normal', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"\r\n  "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">\r\n<html>\r\n  <r:snippet name="html_head" />\r\n  <body id="startpage">\r\n     <div id="page">\r\n        <r:snippet name="header" />\r\n        <div id="main" class="clearfix">\r\n           <r:content />\r\n        </div>\r\n        <r:snippet name="footer" />\r\n     </div>\r\n  </body>\r\n</html>', '2008-12-24 01:08:45', '2010-03-26 22:21:22', 1, 1, '', 45),
(2, 'Stylesheet', '<r:content />\n', '2008-12-24 01:08:45', '2009-01-02 10:00:53', 1, NULL, 'text/css', 1),
(3, 'XML Feed', '<r:content />\n', '2008-12-24 01:08:45', '2008-12-24 01:08:45', 1, NULL, 'text/xml', 0),
(5, 'TwoColumns', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"\r\n  "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">\r\n<html>\r\n  <r:snippet name="html_head" />\r\n  <body>\r\n     <div id="page">\r\n        <r:snippet name="header" />\r\n            <div id="main" class="clearfix">\r\n                <div id="content">\r\n                   <r:content/>\r\n                </div>\r\n                <div id="sidebar">\r\n                    <r:content part="sidebar" inherit="true" />\r\n                </div>\r\n            </div>\r\n        <r:snippet name="footer" />\r\n     </div>\r\n  </body>\r\n</html>', '2010-02-22 02:33:34', '2010-03-26 22:21:59', 1, 1, '', 12),
(6, 'TwoColumnsBlog', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"\r\n  "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">\r\n<html>\r\n  <r:snippet name="html_head" />\r\n  <body>\r\n     <div id="page">\r\n        <r:snippet name="header" />\r\n            <div id="main" class="clearfix">\r\n                <div id="content">\r\n                   <h1><r:if_url matches="^.*noticias">Noticias</r:if_url><r:if_url matches="^.*finales-felices">Finales Felices</r:if_url></h1>\r\n                      <div class="entry">\r\n                         <h2><r:link /></h2>\r\n                         <r:content/>\r\n                         <div class="posted">\r\n                            Publicado por <r:author /> el <r:date format="%d/%m/%Y" /><em> | </em><r:link>Permalink</r:link>    \r\n                         </div>\r\n                      </div>\r\n                </div>\r\n                <div id="sidebar">\r\n                    <r:content part="sidebar" inherit="true" />\r\n                </div>\r\n            </div>\r\n        <r:snippet name="footer" />\r\n     </div>\r\n  </body>\r\n</html>', '2010-03-14 20:21:57', '2010-03-26 22:22:12', 1, 1, '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) character set latin1 default NULL,
  `slug` varchar(100) character set latin1 default NULL,
  `breadcrumb` varchar(160) character set latin1 default NULL,
  `class_name` varchar(25) character set latin1 default NULL,
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
  `description` varchar(255) character set latin1 default NULL,
  `keywords` varchar(255) character set latin1 default NULL,
  PRIMARY KEY  (`id`),
  KEY `pages_class_name` (`class_name`),
  KEY `pages_parent_id` (`parent_id`),
  KEY `pages_child_slug` (`slug`,`parent_id`),
  KEY `pages_published` (`virtual`,`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `breadcrumb`, `class_name`, `status_id`, `parent_id`, `layout_id`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `virtual`, `lock_version`, `description`, `keywords`) VALUES
(1, 'UVA', '/', 'Home', '', 100, NULL, 1, '2008-12-24 01:08:45', '2010-02-21 22:44:48', '2008-12-23 18:08:45', 1, 1, 0, 81, '', ''),
(2, 'File Not Found', 'file-not-found', 'File Not Found', 'FileNotFoundPage', 100, 1, NULL, '2008-12-24 01:08:45', '2010-03-18 00:27:58', '2008-12-23 18:08:45', 1, 1, 1, 1, '', ''),
(3, 'RSS Feed', 'rss', 'RSS Feed', '', 1, 1, 3, '2008-12-24 01:08:45', '2010-04-20 13:07:53', '2008-12-23 18:08:45', 1, 1, 0, 1, '', ''),
(4, 'Noticias', 'noticias', 'News', 'ArchivePage', 100, 1, 5, '2008-12-24 01:08:45', '2010-03-05 01:19:50', '2008-12-23 18:08:45', 1, 1, 0, 21, '', ''),
(9, 'Acerca de', 'acerca-de', 'Acerca de', '', 100, 1, 5, '2008-12-24 01:08:45', '2010-03-05 01:15:25', '2008-12-23 18:08:45', 1, 1, 0, 12, '', ''),
(11, 'sitemap', 'sitemap.xml', 'sitemap', '', 100, 1, 3, '2009-01-01 23:49:07', '2010-04-20 13:17:49', '2009-01-01 16:49:07', 1, 1, 0, 15, '', ''),
(14, 'reset', 'reset.css', 'reset', '', 100, 1, 2, '2009-01-02 10:00:27', '2010-03-05 01:55:51', '2009-01-02 03:06:13', 1, 1, 0, 3, '', ''),
(18, 'uva-style', 'uva-style.css', 'uva-style', '', 100, 1, 2, '2010-02-21 22:42:39', '2010-02-21 22:55:54', '2010-02-21 19:48:36', 1, 1, 0, 5, '', ''),
(19, 'El Equipo', 'el-equipo', 'El Equipo', '', 100, 9, NULL, '2010-02-26 00:16:50', '2010-03-05 01:28:37', '2010-02-25 21:21:18', 1, 1, 0, 3, '', ''),
(20, 'Historia', 'historia', 'Historia', '', 100, 9, NULL, '2010-02-26 00:17:41', '2010-03-05 01:29:34', '2010-02-25 21:21:10', 1, 1, 0, 3, '', ''),
(21, 'Como ayudar', 'como-ayudar', 'Como ayudar', '', 100, 9, NULL, '2010-02-26 00:18:11', '2010-03-05 01:31:51', '2010-02-25 21:21:01', 1, 1, 0, 3, '', ''),
(23, ' %B %Y Archives ', 'b-y-archives', ' %B %Y Archives ', 'ArchiveMonthIndexPage', 100, 4, NULL, '2010-03-02 01:01:26', '2010-03-02 01:03:33', '2010-03-01 22:01:39', 1, 1, 1, 2, '', ''),
(24, 'El valiente Gino  ', 'el-valiente-gino', 'El valiente Gino  ', '', 100, 4, 6, '2010-03-02 01:02:13', '2010-03-16 01:22:13', '2010-03-01 22:03:08', 1, 1, 0, 5, '', ''),
(25, 'lightbox', 'lightbox.css', 'lightbox', '', 100, 1, 2, '2010-03-14 20:34:00', '2010-03-14 20:34:52', '2010-03-14 17:34:30', 1, 1, 0, 2, '', ''),
(26, 'El Negro feliz en la isla', 'el-negro-feliz-en-la-isla', 'El Negro feliz en la isla', '', 100, 4, 6, '2010-03-15 20:54:20', '2010-03-15 20:56:48', '2010-03-15 15:54:20', 1, 1, 0, 1, '', ''),
(27, 'La hermana Pauline Queen', 'la-hermana-pauline-queen', 'La hermana Pauline Queen', '', 100, 4, 6, '2009-09-15 21:28:34', '2010-03-15 21:34:07', '2009-09-15 16:34:07', 1, 1, 0, 2, '', ''),
(31, 'Finales Felices', 'finales-felices', 'Finales Felices', 'ArchivePage', 100, 1, 5, '2010-03-16 01:38:37', '2010-03-17 12:23:55', '2010-03-15 22:40:45', 1, 1, 0, 3, '', ''),
(32, 'B% Y% Archives', 'b-y-archives', 'B% Y% Archives', 'ArchiveMonthIndexPage', 100, 31, 5, '2010-03-16 01:40:26', '2010-03-16 01:40:59', '2010-03-15 22:40:59', 1, 1, 1, 1, '', ''),
(33, 'Jack', 'jack', 'Jack', '', 100, 31, 6, '2010-03-16 01:41:28', '2010-03-17 16:03:53', '2010-03-15 22:41:28', 1, 1, 0, 3, '', ''),
(34, 'Sponsors', 'sponsors', 'Sponsors', '', 100, 9, NULL, '2010-03-16 02:09:10', '2010-03-16 02:14:33', '2010-03-15 23:14:33', 1, 1, 0, 2, '', ''),
(35, 'Quieres Adoptar', 'quieres-adoptar', 'Quieres Adoptar', '', 100, 1, 5, '2010-03-17 12:34:19', '2010-03-18 00:21:01', '2010-03-17 07:34:19', 1, 1, 0, 6, '', ''),
(36, 'Regina y Cristina', 'regina-y-cristina', 'Regina y Cristina', '', 100, 9, NULL, '2010-03-17 12:43:38', '2010-03-17 12:44:52', '2010-03-17 07:43:38', 1, 1, 0, 1, '', ''),
(37, 'El gatito de la playa', 'el-gatito-de-la-playa', 'El gatito de la playa', '', 100, 31, 6, '2010-03-17 16:12:02', '2010-03-18 14:33:13', '2010-03-17 11:12:55', 1, 1, 0, 2, '', ''),
(38, 'Silvia y Ariel', 'silvia-y-ariel', 'Silvia y Ariel', '', 100, 31, 6, '2010-03-17 16:30:49', '2010-03-18 14:35:27', '2010-03-17 11:30:49', 1, 1, 0, 2, '', ''),
(39, 'Gracias', 'gracias', 'Gracias', '', 100, 9, NULL, '2010-03-20 01:11:37', '2010-03-20 01:12:10', '2010-03-19 20:12:10', 1, 1, 0, 1, '', ''),
(40, 'Nana', 'nana', 'Nana', '', 100, 31, 5, '2010-03-20 02:53:21', '2010-03-20 02:53:45', '2010-03-19 21:53:45', 1, 1, 0, 1, '', ''),
(44, 'Dana', 'dana', 'Dana', '', 100, 31, NULL, '2010-04-30 14:02:26', '2010-04-30 14:15:49', '2010-04-30 09:08:52', 1, 1, 0, 6, '', ''),
(45, 'Julieta', 'julieta', 'Julieta', '', 100, 31, NULL, '2010-04-30 14:30:51', '2010-04-30 14:34:43', '2010-04-30 09:34:43', 1, 1, 0, 1, '', ''),
(46, 'Pancho', 'pancho', 'Pancho', '', 100, 31, 5, '2010-04-30 14:48:05', '2010-07-18 16:27:57', '2010-04-30 09:52:38', 1, 1, 0, 3, '', ''),
(47, 'Dominga', 'dominga', 'Dominga', '', 100, 31, 5, '2010-07-18 16:20:37', '2010-07-18 16:22:05', '2010-07-18 11:22:05', 1, 1, 0, 2, '', ''),
(48, 'Clara', 'clara', 'Clara', '', 100, 31, 5, '2010-07-18 16:42:05', '2010-07-18 16:46:16', '2010-07-18 11:46:16', 1, 1, 0, 2, '', ''),
(49, 'Cafe', 'cafe', 'Cafe', '', 100, 31, NULL, '2010-07-18 16:49:45', '2010-07-18 16:53:26', '2010-07-18 11:53:26', 1, 1, 0, 2, '', ''),
(50, 'Volkswagen ', 'volkswagen', 'Volkswagen ', '', 100, 4, 5, '2010-07-18 17:09:23', '2010-07-18 17:18:53', '2010-07-18 12:18:53', 1, 1, 0, 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `page_attachments`
--

CREATE TABLE IF NOT EXISTS `page_attachments` (
  `id` int(11) NOT NULL auto_increment,
  `asset_id` int(11) default NULL,
  `page_id` int(11) default NULL,
  `position` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `page_attachments`
--

INSERT INTO `page_attachments` (`id`, `asset_id`, `page_id`, `position`) VALUES
(1, 9, 1, 1),
(2, 10, 1, 2),
(3, 29, 26, 1),
(4, 30, 26, 2),
(5, 32, 27, 1),
(6, 34, 33, 1),
(7, 35, 33, 2),
(8, 36, 33, 3),
(9, 37, 33, 4),
(10, 38, 38, 1),
(13, 45, 37, 1),
(14, 43, 37, 2),
(15, 48, 35, 1),
(16, 47, 35, 2),
(17, 46, 35, 3),
(18, 50, 35, 4),
(19, 51, 34, 1),
(20, 53, 34, 2),
(21, 56, 36, 1),
(22, 57, 20, 1),
(23, 60, 21, 1),
(24, 61, 39, 1),
(25, 62, 39, 2),
(26, 64, 40, 1),
(27, 63, 40, 2),
(28, 12, 42, 1),
(29, 25, 42, 2),
(30, 11, 42, 3),
(31, 67, 44, 1),
(32, 69, 45, 1),
(33, 76, 47, 1),
(34, 77, 47, 2),
(35, 78, 46, 1),
(36, 79, 48, 1),
(37, 80, 48, 2),
(38, 81, 49, 1),
(39, 82, 49, 2),
(40, 83, 49, 3),
(41, 84, 50, 1),
(42, 85, 50, 2),
(43, 86, 50, 3),
(44, 87, 50, 4),
(45, 88, 50, 5),
(46, 89, 50, 6),
(47, 90, 50, 7),
(48, 91, 50, 8);

-- --------------------------------------------------------

--
-- Table structure for table `page_parts`
--

CREATE TABLE IF NOT EXISTS `page_parts` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) character set latin1 default NULL,
  `filter_id` varchar(25) character set latin1 default NULL,
  `content` text character set latin1,
  `page_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `parts_by_page` (`page_id`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `page_parts`
--

INSERT INTO `page_parts` (`id`, `name`, `filter_id`, `content`, `page_id`) VALUES
(1, 'body', '', '<r:snippet name="intro" />   \r\n<div id="doglist-wrapper" class="clearfix">\r\n    <h2>AdÃ³ptame</h2>\r\n    <p>Tenemos muchos perros lindos que buscan una nueva casa. Mira <a href="/dogs">aquÃ­</a> para encontrar tu nuevo amigo.</p>\r\n    <r:random_dogs/>\r\n</div>', 1),
(2, 'body', '', '<r:snippet name="intro" />   \r\n<div id="doglist-wrapper" class="clearfix">\r\n    <h2>The file you were looking for could not be found.</h2>\r\n\r\n    Attempted URL: <i><r:attempted_url /></i> - It is possible that you typed the URL incorrectly or that you clicked on a bad link\r\n    <br/>\r\n    <a href="/"><< Back to Home Page</a>\r\n\r\n</div>\r\n', 2),
(3, 'body', '', '<?xml version="1.0" encoding="UTF-8"?>\r\n<rss version="2.0" xmlns:dc="http://purl.org/dc/elements/1.1/">\r\n  <channel>\r\n    <title>Article RSS Feed</title>\r\n    <link>http://your-web-site.com<r:url /></link>\r\n    <language>en-us</language>\r\n    <ttl>40</ttl>\r\n    <description>The main blog feed for my Web site.</description>\r\n    <r:find url="/news/">\r\n    <r:children:each limit="10" order="desc">\r\n        <item>\r\n          <title><r:title /></title>\r\n          <description><r:escape_html><r:content /></r:escape_html></description>\r\n          <pubDate><r:rfc1123_date /></pubDate>\r\n          <guid>http://your-web-site.com<r:url /></guid>\r\n          <link>http://your-web-site.com<r:url /></link>\r\n        </item>\r\n    </r:children:each>\r\n    </r:find>\r\n  </channel>\r\n</rss>\r\n', 3),
(4, 'body', 'Textile', 'h1. Noticias\r\n\r\n<r:children:each limit="5" order="desc">\r\n<div class="entry">\r\n  <h2><r:link /></h2>\r\n    <r:content/>\r\n    <div class="posted">\r\n      Publicado por <r:author /> el <r:date format="%d/%m/%Y" /><em> | </em><r:link>Permalink</r:link>    \r\n    </div>\r\n  <r:content part="summary" />\r\n</div>\r\n</r:children:each>', 4),
(8, 'sidebar', '', '', 1),
(10, 'body', 'Textile', 'h1. Lo que hacemos\r\n\r\n<r:assets:image title="Mercado de Frutas" />\r\n\r\nNos organizamos por grupos, distribuyendo las tareas de acuerdo a la capacidad y elecciÃ³n acorde a cada uno. Un grupo trabaja en rescate, recuperaciÃ³n fÃ­sica y socializacion de animales de compaÃ±Ã­a (perros y gatos), para luego encontrarles un hogar. Estos son rescatados en situaciÃ³n de riesgo (maltrato, accidentados, abandonados etc). Hay otro grupo que trabaja con caballos y animales exÃ³ticos, en secuestros,recuperaciÃ³n y vuelta a hÃ¡bitat natural o lugar acorde a sus necesidades\r\n\r\nh3. Adopciones en el Puerto de Frutos de Tigre\r\n\r\nEste es un Paseo TurÃ­stico y de compras muy importante en la Zona por donde transitan 60.000 personas por fin de semana. U.V.A tiene un Stand, espacio otorgado por la Municipalidad de Tigre desde Junio del 2008, en donde se puede adoptar animales (perros y gatos). Todos se adoptan vacunados, desparasitados y con la castraciÃ³n gratuita. Se hace una estricta seleccion del adoptante, quien firma un acta compromiso de adopciÃ³n con todos los datos incluyendo numero de identificasiÃ³n. TambiÃ©n se realizan constantemente charlas sobre tenencia responsable educando a niÃ±os y adultos en el lugar. \r\n\r\n\r\nh3. Centro de Zoonozis, Tigre\r\n\r\nOtro grupo desarrolla su voluntariado, dentro del Centro de Zoonozis, donde se atienden diariamente 60 animales aprox. Se los alimenta y se realiza la limpieza de los caniles y se los atiende sanitariamente. Cada perro que ingresa es desparasitado, vacunado y castrado para su posterior adopciÃ³n. Se clasifican por temperamento, para luego poder reubicarlos con una familia.\r\n\r\n\r\nh3. Llamadas de socorro\r\n\r\nU.V.A recibe telefonicamente alrededor de 30 llamados diarios por denuncias de maltrato, animales heridos, perras preÃ±adas o pariciones en la vÃ­a publica, perras en celo, consultas sobre donde dejar sus animales en vacaciones donde dar en adopciÃ³n etc. Todos estas consultas son personalizadas por las voluntarias, que resuelven el problema acorde a la temÃ¡tica.\r\n\r\n', 9),
(11, 'sidebar', '', '<h1>Acerca de U.V.A.</h1>\r\n<ul id="submenu">\r\n    <li <r:if_url matches="^.*acerca-de/$">class="selected"</r:if_url>><a href="/acerca-de">Lo que hacemo</a></li>\r\n    <r:navigation urls="El Equipo:  /acerca-de/el-equipo | Historia: /acerca-de/historia | Como ayudar: /acerca-de/como-ayudar/ | Sponsors: /acerca-de/sponsors/ | Gracias: /acerca-de/gracias/">\r\n       <r:normal><li><a href="<r:url/>"><r:title /></a></li></r:normal>\r\n       <r:here><li class="selected"><a href="<r:url />"><r:title/></a></li></r:here>\r\n       <r:selected><li class="selected"><a href="<r:url />"><r:title/></a></li></r:selected>\r\n   </r:navigation>    \r\n</ul>    ', 9),
(12, 'sidebar', '', '<h1>Archivos de Noticias</h1>\r\n<ul id="submenu">\r\n    <r:find url="/noticias/">\r\n        <r:children:each order="desc">\r\n           <r:header><li><a href="<r:date format="/noticias/%Y/%m/" />"><r:translate><r:date format="%B %Y" /></r:translate></a></li></r:header>\r\n        </r:children:each>\r\n    </r:find>    \r\n</ul>    \r\n', 4),
(17, 'body', '', '<?xml version="1.0" encoding="UTF-8"?>\r\n<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">\r\n   <r:find url="/">\r\n     <r:snippet name="sitemap" />\r\n   </r:find>\r\n</urlset>\r\n', 11),
(18, 'extended', '', '', 11),
(20, 'no-map', '', '', 11),
(25, 'body', '', '/* -------------------------------------------------------------- \r\n\r\n   reset.css\r\n   * Resets default browser CSS.\r\n\r\n   Based on work by Eric Meyer:\r\n   * meyerweb.com/eric/thoughts/2007/05/01/reset-reloaded/\r\n\r\n   Icons are available for purchase at:\r\n   * http://www.istockphoto.com/file_closeup/arts-and-entertainment/arts-symbols/4575877-satin-icons-set-9.php?id=4575877\r\n\r\n-------------------------------------------------------------- */\r\n\r\nhtml, body, div, span, object, iframe,\r\nh1, h2, h3, h4, h5, h6, p, blockquote, pre,\r\na, abbr, acronym, address, code,\r\ndel, dfn, em, img, q, dl, dt, dd, ol, ul, li,\r\nfieldset, form, label, legend,\r\ntable, caption, tbody, tfoot, thead, tr, th, td {\r\n	margin: 0;\r\n	padding: 0;\r\n	border: 0;\r\n	font-weight: inherit;\r\n	font-style: inherit;\r\n	font-size: 100%;\r\n	font-family: inherit;\r\n	vertical-align: baseline;\r\n}\r\n\r\n\r\nbody { line-height: 1.5; background: #fff; margin:1.5em 0; }\r\n\r\n/* Tables still need ''cellspacing="0"'' in the markup. */\r\ntable { border-collapse: separate; border-spacing: 0; }\r\ncaption, th, td { text-align: left; font-weight:400; }\r\n\r\n/* Remove possible quote marks (") from <q>, <blockquote>. */\r\nblockquote:before, blockquote:after, q:before, q:after { content: ""; }\r\nblockquote, q { quotes: "" ""; }\r\n\r\na img { border: none; }\r\n', 14),
(26, 'no-map', '', '', 14),
(33, 'body', '', '/* CSS Document for U.V.A */\r\nbody {\r\n    background-color: #BFC1C4;\r\n    font: normal 0.94em Arial, Helvetica, Verdana, sans-serif;\r\n    color: #474b4f;\r\n    line-height: 1.33em;\r\n    padding: 0;\r\n    margin: 0;\r\n    text-align: center;\r\n    margin-top: 45px;\r\n}\r\n\r\n/* LAYOUT */\r\n#page {\r\n    width: 942px;\r\n    text-align: left;\r\n    border: 1px solid #9EA3AC;\r\n    margin: 15px auto;\r\n    padding: 1px;\r\n    background: #FFFFFF;\r\n    clear: both;\r\n}\r\n\r\n#header {\r\n    position: relative;\r\n    color: #FFFFFF;\r\n    font: normal 1.20em Georgia, "Times New Roman", Times, serif;\r\n    height: 110px;\r\n    background: url(/images/bg-header.png)\r\n}\r\n\r\n#main {\r\n    margin: 15px 0px 30px;\r\n    padding: 50px 30px 0 30px;\r\n}\r\n\r\n#startpage #main {\r\n    margin: 0 0px 30px;\r\n    padding: 0;\r\n}\r\n\r\n#content {\r\n    float: left;\r\n    width: 577px;\r\n    padding: 0 0 30px 0;\r\n}\r\n\r\n#sidebar {\r\n    float: right;\r\n    width: 275px;\r\n    padding: 23px 0 30px 0;\r\n    margin-top: 41px;\r\n    border-top: 1px solid #dfe0e1;\r\n    background: url(/images/bg-rightcol.gif) repeat-x left top;\r\n}\r\n\r\n#footer {\r\n    padding: 30px 30px 30px 30px;\r\n    background: #dfe0e1;\r\n    width: 882px;\r\n}\r\n\r\n.clearfix:after {\r\n    clear: both;\r\n    content: ".";\r\n    display: block;\r\n    height: 0;\r\n    line-height: 0;\r\n    visibility: hidden;\r\n}\r\n\r\n/* GENERAL*/\r\nh1 {\r\n    font: normal 1.8em Georgia, "Times New Roman", Times, serif;\r\n    margin: 0 0 20px 0;\r\n}\r\n\r\n#content h1 {\r\n    border-bottom: 1px solid #dfe0e1;\r\n    padding: 0 0 10px 0;\r\n}\r\n\r\nh2 {\r\n    font: normal 1.33em Georgia, "Times New Roman", Times, serif;\r\n    margin: 0 0 10px 0;\r\n}\r\n\r\nh3 {\r\n    font: normal 1.07em Georgia, "Times New Roman", Times, serif;\r\n    margin: 0 0 10px 0;\r\n}\r\n\r\nh3 a {\r\n    color: #474b4f;\r\n    margin: 0px;\r\n}\r\n\r\nh3 a:hover {\r\n    color: #474b4f;\r\n    text-decoration: underline;\r\n}\r\n\r\na {\r\n    color: #0c6cc6;\r\n    text-decoration: none;\r\n}\r\n\r\na:hover {\r\n    color: #0c6cc6;\r\n    text-decoration: underline;\r\n}\r\n\r\na[href $=''.pdf''] { \r\n   padding-left: 20px;\r\n   background: transparent url(/images/pdficon_small.gif) no-repeat center left;\r\n}\r\n\r\np {\r\n    margin: 0px 0px 15px 0;\r\n}\r\n\r\nul {\r\n    padding: 0;\r\n    margin: 0;\r\n    list-style: none;\r\n}\r\n\r\nli {\r\n    padding: 0;\r\n    margin: 0;\r\n    list-style: none;\r\n}\r\n\r\n#content ul, #content ol{\r\n	   margin: 0 0 0 25px;\r\n}\r\n\r\n#content ul li{\r\n   padding: 0 0 0 0;\r\n   margin: 0 0 8px 0;\r\n   list-style: disc;\r\n}\r\n\r\n#content ol li{\r\n   padding: 0 0 0 0;\r\n   margin: 0 0 8px 0;\r\n  list-style: decimal;\r\n}\r\n\r\n#content table tr td{\r\n  padding-right: 20px;\r\n  vertical-align: top;\r\n}\r\n\r\n#content img {\r\n    margin-bottom: 15px;\r\n    border: 0px;\r\n}\r\n\r\n#content img.leftaligned {\r\n    margin: 0 10px 15px 0;\r\n}\r\n\r\n#content img.rightaligned {\r\n    margin: 0 0 15px 10px;\r\n}\r\n\r\n/* NAVIGATIONS */\r\nul#mainmenu {\r\n    float: right;\r\n    display: block;\r\n    margin: 65px 0 0 0;\r\n    padding: 0;\r\n}\r\n\r\nul#mainmenu li {\r\n    float: left;\r\n    padding: 0 30px 0 0;\r\n}\r\n\r\nul#mainmenu li a {\r\n    float: left;\r\n    display: block;\r\n    color: #fff;\r\n    font-weight: bold;\r\n    text-decoration: none;\r\n}\r\n\r\nul#mainmenu li a:hover {\r\n    text-decoration: underline;\r\n}\r\n\r\nul#mainmenu li.selected a {\r\n    color: #ffc600;\r\n}\r\n\r\n/* SUB MENU */\r\nul#submenu {\r\n    display: block;\r\n    margin: 0;\r\n    padding: 0 15px 50px 15px;\r\n}\r\n\r\nul#submenu li {\r\n    padding: 0 30px 0 13px;\r\n    margin-bottom: 10px;\r\n    background: url(/images/arrow.gif) no-repeat 0 5px;\r\n}\r\n\r\nul#submenu li a {\r\n    display: block;\r\n    text-decoration: none;\r\n}\r\n\r\nul#submenu li a:hover {\r\n    text-decoration: underline;\r\n}\r\n\r\nul#submenu li.selected a {\r\n    color: #333333;\r\n}\r\n\r\n/* Side bar*/\r\n#sidebar h1 {\r\n    padding: 0 15px 0 15px;\r\n    font-size: 1.33em;\r\n}\r\n\r\n/* HEADER */\r\n.logo {\r\n    position: absolute;\r\n	top: -40px;\r\n	left: 5px;\r\n	background:url(/images/logo.png) no-repeat left top;\r\n	display: block;\r\n	width: 202px;\r\n	height: 190px;\r\n}\r\n\r\n.logo span {\r\n    display: none;\r\n}\r\n\r\n/* FOOTER */\r\n.column ul li {\r\n    font-weight: bolf;\r\n}\r\n\r\n.column ul li {\r\n    font-weight: bolf;\r\n}\r\n\r\n.column ul li span {\r\n    color: #474b4f;\r\n    font-weight: normal;\r\n}\r\n\r\n.column {\r\n    float: left;\r\n    width: 273px;\r\n    margin: 0 30px 0 0;\r\n}\r\n\r\n.column li, .column p {\r\n    font-size: 0.80em;\r\n    line-height: 1.33em;\r\n}\r\n\r\n.no-margin {\r\n    margin: 0;\r\n}\r\n\r\n/* START PAGE*/\r\n#intro {\r\n    height: 310px;\r\n    background: url(/images/intro-about-uva.jpg);\r\n    padding: 0 0 0 30px;\r\n    margin-bottom: 20px;\r\n}\r\n\r\n#intro p {\r\n    position: relative;\r\n    top: 120px;\r\n    font: normal 1.33em Georgia, "Times New Roman", Times, serif;\r\n    color: #fff;\r\n    background: #474b4f;\r\n    width: 410px;\r\n    padding: 20px 20px 20px 20px;\r\n    border: 1px solid #9c9993;\r\n}\r\n\r\n#doglist-wrapper {\r\n    padding: 0 0 0 30px;\r\n}\r\n\r\n#doglist-wrapper li {\r\n    float: left;\r\n    margin: 0 26px 0 0;\r\n    vertical-align: bottom;\r\n}\r\n\r\n#doglist-wrapper li a {\r\n    font-size: 0.88em;\r\n}\r\n\r\n#doglist-wrapper p {\r\n    margin: 0px 0px 25px 0;\r\n}\r\n\r\n#doglist-wrapper img {\r\n    border: none;\r\n}\r\n\r\n/* images*/\r\n.aligncenter {\r\n    display: block;\r\n    margin: 0 auto 20px auto;\r\n}\r\n\r\n.alignright {\r\n    float: right;\r\n    margin: 0 0 20px 20px;\r\n}\r\n\r\n.alignleft {\r\n    float: left;\r\n    margin: 0 20px 20px 0;\r\n}\r\n\r\n/* TEXT PAGE, LISPAGE */\r\n#main-text {\r\n    padding: 20px 0px 0px 0px;\r\n}\r\n\r\n.entry {\r\n    margin: 0 0 20px 0;\r\n    border-bottom: 1px solid #dfe0e1;\r\n    padding: 0 0 10px 0;\r\n}\r\n\r\n.entry img {\r\n    margin-top: 3px;\r\n}\r\n\r\n.posted {\r\n    color: #918C7E;\r\n    font-family: Arial, helvetica, verdana, sans-serif;\r\n    font-size: 0.8em;\r\n    margin: 0 0 15px 0;\r\n    padding: 0;\r\n}\r\n\r\n.posted span {\r\n    padding: 0 9px;\r\n}\r\n\r\n#formwrapper {\r\n    border: 1px solid #e8eaec;\r\n    background: #f9f9f9;\r\n    padding: 15px;\r\n    margin: 0 0 30px 0;\r\n}\r\n\r\n#formwrapper select {\r\n    width: 150px;\r\n}\r\n\r\n.submitbutton {\r\n    background: #eb872f;\r\n    border: 1px solid #eb872f;\r\n    color: #fff;\r\n    font-weight: bold;\r\n}\r\n\r\n/*---STYLES---*/\r\n.box {\r\n    padding: 15px;\r\n    border: 1px solid #e8eaec;\r\n    background: #f9f9f9;\r\n    margin-bottom: 20px;\r\n}\r\n\r\n.box h3 {\r\n    font-size: 1em;\r\n    font-weight: bold;\r\n    margin-bottom: 8px;\r\n}\r\n\r\n.box p {\r\n    font-size: 0.88em;\r\n}\r\n\r\n.box input {\r\n    margin-top: 5px;\r\n}\r\n\r\n.box input.email {\r\n    font-size: 10px;\r\n    padding: 3px;\r\n    color: #a29e96;\r\n    width: 140px;\r\n}\r\n\r\n.box input.subscribe {\r\n    width: 70px;\r\n    margin-left: 5px;\r\n    color: #232323;\r\n}\r\n\r\n.box ul {\r\n    margin-left: 20px;\r\n}\r\n\r\n.hidden {\r\n    display: none;\r\n}\r\n\r\n.clear {\r\n    clear: both;\r\n}', 18),
(34, 'extended', '', '', 18),
(35, 'body', 'Textile', 'h1. El Equipo\r\n\r\n<r:assets:image title="Team" />\r\n\r\nh3. El Equipo de U.V.A \r\n\r\n*Cristina Braga* la presidenta y *Regina Reinecke* la secretarÃ­a. Ellos dedican todo su tiempo en U.V.A a luchar por los derechos de los animales y reducir el sufrimento de los mismos. "AquÃ­ puedes leer sus historias":/acerca-de/regina-y-cristina\r\n\r\n*Claudia Hernandez* es la Vicepresidenta de la Entidad, es una de las Voluntarias mas antiguas, se inicio en 1999. Siempre se dedico sobre todo a dar en adopciÃ³n perros adultos y se encarga ademÃ¡s de recoger animales enfermos en la VÃ­a Publica. Asiste todos  los domingos al Puerto de Frutos.\r\n\r\n*Lita* Concurre al Centro de Zoonosis desde el aÃ±o 2003, ella es quien realiza la limpieza, y se encarga de la alimentacion de los animales que se encuentran en guarda en los caniles.\r\nConcurre de lunes a viernes y controla la parte sanitaria de los mismos.\r\n\r\n*Silvia Romitelli* Voluntaria desde hace 2 aÃ±os, concurre los dÃ­as domingos a la carpa para dar en adopciÃ³n perros y gatos, y ademÃ¡s los sÃ¡bados va al Centro de Zoonosis a colaborar.\r\n\r\n*Ana MarÃ­a Ferrando* Voluntaria que ayuda en el traslado de los animales, asiste los dÃ­as SÃ¡bados al Puerto, y tiene en guarda en su domicilio a muchos cachorros enfermos hasta su recuperaciÃ³n. Realiza campaÃ±as de castraciÃ³n y vacunaciÃ³n en su Barrio.\r\n\r\n*Maricarmen Gonzalez* Voluntaria que ayuda junto a Ana a realizar todas las tareas en el Barrio y tambiÃ©n asiste al Puerto los dÃ­as SÃ¡bados.\r\n\r\n*MarÃ­a* Voluntaria que ingresa hace 3 aÃ±os al Centro de Zoonosis y realiza tareas los sÃ¡bados y domingos y el tratamiento de los animales en guarda.\r\n\r\n*Carolina Sheafer* Concurre los domingos a Zoonosis para realizas las tareas junto a MarÃ­a\r\n\r\n*Miriam*  los dÃ­as jueves a la maÃ±ana va a Zoonosis apoyando a Lita en las tareas.\r\n\r\n*Nelly Rocha*  Voluntaria los dÃ­as sÃ¡bados, organiza campaÃ±as de castracion en su Barrio\r\n\r\n*Elizabeth* concurre los dÃ­as lunes.\r\n\r\nh3. Ademas agradecemos mucho la colaboracion en diferentes tareas de: \r\n\r\n*Alfonzo, Sabrina, Camila, Victoria, Lucia, Jorge, Marioly, Clarisa Liliana, Cristina, Marta, Sandra,Virginia, Gabriela, Maria Engenia, Gabriel, Miguel y Dante*\r\n\r\n', 19),
(37, 'body', 'Textile', 'h1. Historia\r\n\r\nUnidos por la Vida Animal, se forma con un grupo de habitantes y contribuyentes de la Localidad de Tigre en el aÃ±o 1999, que se une ante las matanzas ocurridas dentro de el Centro de Zoonosis. Este grupo se reune con el Intendente y le hacen una propuesta diferente, la de empezar a castrar, vacunar y desparasitar para poder dar en adopciÃ³n dichos animales. Este grupo formado por mujeres y hombres de esta Ciudad se distribuyeron las tareas, de lunes a domingos, o sea los 365 dÃ­as del aÃ±o. ConsistiÃ³, en alimentarlos, mantener la higiene del lugar y sacarlos a pasear. El Profesional Veterinario, comenzo a castrar 30 animales por dÃ­a, contando con la ayuda de U.V.A que colaboraba llevando los animales preparÃ¡ndoles para dicha operaciÃ³n y su posterior recuperaciÃ³n para luego dar en adopciÃ³n. U.V.A modifico el lugar ya que se inundaba y por ello los animales morÃ­an ahogandose en sus jaulas.\r\n\r\nLos perros ya no estaban en jaulas de 2 Ã— 2, si no que se construyeron caniles con patios donde podÃ­an moverse, caminar y correr, En invierno se colocaron estufas con interruptores y todo esto fue realizado por la AsociaciÃ³n. Cuando las autoridades por el aÃ±o 2006 deciden hacer un nuevo Zoonosis, U.V.A presenta por iniciativa de una Voluntaria, un plano de instalaciones traÃ­do de E.E.U.U y dicho plano es aceptado y adaptado al lugar. La construcciÃ³n se termina en el aÃ±o 2007 y se realiza la mudanza con los animales, U.V.A habÃ­a cumplido otra etapa. Se habÃ­an cambiado las instalaciones y se podÃ­an ahora realizar mas tareas aun, en beneficio de los animales! HabÃ­a que empezar con campaÃ±as de esterilizaciÃ³n masivas y sostenidas, para ello se necesitan mas Veterinarios. La AsociaciÃ³n habla con las Autoridades Municipales sobre la necesidad de aumentar las esterilizaciones, mayor cantidad de consultas y vacunaciÃ³n para prevencion de enfermedades.\r\n\r\n \r\nh3. Como ayuda U.V.A a los Veterinarios y al Municipio y a la PoblaciÃ³n de Tigre?  \r\n\r\nComo la demanda es cada ves mayor, hoy el Centro de Zoonosis cuenta con 5 Profesionales Municipales y un Profesional contratado por la Cooperadora. Tigre es un Municipio de 330.000 habitantes que tiene un perro cada 3 habitantes.  Para poder mermar dicha cantidad, los Voluntarios organizan en los diferentes Barrios campaÃ±as de esterilizaciÃ³n que realiza gratuitamente el Municipio con sus Profesionales. U.V.A dona hoy dia vacunas quintuples y medicacion que se aplica dentro del Centro de Zoonosis La AsociaciÃ³n, junto con el Municipio trabajan dÃ­a a dÃ­a para poder mejorar el Bienestar animal que conlleva al Bienestar Humano.\r\n\r\n\r\n<r:assets:image id="57" size="original" />', 20),
(39, 'body', 'Textile', 'h1. Como ayudar?\r\n\r\n\r\n<r:assets:image id="60" size="original" />\r\n\r\n\r\nh3. Te gustarÃ­a ayudar a U.V.A y los perros viviendo en el zoonozis? Hay muchas formas en las que lo puedes hacer.\r\n\r\nh3. *Donaciones*\r\n* Comida para perros\r\n* Collares y corea de perros\r\n* Mantas para que los perros se puedan dormir encima. \r\n* Jaulas de perros y gatos para cuando vamos de rescate y para tener mÃ¡s espacio para los animales en el Puerto de Frutos\r\n* Ayuda para comprar vacunas y medicinas\r\n* Juguetes para perros y gatos. En los caniles necesitan mÃ¡s diversiÃ³n\r\n* Un ordenador de escritorio o uno portÃ¡til. Tenemos un muy viejo que no funciona bien\r\n* Un camera digital para hacer fotos para la pagina Web. La fotÃ³grafa ya ha vuelto a Suecia\r\n* Ayuda para imprimir mas panfletos para dar al publico\r\n* Ayuda para pagar todas la llamadas que U.V.A. hace al publico\r\n* voluntarios con voluntad\r\n\r\nSi quieres donar algo de lo que hemos mencionado te puede acercar al Zoonosis de Tigre lunes a viernes de 8 a 14hs o SÃ¡bado y Domingo a Puerto de Frutos, Tigre. Tambien puedes mandar por correo a: \r\n\r\n_Zoonosis de Tigre\r\nU.V.A\r\nPueyrredÃ³n 211\r\nBarrio San Jose, Tigre\r\nArgentina_\r\n\r\nh3. *Pasear los perros*\r\nNos da lastima que los perros tengan que estar en los caniles todo el dÃ­a. Desean mucho salir a caminar, oler, jugar y portarse como un perro. TambiÃ©n les hacen falta cariÃ±o y caricias. Si tienes tiempo e interÃ©s en sacar y mimar un perro antes que se de en adopcion contactate con Cristina 15 35 75 86 83\r\n\r\n\r\n', 21),
(40, 'extended', '', '', 21),
(43, 'body', 'Textile', 'h1. Noticias\r\n\r\n<r:archive:children:each order="desc">\r\n<div class="entry">\r\n  <h2><r:link /></h2>\r\n    <r:content/>\r\n    <div class="posted">\r\n      Publicado por <r:author /> el <r:date format="%d/%m/%Y" /><em> | </em><r:link>Permalink</r:link>    \r\n    </div>\r\n  <r:content part="summary" />\r\n</div>\r\n</r:archive:children:each>\r\n\r\n', 23),
(44, 'extended', '', '', 23),
(45, 'body', 'Textile', '<r:assets:image id="33" class="alignleft" width="200"/>\r\n\r\nUn lunes por la maÃ±ana, caminando muy lentamente y con la cabeza muy baja, conocÃ­ a Gino, un perro rottwailer de aproximadamente 2 aÃ±os de edad VolvÃ­ al lugar para descubrir porque se movilizaba asÃ­ y descubrÃ­ que su cara estaba totalmente desfigurada del lado izquierdo y llena de orificios y gusanos. No podÃ­a creer lo que veÃ­a, comencÃ© a llamarlo tratando de que me siguiera hasta mi casa (que quedaba cerca ), pero el prefiriÃ³ entrar a un negocio de venta de lanchas y se acostÃ³ detrÃ¡s de un bote. Le pedÃ­ por favor a la dueÃ±a del Comercio que le permitiera quedarse allÃ­ unos minutos y llame urgente al Jefe de Zoonosis de Tigre para que me enviara el mÃ³vil, no habÃ­an pasado 20 minutos que llego el mÃ³vil, y el, muy sumiso se dejo subir al mismo y lo transladamos a Zoonosis. Inmediatamente fue atendido por los Profesionales Veterinarios, y a partir de allÃ­ empezÃ³ la gran recuperaciÃ³n de Gino. Hoy dÃ­a se encuentra en los caniles a cargo de U.V.A. y tenemos muchas esperanzas de que lo podremos dar en adopciÃ³n a una buena familia que lo ame como se merece. El tiene buen carÃ¡cter, ya esta castrado y vacunado, y pronto podrÃ¡ ser un perro feliz en un nuevo hogar.', 24),
(46, 'extended', '', '', 24),
(47, 'body', '', '#lightbox{	position: absolute;	left: 0; width: 100%; z-index: 100; text-align: center; line-height: 0;}\r\n#lightbox img{ width: auto; height: auto;}\r\n#lightbox a img{ border: none; }\r\n\r\n#outerImageContainer{ position: relative; background-color: #fff; width: 250px; height: 250px; margin: 0 auto; }\r\n#imageContainer{ padding: 10px; }\r\n\r\n#loading{ position: absolute; top: 40%; left: 0%; height: 25%; width: 100%; text-align: center; line-height: 0; }\r\n#hoverNav{ position: absolute; top: 0; left: 0; height: 100%; width: 100%; z-index: 10; }\r\n#imageContainer>#hoverNav{ left: 0;}\r\n#hoverNav a{ outline: none;}\r\n\r\n#prevLink, #nextLink{ width: 49%; height: 100%; background-image: url(data:image/gif;base64,AAAA); /* Trick IE into showing hover */ display: block; }\r\n#prevLink { left: 0; float: left;}\r\n#nextLink { right: 0; float: right;}\r\n#prevLink:hover, #prevLink:visited:hover { background: url(/images/prevlabel.gif) left 15% no-repeat; }\r\n#nextLink:hover, #nextLink:visited:hover { background: url(/images/nextlabel.gif) right 15% no-repeat; }\r\n\r\n#imageDataContainer{ font: 10px Verdana, Helvetica, sans-serif; background-color: #fff; margin: 0 auto; line-height: 1.4em; overflow: auto; width: 100%	; }\r\n\r\n#imageData{	padding:0 10px; color: #666; }\r\n#imageData #imageDetails{ width: 70%; float: left; text-align: left; }	\r\n#imageData #caption{ font-weight: bold;	}\r\n#imageData #numberDisplay{ display: block; clear: left; padding-bottom: 1.0em;	}			\r\n#imageData #bottomNavClose{ width: 66px; float: right;  padding-bottom: 0.7em; outline: none;}	 	\r\n\r\n#overlay{ position: absolute; top: 0; left: 0; z-index: 90; width: 100%; height: 500px; background-color: #000; }\r\n', 25),
(48, 'extended', '', '', 25),
(49, 'body', '', '<r:assets:image id="29" size="original" width="300" class="alignright"/> \r\n<r:assets:image id="30" size="original" width="300" class="alignright"/> \r\n<r:assets:image id="31" size="original" width="300" class="alignright"/>\r\n\r\nLa historia del Negro es bastante particular, el es lo que nosotras llamamos un perro comunitario,  no tenia un lugar fijo donde vivir, pero si una buena amiga (la Sra Lucia) que lo curaba y le daba de comer todos los dÃ­as  cuando Negro la visitaba en la puerta de su casa. Pero un dÃ­a, el Negro cruzo una avenida y lo atropello un auto. Lucia llamo urgente a U.V.A y lo llevo a Zoonosis donde lo atendieron y lo enyesaron, ya que que tenia fracturada una de sus patas traseras.\r\n\r\nEl negro se recupero y quedo en los caniles a cargo de U.V.A hasta que un domingo en el Puerto de Frutos se dio en adopciÃ³n a una familia de Maschwitz.EstÃ¡bamos todos felices! pero duro poco, porque el negro comenzo a escaparse una y otra ves, hasta que su nueva familia decidiÃ³ devolverlo nuevamente a U.V.A\r\n\r\nLa cosa empeoraba ahora tambiÃ©n increiblemente saltaba del canil de Zoonosis para escaparse, y hubo que colocarlo en uno mas chico y mas cerrado. La situacion era muy dificil para el y para nosotras. Pero como siempre hay almas buenas. Consultamos a la Comisario del deparatamento de Islas, Virginia, quien ama y ayuda mucho a los animales , le contamos el caso y ella encontro el lugar justo,Â¡al fin el Negro podia ser libre como queria sin correr el riesgo de los autos!\r\nEn el Parana Mini a hora y media de lancha de Tigre Centro se encuentra un destacamento de policia donde podian alojarlo, y alli fuimos. Los Veterinarios tranquilizaron al Negro y junto a los Comisarios Gomez y Virgina, mas el timonel, nos dirijimos hacia alla. Fue muy emocionante ver la alegria del Negro, lo habiamos logrado una ves mas, otro animal iba a ser feliz! Y siempre estaremos agradecidas a estos buenos Policias\r\n\r\n \r\n', 26),
(50, 'extended', '', '', 26),
(51, 'body', '', '<r:assets:image id="32" size="original" width="300" class="aligncenter" />\r\n\r\nLa hermana Pauline Queen llego a la Argentina de la mano de el Dr Romero. Ella vino entre otras cosas a participar del Congreso Argentino y Latinoamericano â€œLos Animales y su impacto en la Saludâ€.\r\nLa hermana quien es una ex adicta, nacida en USA viviÃ³ en la calle y fue brutalmente violada quedando embarazada. A partir de ello adopta un perro para que la ayude a defenderse de los peligros que la acechaban. Comienza asÃ­ su conocimiento sobre adiestramiento de caninos y durante el periodo que pasa en prisiÃ³n crea un Programa de RehabilitaciÃ³n de presos a los que enseÃ±a a adiestrar perros de servicio para discapacitados, salvando asÃ­ a algunos perros que iban a morir en la " perreras " de E.E.U.U, da a los presos una posterior salida laborar y por supuesto colabora con los discapacitados que tanto necesitan de los animales para su supervivencia.\r\nU.V.A y la Municipalidad de Tigre realiza un aporte para colaborar en la rerealizaciÃ³n; de dicho evento realizado en Septienbre del 2009, y participa concurriendo a dicho Congreso donde mantiene agradables charlas con la Hermana. Deseamos que nuestro Pais tambiÃ©n instale una programa similar.\r\n \r\n\r\n', 27),
(52, 'extended', '', '', 27),
(59, 'body', 'Textile', 'h1. Finales Felices\r\n\r\n<r:children:each order="desc">\r\n<div class="entry">\r\n  <h2><r:link /></h2>\r\n    <r:content/>\r\n    <div class="posted">\r\n      Publicado por <r:author /> el <r:date format="%d/%m/%Y" /><em> | </em><r:link>Permalink</r:link>    \r\n    </div>\r\n  <r:content part="summary" />\r\n</div>\r\n</r:children:each>', 31),
(61, 'body', '', 'h1. Success Stories\r\n\r\n<r:archive:children:each order="desc">\r\n<div class="entry">\r\n  <h2><r:link /></h2>\r\n    <r:content/>\r\n    <div class="posted">\r\n      Publicado por <r:author /> el <r:date format="%d/%m/%Y" /><em> | </em><r:link>Permalink</r:link>    \r\n    </div>\r\n  <r:content part="summary" />\r\n</div>\r\n</r:archive:children:each>', 32),
(62, 'extended', '', '', 32),
(63, 'body', 'Textile', 'Mi historia:\r\nLos que serÃ¬an mis padres iban terminando su recorrida por el Puerto de Frutos en Tigre, cuando pasaron por un stand donde estabamos nosotros a la espera de ser adoptados. Muchos chicos tratando de convencer a sus padres de que nos lleven y a su vez los padres tratando de que ellos sean concientes de que nos tendrÃ¬an que cuidar, algunos grandes con cara de ... que lindos! y las seÃ±oras que nos cuidaban tratando de explicar de donde venÃ¬amos, que estabamos desparasitados etc etc.. Jorge (ahora mi papÃ ) tironeaba de la manga de Mausi (mi mamÃ ) mientras le decia Dale....llevemos uno.... tanto hizo que la convenciÃ². el problema era cual de nosotros serÃ¬a... Estaba Lorenzo (un perro por demÃ s simpatico y divertido, cariÃ±oso, que estaba a upa de una de nuestras cuidadoras) y claro... Â¿era Ã¨l?  Pero, no, yo dormÃ¬a sin enterarme de lo que pasaba a mi alrededor, y supongo que tratando de digerir todo lo que habÃ¬a comido (mi panza era un globo) y entonces ella dijo - Si llevamos uno, que sea ESE, seÃ±alÃ ndome.\r\nantes de salir del puerto ya tenia collar, y en el remise me pusieron nombre JACK. Cuando lleguÃª a mi nueva casa, me di cuenta que tambien estaba Ticky (el perro grande), dos cobayos (PenÃ¨lope y Chanchi) y luego vino Freddy el gato con el que mÃ s juego.\r\nLos primeros dÃ¬as tenia mucho miedo y estaba siempre sobre la falda de alguien, no podÃ¬a dormir y todo me asustaba.\r\nAhora les puedo decir que tengo ocho meses y UNA FAMILIA.\r\n                                                                besitos deste JACK\r\n\r\n<r:assets:image id="34" width="260"/> <r:assets:image id="35" width="260"/> \r\n<r:assets:image id="36" width="260"/> <r:assets:image id="37" width="260"/> \r\n\r\n', 33),
(64, 'extended', '', '', 33),
(65, 'sidebar', '', '<r:snippet name="adoption_sidebar" />', 31),
(66, 'body', 'Textile', 'h1. Sponsors\r\n\r\n<table>\r\n<tr>\r\n   <td><r:assets:image id="51" width="150"/></td>\r\n   <td><r:assets:image id="54" width="150"/></td>\r\n</tr>\r\n<tr>\r\n   <td><r:assets:image id="53" width="150"/></td>\r\n   <td><r:assets:image id="55" width="150"/></td>\r\n</tr>\r\n<tr>\r\n   <td><r:assets:image id="52" width="150"/></td>\r\n   <td></td>\r\n</tr>\r\n</table>\r\n', 34),
(68, 'body', 'Textile', 'h1. Adopta un animal de compaÃ±Ã­a abandonado\r\n\r\nLa adopciÃ³n responsable se produce, entre otros factores, cuando la entrega de animales de compaÃ±Ã­a abandonados a individuos y/o familias se realiza en tÃ©rminos como los que siguen:\r\n\r\n* el animal es entregado debidamente en condiciones aceptables de salud (vacunado y desparasitado) y esterilizado (para no contribuir a la superpoblaciÃ³n y consecuente riesgo de abandono)\r\n* el animal es adoptado mediante la formalizaciÃ³n de un contrato que recoge los datos de la persona que se harÃ¡ responsable de Ã©l hasta su fallecimiento, el derecho al seguimiento por parte del U.V.A y el compromiso de esterilizaciÃ³n por parte del nuevo propietario en caso de que el animal no lo estuviera.\r\n\r\nSe puede realizar adoptaciones en dos lugares:\r\n# Lunes a Viernes 8 a 14hs en Zoonosis de Tigre\r\n# SÃ¡bado y Domingo 12 a 17hs en el Puerto de Frutos, Tigre\r\n\r\nAdoptar un perro o gato es mucha responsabilidad y para saber que estas preparado para ello por favor lee esta informaciÃ³n antes de hacerlo.\r\n\r\n<r:assets:link id="48"/>\r\n<r:assets:link id="47"/>\r\n<r:assets:link id="46"/>', 35),
(69, 'sidebar', '', '<r:snippet name="adoption_sidebar" />', 35),
(70, 'body', 'Textile', 'h1. Cristina y Regina\r\n\r\n<r:assets:image id="56" size="original" />\r\n\r\nh3. Cristina Braga, Presidenta de U.V.A\r\n\r\nToda mi vida me importaron los animales y el Medio Ambiente (tome conciencia de esto a los 8 aÃ±os). Vivo en Gral Pacheco Partido de Tigre desde hace 30 aÃ±os con mi esposo, hijos y tres perros y un gato. Debido a la gran cantidad de animales en situaciÃ³n de calle y en mal estado sanitario fue que empezamos a hacer una red con personas a las que los animales les importan. Para ello en el aÃ±o 2000 junto a otra voluntaria ingresamos al Centro de Zoonosis trabajando en el lugar 12 horas diarias ya que el lugar estaba muy deteriorado en sus instalaciones, habÃ­a falta de alimento, escasa higiene y los animales estaban en muy mal estado sanitario, fue necesario poner conocimiento,dinero personal y mucho mucho trabajo. En el 2004 se constituyo formalmente Unidos por la Vida Animal U.V.A , en la cual paso a ocupar el cargo de Vice Presidenta, de acuerdo al Estatuto se renuevan las Autoridades cada 4 aÃ±os, asi es que en el aÃ±o 2008 la Comision me elige como Presidenta de la misma Comenzo un cambio a partir del 2008 para mi y para U.V.A.\r\n\r\nh3. Regina Reinecke, SecretarÃ­a de U.V.A\r\n\r\nCrecÃ­ en una familia donde siempre se amo y ayudo a los animales y por supuesto se me enseÃ±o a respetarlos y cuidarlos, pero la vida me fue acercando casi sin darme cuenta cada ves mas al Proteccionismo. En el aÃ±o 2003 cuando me mudo a la Ciudad de Ushuaia, Tierra del Fuego es que asumo el rol, tomo la bandera, y me prometo a mi misma y a los animales que estaban matando allÃ­ por miles, que darÃ­a la vida para evitarlo. Y asÃ­ lo hice en una larga y terriblemente dolorosa tarea junto a la Entidad de allÃ­ y mi amiga del alma.\r\nEn el aÃ±o 2005 se declara a Tierra del Fuego Provincia no Eutanasica (ya no podrÃ­an matar impunemente mas) y me retirÃ© de allÃ­. ContinuÃ© viajando y aportando lo que podÃ­a hasta que llegue a Tigre (donde he vivido desde los 8 aÃ±os ) y allÃ­ U.V.A me necesitaba. Me nombran Secretaria en el 2008. Seria imposible contar todo lo que se ha hecho, el trabajo fue ENORME y los resultados POSITIVOS tambiÃ©n. Estoy muy feliz, la tarea en el Proteccionismo es muy dura pero justifica cada minuto de mi existencia.\r\n\r\n\r\n', 36),
(71, 'extended', '', '', 36),
(72, 'body', '', 'Adoptamos un gatito mi novio el dia 2 de Enero, para que veas como esta, la verdad ha cambiado mucho desde que lo trajimos, para bien por supuesto, esta super gordito y tiene el pelo hermoso. Ya esta desparasitado, y va por su segunda vacuna, estamos esperando que crezca un poquito mas para poder castrarlo. Ya hace un mes que esta en casa, se porta super bien, es muy social, jugueton y cariÃ±oso. Hasta fue de vacaciones y conocio el mar, le encanta andar en auto, lo llevamos a todos lados con nosotros.\r\n<r:assets:image id="44" class="alignleft" width="145" /> <r:assets:image id="45" width="260" /> \r\nGracias! Melisa y Federico', 37),
(73, 'extended', '', '', 37),
(74, 'body', '', '<r:assets:image id="38" class="alignleft" width="200"/>\r\nEsta  es otra pareja que decidiÃ³ adoptar un perrito en el Puerto de Frutos de Tigre ya que el suyo habÃ­a fallecido hace 2 meses a los 14 aÃ±os. Ellos son re bicheros y  estÃ¡n en contra de comprar animales QuerÃ­an darle una oportunidad de tener un hogar a un perrito tan bonito como este y asÃ­ lo hicieron.......Le decimos Gracias !!! a Silvia y Ariel  \r\n', 38),
(75, 'extended', '', '', 38),
(76, 'body', 'Textile', 'h1. Gracias \r\n\r\nQuiero dar las gracias al equipo que ha trabajado duro en su tiempo libre para ayudarme a realizar una pagina Web para U.V.A., su nuevo logo y panfleto. Es increÃ­ble que gente que nunca ha estado en Buenos Aires o desconoce el U.V.A haya donado su tiempo para ayudar a los animales que lo necesitan tanto. Con mucho amor Anna Martinez (la coordinadora, Suecia 2010)\r\n\r\nEl equipo: Hardy (Alemania), Fredrik A. (Suecia), Marielle (Suecia), Fredrik R. (Suecia), Gittan (Suecia), Bianca (USA) y Patricia (Argentina). \r\n\r\nh1. Gracias \r\n\r\nh3. 	Los hombres de la estacion\r\n\r\nRoberto y Juan son dos seres maravillosos! Ellos son padre e hijo y trabajan en el quiosco de diarios de la EstaciÃ³n de Tigre. Hacen muchÃ­simo por los animales desde hace aÃ±os. \r\nSu trabajo es silencioso, pero grande y eficaz, piden poco y dan mucho, ellos curan, llevan a castrar, alimentan y hasta dan en adopciÃ³n!\r\nSinceramente son un ejemplo para la sociedad, dan sin pedir nada a cambio, y los animales lo saben, por eso siempre estÃ¡n a su lado  moviÃ©ndo sus colas y sintiÃ©ndose a salvo bajo su protecciÃ³n. \r\n\r\n<r:assets:image id="62" width="280" />     <r:assets:image id="61" width="280" />', 39),
(77, 'body', '', 'El pasado 6 de Marzo adoptamos en tu stan una perrita, que mi hijo llamo Nana. Pasamos por la veterinaria y resulto que era mas chiquita: tenia 20 dias! Asi que nos pusimos a cuidarla y a alimentarla. Ese dia pesa 550 grs, y ahora ya paso los 700 grs. Ya la desparasitamos y seguimos con otro remedio, y se nota que esta bien, juguetona y alegre. Â¡Lastima que todavia, y supongo que por bastante tiempo, haga sus necesidades donde se le ocurra, a veces en el papel y otras donde sea!\r\nHoy hable por tel a zoonosis de Tigre para cuando le daremos la quintuple.\r\nGracias Fernando\r\n<r:assets:image id="63" width="260" />  <r:assets:image id="64" width="260" />', 40),
(78, 'extended', '', '', 40),
(83, 'no-map', '', '', 18),
(86, 'body', '', 'Hola\r\nSomos la familia Del Corro Raffetto y despues de una mudanza y muchas charlas decidimos agrandar al familia, nos decidimos y un 27 de febrero nos fuimos tempranito para el tigre, muy temprano porque mis dos hijos estaban muy ansiosos, a adoptar a una perrita.... Apenas la vimos en la jaulita, vimos su mirada y supimos que era ella...\r\nHoy DANA juega todo el dia con los nenes, con las ZAPATILLAS, con las MEDIAS, con los PELUCHES y bueno se nota que es feliz, tiene dos hermanitas peludas, gatitas las dos, que mucha atencion no le prestan porque ya son grandes, pero DANA igual las busca.\r\nQueremos agradecerles por la tarea que realizan, salvar, asistir , curar y tratar de buscar un hogar a estos animales. Sabemos que todo lo realizan con gran esfuerzo,  con mucha voluntad con mucho amor.....Gracias a ustedes muchos animalitos hoy tienen un hogar, como Dana. \r\n\r\nCordialmente.\r\nKiara, Lucio, Sergio y Karina\r\n<r:assets:image id="68" width="200"/> <r:assets:image id="67" width="200"/>\r\n\r\n\r\n', 44),
(87, 'extended', '', '', 44),
(88, 'body', '', 'La verdad, que la cachorrita es super divina. Quiero que los demas se animen tambien a adoptar estos cachorritos. Os comento le pusimos JULIETA.\r\nBesotes y gracias,\r\n<r:assets:image id="69" width="230"/> <r:assets:image id="70" width="200"/>', 45),
(89, 'extended', '', '', 45),
(90, 'body', '', '<r:assets:image id="78" class="alignleft" width="140" />\r\nHola UVA,\r\nles mando unas fotitos mias en la casa de Aldo.\r\nEn una estoy en la cama,en otra creo que me quieren pegar un baÃ±o por que hice pis en las sabanas y en la ultima con mi pelota .\r\n\r\nEspero ver mi foto en la Web.\r\n\r\nBesosssssssss....\r\n\r\nAldo\r\n\r\n<r:assets:image id="73" width="200" />  <r:assets:image id="72" width="200" />  ', 46),
(91, 'extended', '', '', 46),
(92, 'body', '', 'Hola!!, soy Rosario, la chica que adoptÃ³ a Julieta. Te cuento que ella esta super contenta!!. \r\nLe cambiamos el nombre, le pusimos Dominga, por el dia en que la adoptamos.\r\nElla esta super contenta y por suerte se lleva muy bien con juanjo, mi otro perro. Juegan mucho juntos y se divierten bastante. Esta muy mimosa, y da besos toooodo el dia. \r\nLa veo muy contentaaa!.\r\nPrimero que nada, queria agradecerte por confiar en nosotros para adoptar a Dominga, nos hizo muy felices a todos, incluyendo a Juanjo!. \r\nMuchisimas gracias por todo!!!\r\nSaludos!. Rosario.\r\n\r\n<r:assets:image id="76" width="230" />   <r:assets:image id="77" width="230" />', 47),
(93, 'extended', '', '', 47),
(94, 'body', '', 'Hola \r\n\r\nTe escribo para contarte acerca de mi y de Clara, soy Francisca, una chica chilena, que les adopto una perrita de un aÃ±o aprox. hace como 1 mes, bellÃ­sima, reciÃ©n operada, y nosotras nos emocionamos mucho aquel dÃ­a que la adoptÃ©.\r\nBueno igual te cuento que estamos felices, que es la mejor compaÃ±era que he tenido, te agradezco de corazÃ³n que me hayas ayudado a decidirme en esa elecciÃ³n, me diste fuerzas, me diste claridad, de ahÃ­ su nombre. Ya hemos tenido algunas dificultades en el camino pero las hemos superado, por ejemplo los dueÃ±os del apartamento que alquilaba me hicieron problemas, al final no querÃ­an mascotas en su apartamento y me pidieron que la regresara a la calle o que me fuera de allÃ­; la cosa es que nos fuimos, encontramos otro lugar aÃºn mejor, mÃ¡s econÃ³mico y donde estamos felices. \r\n\r\nEs muy bello lo que haces, linda!\r\n\r\nFrancisca y Clara.\r\n<r:assets:image id="79" width="200" /> <r:assets:image id="80" width="200" />', 48),
(95, 'extended', '', '', 48),
(96, 'body', '', '<r:assets:image id="81" class="alignleft" width="100" />\r\nHola, el sÃ¡bado 27 de febrero nos entregaron un cachorro de 3 meses, cafÃ©.\r\nQuerÃ­a contarle como se llama y como va creciendo.\r\nSu nombre es Guro. Ã‰l mismo se puso el nombre, estuvimos todo el dÃ­a tratando de ponerle nombre y ninguno nos convencÃ­a. Por la noche haciendole mimos para que se duerma se acostÃ³ sobre su lomo, estirando las patas traseras y recogiendo las delateras, las orejas totalmente extendidas. Le digo a mi familia... parece un canguro!!! todos asintieron y mi marido dice... can ya es asÃ­ que nombre es Guro.\r\nYa reconoce su nombre, orina en papel de diario, con la caca todoavÃ­a no logramos acostumbrarlo. El primer domingo vomitÃ³ y tuvo diarrea. Lo llevamos al veterinario y lo puso a dieta y le cambiamos luego el balanceado.\r\nLo volvimos a desparacitar y le dimos unas vacunas mÃ¡s.\r\nRealmente llenÃ³ nuestra casa de alegrÃ­a y locura... el miÃ©rcoles anterior se nos habÃ­a muerto nuestro perro Cual de 13 aÃ±os.\r\nLe adjunto fotos...\r\n\r\nMariana \r\n<r:assets:image id="82" width="200" /> <r:assets:image id="83" width="280" />', 49),
(97, 'extended', '', '', 49),
(98, 'body', '', 'Las castraciones fueron realizadas en el mes de mayo 2010 en la Empresa de automotores Volswagen que se encuentra en la Zona de Pacheco en Tigre.\r\nAlli habitan aproximadamente 40 perros establecidos (algunos desde desde hace aÃ±os). Esta empresa cuenta con muchisimos empleados y muchos de ellos aman a los animales, ellos les dan  alimento cariÃ±o y cuidados. La Empresa tomo la muy acertada decision de controlar la poblacion canina y felina a traves de las castraciones y hacer un control sanitario en beneficio de animales y humanos, todo esto se logra despues de una larga  entrevista con U.V.A donde se les explico y asesoro de como  debian proceder.  \r\n\r\n<r:assets:image id="84" width="280" />  <r:assets:image id="85" width="280" />\r\nAsi es que muy temprano un lunes estuvimos alli con nuestro  quirofano movil el Veterinario y 2 ayudantes y por supuesto  nosotras.Se castraron  y vacunaron 15 caninos y un felino y se coloco a cada uno de ellos pipetas para pulgas , garrapatas, demodeccia y piojos. La Empresa les coloco muy lindos collares a todos  ellos. U.V.A confecciono libretas sanitarias donde se colocara su foto y la descripcion de lo hecho a cada uno de los animales \r\n<r:assets:image id="86" width="280" />  <r:assets:image id="87" width="280" />\r\nEl resultado fue excelente, los animales se recuperaron muy bien ,y a la brevedad volveremos a completar el operative con los animales que faltan. Dios quiera que este sea un antecedente de muchas otras Empresas que en ves de deshacerse de los animales se comprometan como VWagen que ha dado un maravilloso ejemplo de crecimento y evolucion en esta tematica.\r\n <r:assets:image id="88" width="280" /> <r:assets:image id="89" width="280" /> <r:assets:image id="90" width="180" /> <r:assets:image id="91" width="320" />', 50),
(99, 'extended', '', '', 50);

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) character set latin1 NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
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

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL auto_increment,
  `session_id` varchar(255) character set latin1 default NULL,
  `data` text character set latin1,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sessions`
--


-- --------------------------------------------------------

--
-- Table structure for table `snippets`
--

CREATE TABLE IF NOT EXISTS `snippets` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) character set latin1 NOT NULL default '',
  `filter_id` varchar(25) character set latin1 default NULL,
  `content` text character set latin1,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `lock_version` int(11) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `snippets`
--

INSERT INTO `snippets` (`id`, `name`, `filter_id`, `content`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `lock_version`) VALUES
(1, 'header', '', '<div id="header" class="clearfix">\r\n    <a href="/"class="logo"></a>\r\n    <r:snippet name="navigation" />\r\n</div>\r\n', '2008-12-24 01:08:44', '2010-03-20 13:51:48', 1, 1, 26),
(2, 'footer', '', '<div id="footer" class="clearfix">\r\n    <div class="column">\r\n        <h3>Noticias</h3>\r\n        <p>\r\n            <r:snippet name="news_links" />\r\n        </p>\r\n    </div>\r\n    <div class="column">\r\n        <h3>Visita</h3>\r\n        <p>\r\n            Zoonosis de Tigre\r\n            <br/>\r\n            PueyrredÃ³n 211\r\n	    <br/> \r\n	    Barrio San Jose, Tigre\r\n            <br/>\r\n            TelÃ©fono: 4512-4568\r\n        </p>\r\n    </div>\r\n    <div class="column no-margin">\r\n        <h3>Contactar</h3>\r\n        <p>\r\n            TelÃ©fono: 15 35 75 86 83 (Cristina) \r\n            <br/>     15 66 22 27 50 (Regina)\r\n            <br/>E-mail: <a href="mailto:info@uva-tigre.com.ar">info@uvanimal.com.ar</a>\r\n        </p>\r\n    </div>\r\n</div>', '2008-12-24 01:08:44', '2010-03-18 01:58:17', 1, 1, 19),
(3, 'navigation', '', '<ul id="mainmenu">\r\n  <r:navigation urls="Inicio: /">\r\n      <r:normal><li><a href="<r:url />"><r:title /></a></li></r:normal>\r\n      <r:here><li class="selected"><a href="<r:url />"><r:title /></a></li></r:here>\r\n      <r:selected><li><a href="<r:url />"><r:title /></a></li></r:selected>\r\n  </r:navigation>\r\n  <li <r:if_url matches="^.*dogs|^.*quieres-adoptar|^.*finales-felices">class="selected"</r:if_url>><a href="/dogs">AdÃ³ptame</a></li>\r\n  <r:navigation urls="Noticias: /noticias | Acerca de: /acerca-de">\r\n    <r:normal><li><a href="<r:url />"><r:title /></a></li></r:normal>\r\n    <r:here><li class="selected"><a href="<r:url />"><r:title /></a></li></r:here>\r\n    <r:selected><li class="selected"><a href="<r:url />"><r:title /></a></li></r:selected>\r\n  </r:navigation>\r\n</ul>    ', '2008-12-30 21:38:09', '2010-03-26 22:07:26', 1, 1, 28),
(5, 'rss', '', '<img src="http://spurrd.com/assets/147/rss.gif" />\n<h3>RSS</h3>\n<p>Get the <a href="/rss/">feed</a> for our latest news. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora.</p>\n', '2008-12-31 07:04:11', '2009-01-02 07:05:37', 1, NULL, 5),
(6, 'news_links', '', '<r:find url="/noticias">\r\n  <r:children:each order="desc" limit="4">\r\n    <r:date format="%d/%m/%Y" /> <r:link />\r\n    <br/>\r\n  </r:children:each>\r\n</r:find>\r\n', '2009-01-01 22:40:23', '2010-03-18 01:58:36', 1, 1, 26),
(7, 'sitemap', '', ' <r:children:each by="title" order="asc">\r\n   <r:unless_content part="no-map">\r\n     <url>\r\n       <loc>http://uvanimal.com.ar<r:url /></loc>\r\n     </url>\r\n     <r:if_children>\r\n        <r:snippet name="sitemap" />\r\n     </r:if_children>\r\n   </r:unless_content>\r\n </r:children:each>\r\n\r\n', '2009-01-01 23:51:52', '2010-04-20 13:17:01', 1, 1, 18),
(11, 'mission_statement', '', 'U.V.A realiza: Rescates de Animales en riesgo, recuperaciÃ³n de enfermos, castraciones, adopciones, promueve la Tenencia Responsable y presenta proyectos a nivel Municipal y Nacional.', '2010-03-02 00:50:22', '2010-03-02 00:50:22', 1, NULL, 0),
(12, 'adoption_sidebar', '', '<h1>AdopciÃ³n</h1>\r\n<ul id="submenu">\r\n    <li <r:if_url matches="^.*dogs">class="selected"</r:if_url>>\r\n        <a href="/dogs">AdÃ³ptame</a>\r\n    </li>\r\n    <li <r:if_url matches="^.*quieres-adoptar">class="selected"</r:if_url>>\r\n        <a href="/quieres-adoptar">Quieres Adoptar</a>\r\n    </li>\r\n    <li <r:if_url matches="^.*finales-felices">class="selected"</r:if_url>>\r\n        <a href="/finales-felices">Finales Felices</a>\r\n    </li>\r\n</ul>\r\n<div class="box">\r\n    <h3>Â¿Preguntas?</h3>\r\n    <p>\r\n        <strong>TelÃ©fono:</strong>\r\n   <br/>15 35 75 86 83 (Cristina)\r\n   <br/>15 66 22 27 50 (Regina)\r\n        <br/>\r\n        <strong>E-mail</strong>\r\n        <a href="mailto:info@uva-tigre.com.ar">info@uvanimal.com.ar</a>\r\n    </p>\r\n</div>\r\n<div class="box">\r\n    <h3>Adoptaciones</h3>\r\n    <p>\r\n        Visita los perros adultos todos los dias de 08:00 a 14:00 hs, Lunes a Viernes. Zoonosis de Tigre \r\n    </p>\r\n    <p> A los cachorros y gatitos los puedes ver y adoptar 12:00 a 17:00 hs los SÃ¡bado y Domingo en Puerto De Frutos, Tigre\r\n    </p>\r\n    <p>  \r\n        <b>Zoonosis de Tigre</b>\r\n        <br/>\r\n        PueyrredÃ³n 211 \r\n        <br/>\r\n        Barrio San JosÃ©, Tigre\r\n        <br/>\r\n        T.e. 4512-4568\r\n    </p>\r\n</div>\r\n\r\n\r\n\r\n', '2010-03-17 12:37:04', '2010-03-26 22:09:31', 1, 1, 31),
(13, 'intro', '', '<div id="intro">\r\n    <p>\r\n       <r:snippet name="mission_statement" />   \r\n    </p>\r\n</div>', '2010-03-18 00:24:16', '2010-03-18 00:24:16', 1, NULL, 0),
(14, 'html_head', '', '<head>\r\n  <title>Unidos por la vida animal - <r:title /></title>\r\n  <script type="text/javascript" src="/javascripts/prototype.js"></script>\r\n  <script type="text/javascript" src="/javascripts/scriptaculous.js?load=effects,builder"></script>\r\n  <script type="text/javascript" src="/javascripts/lightbox.js"></script>\r\n  <script type="text/javascript">\r\n   var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");\r\n   document.write(unescape("%3Cscript src=''" + gaJsHost + "google-analytics.com/ga.js'' type=''text/javascript''%3E%3C/script%3E"));\r\n  </script>\r\n  <script type="text/javascript">\r\n   try {\r\n      var pageTracker = _gat._getTracker("UA-15956448-1");\r\n      pageTracker._trackPageview();\r\n   } catch(err) {}\r\n  </script>\r\n  <link rel="alternate"  type="application/rss+xml" title="RSS" href="/rss/"/>\r\n  <link rel="stylesheet" type="text/css" href="/uva-style.css" />\r\n  <link rel="stylesheet" type="text/css" href="lightbox.css"  media="screen" />\r\n  <link rel="U.V.A." href="/favicon.ico">\r\n  <meta name="keywords" content="adoptciÃ³n, perro, zoonosis, Tigre, Buenos Aires, Argentina, castratcion" />\r\n  <meta name="language" content="es-AR" />\r\n  <meta name="google-site-verification" content="Q5b8tfhE4LTsKYLTZ6hzIKfCvQxB4FlKF4Ygg3Gvb0E" />\r\n</head>', '2010-03-26 22:20:35', '2010-04-20 15:10:49', 1, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) character set latin1 default NULL,
  `email` varchar(255) character set latin1 default NULL,
  `login` varchar(40) character set latin1 NOT NULL default '',
  `password` varchar(40) character set latin1 default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `created_by_id` int(11) default NULL,
  `updated_by_id` int(11) default NULL,
  `admin` tinyint(1) NOT NULL default '0',
  `developer` tinyint(1) NOT NULL default '0',
  `notes` text character set latin1,
  `lock_version` int(11) default '0',
  `salt` varchar(255) character set latin1 default NULL,
  `session_token` varchar(255) character set latin1 default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `login`, `password`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `admin`, `developer`, `notes`, `lock_version`, `salt`, `session_token`) VALUES
(1, 'admin', NULL, 'admin', 'fb0f384234484f70f19590a173b532448774d1b5', '2010-02-05 18:05:31', '2010-07-18 15:48:15', NULL, NULL, 1, 0, NULL, 6, 'a336f7871d1c2dba95b8b836f14653e0e436fa22', 'd25f88d13a42628863d273f9f75283ba73b6d2e4'),
(2, 'cristina', 'hardy@ferentschik.de', 'cristina', '302bfdf8dc6849dd0f11ce9ba77a356e29a10de2', '2010-03-02 01:07:30', '2010-03-02 01:07:30', 1, NULL, 0, 1, '', 0, '5ab7f78272b97a1d7f97909ff32f5fc20f637dd5', NULL),
(3, 'Regina', '', 'regina', '0701ffb24b403ab3ae0ce545b6170341ef824ab3', '2010-03-05 02:04:32', '2010-03-05 02:04:32', 1, NULL, 0, 1, '', 0, '8c817d1060cb71065fb78c9bca75bed13353cdd1', NULL);
