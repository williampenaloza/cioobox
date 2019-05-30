-- phpMyAdmin SQL Dump
-- version 4.0.10.15
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-12-2017 a las 20:37:53
-- Versión del servidor: 5.6.31-log
-- Versión de PHP: 5.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `c0070505_cenmi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `idPermiso` int(14) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `mail2` varchar(330) DEFAULT NULL,
  `facebook` varchar(1000) DEFAULT NULL,
  `twitter` varchar(1000) DEFAULT NULL,
  `youtube` varchar(1000) DEFAULT NULL,
  `whatsapp` varchar(1000) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `tel` varchar(330) DEFAULT NULL,
  `administradores` int(10) DEFAULT NULL,
  `textos` int(10) DEFAULT NULL,
  `noticias` int(10) DEFAULT NULL,
  `comentarios` int(10) DEFAULT NULL,
  `encuestas` int(10) DEFAULT NULL,
  `publicidad` int(10) DEFAULT NULL,
  `consultas` int(10) DEFAULT NULL,
  `datos_radio` int(10) DEFAULT NULL,
  `carteleras` int(10) DEFAULT NULL,
  `juegos` int(10) DEFAULT NULL,
  `vuelos` int(10) DEFAULT NULL,
  `autobuses` int(10) DEFAULT NULL,
  `podcast` int(10) DEFAULT NULL,
  `comentariosp` int(10) DEFAULT NULL,
  `colorimetriat` int(10) DEFAULT NULL,
  `rss` int(10) DEFAULT NULL,
  `permisos` int(10) DEFAULT NULL,
  `titulo` varchar(330) DEFAULT NULL,
  `descripcion` varchar(2000) DEFAULT NULL,
  `key_llave` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `usuario`, `pass`, `idPermiso`, `mail`, `mail2`, `facebook`, `twitter`, `youtube`, `whatsapp`, `nombre`, `tel`, `administradores`, `textos`, `noticias`, `comentarios`, `encuestas`, `publicidad`, `consultas`, `datos_radio`, `carteleras`, `juegos`, `vuelos`, `autobuses`, `podcast`, `comentariosp`, `colorimetriat`, `rss`, `permisos`, `titulo`, `descripcion`, `key_llave`) VALUES
(1, 'ïbž‚¥jÍ5pHð®~Ë', ']3Aíç³,^JÞ&Ãb', NULL, '}ËºÖ¥jÀß¬0­ŽèÐ˜¥®ä+?p¡ý¿Øƒ', 'tÍ›»#ÛÆƒAý™ðÐÞpž¹­$›˜ÙŸzhõŠ†"', 'êd!¡qš-z¯ª', 'êd!¡qš-z¯ª', 'êd!¡qš-z¯ª', 'êd!¡qš-z¯ª', 'ß|‡ÐƒþMxèMa', '123', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 'descripciÃ³n', 'êd!¡qš-z¯ª'),
(11, '\rKY?ìµ5–µžwG:ëð', '` ¾’ÏhÁ¢¢¡PÝ', NULL, '=^]“Ó9GÓG\Z,?*rË½cú/¥„è(ÇDÕ,â', NULL, NULL, NULL, NULL, NULL, 'ôéJ@„Ð©d,™·‘]EÂÈôÀº §œ«ô', '', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '', NULL),
(13, 'VwÐGØÒpÖy†RŠâ', '{v¨&ÐÙî6-hOÃ“»', NULL, 'DŽlQ(P§$ Vé?fú\Z\n#Ò×W4?$~Ž¦ÜC', NULL, NULL, NULL, NULL, NULL, '«\ZGH L®Ø3É-=Öêd!¡qš-z¯ª', '', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '', NULL),
(17, '$8F­Q!ªdüy+únµ', 'EâÈ«óº@­­¹’+àß', NULL, '®‹¿¬z$º{rÃïõxtà.¨ÂdéØ@FŠXAz|', NULL, NULL, NULL, NULL, NULL, 'ËÞÌD5\Zdk‹ö¡TÐ¡', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, NULL, '', NULL),
(19, 'ŸÌg*Ãeâ''9ëÎ¹', 'âÁˆh‰4Ä%÷ejåFˆ', NULL, '=^]“Ó9GÓG\Z,?*rË½cú/¥„è(ÇDÕ,â', NULL, NULL, NULL, NULL, NULL, 'ãË›”}§D—Š™ ;(êd!¡qš-z¯ª', '', 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `imagen` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `idPadre` int(11) NOT NULL DEFAULT '0',
  `habil` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `imagen`, `orden`, `idPadre`, `habil`) VALUES
(26, 'Locales', 'Locales', NULL, 0, 0, 'S'),
(27, 'Provinciales', 'Provinciales', NULL, 0, 0, 'S'),
(28, 'Nacionales', 'Nacionales', NULL, 0, 0, 'S'),
(29, 'Internacionales', 'Internacionales', NULL, 0, 0, 'S'),
(30, 'Deportes', 'Deportes', NULL, 0, 0, 'S'),
(31, 'Economía', 'Economía', NULL, 0, 0, 'S'),
(32, 'Mensajes', '', NULL, 0, 0, 'S');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriastrue`
--

CREATE TABLE IF NOT EXISTS `categoriastrue` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `categoriastrue`
--

INSERT INTO `categoriastrue` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(6, 'Rodadoss', 'scas sd vbdfbd', '913_Lighthouse.jpg'),
(7, 'Tecnologìa', 'sda vdsfb snbdfgn', '478_Jellyfish.jpg'),
(8, 'AUTOMOTORES', '', '705_fiat-500.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_noticias`
--

CREATE TABLE IF NOT EXISTS `cat_noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecat` varchar(1000) DEFAULT NULL,
  `fecha` varchar(1000) DEFAULT NULL,
  `mostrar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto_web`
--

CREATE TABLE IF NOT EXISTS `contacto_web` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(330) DEFAULT NULL,
  `nombre` varchar(330) DEFAULT NULL,
  `dir` varchar(330) DEFAULT NULL,
  `tel` varchar(330) DEFAULT NULL,
  `ciudad` varchar(330) DEFAULT NULL,
  `provincia` varchar(330) DEFAULT NULL,
  `pais` varchar(330) DEFAULT NULL,
  `consulta` text,
  `fecha` varchar(330) DEFAULT NULL,
  `respondido` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=204 ;

--
-- Volcado de datos para la tabla `contacto_web`
--

