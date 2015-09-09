-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-08-2015 a las 12:15:27
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u754179656_jordi`
--
CREATE DATABASE IF NOT EXISTS `u754179656_jordi` DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci;
USE `u754179656_jordi`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `works`
--

CREATE TABLE IF NOT EXISTS `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `seccion` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `subseccion` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `proveedor` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `cliente` varchar(30) COLLATE utf8_swedish_ci NOT NULL,
  `fecha` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `skills` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `detalle` varchar(1000) COLLATE utf8_swedish_ci NOT NULL,
  `miniatura` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `imagenes` varchar(500) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=43 ;

--
-- Volcado de datos para la tabla `works`
--

INSERT INTO `works` (`id`, `titulo`, `seccion`, `subseccion`, `proveedor`, `cliente`, `fecha`, `skills`, `detalle`, `miniatura`, `imagenes`) VALUES
(1, 'Fortress Jets WP Template', 'Diseño Web/Apps', 'webs', 'Aracnia', 'Fortress Jets', '2013', 'photoshop,illustrator', 'Fortress Jet es una arrendadora de Jets privados de alta gama. Para su sitio web, desarrollé un template para Wordpress usando HTML5, WP Bones Framework y LESS. ', 'fortress', '3'),
(2, 'Mozido', 'Diseño Web/Apps', 'webs', 'W3 Américas', 'Mozido', '2014', 'photoshop,illustrator,muse', 'Mozido es un módulo de servicio de pago online al estilo Paypal o Google Wallet. Nuestro trabajo en W3 fue ofrecerle propuestas gráficas responsive para el rediseño de su actual sitio web.', 'mozido', '3'),
(3, 'Flannigan''s', 'Diseño Web/Apps', 'webs', 'W3 Américas', 'W3 Américas', '2013', 'photoshop,3dmax', 'Flannigan''s es una cadena de restaurantes tipo bodegón, con bastante popularidad en la Florida. Ante la necesidad de rediseñar su sitio web, recurrieron a W3 donde le presentamos dos propuestas responsive, manteniendo el centro de atención en el atractivo de los platos.', 'flanigans', '3'),
(4, 'IAAS', 'Diseño Web/Apps', 'webs', 'Aracnia', 'IAAS', '2013', 'photoshop,illustrator', 'IAAS es un instituto de buceo que organiza viajes a diferentes partes del mundo y cursos hasta buzo profesional. Para ellos diseñé y desarrollé un template para Joomla e implementé el mismo en la plataforma, con módulos de galerías de fotos, calendario sincronizado con gcalendar y carrito de compras.', 'iaas', '3'),
(5, 'Eagle Ford', 'Diseño Web/Apps', 'apps', 'W3 Américas', 'Eagle Ford', '2014', 'photoshop,illustrator,html5', 'Eagle Ford App fue iniciativa de un emprendedor privado que contactó a W3 Américas para diseñar y desarrollar una app con información útil para la zona petrolera de Eagle Ford, en el sur de Texas. La app desarrollada ganó un premio de innovación en el lugar. En W3 Américas estuve a cargo del diseño visual de la misma. ', 'eagle', '3'),
(6, 'US Project', 'Diseño Web/Apps', 'apps', 'W3 Américas', 'W3 Américas', '2014', 'photoshop,illustrator', 'Cumpliendo el doble objetivo de cubrir una necesidad interna y hacer una suerte de ejercicio final del curso de PHP recibido el W3, diseñé y desarrollé una plataforma para la presentación de proyectos a los clientes. La misma cuenta con un backend con el listado de proyectos y un front donde se pueden visualizar los mismos desde una url segura.', 'usproject', '3'),
(7, 'Safer Nation', 'Diseño Web/Apps', 'apps', 'W3 Américas', 'Safer Nation', '2014', 'photoshop,illustrator', 'La función de la app Safer Nation es permitirle a los representantes de las aseguradoras enviar un informe in situ acerca de accidentes en la rutas que puedan tener sus clientes, principalmente empresas de transporte por carretera. En W3 hicimos el análisis funcional, las propuestas gráficas, de las cuales participé, y posteriormente el desarrollo de la aplicación.', 'safer', '4'),
(8, 'Tonic3 Xmass Gifts', 'Diseño Web/Apps', 'apps', 'W3 Américas', 'W3 Américas', '2015', 'photoshop,illustrator', 'A pedido interno de los directivos de W3 Américas, realicé la propuesta gráfica para una landing que ofrecía un regalo de navidad a seleccionar y un destinatario de un préstamo KIVA para ayuda social. Como complemento se ofrecía un wallpaper navideño.', 'xmass', '3'),
(9, '¿Qué es UX/UI?', 'Diseño Web/Apps', 'ux', 'Aracnia', 'Aracnia', '2015', 'photoshop,illustrator', 'User Experience (UX) es la planificación de cada interacción que tiene toda compañía o servicio con el usuario para hacerla más efectiva y placentera. Orientado al diseño de interfases UX integra diciplinas como Usabilidad y Accesibilidad, Desarrollo Frontend, Investigación Metodológica, Análisis Funcional o cualquier especialidad que pueda colaborar a que el producto se ajuste a las necesidades y expectativas del usuario. \n<br>\nUI, por otra parte, está relacionada con la configuración de la interfase para optimizar y garantizar las tareas que podrán ser ejecutadas por el usuario. Una UI bien planificada es un elemento escencial en la buena UX de una interfase.', 'coming2', '1'),
(10, 'Personas & User research', 'Diseño Web/Apps', 'ux', 'Aracnia', 'Aracnia', '2015', 'photoshop,illustrator', 'Si queremos garantizar el éxito de un producto tenemos que conocer el público al que va orientado y cuales van a ser sus acciones dentro de la interfase, dándole herramientas que estén a la medida de sus capacidades. Es en esta fase inicial que la investigación metodológica tiene su espacio fundamental: entrevistas, encuestas, polls.. todo input suma. Que hacer entonces con toda esta información? Mediante la clasificación de la misma podemos crear grupos asociativos y definir a cuales de ellos nos vamos a orientar. Basados en las caracteristicas de estos grupos se construyen arquetipos llamados Personas, especialmente utiles al ser usados como usuario referencia al recorrer todos los casos de interacción (User cases). No es solo como completar una acción, sino como nuestra Peronsa target realizaría mejor es acción. ', 'paper_proto', '1'),
(11, 'High scope flows y Wireframes', 'Diseño Web/Apps', 'ux', 'W3 Américas', 'W3 Américas', '2015', 'photoshop,illustrator', 'Conforme han pasado los años, con la variedad de dispositivos y las potencialidades de una internet mucho mas rápida y fácil de programar las interfaces son cada vez más complejas. Es por eso que ya no podemos darnos el lujo de imaginarnos la estructura en nuestra mente y lanzarnos a dibujar. Son muchas las ventajas de pensar bien en la estructura primero, no solo en wireframes que ya son representaciones mas avanzadas, sino en pasos a seguir partiendo de las situaciones y el contexto en que nuestra Persona va a interactuar con el sistema. Hacer un gráfico Hi Scope antes de armar siquiera un layout brinda la posibilidad de evaluar posibilidades a bajo costo y detectar las potencialidades o complejidades que pueda tener un sistema antes de lanzarse a invertir tiempo en el mismo. ', 'wires_proto', '1'),
(12, 'Prototipado y Testeos', 'Diseño Web/Apps', 'ux', 'W3 Américas', 'W3 Américas', '2015', 'photoshop,illustrator', 'Como todo proceso investigativo, no podemos aceverar la efectividad de nuestra propuesta en tanto no la corroboremos con usuarios reales. Es por ello que una parte escencial en el proceso UX es el testeo de nuestras propuestas, mientras más temprano dentro del proceso mejor. Para ellos nos ayudan herramientas como Adobe Muse que permiten crear wireframes de baja definición pero ya interactivos. En el caso de interactividades más complejas que Muse no llegue a emular, simples prototipos hechos con papel pueden ser de gran ayuda para obtener un input de los usuarios. En la medida en que se avanza en el proceso de de definiciones la complejidad de los prototipos va aumentando. En estos momentos se valoran los concimientos de desarrollo front end que puedan tener los diseñadores UX, o bien la tarea queda en manos de maquetadores. Una vez definido el producto, el proceso de testeo continua posterior al lanzamiento con la ayuda de especialistas en métricas.', 'final_proto', '1'),
(13, 'Creoarte', 'Diseño Gráfico', 'branding', 'Aracnia', 'Creoarte', '2014', 'photoshop,illustrator', 'Creoarte es una iniciativa de una artista plástica y psicóloga la cual ofrece servicios de terapias artísticas para empresas. Al ser un nuevo emprendimiento estuve a cargo del sistema completo de identidad, incluyendo marca, papelería una presentación institucional y el sitio web.', 'creoarte', '3'),
(14, 'Global Construcciones', 'Diseño Gráfico', 'branding', 'Global Construcciones', 'Global Construcciones', '2014', 'photoshop,illustrator', 'La imagen de Global Construcciones estaba desactualizada. Fue a pedido interno que realicé entonces el rediseño de marca y aplicaciones impresas y digitales. En su momento ajustamos el diseño del sitio web, que posteriormente fue rediseñado por otra agencia. ', 'global', '3'),
(15, 'La Llueca Folk Celta', 'Diseño Gráfico', 'branding', 'Aracnia', 'La Llueca', '2014', 'photoshop,illustrator', 'La Llueca es el conjunto de folklore asturiano del centro Cangas del Narcea de Buenos Aires. Es un proyecto en el cual participo desde la dirección musical. Para el mismo realicé el diseño de marca y el sitio web. Hago una suerte de community manager y voy diseñando los posters de las presentaciones.', 'lallueca', '4'),
(16, 'Trampaluz', 'Diseño Gráfico', 'branding', 'Aracnia', 'Trampaluz', '2010', 'photoshop,illustrator', 'Trampaluz es una agencia de fotografía dirigida por Pablo Rearte. Para ellos realicé el diseño de marca, papelería y algunas piezas impresas.', 'trampaluz', '3'),
(17, 'Catálogo CKPLive 2011', 'Diseño Gráfico', 'editorial', 'Cirkuit Planet', 'Cirkuit Planet', '2011', 'photoshop,illustrator', 'Parte del trabajo de presentación de las colecciones de Cirkuit Planet consistía en la elaboración de catálogos para presentar sus productos. Impresos en offset en tiradas de 2000 ejemplares los mismos eran distribuídos a los potenciales distribuidores en ferias o eventos en los cuaeles se presentaba la empresa. CKP Live es una línea de diseño propio de Cirkuit Planet para la cual diseñé algunos productos además del catálogo.', 'ckplivecat', '5'),
(18, 'Catálogo Disney 2012', 'Diseño Gráfico', 'editorial', 'Cirkuit Planet', 'Disney - Pixar', '2012', 'photoshop,illustrator', 'Una sección importante dentro del catálogo de productos de Cirkuit Planet es su licencia para fabricar productos con gráfica de Disney. Un poco usando los recursos de las guías de estilos de Disney, otro poco aprovechando la libertad editorial se armó esta propuesta para presentar los productos de las diferentes colecciones de Disney fabricadas por la empresa.', 'disneycat', '4'),
(19, 'Diarios Cubadisco y Lucas', 'Diseño Gráfico', 'editorial', 'Instituto Cubano de la Música', 'Instituto Cubano de la Música', '2006', 'photoshop,illustrator', 'Durante mis primeros años de graduada en Cuba estuve a cargo del diseño del diario CUBADISCO y del diario Lucas, ambas publicaciones del Instituto Cubano de la Música.', 'diarios', '5'),
(20, 'Talita Kum Expo', 'Diseño Gráfico', 'editorial', 'Aracnia', 'Creoarte', '2011', 'photoshop,illustrator', 'Como complemento a la muestra de la artista plástica Joka, diseñé el catálogo de la muestra, así como las invitaciones, poster y demás piezas gráficas.', 'talitakum', '1'),
(21, 'Bolsas para Disney', 'Diseño Gráfico', 'marketing', 'Cirkuit Planet', 'Disney - Pixar', '2012', 'photoshop,illustrator', 'A solicitud de otro licenciatario, hicimos dentro de Cirkuit Planet una propuesta de bolsas con las guías de estilos y assets de Disney. ', 'bolsas', '5'),
(22, 'Avisos Cirkuit Planet', 'Diseño Gráfico', 'marketing', 'Cirkuit Planet', 'Cirkuit Planet', '2011', 'photoshop,illustrator', 'Un eje fundamental en la difusión de Cirkuit Planet como fabricante es la publicación de avisos en diferentes medios impresos, principalmente revistas y catálogos de distribuidores.', 'cirkuitprints', '4'),
(23, 'Cirkuit Adds', 'Diseño Gráfico', 'marketing', 'Cirkuit Planet', 'Cirkuit Planet', '2012', 'photoshop,illustrator', 'Además de la difusión mediante gráfica impresa, Cirkuit Planet también garantiza su presencia en las redes con el mantenimiento de sus redes sociales, su e-commerce, mailings y banners en sitios de terceros. Estas son algunas de las piezas gráficas que armamos con estos fines.', 'cirkuitadds', '3'),
(24, 'Mil Conjuros Posters', 'Diseño Gráfico', 'marketing', 'Aracnia', 'Mil Conjuros', '2012', 'photoshop,illustrator', 'Mil Conjuros es un proyecto de música folk de diferentes paises del que tuve el placer de ser fundadora. A raiz de la creación del grupo realicé el diseño de identidad y un par de posters promocionando algunas presentaciones.', 'milconjuros', '3'),
(25, 'Amy Pendrive', 'Diseño Industrial', 'pendrives', 'Cirkuit Planet', 'Weenicons', '2012', 'photoshop,illustrator', 'Otra de las importantes licencias de Cirkuit Planet es Weenicons, una empresa basada en generar merchandising de con ilustraciones propias de personjes famosos. Para ellos hicimos varias líneas de productos entre ellos esta colección de Pendrives 3D, modelados en 3dmax, exportados en CAD para la fabricación del molde y las copias en China.', 'amy', '3'),
(26, 'More Cirkuit Pendrives', 'Diseño Industrial', 'pendrives', 'Cirkuit Planet', 'Cirkuit Planet', '2011', 'photoshop,illustrator', 'Las lineas propias de Cirkuit Planet también incluyeron su versión de Pendrive 3D, derivando en una gran variedad de propuestas. Al igual que el resto de los pendrives, los mismos fueron modelados en 3dmax, exportados en CAD para la fabricación del molde y las copias en China.', 'more', '5'),
(27, 'Jack Pendrive', 'Diseño Industrial', 'pendrives', 'Cirkuit Planet', 'Disney - Pixar', '2012', 'photoshop,illustrator', 'Como parte de la línea Nightmare Before Christmass de la licencia Disney de Cirkuit Planet, diseñé este pendrive de Jack, tomando las lineas guías de las galerías de Disney. El mismo fue modelado en 3dmax, exportado en CAD para la fabricación del molde y las copias en China.', 'jack', '4'),
(28, 'Elvis Pendrive', 'Diseño Industrial', 'pendrives', 'Cirkuit Planet', 'Weenicons', '2012', 'photoshop,illustrator', 'Otra de las importantes licencias de Cirkuit Planet es Weenicons, una empresa basada en generar merchandising con ilustraciones propias de personjes famosos. Para ellos hicimos varias líneas de productos entre ellos esta colección de Pendrives 3D, modelados en 3dmax, exportados en CAD para la fabricación del molde y las copias en China.', 'elvis', '4'),
(29, 'Disney Collection', 'Diseño Industrial', 'products', 'Cirkuit Planet', 'Disney - Pixar', '2012', 'photoshop,illustrator', 'oaisjdaosijdoas', 'disney', '5'),
(30, 'NBA Collections', 'Diseño Industrial', 'products', 'Cirkuit Planet', 'Cirkuit Planet', '2012', 'photoshop,illustrator', 'asdasdas', 'nba', '4'),
(31, 'CKPLive Collection', 'Diseño Industrial', 'products', 'Cirkuit Planet', 'Cirkuit Planet', '2012', 'photoshop,illustrator', '21wwewe', 'ckplive', '3'),
(32, 'More Cirkuit Products', 'Diseño Industrial', 'products', 'Cirkuit Planet', 'Cirkuit Planet', '2012', 'photoshop,illustrator', '1212', 'other', '3'),
(39, 'Cirkuit Planet Stands', 'Diseño Industrial', 'stands', 'Cirkuit Planet', 'Cirkuit Planet', '2014', 'photoshop,illustrator', 'asdasda', 'cirkuitstands', '4'),
(40, 'Global Construcciones POP', 'Diseño Industrial', 'stands', 'Global Construcciones', 'Global Construcciones', '2012', 'photoshop,illustrator', 'asdas', 'pop', '4'),
(41, 'Prosegur Stand', 'Diseño Industrial', 'stands', 'Global Construcciones', 'Prosegur', '2012', 'photoshop,illustrator', 'asdadas', 'prosegur', '3'),
(42, 'UADE Stand', 'Diseño Industrial', 'stands', 'Global Construcciones', 'Global Construcciones', '2012', 'photoshop,illustrator', 'asasd', 'uade', '5');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