INSERT INTO `contacto_web` (`id`, `mail`, `nombre`, `dir`, `tel`, `ciudad`, `provincia`, `pais`, `consulta`, `fecha`, `respondido`) VALUES
(1, '', 'Nombre Completo', NULL, NULL, NULL, NULL, NULL, NULL, '17/05/2016', NULL),
(2, '', 'Tyler Webb', NULL, NULL, NULL, NULL, NULL, NULL, '22/08/2016', NULL),
(3, '', 'Chris Rodgersen', NULL, NULL, NULL, NULL, NULL, NULL, '27/08/2016', NULL),
(4, '', 'Sterling Chambers', NULL, NULL, NULL, NULL, NULL, NULL, '01/09/2016', NULL),
(5, '', 'David Taylor', NULL, NULL, NULL, NULL, NULL, NULL, '05/09/2016', NULL),
(6, '', 'fppixzj', NULL, NULL, NULL, NULL, NULL, NULL, '12/09/2016', NULL),
(7, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12/09/2016', NULL),
(8, '', 'Roman T.', NULL, NULL, NULL, NULL, NULL, NULL, '15/09/2016', NULL),
(9, '', 'Tyler Weston', NULL, NULL, NULL, NULL, NULL, NULL, '19/09/2016', NULL),
(10, '', 'Ed Frez', NULL, NULL, NULL, NULL, NULL, NULL, '24/09/2016', NULL),
(11, '', 'Tyler Webb', NULL, NULL, NULL, NULL, NULL, NULL, '29/09/2016', NULL),
(12, '', 'imejqakaq', NULL, NULL, NULL, NULL, NULL, NULL, '04/10/2016', NULL),
(13, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '04/10/2016', NULL),
(14, '', 'Chris Rodgersen', NULL, NULL, NULL, NULL, NULL, NULL, '05/10/2016', NULL),
(15, '', 'ygdxghrm', NULL, NULL, NULL, NULL, NULL, NULL, '08/10/2016', NULL),
(16, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '08/10/2016', NULL),
(17, '', 'Sterling Chambers', NULL, NULL, NULL, NULL, NULL, NULL, '09/10/2016', NULL),
(18, '', 'Nombre Completo', NULL, NULL, NULL, NULL, NULL, NULL, '14/10/2016', NULL),
(19, '', 'David Taylor', NULL, NULL, NULL, NULL, NULL, NULL, '14/10/2016', NULL),
(20, '', 'Jason Johnson', NULL, NULL, NULL, NULL, NULL, NULL, '19/10/2016', NULL),
(21, '', 'Benjamin Livingston', NULL, NULL, NULL, NULL, NULL, NULL, '23/10/2016', NULL),
(22, '', 'Nombre Completo', NULL, NULL, NULL, NULL, NULL, NULL, '25/10/2016', NULL),
(23, '', 'hhralewuv', NULL, NULL, NULL, NULL, NULL, NULL, '26/10/2016', NULL),
(24, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '26/10/2016', NULL),
(25, '', 'Nick Doleman', NULL, NULL, NULL, NULL, NULL, NULL, '28/10/2016', NULL),
(26, '', 'Ed Frez', NULL, NULL, NULL, NULL, NULL, NULL, '02/11/2016', NULL),
(27, '', 'Nombre Completo', NULL, NULL, NULL, NULL, NULL, NULL, '05/11/2016', NULL),
(28, '', 'Tyler Webb', NULL, NULL, NULL, NULL, NULL, NULL, '07/11/2016', NULL),
(29, '', 'slvuhdspwvk', NULL, NULL, NULL, NULL, NULL, NULL, '07/11/2016', NULL),
(30, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '07/11/2016', NULL),
(31, '', 'Nombre Completo', NULL, NULL, NULL, NULL, NULL, NULL, '08/11/2016', NULL),
(32, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '09/11/2016', NULL),
(33, '', 'Chris Rodgersen', NULL, NULL, NULL, NULL, NULL, NULL, '12/11/2016', NULL),
(34, '', 'Carl Miller', NULL, NULL, NULL, NULL, NULL, NULL, '16/11/2016', NULL),
(35, '', 'feaxaxf', NULL, NULL, NULL, NULL, NULL, NULL, '20/11/2016', NULL),
(36, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '20/11/2016', NULL),
(37, '', 'David Taylor', NULL, NULL, NULL, NULL, NULL, NULL, '21/11/2016', NULL),
(38, '', 'Jason Johnson', NULL, NULL, NULL, NULL, NULL, NULL, '26/11/2016', NULL),
(39, '', 'Benjamin Livingston', NULL, NULL, NULL, NULL, NULL, NULL, '30/11/2016', NULL),
(40, '', 'wndomrzoq', NULL, NULL, NULL, NULL, NULL, NULL, '01/12/2016', NULL),
(41, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '01/12/2016', NULL),
(42, '', 'Marcelo de Figueiredo Miranda', NULL, NULL, NULL, NULL, NULL, NULL, '02/12/2016', NULL),
(43, '', 'Tim Westfield', NULL, NULL, NULL, NULL, NULL, NULL, '05/12/2016', NULL),
(44, '', 'Boyd Daddabbo', NULL, NULL, NULL, NULL, NULL, NULL, '07/12/2016', NULL),
(45, '', 'Ed Frez', NULL, NULL, NULL, NULL, NULL, NULL, '10/12/2016', NULL),
(46, '', 'totfnkes', NULL, NULL, NULL, NULL, NULL, NULL, '12/12/2016', NULL),
(47, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12/12/2016', NULL),
(48, '', 'Tyler Webb', NULL, NULL, NULL, NULL, NULL, NULL, '15/12/2016', NULL),
(49, '', 'Julian Thompson', NULL, NULL, NULL, NULL, NULL, NULL, '19/12/2016', NULL),
(50, '', 'vleunftixor', NULL, NULL, NULL, NULL, NULL, NULL, '25/12/2016', NULL),
(51, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '25/12/2016', NULL),
(52, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '27/12/2016', NULL),
(53, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '27/12/2016', NULL),
(54, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '28/12/2016', NULL),
(55, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '28/12/2016', NULL),
(56, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '28/12/2016', NULL),
(57, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '28/12/2016', NULL),
(58, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '28/12/2016', NULL),
(59, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '28/12/2016', NULL),
(60, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '28/12/2016', NULL),
(61, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '28/12/2016', NULL),
(62, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '28/12/2016', NULL),
(63, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '28/12/2016', NULL),
(64, '', 'David Taylor', NULL, NULL, NULL, NULL, NULL, NULL, '30/12/2016', NULL),
(65, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '30/12/2016', NULL),
(66, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '30/12/2016', NULL),
(67, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '30/12/2016', NULL),
(68, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '30/12/2016', NULL),
(69, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '30/12/2016', NULL),
(70, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '30/12/2016', NULL),
(71, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '30/12/2016', NULL),
(72, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '30/12/2016', NULL),
(73, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '30/12/2016', NULL),
(74, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '30/12/2016', NULL),
(75, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '31/12/2016', NULL),
(76, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '31/12/2016', NULL),
(77, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '31/12/2016', NULL),
(78, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '31/12/2016', NULL),
(79, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '31/12/2016', NULL),
(80, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '31/12/2016', NULL),
(81, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '31/12/2016', NULL),
(82, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '31/12/2016', NULL),
(83, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '31/12/2016', NULL),
(84, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '31/12/2016', NULL),
(85, '', 'gkxyndhp', NULL, NULL, NULL, NULL, NULL, NULL, '31/12/2016', NULL),
(86, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '31/12/2016', NULL),
(87, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '01/01/2017', NULL),
(88, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '01/01/2017', NULL),
(89, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '01/01/2017', NULL),
(90, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '01/01/2017', NULL),
(91, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '02/01/2017', NULL),
(92, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '02/01/2017', NULL),
(93, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '02/01/2017', NULL),
(94, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '02/01/2017', NULL),
(95, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '02/01/2017', NULL),
(96, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '02/01/2017', NULL),
(97, '', 'James Wilhelm ', NULL, NULL, NULL, NULL, NULL, NULL, '03/01/2017', NULL),
(98, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '04/01/2017', NULL),
(99, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '04/01/2017', NULL),
(100, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '05/01/2017', NULL),
(101, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '05/01/2017', NULL),
(102, '', 'Nombre Completo', NULL, NULL, NULL, NULL, NULL, NULL, '06/01/2017', NULL),
(103, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '08/01/2017', NULL),
(104, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '08/01/2017', NULL),
(105, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '08/01/2017', NULL),
(106, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '08/01/2017', NULL),
(107, '', 'Barnypok', NULL, NULL, NULL, NULL, NULL, NULL, '08/01/2017', NULL),
(108, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '08/01/2017', NULL),
(109, '', 'JimmiXzS', NULL, NULL, NULL, NULL, NULL, NULL, '08/01/2017', NULL),
(110, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '08/01/2017', NULL),
(111, '', 'JimmiXzS', NULL, NULL, NULL, NULL, NULL, NULL, '09/01/2017', NULL),
(112, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '09/01/2017', NULL),
(113, '', 'Tim Westfield', NULL, NULL, NULL, NULL, NULL, NULL, '13/01/2017', NULL),
(114, '', 'pwphiwbf', NULL, NULL, NULL, NULL, NULL, NULL, '19/01/2017', NULL),
(115, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '19/01/2017', NULL),
(116, '', 'vkgessrygo', NULL, NULL, NULL, NULL, NULL, NULL, '23/01/2017', NULL),
(117, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '23/01/2017', NULL),
(118, '', 'John Simmonds', NULL, NULL, NULL, NULL, NULL, NULL, '27/01/2017', NULL),
(119, '', 'Scott Stephens', NULL, NULL, NULL, NULL, NULL, NULL, '01/02/2017', NULL),
(120, '', 'David Taylor', NULL, NULL, NULL, NULL, NULL, NULL, '06/02/2017', NULL),
(121, '', 'James Wilhelm ', NULL, NULL, NULL, NULL, NULL, NULL, '10/02/2017', NULL),
(122, '', 'erdfvwzm', NULL, NULL, NULL, NULL, NULL, NULL, '13/02/2017', NULL),
(123, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '13/02/2017', NULL),
(124, '', 'Tim Westfield', NULL, NULL, NULL, NULL, NULL, NULL, '20/02/2017', NULL),
(125, '', 'wilson m.figueiredo filho', NULL, NULL, NULL, NULL, NULL, NULL, '22/02/2017', NULL),
(126, '', 'Keith Stewart', NULL, NULL, NULL, NULL, NULL, NULL, '25/03/2017', NULL),
(127, '', 'Jill Morosco', NULL, NULL, NULL, NULL, NULL, NULL, '29/03/2017', NULL),
(128, '', 'Steve McTavish', NULL, NULL, NULL, NULL, NULL, NULL, '08/04/2017', NULL),
(129, '', 'Jim Richmond', NULL, NULL, NULL, NULL, NULL, NULL, '13/04/2017', NULL),
(130, '', 'Andrew Ratcliff', NULL, NULL, NULL, NULL, NULL, NULL, '18/04/2017', NULL),
(131, '', 'Dennis Chapman', NULL, NULL, NULL, NULL, NULL, NULL, '22/04/2017', NULL),
(132, '', 'Jason Johnson', NULL, NULL, NULL, NULL, NULL, NULL, '27/04/2017', NULL),
(133, '', 'Bryce Richards', NULL, NULL, NULL, NULL, NULL, NULL, '02/05/2017', NULL),
(134, '', 'Jill Morosco', NULL, NULL, NULL, NULL, NULL, NULL, '06/05/2017', NULL),
(135, '', 'Edward Frez', NULL, NULL, NULL, NULL, NULL, NULL, '11/05/2017', NULL),
(136, '', 'Steve McTavish', NULL, NULL, NULL, NULL, NULL, NULL, '16/05/2017', NULL),
(137, '', 'Jim Richmond', NULL, NULL, NULL, NULL, NULL, NULL, '21/05/2017', NULL),
(138, '', 'Carl Miller', NULL, NULL, NULL, NULL, NULL, NULL, '25/05/2017', NULL),
(139, '', 'Chloe Morgan', NULL, NULL, NULL, NULL, NULL, NULL, '30/05/2017', NULL),
(140, '', '{pNeed help with your assignment?', NULL, NULL, NULL, NULL, NULL, NULL, '01/06/2017', NULL),
(141, '', 'Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, '02/06/2017', NULL),
(142, '', 'Need help with your assignment?', NULL, NULL, NULL, NULL, NULL, NULL, '02/06/2017', NULL),
(143, '', 'Karen Quinn', NULL, NULL, NULL, NULL, NULL, NULL, '04/06/2017', NULL),
(144, '', 'Essay writing', NULL, NULL, NULL, NULL, NULL, NULL, '04/06/2017', NULL),
(145, '', 'Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, '04/06/2017', NULL),
(146, '', 'Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, '05/06/2017', NULL),
(147, '', 'Need help with your assignment?', NULL, NULL, NULL, NULL, NULL, NULL, '05/06/2017', NULL),
(148, '', 'Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, '07/06/2017', NULL),
(149, '', 'Bryan Peak', NULL, NULL, NULL, NULL, NULL, NULL, '08/06/2017', NULL),
(150, '', 'Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, '08/06/2017', NULL),
(151, '', 'Show my ass on the web camera: http://webcamdirty.info', NULL, NULL, NULL, NULL, NULL, NULL, '11/06/2017', NULL),
(152, '', 'Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, '12/06/2017', NULL),
(153, '', 'Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, '12/06/2017', NULL),
(154, '', 'stop-menopause.info', NULL, NULL, NULL, NULL, NULL, NULL, '13/06/2017', NULL),
(155, '', 'James Dowding', NULL, NULL, NULL, NULL, NULL, NULL, '13/06/2017', NULL),
(156, '', 'online casino', NULL, NULL, NULL, NULL, NULL, NULL, '15/06/2017', NULL),
(157, '', 'Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, '16/06/2017', NULL),
(158, '', 'stop-menopause.info', NULL, NULL, NULL, NULL, NULL, NULL, '17/06/2017', NULL),
(159, '', 'Edward Frez', NULL, NULL, NULL, NULL, NULL, NULL, '18/06/2017', NULL),
(160, '', 'Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, '22/06/2017', NULL),
(161, '', 'Bernadette Hill', NULL, NULL, NULL, NULL, NULL, NULL, '23/06/2017', NULL),
(162, '', 'badmansino.com', NULL, NULL, NULL, NULL, NULL, NULL, '24/06/2017', NULL),
(163, '', 'stop-menopause.info', NULL, NULL, NULL, NULL, NULL, NULL, '25/06/2017', NULL),
(164, '', 'Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, '27/06/2017', NULL),
(165, '', 'Felicity Cornish', NULL, NULL, NULL, NULL, NULL, NULL, '28/06/2017', NULL),
(166, '', 'Show my ass on the web camera: www.webcamdirty.info', NULL, NULL, NULL, NULL, NULL, NULL, '29/06/2017', NULL),
(167, '', 'James Bellafor', NULL, NULL, NULL, NULL, NULL, NULL, '01/07/2017', NULL),
(168, '', 'Virginia Hardacre', NULL, NULL, NULL, NULL, NULL, NULL, '05/07/2017', NULL),
(169, '', 'Pharmacy', NULL, NULL, NULL, NULL, NULL, NULL, '08/07/2017', NULL),
(170, '', 'Customize your site, manage shipping and payments, and list your products on Amazon, eBay, and Facebook with the #1 ecommerce platform: www.big-commerce.pro', NULL, NULL, NULL, NULL, NULL, NULL, '13/07/2017', NULL),
(171, '', 'Customize your site, manage shipping and payments, and list your products on Amazon, eBay, and Facebook with the #1 ecommerce platform: www.big-commerce.pro', NULL, NULL, NULL, NULL, NULL, NULL, '13/07/2017', NULL),
(172, '', 'Katherine Bond', NULL, NULL, NULL, NULL, NULL, NULL, '14/07/2017', NULL),
(173, '', 'Penelope Ellison', NULL, NULL, NULL, NULL, NULL, NULL, '19/07/2017', NULL),
(174, '', 'Edward Frez', NULL, NULL, NULL, NULL, NULL, NULL, '24/07/2017', NULL),
(175, '', 'Pharmacy Express Shop: www.hotweblux.su', NULL, NULL, NULL, NULL, NULL, NULL, '25/07/2017', NULL),
(176, '', 'Nombre Completo', NULL, NULL, NULL, NULL, NULL, NULL, '28/07/2017', NULL),
(177, '', 'Victoria Short', NULL, NULL, NULL, NULL, NULL, NULL, '29/07/2017', NULL),
(178, '', 'Pharmacy Express shop: www.hotweblux.su', NULL, NULL, NULL, NULL, NULL, NULL, '31/07/2017', NULL),
(179, '', 'Pharmacy Express shop: www.hotweblux.su', NULL, NULL, NULL, NULL, NULL, NULL, '31/07/2017', NULL),
(180, '', 'Express credits with low interest rate: www.Payzonno.pro', NULL, NULL, NULL, NULL, NULL, NULL, '31/07/2017', NULL),
(181, '', 'Karen Langdon', NULL, NULL, NULL, NULL, NULL, NULL, '02/08/2017', NULL),
(182, '', 'Mitchell Bell', NULL, NULL, NULL, NULL, NULL, NULL, '07/08/2017', NULL),
(183, '', 'Why some men attract women like a magnet? www.adultshopping.pro', NULL, NULL, NULL, NULL, NULL, NULL, '09/08/2017', NULL),
(184, '', 'Learn how you can control our sex toys from any distance: www.loveloves.pro', NULL, NULL, NULL, NULL, NULL, NULL, '10/08/2017', NULL),
(185, '', 'Carolyn Taylor', NULL, NULL, NULL, NULL, NULL, NULL, '12/08/2017', NULL),
(186, '', 'Gray Ellender', NULL, NULL, NULL, NULL, NULL, NULL, '21/08/2017', NULL),
(187, '', 'Aracelis Washington', NULL, NULL, NULL, NULL, NULL, NULL, '05/09/2017', NULL),
(188, '', 'Billy Love', NULL, NULL, NULL, NULL, NULL, NULL, '09/09/2017', NULL),
(189, '', 'Leonard Russell', NULL, NULL, NULL, NULL, NULL, NULL, '14/09/2017', NULL),
(190, '', 'Christian Mills', NULL, NULL, NULL, NULL, NULL, NULL, '19/09/2017', NULL),
(191, '', 'John Simmonds', NULL, NULL, NULL, NULL, NULL, NULL, '23/09/2017', NULL),
(192, '', 'Jake Lang', NULL, NULL, NULL, NULL, NULL, NULL, '28/09/2017', NULL),
(193, '', 'Ed Frez', NULL, NULL, NULL, NULL, NULL, NULL, '08/10/2017', NULL),
(194, '', 'Jamie Weaver', NULL, NULL, NULL, NULL, NULL, NULL, '12/10/2017', NULL),
(195, '', 'Priscilla Schwartz', NULL, NULL, NULL, NULL, NULL, NULL, '17/10/2017', NULL),
(196, '', 'Virginia Rees', NULL, NULL, NULL, NULL, NULL, NULL, '22/10/2017', NULL),
(197, '', 'Linton Brown', NULL, NULL, NULL, NULL, NULL, NULL, '01/11/2017', NULL),
(198, '', 'Tracy Edmunds', NULL, NULL, NULL, NULL, NULL, NULL, '05/11/2017', NULL),
(199, '', 'Moses Johnson', NULL, NULL, NULL, NULL, NULL, NULL, '10/11/2017', NULL),
(200, '', 'Powell Williams', NULL, NULL, NULL, NULL, NULL, NULL, '24/11/2017', NULL),
(201, '', 'Alyssa Morrow', NULL, NULL, NULL, NULL, NULL, NULL, '03/12/2017', NULL),
(202, '', 'John Simmonds', NULL, NULL, NULL, NULL, NULL, NULL, '08/12/2017', NULL),
(203, '', 'Bernice Andrews', NULL, NULL, NULL, NULL, NULL, NULL, '13/12/2017', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE IF NOT EXISTS `contenidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `descirpcion2` text,
  `descripcion3` text,
  `titulo2` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen2` varchar(255) DEFAULT NULL,
  `imagen3` varchar(255) DEFAULT NULL,
  `linkImagen` varchar(255) DEFAULT NULL,
  `linkImagen2` varchar(255) DEFAULT NULL,
  `linkImagen3` varchar(255) DEFAULT NULL,
  `linkImagen4` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `linkImagen5` varchar(255) DEFAULT NULL,
  `linkImagen6` varchar(255) DEFAULT NULL,
  `linkImagen7` varchar(255) DEFAULT NULL,
  `linkImagen8` varchar(255) DEFAULT NULL,
  `linkImagen9` varchar(255) DEFAULT NULL,
  `imagen4` varchar(255) DEFAULT NULL,
  `imagen5` varchar(255) DEFAULT NULL,
  `imagen6` varchar(255) DEFAULT NULL,
  `imagen7` varchar(255) DEFAULT NULL,
  `imagen8` varchar(255) DEFAULT NULL,
  `imagen9` varchar(255) DEFAULT NULL,
  `mapa` text,
  `categoria1` tinytext,
  `categoria2` tinytext,
  `categoria3` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `contenidos`
--

INSERT INTO `contenidos` (`id`, `nombre`, `titulo`, `descripcion`, `descirpcion2`, `descripcion3`, `titulo2`, `imagen`, `imagen2`, `imagen3`, `linkImagen`, `linkImagen2`, `linkImagen3`, `linkImagen4`, `estado`, `linkImagen5`, `linkImagen6`, `linkImagen7`, `linkImagen8`, `linkImagen9`, `imagen4`, `imagen5`, `imagen6`, `imagen7`, `imagen8`, `imagen9`, `mapa`, `categoria1`, `categoria2`, `categoria3`) VALUES
(4, 'Quienes Somos', 'Quienes Somos', '', NULL, NULL, NULL, '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', 'SECCIÓN DE LA PÁGINA', '../nosotros.php', NULL),
(6, 'Contacto', 'Contacto', '<p>\r\n	Si deseas ponerte en contacto con nosotros, puedes hacerlo completando el formulario de contacto y oprimiendo el bot&oacute;n de enviar, autom&aacute;ticamente se generar&aacute; y enviar&aacute; tu mensaje. Una vez recibida tu consulta nos pondremos en contacto contigo. Te recordamos que toda la informaci&oacute;n que nos env&iacute;es ser&aacute; estrictamente utilizada con el fin de antes mencionado</p>\r\n', NULL, NULL, NULL, '914_Contacto.jpg', '', '', 'info@santafe-radio.com.ar', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', 'SECCIÓN DE LA PÁGINA', '../contacto.php', NULL),
(8, 'mapa', 'Mapa Contacto', '<iframe class="google-map" frameborder="0" marginheight="0" marginwidth="0" scrolling="no" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=WA,+United+States&amp;aq=0&amp;oq=WA&amp;sll=47.605288,-122.329296&amp;sspn=0.008999,0.016544&amp;ie=UTF8&amp;hq=&amp;hnear=Washington,+District+of+Columbia&amp;t=m&amp;z=7&amp;iwloc=A&amp;output=embed"></iframe>\r\n', NULL, NULL, NULL, '605_Desert.jpg', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', 'INFORMACIÓN DE CONTACTO - UBICACIÓN', '../mapa.php', NULL),
(9, 'Logo', 'Logo cristoenmi.com', '', NULL, NULL, NULL, '571', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', 'LOGO DE LA PÁGINA', '../index.php', NULL),
(10, 'ElClima', 'ElClima', '<div id="TT_RiCEkEkEk2C9C7sAKfzjjzDzjKaA1Ej2bYkY1ZC5a1D53Imo3"><a href="http://www.tutiempo.net/argentina/cordoba.html">Córdoba</a></div>\n<script type="text/javascript" src="http://www.tutiempo.net/widget/eltiempo_RiCEkEkEk2C9C7sAKfzjjzDzjKaA1Ej2bYkY1ZC5a1D53Imo3"></script>', NULL, NULL, NULL, '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', 'LOGO DE LA PÁGINA', '../index.php', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `current_users`
--

CREATE TABLE IF NOT EXISTS `current_users` (
  `ip` varchar(30) NOT NULL DEFAULT '',
  `time` varchar(30) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `current_users`
--

INSERT INTO `current_users` (`ip`, `time`) VALUES
('190.207.170.207', '1513381005');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_radio`
--

CREATE TABLE IF NOT EXISTS `datos_radio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_radio` varchar(1000) DEFAULT NULL,
  `nombre_radio` varchar(1000) DEFAULT NULL,
  `telefono_radio` varchar(1000) DEFAULT NULL,
  `email_radio` varchar(1000) DEFAULT NULL,
  `whatsapp_radio` varchar(1000) DEFAULT NULL,
  `direccion_radio` varchar(1000) DEFAULT NULL,
  `audio_radio` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `datos_radio`
--

INSERT INTO `datos_radio` (`id`, `titulo_radio`, `nombre_radio`, `telefono_radio`, `email_radio`, `whatsapp_radio`, `direccion_radio`, `audio_radio`) VALUES
(1, 'Radio Cristo en Mi, En Alabanza Constante!!!', 'Cristo en Mi', '(54) 11 1526436549', 'info@cristoenmi.com', '1126436549', 'Ezeiza, Buenos Aires - Argentina', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE IF NOT EXISTS `encuesta` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `opcion1` varchar(255) DEFAULT NULL,
  `opcion2` varchar(255) DEFAULT NULL,
  `opcion3` varchar(255) DEFAULT NULL,
  `opcion4` varchar(255) DEFAULT NULL,
  `opcion5` varchar(255) DEFAULT NULL,
  `opcion6` varchar(255) DEFAULT NULL,
  `opcion7` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `categoria` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE IF NOT EXISTS `galerias` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `fecha` date DEFAULT NULL,
  `hora` varchar(255) DEFAULT NULL,
  `mes` varchar(255) DEFAULT NULL,
  `ano` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `galerias`
--

INSERT INTO `galerias` (`id`, `titulo`, `descripcion`, `fecha`, `hora`, `mes`, `ano`) VALUES
(1, 'Galeria 1', 'Galeria 1', '2012-05-28', '19:34:37', 'Mayo', '2012');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeriascomplejas`
--

CREATE TABLE IF NOT EXISTS `galeriascomplejas` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `encabezado` varchar(5000) DEFAULT NULL,
  `video` text,
  `video2` varchar(100) DEFAULT NULL,
  `video3` varchar(1000) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `imagen2` varchar(1000) DEFAULT NULL,
  `categoria` varchar(500) DEFAULT NULL,
  `descripcion` varchar(9999) NOT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `hora` varchar(255) DEFAULT NULL,
  `mes` varchar(255) DEFAULT NULL,
  `ano` varchar(11) DEFAULT NULL,
  `mostrar` varchar(10) DEFAULT NULL,
  `android` varchar(10) DEFAULT NULL,
  `ios` varchar(10) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `precio` float DEFAULT NULL,
  `audio` varchar(100) DEFAULT NULL,
  `audio2` varchar(500) DEFAULT NULL,
  `primero` char(30) NOT NULL DEFAULT 'imagen',
  `eventos` int(11) DEFAULT '0',
  `noticias` int(11) DEFAULT '0',
  `bailes` int(11) DEFAULT '0',
  `novedades` int(11) DEFAULT '0',
  `estasemana` int(11) DEFAULT '0',
  `loqueviene` int(11) DEFAULT '0',
  `nuevoslanzamientos` int(11) DEFAULT NULL,
  `videoDestacado` int(10) DEFAULT NULL,
  `visualizaciones` int(11) DEFAULT '0',
  `creditor` varchar(255) DEFAULT NULL,
  `creditof` varchar(255) DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `hora_begin` int(2) DEFAULT '14',
  `hora_end` int(2) DEFAULT '14',
  `relacionadas` varchar(300) DEFAULT NULL,
  `destacado` int(11) DEFAULT NULL,
  `riocuarto` int(11) DEFAULT NULL,
  `destacada` int(11) DEFAULT NULL,
  `3soles` int(11) DEFAULT NULL,
  `popularisimo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `galeriascomplejas`
--

INSERT INTO `galeriascomplejas` (`id`, `titulo`, `encabezado`, `video`, `video2`, `video3`, `imagen`, `imagen2`, `categoria`, `descripcion`, `fecha`, `hora`, `mes`, `ano`, `mostrar`, `android`, `ios`, `orden`, `precio`, `audio`, `audio2`, `primero`, `eventos`, `noticias`, `bailes`, `novedades`, `estasemana`, `loqueviene`, `nuevoslanzamientos`, `videoDestacado`, `visualizaciones`, `creditor`, `creditof`, `begin`, `end`, `hora_begin`, `hora_end`, `relacionadas`, `destacado`, `riocuarto`, `destacada`, `3soles`, `popularisimo`) VALUES
(4, 'galeriaRadio', '', '', '', '', '', '', 'Fotogaleria', '<p>\r\n	galeriaRadio</p>\r\n', '2016-05-13', '15:58:09', '05', '2016', '1', '', '', 0, 0, '', '', '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '', NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesclasificados`
--

CREATE TABLE IF NOT EXISTS `imagenesclasificados` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Volcado de datos para la tabla `imagenesclasificados`
--

INSERT INTO `imagenesclasificados` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`) VALUES
(1, 0, '2132_Koala.jpg', NULL, NULL),
(2, 0, '532_Hydrangeas.jpg', NULL, NULL),
(4, 0, '2033_Tulips.jpg', NULL, NULL),
(5, 0, '8641_Koala.jpg', NULL, NULL),
(6, 0, '2120_Jellyfish.jpg', NULL, NULL),
(7, 0, '2011_Penguins.jpg', NULL, NULL),
(8, 0, '6584_Koala.jpg', NULL, NULL),
(9, 0, '6407_Tulips.jpg', NULL, NULL),
(10, 6, '5115_Lighthouse.jpg', NULL, NULL),
(11, 6, '3198_Tulips.jpg', NULL, NULL),
(13, 7, '3413_Penguins.jpg', NULL, NULL),
(18, 9, '8859_2 caminos.jpg', NULL, NULL),
(19, 11, '636_LOGO AFRA N.jpg', NULL, NULL),
(20, 11, '1775_58340_470243942243_671657243_6546001_5276835_n.jpg', NULL, NULL),
(21, 11, '8036_58497_470244672243_671657243_6546027_5038917_n.jpg', NULL, NULL),
(22, 11, '2831_58497_470244677243_671657243_6546028_1898101_n.jpg', NULL, NULL),
(23, 11, '1188_60358_468192797243_671657243_6496495_5009501_n.jpg', NULL, NULL),
(24, 11, '7884_60881_470244892243_671657243_6546031_3399627_n.jpg', NULL, NULL),
(25, 11, '7141_60881_470244897243_671657243_6546032_7147110_n.jpg', NULL, NULL),
(26, 11, '493_63817_468192072243_671657243_6496472_3818082_n.jpg', NULL, NULL),
(27, 11, '3005_63858_468192347243_671657243_6496478_6796896_n.jpg', NULL, NULL),
(28, 11, '1000_63858_468192347243_671657243_6496478_6796896_n.jpg', NULL, NULL),
(29, 11, '4151_216148_10150225095052244_671657243_8437523_6042518_n.jpg', NULL, NULL),
(30, 11, '7147_217756_10150225096912244_671657243_8437538_7549215_n.jpg', NULL, NULL),
(31, 11, '5568_224667_10150225095702244_671657243_8437528_5184543_n.jpg', NULL, NULL),
(32, 11, '7673_224887_10150225096517244_671657243_8437536_193495_n.jpg', NULL, NULL),
(33, 11, '6116_226391_10150225094647244_671657243_8437517_6504280_n.jpg', NULL, NULL),
(34, 11, '7612_224887_10150225096517244_671657243_8437536_193495_n.jpg', NULL, NULL),
(35, 11, '1290_227026_10150225096237244_671657243_8437534_4332482_n.jpg', NULL, NULL),
(36, 11, '1100_229557_10150225095337244_671657243_8437526_6552325_n.jpg', NULL, NULL),
(37, 13, '3833_logo3.png', NULL, NULL),
(54, 14, '5294_205573_105851032833925_100002270854757_56886_5035506_n.jpg', NULL, NULL),
(55, 14, '8001_223597_148118905273804_100002270854757_276430_3068825_n.jpg', NULL, NULL),
(56, 14, '4588_223677_148119248607103_100002270854757_276436_3429930_n.jpg', NULL, NULL),
(57, 14, '3080_223697_148118858607142_100002270854757_276429_4058356_n.jpg', NULL, NULL),
(58, 14, '7983_294417_148118578607170_100002270854757_276423_1086735_n.jpg', NULL, NULL),
(59, 14, '5403_291737_148119391940422_100002270854757_276441_6959701_n.jpg', NULL, NULL),
(60, 14, '312_295827_148119165273778_100002270854757_276435_5805661_n.jpg', NULL, NULL),
(61, 14, '7788_296007_148118498607178_100002270854757_276421_4874511_n.jpg', NULL, NULL),
(62, 14, '3499_297112_148118541940507_100002270854757_276422_715848_n.jpg', NULL, NULL),
(63, 14, '8066_297984_154206047998423_100002270854757_293815_4063239_n.jpg', NULL, NULL),
(64, 14, '7433_298417_148119355273759_100002270854757_276439_5639811_n.jpg', NULL, NULL),
(65, 14, '2514_300227_148118778607150_100002270854757_276427_2122138_n.jpg', NULL, NULL),
(66, 14, '2222_300307_148118715273823_100002270854757_276426_7913079_n.jpg', NULL, NULL),
(67, 14, '5961_Wailers-9501.jpg', NULL, NULL),
(68, 14, '4478_299412_148118815273813_100002270854757_276428_16897_n.jpg', NULL, NULL),
(69, 14, '4868_299912_148118381940523_100002270854757_276419_6696826_n.jpg', NULL, NULL),
(70, 10, '902_trollface1.jpg', NULL, NULL),
(71, 16, '7411_317618_258969287457481_100000332355770_874698_7696251_n.jpg', NULL, NULL),
(72, 16, '1557_negocio 002.jpg', NULL, NULL),
(73, 16, '8006_negocio 003.jpg', NULL, NULL),
(74, 16, '8545_negocio 007.jpg', NULL, NULL),
(75, 17, '8752_nike_modificada.jpg', NULL, NULL),
(76, 4, '1716_Koala.jpg', NULL, NULL),
(77, 4, '6686_Hydrangeas.jpg', NULL, NULL),
(78, 4, '6413_trollface1.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesclasificadostrue`
--

CREATE TABLE IF NOT EXISTS `imagenesclasificadostrue` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `imagenesclasificadostrue`
--

INSERT INTO `imagenesclasificadostrue` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`) VALUES
(1, 19, '6527_Puesta de sol.jpg', NULL, NULL),
(3, 19, '1838_Colinas azules.jpg', NULL, NULL),
(4, 20, '1740_Invierno.jpg', NULL, NULL),
(5, 20, '2353_Colinas azules.jpg', NULL, NULL),
(6, 21, '620_Colinas azules.jpg', NULL, NULL),
(7, 32, '1651_Tulips.jpg', NULL, NULL),
(8, 32, '410_Jellyfish.jpg', NULL, NULL),
(10, 47, '7124_128_carlos.jpg', NULL, NULL),
(11, 47, '8_379806_2566905408426_1127883860_32876292_1799800931_n.jpg', NULL, NULL),
(12, 47, '5172_384064_2566883207871_1127883860_32876288_212584948_n.jpg', NULL, NULL),
(13, 47, '4436_El signo_1.jpg', NULL, NULL),
(14, 49, '823_128_carlos.jpg', NULL, NULL),
(15, 49, '2265_379806_2566905408426_1127883860_32876292_1799800931_n.jpg', NULL, NULL),
(16, 49, '5913_384064_2566883207871_1127883860_32876288_212584948_n.jpg', NULL, NULL),
(17, 49, '8624_mgrandinetti.jpg', NULL, NULL),
(18, 53, '3266_24041_1p.jpg.bmp', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesgaleria`
--

CREATE TABLE IF NOT EXISTS `imagenesgaleria` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `imagenesgaleria`
--

INSERT INTO `imagenesgaleria` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`) VALUES
(1, 1, '3002_Lighthouse.jpg', NULL, NULL),
(2, 1, '0_0236.jpg', NULL, NULL),
(4, 1, '0_gps.jpg', NULL, NULL),
(5, 1, '1_3_radio.JPG', NULL, NULL),
(7, 4, '3760_Koala.jpg', NULL, NULL),
(8, 1, 'notebook 5.jpg', NULL, NULL),
(9, 1, 'notebook 6.jpg', NULL, NULL),
(10, 1, 'notebook 7.jpg', NULL, NULL),
(11, 1, 'notebook 8.jpg', NULL, NULL),
(12, 2, '7e2c11359d1a645b480086348 - copia (2).jpg', NULL, NULL),
(13, 2, '7e2c11359d1a645b480086348 - copia (3).jpg', NULL, NULL),
(14, 2, '7e2c11359d1a645b480086348 - copia.jpg', NULL, NULL),
(15, 2, '7e2c11359d1a645b480086348.jpg', NULL, NULL),
(16, 3, '2031d0a0594b0e3ac5837c0c0a678519 - copia (2).jpg', NULL, NULL),
(17, 3, '2031d0a0594b0e3ac5837c0c0a678519 - copia (3).jpg', NULL, NULL),
(18, 3, '2031d0a0594b0e3ac5837c0c0a678519 - copia.jpg', NULL, NULL),
(19, 3, '2031d0a0594b0e3ac5837c0c0a678519.jpg', NULL, NULL),
(20, 4, 'Renault_Clio_Campus_Sport_Way_2 - copia (3).jpg', NULL, NULL),
(21, 4, 'Renault_Clio_Campus_Sport_Way_2 - copia (4).jpg', NULL, NULL),
(22, 4, 'Renault_Clio_Campus_Sport_Way_2 - copia.jpg', NULL, NULL),
(23, 4, 'Renault_Clio_Campus_Sport_Way_2.jpg', NULL, NULL),
(24, 5, '3846_1076afbc763ef2b6115767e1380342c4.jpg', NULL, NULL),
(25, 5, '7769_1076afbc763ef2b6115767e1380342c4.jpg', NULL, NULL),
(26, 5, '138_1076afbc763ef2b6115767e1380342c4.jpg', NULL, NULL),
(27, 5, '1442_1076afbc763ef2b6115767e1380342c4.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesgalerias`
--

CREATE TABLE IF NOT EXISTS `imagenesgalerias` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idGaleria` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `imagenesgalerias`
--

INSERT INTO `imagenesgalerias` (`id`, `idGaleria`, `nombre`, `descripcion`, `titulo`) VALUES
(1, 1, '3493', NULL, NULL),
(2, 1, '8363', NULL, NULL),
(3, 1, '6248', NULL, NULL),
(4, 1, '2105', NULL, NULL),
(5, 1, '3674', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesnovedades`
--

CREATE TABLE IF NOT EXISTS `imagenesnovedades` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `imagenesnovedades`
--

INSERT INTO `imagenesnovedades` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`) VALUES
(2, 1, '3098_Puesta de sol.jpg', NULL, NULL),
(3, 1, '5346_Colinas azules.jpg', NULL, NULL),
(4, 1, '7142_Invierno.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesproductos`
--

CREATE TABLE IF NOT EXISTS `imagenesproductos` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `imagenesproductos`
--

INSERT INTO `imagenesproductos` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`) VALUES
(1, 1, '3002_Lighthouse.jpg', NULL, NULL),
(2, 1, '0_0236.jpg', NULL, NULL),
(4, 1, '0_gps.jpg', NULL, NULL),
(5, 1, '1_3_radio.JPG', NULL, NULL),
(7, 4, '3760_Koala.jpg', NULL, NULL),
(8, 1, 'notebook 5.jpg', NULL, NULL),
(9, 1, 'notebook 6.jpg', NULL, NULL),
(10, 1, 'notebook 7.jpg', NULL, NULL),
(11, 1, 'notebook 8.jpg', NULL, NULL),
(12, 2, '7e2c11359d1a645b480086348 - copia (2).jpg', NULL, NULL),
(13, 2, '7e2c11359d1a645b480086348 - copia (3).jpg', NULL, NULL),
(14, 2, '7e2c11359d1a645b480086348 - copia.jpg', NULL, NULL),
(15, 2, '7e2c11359d1a645b480086348.jpg', NULL, NULL),
(16, 3, '2031d0a0594b0e3ac5837c0c0a678519 - copia (2).jpg', NULL, NULL),
(17, 3, '2031d0a0594b0e3ac5837c0c0a678519 - copia (3).jpg', NULL, NULL),
(18, 3, '2031d0a0594b0e3ac5837c0c0a678519 - copia.jpg', NULL, NULL),
(19, 3, '2031d0a0594b0e3ac5837c0c0a678519.jpg', NULL, NULL),
(20, 4, 'Renault_Clio_Campus_Sport_Way_2 - copia (3).jpg', NULL, NULL),
(21, 4, 'Renault_Clio_Campus_Sport_Way_2 - copia (4).jpg', NULL, NULL),
(22, 4, 'Renault_Clio_Campus_Sport_Way_2 - copia.jpg', NULL, NULL),
(23, 4, 'Renault_Clio_Campus_Sport_Way_2.jpg', NULL, NULL),
(24, 5, '3846_1076afbc763ef2b6115767e1380342c4.jpg', NULL, NULL),
(25, 5, '7769_1076afbc763ef2b6115767e1380342c4.jpg', NULL, NULL),
(26, 5, '138_1076afbc763ef2b6115767e1380342c4.jpg', NULL, NULL),
(27, 5, '1442_1076afbc763ef2b6115767e1380342c4.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesqs`
--

CREATE TABLE IF NOT EXISTS `imagenesqs` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `imagenesqs`
--

INSERT INTO `imagenesqs` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`, `link`) VALUES
(3, 1, '3961_ImperoLed_Boceto.jpg', NULL, NULL, ''),
(4, 1, '3269_ImperoLed_Boceto_B.jpg', NULL, NULL, ''),
(5, 1, '4287_ImperoLed_Boceto_C.jpg', NULL, NULL, ''),
(6, 1, '8654_ImperoLed_Boceto.jpg', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenesslide`
--

CREATE TABLE IF NOT EXISTS `imagenesslide` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `imagenesslide`
--

INSERT INTO `imagenesslide` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`, `link`) VALUES
(7, 1, '5798_baner4_b.jpg', NULL, NULL, ''),
(8, 1, '8069_baner3_b.jpg', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenestrabajos`
--

CREATE TABLE IF NOT EXISTS `imagenestrabajos` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `imagenestrabajos`
--

INSERT INTO `imagenestrabajos` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`) VALUES
(2, 1, '7400_Puesta de sol.jpg', NULL, NULL),
(4, 1, '8720_Invierno.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_actividades`
--

CREATE TABLE IF NOT EXISTS `imagenes_actividades` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `imagenes_actividades`
--

INSERT INTO `imagenes_actividades` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`) VALUES
(2, 1, '5831_Desert.jpg', NULL, NULL),
(3, 1, '359_Koala.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_audios`
--

CREATE TABLE IF NOT EXISTS `imagenes_audios` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_novedades`
--

CREATE TABLE IF NOT EXISTS `imagenes_novedades` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `imagenes_novedades`
--

INSERT INTO `imagenes_novedades` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`) VALUES
(3, 1, '944__5_images.jpg', NULL, NULL),
(4, 1, '2386__3_roxette.jpg', NULL, NULL),
(5, 1, '7273__10_davis_2.jpg', NULL, NULL),
(6, 1, '2665__7_buble_agotado.jpg', NULL, NULL),
(7, 1, '7957__0_waters_agotado.jpg', NULL, NULL),
(8, 1, '3774__1_arjona_agotado.jpg', NULL, NULL),
(9, 1, '6564__5_serrat_sabina_agotado.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_oportunidades`
--

CREATE TABLE IF NOT EXISTS `imagenes_oportunidades` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `imagenes_oportunidades`
--

INSERT INTO `imagenes_oportunidades` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`) VALUES
(2, 1, '5414_Lighthouse.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_programas`
--

CREATE TABLE IF NOT EXISTS `imagenes_programas` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `imagenes_programas`
--

INSERT INTO `imagenes_programas` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`) VALUES
(1, 1, '216_Hydrangeas.jpg', NULL, NULL),
(2, 1, '3311_Lighthouse.jpg', NULL, NULL),
(4, 1, '1216_Lighthouse.jpg', NULL, NULL),
(5, 1, '317_Lighthouse.jpg', NULL, NULL),
(6, 1, '6676_Jellyfish.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_promocion`
--

CREATE TABLE IF NOT EXISTS `imagenes_promocion` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `imagenes_promocion`
--

INSERT INTO `imagenes_promocion` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`) VALUES
(4, 2, '6744_Jellyfish.jpg', NULL, NULL),
(5, 2, '1703_Hydrangeas.jpg', NULL, NULL),
(6, 1, '4506_cataratas del iguazu [800x600].jpg', NULL, NULL),
(7, 1, '6960_cataratas del iguazu 2 [800x600].jpg', NULL, NULL),
(8, 1, '3124_cataratas del iguazu 3 [800x600].jpg', NULL, NULL),
(9, 1, '3638_cataratas del iguazu 8 [800x600].jpg', NULL, NULL),
(10, 1, '5775_cataratas del iguazu 5 [800x600].jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_servicios`
--

CREATE TABLE IF NOT EXISTS `imagenes_servicios` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Volcado de datos para la tabla `imagenes_servicios`
--

INSERT INTO `imagenes_servicios` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`) VALUES
(5, 1, '8221_DISNEY.jpg', NULL, NULL),
(7, 1, '1560_tus-15-en-disney.jpg', NULL, NULL),
(9, 1, '2600_DISNEY.jpg', NULL, NULL),
(10, 1, '3007_15.jpg', NULL, NULL),
(11, 1, '6650_DISNEY.jpg', NULL, NULL),
(12, 1, '4903_DSC04055.JPG', NULL, NULL),
(13, 1, '2953_15.jpg', NULL, NULL),
(14, 1, '4141_tus-15-en-disney.jpg', NULL, NULL),
(15, 4, '4972_varadero.jpg', NULL, NULL),
(16, 4, '4911_hotel-varadero.jpg', NULL, NULL),
(17, 4, '1136_5.1281307301.what-a-view.jpg', NULL, NULL),
(18, 4, '461_3.1223577540.4_varadero-beach.jpg', NULL, NULL),
(19, 4, '4203_c133-varadero-playa-3.jpg', NULL, NULL),
(21, 5, '1695_Koala.jpg', NULL, NULL),
(22, 5, '8853_Tulips.jpg', NULL, NULL),
(23, 6, '7421_Jellyfish.jpg', NULL, NULL),
(24, 6, '4929_Lighthouse.jpg', NULL, NULL),
(25, 5, '5147_311x233_534953.jpg', NULL, NULL),
(26, 5, '4515_311x233_543983.jpg', NULL, NULL),
(27, 5, '8259_311x233_544527.jpg', NULL, NULL),
(28, 5, '2312_311x233_543983.jpg', NULL, NULL),
(29, 21, '733_im2.jpg', NULL, NULL),
(31, 21, '2084_Mister-Pet_Mapa_b.png', NULL, NULL),
(32, 78, '629_Mister-Pet_Mapa_b.png', NULL, NULL),
(33, 78, '1802_mapa23232.jpg', NULL, NULL),
(35, 75, '544_im1.jpg', NULL, NULL),
(36, 75, '1527_mapa23232.jpg', NULL, NULL),
(37, 75, '8747_im2.jpg', NULL, NULL),
(38, 51, '4921_2.jpg', NULL, NULL),
(39, 51, '6810_3.jpg', NULL, NULL),
(40, 51, '4909_4.jpg', NULL, NULL),
(41, 51, '8603_5.jpg', NULL, NULL),
(42, 51, '1325_6.jpg', NULL, NULL),
(43, 45, '1640_15.jpg', NULL, NULL),
(44, 45, '2759_16.jpg', NULL, NULL),
(45, 45, '6595_17.jpg', NULL, NULL),
(46, 42, '65_5.jpg', NULL, NULL),
(47, 42, '3305_6.jpg', NULL, NULL),
(48, 42, '2710_7.jpg', NULL, NULL),
(49, 42, '3444_8.jpg', NULL, NULL),
(50, 51, '6645_2.jpg', NULL, NULL),
(51, 42, '3050_6.jpg', NULL, NULL),
(52, 42, '6392_7.jpg', NULL, NULL),
(53, 42, '2797_8.jpg', NULL, NULL),
(54, 42, '8562_9.jpg', NULL, NULL),
(55, 13, '5930_pack duo logo15.png', NULL, NULL),
(56, 27, '3282_FOTO CONGRESO DEL ESTADO.JPG', NULL, NULL),
(57, 28, '6955_FOTO CONGRESO DEL ESTADO.JPG', NULL, NULL),
(58, 2, '6596_as.jpg', NULL, NULL),
(59, 2, '7716_dsfsdf.jpg', NULL, NULL),
(60, 2, '8215_NAZ_a55034056b874379b901a3f67e0fa8da.jpg', NULL, NULL),
(61, 2, '7817_asdasd.jpg', NULL, NULL),
(62, 9, '2972_abf-afc.jpg', NULL, NULL),
(63, 9, '1030_bra.jpg', NULL, NULL),
(64, 9, '2929_bra.jpg', NULL, NULL),
(65, 33, '5711_as.jpg', NULL, NULL),
(66, 33, '1365_dsfsdf.jpg', NULL, NULL),
(67, 33, '6926_imagenes-de-paisajes-015.jpg', NULL, NULL),
(68, 83, '2860_DSC_0365.JPG', NULL, NULL),
(69, 83, '8275_DSC_0308.JPG', NULL, NULL),
(70, 108, '6444_202_derecha2.png', NULL, NULL),
(71, 108, '466_573_derecha1.png', NULL, NULL),
(72, 113, '8140_unnamed (1).jpg', NULL, NULL),
(73, 113, '4120_unnamed (5).jpg', NULL, NULL),
(74, 135, '5557_MARCOS OSUNA.jpg', NULL, NULL),
(75, 135, '7046_CALENDARIO ESCOLAR.jpg', NULL, NULL),
(76, 135, '5302_CARLOS ALVAREZ.jpg', NULL, NULL),
(77, 64, '934_windows-10.jpg', NULL, NULL),
(78, 64, '8958_601846.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_videos`
--

CREATE TABLE IF NOT EXISTS `imagenes_videos` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `idClasificado` int(14) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `imagenes_videos`
--

INSERT INTO `imagenes_videos` (`id`, `idClasificado`, `nombre`, `descripcion`, `titulo`) VALUES
(2, 5, '2988_img1.jpg', NULL, NULL),
(3, 5, '3415_im2.jpg', NULL, NULL),
(4, 6, '6127_im1.jpg', NULL, NULL),
(5, 3, '460_im2.jpg', NULL, NULL),
(6, 3, '2400_img1.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE IF NOT EXISTS `noticias` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `audio` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `referente` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `fecha` date DEFAULT NULL,
  `hora` varchar(255) DEFAULT NULL,
  `mes` varchar(255) DEFAULT NULL,
  `ano` varchar(255) DEFAULT NULL,
  `destacado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opiniones`
--

CREATE TABLE IF NOT EXISTS `opiniones` (
  `idMensaje` int(14) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `mensaje` varchar(560) DEFAULT NULL,
  `fecha` text,
  `hora` varchar(255) DEFAULT NULL,
  `idNoticia` varchar(255) DEFAULT NULL,
  `activo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idMensaje`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `opiniones`
--

INSERT INTO `opiniones` (`idMensaje`, `nombre`, `mensaje`, `fecha`, `hora`, `idNoticia`, `activo`) VALUES
(1, 'Juan', 'Bendiciones a todos los que hacen esta  página que día a día yo y mi familia seguimos, nos encanta las alabanzas, gracias por lo que hacen,que dios los bendiga. ', '25/08/2016', '21:34', '8', '0'),
(2, 'uffwpNeTWM', 'this is phone is best choice compared to it&#8217;s co&0stitorem#823p; the cheapest price , but the same performances as the sgs3.looks more sexy&amp; stylish phone! i love the black one!', '06/12/2016', '09:28', '5', '0'),
(3, '2fwVUF1hDFp', 'Hey Earl,Would this product work with a slightly he/alerviarger camera do you think? Not a full SLR type, but one of those bridge cameras which are a little heavier than the one you use.Thanks.', '06/12/2016', '09:32', '7', '0'),
(4, '90AjjX592', 'Hei, sÃƒÂ¥ koselig innlegg. Jeg er fast leser av den fine bloggen din, men har ikke vÃƒÂ¦rt sÃƒÂ¥ flink til ÃƒÂ¥ legge inn kot.anmarer.m.skel bli flinkere til det assÃƒÂ¥. SÃƒÂ¥ nydelig den lille juletreboksen. Jeg skal til Oslo til uken og da mÃƒÂ¥ jeg kikke inn pÃƒÂ¥ Rafens for ÃƒÂ¥ se om de har flere igjen. Ha en fin helg videre. Hilsen Wilhelmines blogg.', '06/12/2016', '09:36', '8', '0'),
(5, 'de8aN9ik', 'That was such an awesome little video!I agree, I dislike Twilight quite a lot..the only vampire which interests me is Dracula. (partly because he&#39;s the original, partly because he was played by Bela Lugosi at one point!)I can&#39;t wait to see the Bad Romance dance! habhaRo-yn', '06/12/2016', '09:40', '2', '0'),
(6, 'atopAA0W5I', 'Beautifully composed content, a good web server on which the website is situated, furthermore seems wonderful. Also can you need from internet site? Maybe only this kind of in order to peeking at that in order to cobandersily more individuals as well as seemed to be acknowledged on the web! And you become wanted!', '06/12/2016', '09:48', '265fa', '0'),
(7, 'W0ngMHlA8Q', 'I feel so much better reading these comments. As Mums I think we;#2817&re riddled with guilt a lot of the time &#8211; for whatever reason. Maybe that make us better parents than we think we are?', '06/12/2016', '09:54', '4c44', '0'),
(8, '49xWKM7rY', 'Etienne (tinou)courage chaque jour passÃƒÂ© te fait avancer vers une victoire, celle de vaincre jusque la limite de tes forces.thierry ton ami d&8nf17;e#2ance des annÃƒÂ©es 88 et serveur au LIDO', '06/12/2016', '10:04', '3', '0'),
(9, 'Barnypok', 'LHwBvV http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '01/01/2017', '20:44', '2', '0'),
(10, 'Barnypok', '2maJYM http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '01/01/2017', '20:45', '8', '0'),
(11, 'Barnypok', 'VTY8fi http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '01/01/2017', '20:47', '5', '0'),
(12, 'Barnypok', 'UUDpwU http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '01/01/2017', '20:50', '7', '0'),
(13, 'Barnypok', 'wrWELz http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '09/01/2017', '02:40', '7', '0'),
(14, 'JimmiXzS', 'Puw29o http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '09/01/2017', '04:04', '2', '0'),
(15, 'JimmiXzS', 'hQSzju http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '09/01/2017', '04:06', '8', '0'),
(16, 'JimmiXzS', 'dDYN6F http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '09/01/2017', '04:08', '5', '0'),
(17, 'JimmiXzS', '7VMzc9 http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '09/01/2017', '04:11', '7', '0'),
(18, 'xvjspw', 'DDZN3H  <a href="http://njemxdrqdjav.com/">njemxdrqdjav</a>, [url=http://sxejewofnwyr.com/]sxejewofnwyr[/url], [link=http://iupgubnzokie.com/]iupgubnzokie[/link], http://chfnoihaxnam.com/', '10/01/2017', '03:18', '7', '0'),
(19, 'lizaba', 'myOQcZ  <a href="http://qbqzcdjwjfiu.com/">qbqzcdjwjfiu</a>, [url=http://ponjvdqdplrc.com/]ponjvdqdplrc[/url], [link=http://uizneedknhsu.com/]uizneedknhsu[/link], http://dfnatgqywoio.com/', '16/01/2017', '10:43', '7', '0'),
(20, 'Richstednile', 'Propecia Espana Finasteride 1mg  <a href=http://prozac.inpills.com/cheapest-prozac-online.php>Cheapest Prozac Online</a> Levitra Orosolubile Prezzo In Farmacia Uso Cialis Come Cura  <a href=http://cytotec.rx-cs17.com/cytotec-en-pharmacie.php>Cytotec En Pharmacie</a> Amoxicilina 500 Mg From Mexico Zithromax Cats  <a href=http://kamagra.rx-cs17.com/buy-kamagra-jelly-online.php>Buy Kamagra Jelly Online</a> Vigra Infections Keflex Is Used For  <a href=http://nolvadex.rxbill7.com/buy-nolvadex-tamoxifen.php>Buy Nolvadex Tamoxifen</a> Aceclofenac Independiente ', '22/02/2017', '04:56', '2', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

CREATE TABLE IF NOT EXISTS `programas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(1000) DEFAULT NULL,
  `horario` varchar(1000) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `facebook` varchar(500) DEFAULT NULL,
  `twitter` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `imagen` varchar(1000) DEFAULT NULL,
  `mostrar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicidad`
--

CREATE TABLE IF NOT EXISTS `publicidad` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `precio` float DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` varchar(255) DEFAULT NULL,
  `mes` varchar(255) DEFAULT NULL,
  `ano` varchar(255) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Volcado de datos para la tabla `publicidad`
--

INSERT INTO `publicidad` (`id`, `titulo`, `descripcion`, `precio`, `imagen`, `fecha`, `hora`, `mes`, `ano`, `categoria`, `link`) VALUES
(64, 'publicidad 1', '', 0, '914', '0000-00-00', '10:54:52', '00', '0000', 'Home', 'http://www.aula1632.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE IF NOT EXISTS `servicios` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `encabezado` varchar(5000) DEFAULT NULL,
  `video` text,
  `video2` varchar(100) DEFAULT NULL,
  `video3` varchar(1000) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `imagen2` varchar(1000) DEFAULT NULL,
  `categoria` varchar(500) DEFAULT NULL,
  `descripcion` varchar(9999) NOT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `hora` varchar(255) DEFAULT NULL,
  `mes` varchar(255) DEFAULT NULL,
  `ano` varchar(11) DEFAULT NULL,
  `mostrar` varchar(10) DEFAULT NULL,
  `android` varchar(10) DEFAULT NULL,
  `ios` varchar(10) DEFAULT NULL,
  `orden` varchar(100) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `audio` varchar(100) DEFAULT NULL,
  `audio2` varchar(500) DEFAULT NULL,
  `primero` char(30) NOT NULL DEFAULT 'imagen',
  `noticias` varchar(500) DEFAULT NULL,
  `flash` varchar(500) DEFAULT NULL,
  `destacadas` varchar(500) DEFAULT NULL,
  `videos` varchar(500) DEFAULT NULL,
  `visualizaciones` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `titulo`, `encabezado`, `video`, `video2`, `video3`, `imagen`, `imagen2`, `categoria`, `descripcion`, `fecha`, `hora`, `mes`, `ano`, `mostrar`, `android`, `ios`, `orden`, `precio`, `audio`, `audio2`, `primero`, `noticias`, `flash`, `destacadas`, `videos`, `visualizaciones`) VALUES
(2, '&nbsp;&nbsp;&nbsp; ', '&nbsp;\r\n<h1 class="entry-title" color:="" font-size:="" helvetica="" line-height:="" style="box-sizing: inherit; clear: both; margin: 0px 0px 1.05em; text-rendering: optimizeLegibility; font-family: Montserrat, ">\r\n	NUNCA OLVIDES DE DONDE DIOS TE SACO</h1>\r\n', '', '', '', '68', '', '32', '<p>\r\n	&nbsp;<em style="color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify; box-sizing: inherit;"><span style="box-sizing: inherit; font-weight: 700;">&raquo;&iexcl;Cuidado! No vayas a olvidarte del Se&ntilde;or tu Dios, ni de cumplir sus mandamientos, sus decretos y sus estatutos, que hoy te ordeno cumplir. No vaya a ser que luego de que comas y te sacies, y edifiques buenas casas y las habites, y tus vacas y tus ovejas aumenten en n&uacute;mero, y la plata y el oro se te multipliquen, y todo lo que tengas aumente, tu coraz&oacute;n se enorgullezca y te olvides del Se&ntilde;or tu Dios. Deuteronomio 8:11-14 RVC</span></em></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	&ldquo;Ustedes han trabajado duro y han hecho bien, no retuvieron nada de Mi mano cuando Yo se los ped&iacute;, aunque algunas veces vacilaron en soltar algunos de sus m&aacute;s preciados amores, al final los pusieron en Mis manos. Ahora, Yo no retendr&eacute; ninguna cosa buena, les dar&eacute; todo lo que necesitan para tomar posesi&oacute;n de la tierra a donde los estoy enviando, pero tengan cuidado; solamente podr&aacute;n tomar esta tierra por Mis planes y por Mi poder. Recuerden que todo lo que Yo les he ense&ntilde;ado debe cumplirse cuidadosamente. Ustedes deben recordarme en todo lo que hagan en este nuevo lugar porque su victoria solo vendr&aacute; a trav&eacute;s de Mi&rdquo;.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	No vayas a decir en tu coraz&oacute;n: &ldquo;Mi poder y la fuerza de mi brazo me han hecho ganar estas riquezas.&rdquo; M&aacute;s bien, acu&eacute;rdate del Se&ntilde;or tu Dios, porque &eacute;l es quien te da el poder de ganar esas riquezas, a fin de confirmar el pacto que hizo con tus padres, como en este d&iacute;a. Deuteronomio 8:17-18</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	&ldquo;Me complazco en enviarlos para que avancen, han esperado durante mucho tiempo y Yo he escuchado el clamor de su coraz&oacute;n diciendo: &iquest;Hasta cuando?, cada a&ntilde;o se preguntaban &iquest;Ser&aacute; este a&ntilde;o Se&ntilde;or?; y siguieron caminando a pesar de que nada suced&iacute;a. Pero ustedes vieron que con cada a&ntilde;o que pasaba, lo que aprend&iacute;an del a&ntilde;o anterior era fundamental para su &eacute;xito en la tierra prometida. &iquest;Seguir&aacute;n confiando en Mi tiempo, mientras entran en esta nueva tierra?. Conf&iacute;en en Mi porque Yo soy el que los hace avanzar, hay tambi&eacute;n una l&iacute;nea de tiempo en las cosas que deben suceder. Ustedes no deben adelantarse o retrasarse. Esperen Mi direcci&oacute;n&rdquo;.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	&ldquo;Habr&aacute; muchas personas en los lugares oscuros a los que Yo los enviar&eacute;, que Me han clamado por a&ntilde;os, rog&aacute;ndome para que les env&iacute;e ayuda y tambi&eacute;n clamando &iquest;Hasta cuando Dios, hasta cuando?. En este tiempo, Yo he estado preparando a Mis siervos, y Yo he estado preparando un ej&eacute;rcito secreto para que vaya y se enfrente con la necesidad. Para que vaya y venza la oscuridad que ha esclavizado y da&ntilde;ado a las personas. No tengan temor, de lo que ver&aacute;n cuando lleguen all&iacute;. Yo mantendr&eacute; Mis ojos abiertos sobre este lugar y les dar&eacute; las estrategias para la victoria. Algunos de ustedes ser&aacute;n lanzados en la misma ciudad donde los escond&iacute;, salgan de sus cuevas, vengan. Recu&eacute;rdenme y conf&iacute;en en Mi como su Capit&aacute;n de batalla y ustedes ver&aacute;n la victoria&rdquo;</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Pero si llegan a olvidarse del Se&ntilde;or su Dios y se van tras dioses ajenos, y les sirven y se inclinan ante ellos, yo les hago saber hoy que de cierto perecer&aacute;n. Deuteronomio 8:19</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Con amor y oraciones,</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">Magie</span></p>\r\n', '2016-08-25', '06:49:13', '08', '2016', '1', '', '', '', 0, '', '', '', '1', '', '', '', '398'),
(3, '', '&nbsp;\r\n<h1 class="entry-title" style="box-sizing: inherit; clear: both; margin: 0px 0px 1.05em; text-rendering: optimizeLegibility; font-family: Montserrat, &quot;Helvetica Neue&quot;, sans-serif; font-size: 2.5rem; line-height: 1.225; color: rgb(187, 81, 53) !important;">\r\n	COMO EN EL CIELO</h1>\r\n', '', '', '', '220', '', '32', '<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;<em style="box-sizing: inherit; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;"><span style="box-sizing: inherit; font-weight: 700;">H&aacute;gase tu voluntad, como en el cielo, as&iacute; tambi&eacute;n en la tierra. Mateo 6:10</span></em></p>\r\n<p>\r\n	<span style="color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">Estos han sido d&iacute;as tan dram&aacute;ticos e inciertos &uacute;ltimamente, con tantas bombas, tempestades, incendios y violencia irrumpiendo por todas partes. Al mismo tiempo, yo, y muchos otros como yo, hemos experimentado unos encuentros celestiales m&aacute;s dram&aacute;ticos que nunca. Estamos entrando en un tiempo donde Dios se est&aacute; revelando m&aacute;s sobre como es &Eacute;l. Estamos viviendo en un tiempo cuando nuestras vidas en la Tierra pueden cambiar radicalmente conforme entendemos lo que Jes&uacute;s dijo: &ldquo;&hellip;en la tierra como en el Cielo&rdquo;. Mateo 6:10</span></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Podemos tener paz en medio de cualquier situaci&oacute;n cuando entendemos las cosas desde la perspectiva del Cielo. El velo entre el Cielo y la Tierra se est&aacute; abriendo m&aacute;s, mientras estamos entrando en grandes tiempos de cosecha y avivamiento globales. El Cielo es muy real e interactivo; no es solo un sitio donde nos vamos al morir. Tanto si te das cuenta de ello como si no, tu esp&iacute;ritu est&aacute; relacion&aacute;ndose con el Cielo todos los d&iacute;as. Esto puede ser a trav&eacute;s de cosas como sue&ntilde;os, visiones o Dios habl&aacute;ndote.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">EL CIELO REVELADO</span></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Jes&uacute;s dijo: &ldquo;No se turbe vuestro coraz&oacute;n; cre&eacute;is en Dios, creed tambi&eacute;n en M&iacute;. En la casa de Mi Padre muchas moradas hay; si as&iacute; no fuera, Yo os lo hubiera dicho; voy, pues, a preparar lugar para vosotros. Y si me fuere y os preparare lugar, vendr&eacute; otra vez, y os tomar&eacute; a M&iacute; mismo, para que donde Yo estoy, vosotros tambi&eacute;n est&eacute;is&rdquo;. Juan 14: 1-3 (RVR 1960)</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Jes&uacute;s no solo est&aacute; hablando del Cielo como un lugar que vamos a disfrutar en el futuro, sino que dice que &Eacute;l va a regresar a nuestras vidas en la tierra y abrir&aacute; la puerta para experimentar el Cielo ahora. Esto tambi&eacute;n nos indica que nos est&aacute; llevando a una relaci&oacute;n mas cercana, donde podemos estar en lugares de comuni&oacute;n mas &iacute;ntimos con &Eacute;l. Esto es esencial para escuchar la voz de Dios y para entender el destino al cual estamos llamados.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">MISTERIOS PROFETICOS REVELADOS</span></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Despu&eacute;s de que Jes&uacute;s volviera al Cielo, Dios nos envi&oacute; el Esp&iacute;ritu Santo. Los primeros disc&iacute;pulos empezaron a recibir una mayor revelaci&oacute;n una vez que recibieron el Esp&iacute;ritu Santo sobre cosas escritas en el Tor&aacute; (la Biblia) sobre los nuevos tiempos en los que estaban viviendo. Cada generaci&oacute;n necesita una revelaci&oacute;n nueva y fresca sobre Qui&eacute;n Dios es para ellos. Esta revelaci&oacute;n ampliada hace posible que todo el mundo experimente a Dios en un modo que tenga sentido para ellos. &iexcl;Esto est&aacute; ocurriendo ahora mismo!</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	&ldquo;El misterio que hab&iacute;a estado oculto desde los siglos y edades, pero que ahora ha sido manifestado a sus santos&rdquo;. Colosenses 1:26</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Durante los pr&oacute;ximos seis meses, podemos esperar ver como Dios nos otorga un mayor entendimiento sobre algunos misterios prof&eacute;ticos clave, que antes hab&iacute;an estado ocultos. Algunas veces, esto fluir&aacute; como una descarga desde el Cielo. Un ejemplo pr&aacute;ctico de esto ser&iacute;a cuando aquellas personas que han sentido que ten&iacute;an que escribir un libro, pero no sab&iacute;an cu&aacute;l ser&iacute;a el tema del mismo, lo tendr&aacute;n s&uacute;bitamente. Adem&aacute;s, mientras esto ocurre, saldr&aacute;n multitud de nuevos sonidos, m&uacute;sica, arte e ideas de negocios.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	&ldquo;Te dar&eacute; los tesoros de las tinieblas, y las riquezas guardadas en lugares secretos, para que sepas que yo soy el Se&ntilde;or, el Dios de Israel, que te llama por tu nombre&rdquo;. Isa&iacute;as 45: 3 NVI</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Dios va a usar este tiempo para llamarte por tu nombre y revelarte el prop&oacute;sito para el cual te puso en la Tierra. En medio de esto, tambi&eacute;n vendr&aacute; un nuevo fluir creativo desde el Cielo. Prep&aacute;rate para entrar en un nuevo tiempo de interacciones celestiales, descargas prof&eacute;ticas y mayor entendimiento. (Doug Addison)</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Por amor a Si&oacute;n no guardar&eacute; silencio, por amor a Jerusal&eacute;n no desmayar&eacute;, hasta que su justicia resplandezca como la aurora, y como antorcha encendida su salvaci&oacute;n. Las naciones ver&aacute;n tu justicia, y todos los reyes tu gloria; recibir&aacute;s un nombre nuevo, que el Se&ntilde;or mismo te dar&aacute;. Isa&iacute;as 62:1-2</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Con amor y oraciones,</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">Magie</span></p>\r\n', '2016-08-25', '07:16:50', '08', '2016', '1', '', '', '', 0, '', '', '', '1', '', '', '', '450'),
(4, '', '<strong>&nbsp;</strong>\r\n<h1 class="entry-title" style="box-sizing: inherit; clear: both; margin: 0px 0px 1.05em; text-rendering: optimizeLegibility; font-family: Montserrat, &quot;Helvetica Neue&quot;, sans-serif; font-size: 2.5rem; line-height: 1.225; color: rgb(187, 81, 53) !important;">\r\n	<strong>TIEMPO DE AVANZAR EN LOS PROPOSITOS DE DIOS PARA USTED</strong></h1>', '', '', '', '405', '', '32', '<p>\r\n	&nbsp;<em style="color: rgb(128, 0, 128); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify; box-sizing: inherit;"><span style="box-sizing: inherit; font-weight: 700;">Josu&eacute; 2:22 dice: &ldquo;Los hombres se dirigieron a las monta&ntilde;as y permanecieron all&iacute; tres d&iacute;as, hasta que sus perseguidores regresaron a la ciudad. Los hab&iacute;an buscado por todas partes, pero sin &eacute;xito&rdquo;</span></em></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">DOS ESPIAS</span></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Josu&eacute; envi&oacute; dos esp&iacute;as para obtener un reporte para determinar el momento correcto donde Dios los har&iacute;a entrar en la tierra prometida. Despu&eacute;s que los esp&iacute;as estuvieron all&iacute; y recibieron el reporte de Rahab, donde se enteraron que &ldquo;el temor hacia ellos se hab&iacute;a apoderado de la gente de Jeric&oacute;&rdquo;, los esp&iacute;as partieron hacia el &ldquo;monte&rdquo; y se quedaron all&iacute; tres d&iacute;as. Pero los dos esp&iacute;as se escondieron a s&iacute; mismos al esconderse en el monte.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">El Salmo 91:1</span>&nbsp;dice: &ldquo;El que habita al abrigo del Alt&iacute;simo se acoge a la sombra del Todopoderoso&rdquo;.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">EL MONTE</span></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">Cuando Dios nos lleva hacia el pr&oacute;ximo nivel, el sitio para invadir la tierra que nos prometi&oacute;, es sabio saber hacia d&oacute;nde ir y encontrar ese lugar secreto en &Eacute;l.</span>&nbsp;El monte es s&iacute;mbolo de ese lugar oculto de seguridad y refugio donde ning&uacute;n acosador puede encontrarnos. El enemigo no puede seguir nuestros pasos cuando habitamos en el lugar secreto. En este sitio estamos escondidos en su sombra.&nbsp;<span style="box-sizing: inherit; font-weight: 700;">El enemigo es expuesto a la luz de Dios, all&iacute; podremos ver sus estrategias y esquivar sus t&aacute;cticas.</span></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">El Salmo 17:8-9</span>&nbsp;dice: &ldquo;Cu&iacute;dame como a la ni&ntilde;a de tus ojos; esc&oacute;ndeme, bajo la sombra de tus alas, de los malvados que me atacan, de los enemigos que me han cercado&rdquo;.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">UN TIEMPO PARA SOLTARSE</span></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	El tres representa la plenitud, as&iacute; como el Padre, el Hijo y el Esp&iacute;ritu Santo representan la Deidad (Colosenses 2:9). El tres es el n&uacute;mero que representa la plenitud.&nbsp;<span style="box-sizing: inherit; font-weight: 700;">Luego que los esp&iacute;as se quedaron en el monte por tres d&iacute;as, fueron capaces de dejar el monte y darle el reporte positivo a Josu&eacute;.</span>&nbsp;<span style="box-sizing: inherit; font-weight: 700;">Para nosotros, no es suficiente quedarnos por un tiempo. Debe ser el tiempo necesario para desbaratar las t&aacute;cticas del enemigo.&nbsp;</span>Si los esp&iacute;as hubieran dejado el monte demasiado r&aacute;pido, no hubiesen podido entregarle el reporte positivo a Josu&eacute;. Por lo tanto, no hubieran podido tomar la tierra en esa oportunidad. Hay algo que se suelta cuando se cumple la &ldquo;plenitud de un tiempo&rdquo;. Cuando Cristo vino a la tierra, lo hizo en la &ldquo;culminaci&oacute;n&rdquo; de un tiempo. En nuestro caso, existen ciertas estaciones de culminaci&oacute;n y tiempos necesarios para que algunas promesas se suelten en nuestras vidas.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">G&aacute;latas 4:4</span>&nbsp;dice: &ldquo;Pero cuando se cumpli&oacute; el plazo, Dios envi&oacute; a su Hijo, nacido de una mujer, nacido bajo la ley&rdquo;.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">Hebreos 6:12</span>&nbsp;dice: &ldquo;No sean perezosos; m&aacute;s bien, imiten a quienes por su fe y paciencia heredan las promesas&rdquo;.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">REPORTE ENTREGADO, TIERRA TOMADA</span></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">Debido a la paciencia y la habilidad para esperar, los dos esp&iacute;as fueron capaces de regresar con un reporte positivo</span>. Josu&eacute; estuvo de acuerdo con ello, el resto es historia. Pero estos dos esp&iacute;as jugaron un rol importante porque vieron la tierra y la promesa con una visi&oacute;n celestial: los ojos de Dios y los ojos de la fe.&nbsp;<span style="box-sizing: inherit; font-weight: 700;">Sus reportes de fe y victoria fueron vitales para tomar su decisi&oacute;n de tomar la tierra.</span></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">Hebreos 11:6</span>&nbsp;dice: &ldquo;En realidad, sin fe es imposible agradar a Dios, ya que cualquiera que se acerca a Dios tiene que creer que &eacute;l existe y que recompensa a quienes lo buscan&rdquo;</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">&iexcl;VICTORIA ACTUALIZADA!</span></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Estamos en un tiempo cuando se inspeccionaron muchas tierras prometidas. Los agentes / esp&iacute;as de Dios fueron y regresaron con un buen reporte. Pero este reporte es tan bueno como nuestra habilidad para escondernos del enemigo y mantenernos enfocados.&nbsp;<span style="box-sizing: inherit; font-weight: 700;">Ahora, como entonces, es muy importante esconderse en el monte de Dios. Existen muchos prop&oacute;sitos espec&iacute;ficos, planes y promesas que Dios desea manifestar a trav&eacute;s de nosotros. Al escondernos en Dios, nuestro Monte de Refugio, el enemigo no nos puede encontrar. Nuestra clave es encontrarnos en su lugar de morada, viviendo en obediencia a &Eacute;l.</span></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">Josu&eacute; 6:15-16</span>&nbsp;dice: &ldquo;El s&eacute;ptimo d&iacute;a, a la salida del sol, se levantaron y marcharon alrededor de la ciudad tal como lo hab&iacute;an hecho los d&iacute;as anteriores, s&oacute;lo que en ese d&iacute;a repitieron la marcha siete veces. A la s&eacute;ptima vuelta, los sacerdotes tocaron las trompetas, y Josu&eacute; le orden&oacute; al ej&eacute;rcito: &iexcl;Empiecen a gritar! &iexcl;El Se&ntilde;or les ha entregado la ciudad!&rdquo;.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">Cuando este tiempo en el monte llegue a su cumplimiento, habr&aacute; una ventana de apertura y compromiso para asegurar la victoria.</span>&nbsp;<span style="box-sizing: inherit; font-weight: 700;">Este es el a&ntilde;o de m&uacute;ltiples victorias en cada frente. Pero esta no es una palabra para actuar con pasividad. Debemos ser agresivos al tomar la tierra con las estrategias que el Se&ntilde;or nos entreg&oacute;. Por lo tanto, debemos recordar que los pasos que damos ser&aacute;n tan efectivos como el tiempo que pasemos con &Eacute;l en su Monte.</span></p>\r\n<p s', '2016-08-25', '07:25:26', '08', '2016', '1', '', '', '', 0, '', '', '', '1', '', '', '', '457'),
(5, '', '&nbsp;\r\n<h1 class="entry-title" style="box-sizing: inherit; clear: both; margin: 0px 0px 1.05em; text-rendering: optimizeLegibility; font-family: Montserrat, &quot;Helvetica Neue&quot;, sans-serif; font-size: 2.5rem; line-height: 1.225; color: rgb(187, 81, 53) !important;">\r\n	<span style="color:#000;">TAN SOLO NECESITAS FE Y OBEDIENCIA</span></h1>\r\n', '', '', '', '657', '', '32', '<p>\r\n	&nbsp;<span style="color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">Yo escucho el viento soplar, el r&iacute;o correr y el fuego arder. Y, el Se&ntilde;or dice:</span><span style="color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify; box-sizing: inherit; font-weight: 700;">Si tan solo t&uacute; pudieras creer lo que te He dicho, entonces t&uacute; lo tendr&iacute;as. Debes hacerlo tuyo y se convertir&aacute; en una realidad viviente en estas pr&oacute;ximas semanas.</span></p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Observa las cosas peque&ntilde;as que necesitan tu atenci&oacute;n.&nbsp;<span style="box-sizing: inherit; font-weight: 700;">Los detalles que t&uacute; pases por alto en este tiempo, pueden interrumpir tu fluir espiritual y presentarse como un mayor problema m&aacute;s tarde.&nbsp;</span>Tu rigurosidad ahora ser&aacute; de gran beneficio en el futuro para ti, y para los que te rodean.<span style="box-sizing: inherit; font-weight: 700;">T&oacute;mate el tiempo que necesites para hacer bien el trabajo, dice el Se&ntilde;or.</span>T&uacute; te alegrar&aacute;s de haberlo hecho.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	<span style="box-sizing: inherit; font-weight: 700;">Cantares 2:15</span>&nbsp;Atrapen las zorras, las zorras peque&ntilde;as que arruinan nuestros vi&ntilde;edos, nuestros vi&ntilde;edos en flor.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	La palabra de hoy habla de dos ingredientes esenciales para recibir un milagro:&nbsp;<span style="box-sizing: inherit; font-weight: 700;">FE Y OBEDIENCIA</span>. Sin fe es imposible agradar a Dios (Hebreos 11:6) y a Dios no le agradan los sacrificios sino la obediencia (1 Samuel 15:22). Jes&uacute;s dijo:&nbsp;<span style="box-sizing: inherit; font-weight: 700;">Juan 14:21</span>&nbsp;El que tiene mis mandamientos, y los obedece, &eacute;se es el que me ama; y el que me ama, ser&aacute; amado por mi Padre, y Yo lo amar&eacute;, y me manifestar&eacute; a &eacute;l.&raquo;</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Creo que este es el momento de ejercer la fe violenta de la que habla&nbsp;<span style="box-sizing: inherit; font-weight: 700;">Mateo 11:12</span>&nbsp;Desde los d&iacute;as de Juan el Bautista hasta ahora, el reino de los cielos sufre violencia, y los violentos lo arrebatan. Judy Jacobs dice en uno de sus libros: &ldquo;Existe una diferencia entre el tipo de fe que simplemente toca las promesas de Dios y el tipo de fe que agresivamente va tras la promesa y lo toca a El. Ese tipo de toque dice: &iexcl;Estoy desesperado!</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	Es por esta raz&oacute;n que durante mucho tiempo Dios ha estado exhort&aacute;ndonos a salir de la zona de comodidad, a deshacernos del letargo espiritual, de las distracciones que nos roban el tiempo para orar y leer la Biblia. Recordemos hoy lo que dice&nbsp;<span style="box-sizing: inherit; font-weight: 700;">Romanos 10:17</span>&nbsp;As&iacute; que la fe viene como resultado de o&iacute;r el mensaje, y el mensaje que se oye es la palabra de Cristo. Del otro lado de tu fe y tu obediencia est&aacute;n tu victoria y tu milagro.</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	El Se&ntilde;or dice: &ldquo;No pierdan el tiempo en ning&uacute;n ejercicio religioso. Aprovechen cada momento disponible para buscar Mi rostro, o&iacute;r Mi voz, y obedecer Mi orden. Siembren la semilla de un deseo espiritual y d&eacute;jense llevar completa e instant&aacute;neamente por Mi Esp&iacute;ritu. Demuestren el Reino. Hagan su trabajo con excelencia y confianza. &iexcl;No ser&aacute;n defraudados, dice el Se&ntilde;or Todopoderoso!&rdquo;</p>\r\n<p style="box-sizing: inherit; margin: 0px 0px 1.75em; color: rgb(37, 26, 24); font-family: Merriweather, Georgia, serif; font-size: 16px; line-height: 28px; text-align: justify;">\r\n	&nbsp;<em style="box-sizing: inherit; color: rgb(128, 0, 128);"><span style="box-sizing: inherit; font-weight: 700;">Bill y Marsha Burns</span></em></p>\r\n', '2016-08-25', '07:29:24', '08', '2016', '1', '', '', '', 0, '', '', '', '1', '', '', '', '369'),
(7, '', '<strong><span style="font-size:28px;">Una Vida Restaurada</span></strong>', '', '', '', '810', '', '32', '<p>\r\n	&nbsp;Las PALABRAS que utiliza TIENEN EL PODER de calificar o descalificar a otros, a s&iacute; mismo, y tambi&eacute;n de alguna manera el obrar de Dios en su vida. A Gede&oacute;n le esta ocurriendo eso en este cap&iacute;tulo, mira las cosas de una manera negativa. Jueces 6:12-13&nbsp;12Y el &aacute;ngel de Jehov&aacute; se le apareci&oacute;, y le dijo: Jehov&aacute; est&aacute; contigo, var&oacute;n esforzado y valiente. 13Y Gede&oacute;n le respondi&oacute;: Ah, se&ntilde;or m&iacute;o, si Jehov&aacute; est&aacute; con nosotros, &iquest;por qu&eacute; nos ha sobrevenido todo esto? &iquest;Y d&oacute;nde est&aacute;n todas sus maravillas, que nuestros padres nos han contado, diciendo: No nos sac&oacute; Jehov&aacute; de Egipto? Y ahora Jehov&aacute; nos ha desamparado, y nos ha entregado en mano de los madianitas [&hellip;].</p>\r\n<p>\r\n	Puede haber 3 fuentes de donde provienen estas cosas, de Dios, del diablo o de usted mismo:</p>\r\n<p>\r\n	DE DIOS: puede haber una situaci&oacute;n que no es de lo mejor, PERO DIOS HIZO UN PLAN, detr&aacute;s de todas esas cosas que est&aacute;n pasando hay algo que Dios quiere traer a su vida. A lo mejor usted dice: &iexcl;esto no viene m&aacute;s!, o &iquest;qu&eacute; pasa que no sucede lo que estoy esperando? Pero, ese periodo de tiempo (que lo debe transitar firme), usted tiene que utilizarlo para CONSOLIDAR SU FE y seguir adelante.</p>\r\n<p>\r\n	DEL ENEMIGO: Puede ser que lo que ocurra venga de parte del enemigo para que retroceda, se rinda, abandone, baje la guardia y deje de pelear la buena batalla de la fe. Sin embargo, lo que debe hacer es afirmarse m&aacute;s, fortalecerse y creerle a Dios. Lo que utiliza el diablo es CIRCUNSTANCIAL Y PASAJERO, pero lo que Dios le da es una verdad permanente que lo hace triunfar sobre lo circunstancial. &iexcl;Recibir&aacute; discernimiento para utilizar las armas espirituales y lograr que la victoria se manifieste!</p>\r\n<p>\r\n	DE USTED MISMO: Puede ser que lo que ocurra sea por usted mismo. Todos tienen algo que corregir. Medite en sus caminos, h&aacute;galo a la luz de la palabra de Dios. HAGA CORRECCIONES, permita que la palabra lo restaure para dejar fluir de la bendici&oacute;n de Dios sobre usted. No piense solamente en s&iacute; mismo, en lo propio y en lo personal, fije su mirada en Dios y en su palabra, avance con fe en todo.</p>\r\n<p>\r\n	Declare: &iexcl;Todas las acciones que voy desarrollando en mi vida las pongo en l&iacute;nea con lo que Dios ha dicho, responder&eacute; al llamado de Dios y encontrar&eacute; mi destino de Victoria, am&eacute;n!</p>\r\n<p>\r\n	Si hay cosas en su vida que no est&aacute;n funcionando, observe como Dios habla a su pueblo sobre este asunto. En el libro de Hageo, el pueblo hab&iacute;a comenzado a ver que no hab&iacute;a frutos en los &aacute;rboles, que a los animales les iba mal, y que no hab&iacute;a cosecha en los campos. Entonces, se preguntaban &iquest;Por qu&eacute; est&aacute; pasando esto?, y Dios respond&iacute;a: &ldquo;mediten en sus caminos, porque yo sigo siendo &Eacute;l Dios todopoderoso [&hellip;]&rdquo;. Ahora, es tiempo comenzar a corregir el camino (volver a enfocarse), darle continuidad a la asignaci&oacute;n divina, y darle lugar a la RESTAURACI&Oacute;N DE PARTE DE DIOS. Luego, vuelve a hablar Dios, diciendo: &ldquo;desde este d&iacute;a los bendecir&eacute;, habr&aacute; fruto en los &aacute;rboles, estar&aacute;n bendecidos los animales, tendr&aacute;n buenas cosechas porque hoy comenzaron a transitar de vuelta por el camino de la restauraci&oacute;n de todas las cosas [&hellip;]&rdquo;.</p>\r\n<p>\r\n	La perspectiva en la cual mira su vida, debe ser a trav&eacute;s de la verdad de la palabra de Dios y as&iacute; permitir que Cristo se revele y sea formado en usted; y de esta manera irradie la gloria de Dios en su vida. Entonces, desde ese d&iacute;a empezar&aacute; a ver manifestarse las bendiciones a su alrededor.</p>\r\n<p>\r\n	Indudablemente, en cualquier de estas tres opciones, LA VICTORIA ESTAR&Aacute; DE SU LADO porque:&nbsp;<br />\r\n	- De Dios viene la bendici&oacute;n y &Eacute;l siempre lo llevar&aacute; por CAMINOS de SUPERACI&Oacute;N y de alcance glorioso.&nbsp;<br />\r\n	- El diablo es su enemigo y nunca dejar&aacute; de ser su adversario, pero usted TIENE LA VICTORIA; Dios le dar&aacute; sabidur&iacute;a y discernimiento para operar en las actitudes y acciones correctas.&nbsp;<br />\r\n	- Si el responsable es usted por hacer algunas cosas mal, TIENE la GRACIA DE DIOS para corregirlas.</p>\r\n<p>\r\n	Dios no lo desampar&aacute;, le da la palabra, le da sabidur&iacute;a, y le da el Esp&iacute;ritu Santo. La Victoria en su vida ser&aacute; mayor, tiene a Cristo y est&aacute; rodeado de &aacute;ngeles, &iexcl;hoy ver&aacute; en su vida la Gloria de Dios, am&eacute;n!</p>\r\n<p>\r\n	Ap&oacute;stol Juan Crudo</p>\r\n', '2016-08-25', '07:36:42', '08', '2016', '1', '', '', '', 0, '', '', '', '1', '', '', '', '499'),
(8, '', '<strong><span style="font-size:24px;">Queridos hermanos:</span></strong>', '', '', '', '800', '', '32', '<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="font-size:22px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quiero agradecer por los mensajes de aliento y saludos que nos mandaron por el problema que tuvo nuestra web.</span></p>\r\n<p>\r\n	<span style="font-size:22px;">Con m&aacute;s &nbsp;4 a&ntilde;os de existencia y &nbsp;28600 visitas &nbsp;nuestra web ten&iacute;a muchas ense&ntilde;anzas subidas de distintos mensajeros de la palabra de Dios, como as&iacute; tambi&eacute;n &nbsp;im&aacute;genes, audios, videos, pel&iacute;culas &nbsp;y la biblia para poder descargar directamente de la web. Tenerla como estaba antes nos va a llevar un poco de tiempo, pero ya comenzamos a poner manos a la obra.</span></p>\r\n<p>\r\n	<span style="font-size:22px;">&nbsp;Nuestro nuevo aspecto nos gusta mucho y esperemos que sea de su agrado , a medida que valla pasando el tiempo vamos a tener la web como antes , gracias por acompa&ntilde;arnos , Bendiciones.-</span></p>\r\n<p>\r\n	<span style="font-size:22px;"><br />\r\n	</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="font-size:24px;">Atte. &nbsp;Jes&uacute;s Mar&iacute;a Villegas</span></p>\r\n', '2016-08-25', '10:23:15', '08', '2016', '', '', '', '', 0, '', '', '', 'Array', '', '1', '', '317');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social`
--

CREATE TABLE IF NOT EXISTS `social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook` varchar(5000) DEFAULT NULL,
  `twitter` varchar(5000) DEFAULT NULL,
  `youtube` varchar(5000) DEFAULT NULL,
  `vimeo` varchar(5000) DEFAULT NULL,
  `google` varchar(5000) DEFAULT NULL,
  `linkedin` varchar(5000) DEFAULT NULL,
  `instagram` varchar(5000) DEFAULT NULL,
  `pinterest` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `social`
--

INSERT INTO `social` (`id`, `facebook`, `twitter`, `youtube`, `vimeo`, `google`, `linkedin`, `instagram`, `pinterest`) VALUES
(1, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE IF NOT EXISTS `visitas` (
  `dia` int(4) unsigned DEFAULT NULL,
  `totales` int(11) unsigned DEFAULT NULL,
  `hoy` int(11) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votosEncuesta`
--

CREATE TABLE IF NOT EXISTS `votosEncuesta` (
  `idEncuesta` int(14) NOT NULL,
  `opcion` varchar(255) DEFAULT NULL,
  `ip` text,
  `id` int(14) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT AUTO_INCREMENT=41 ;

--
-- Volcado de datos para la tabla `votosEncuesta`
--

INSERT INTO `votosEncuesta` (`idEncuesta`, `opcion`, `ip`, `id`) VALUES
(4, '03582-496601', 'Malena', 1),
(5, '0358-4669965', 'Belisario  Roldan 535 Rio Cuarto Cba.', 2),
(6, '0358-4672945/4672946', '11 De Noviembre 1150 Río Cuarto Cba.', 3),
(7, '0358-4676805', 'Colombia 351 Río Cuarto Cba.', 4),
(8, '0358-4676826', 'Wenseslao Tejerina y Ruta A005 Río Cuarto Cba.', 5),
(9, '0358-4672928', 'L. N. Alem esq. J de Dios Lopez s/n Río Cuarto Cba.', 6),
(10, '0353-4873436', 'Bengolea Juarez Celman Cba.', 7),
(11, '0353-4883391', 'Mariano Moreno 375 Ucacha Juarez Celman Cba.', 8),
(12, '0358-4882005', 'Mitre 418 Cnel. Baigorria Cba.', 9),
(13, '03582-483134', 'Av. 25 de Mayo 111 Cnel. Moldes', 10),
(14, '0358-4672926', 'Manco Capac 50 Río Cuarto Cba.', 11),
(15, '03584-423143', 'Gral Paz 320 La Carlota Cba.', 12),
(16, '0358-4050122', 'Azcuenaga 21 Gral. Deheza Cba.', 13),
(17, '0358-488227', 'Julio Borda s/n Alpa Corral Cba.', 14),
(18, '', 'Mariano Moreno 375 Ucacha Cba.', 15),
(21, '0358-4637798/4676802', 'Sobremonte 1357 Río Cuarto Cba.', 17),
(22, '0358-4978840', 'Carlos Gardel y Castagnari Las Higueras Cba.', 18),
(23, '0358-4672931', 'Bolivar 335 Río Cuarto Cba.', 19),
(24, '03584-423144', 'Zona Rural s/n La Carlota Cba.', 20),
(42, '03584-423142', 'Velez Sarsfield 651 La Carlota Cba.', 38),
(43, '0358-4969601', 'Dean Funes Y Héroes Anónimos Alcira Gigena Cba.', 39),
(44, '0358-4672917', 'Constitución 1040 Río Cuarto Cba.', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE IF NOT EXISTS `vuelos` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `link` varchar(2000) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` varchar(255) DEFAULT NULL,
  `mes` varchar(255) DEFAULT NULL,
  `ano` varchar(255) DEFAULT NULL,
  `mostrar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`id`, `titulo`, `descripcion`, `link`, `imagen`, `fecha`, `hora`, `mes`, `ano`, `mostrar`) VALUES
(1, 'Oma', '<p>\r\n	Es una nueva tecnolog&iacute;a aplicada a la creaci&oacute;n de c&oacute;cteles premium que est&aacute; dando que hablar. Los creadores del sistema son tres hermanos argentinos que ya piensan en exportar la idea al mundo</p>\r\n', 'http://www.oma.aero/es/aeropuertos/culiacan/pasajeros/estatus-de-vuelo.php', '356_logo.gif', '2015-08-20', '23:48:19', '08', '2015', 1),
(2, 'Oma  Mazatlan', '<p>\r\n	Es una nueva tecnolog&iacute;a aplicada a la creaci&oacute;n de c&oacute;cteles premium que est&aacute; dando que hablar. Los creadores del sistema son tres hermanos argentinos que ya piensan en exportar la idea al mundo</p>\r\n', 'http://www.oma.aero/es/aeropuertos/mazatlan/pasajeros/estatus-de-vuelo.php', '979_logo.gif', '2015-08-20', '23:49:58', '08', '2015', 1),
(3, 'Aeropuertos GAP', '<p>\r\n	Es una nueva tecnolog&iacute;a aplicada a la creaci&oacute;n de c&oacute;cteles premium que est&aacute; dando que hablar. Los creadores del sistema son tres hermanos argentinos que ya piensan en exportar la idea al mundo</p>\r\n', 'https://www.aeropuertosgap.com.mx/es/?Itemid=434', '51_logo.png', '2015-08-20', '23:51:06', '08', '2015', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
