-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.4.3 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para elmesonicea
CREATE DATABASE IF NOT EXISTS `elmesonicea` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `elmesonicea`;

-- Volcando estructura para tabla elmesonicea.colaboradores
CREATE TABLE IF NOT EXISTS `colaboradores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `cargo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `telefono` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `foto_perfil` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `activo` int NOT NULL DEFAULT (0),
  `fecha_registro` timestamp NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla elmesonicea.colaboradores: ~3 rows (aproximadamente)
INSERT INTO `colaboradores` (`id`, `nombre`, `cargo`, `descripcion`, `telefono`, `foto_perfil`, `activo`, `fecha_registro`) VALUES
	(1, 'Andrea & Hadasa', 'Ministerio de artes dramáticas', '', '000000011', 'Andrea_&_Hadasa_Artes escenicas.jpg', 1, '2026-01-23 19:57:32'),
	(2, 'Arturo y Nacho', 'Departamento de mantenimiento', '', '001212121212', 'Arturo_& Nacho_Mantenimiento.jpg', 1, '2026-01-23 22:26:18'),
	(5, 'Carmen Romelia', 'Ministerio de Escuela Bíblica y Ministerio Dorcas', '', '12121212121', 'Carmen_Romelia_EBD_&_Dorcas.jpg', 1, '2026-01-27 16:04:58'),
	(6, 'Cristian Guerrero', 'Ministerio de ujieres', NULL, NULL, 'Cristian_Guerrero_Ujieres.jpg', 1, '2026-01-27 16:07:28'),
	(7, 'Eduardo Urbina', 'Departamento de Diseño Gráfico &  Departamento de Gestión Tecnológica ', NULL, NULL, 'Eduardo_Urbina_Diseño Grafico_&_Gestión_Técnologica.jpg', 1, '2026-01-27 16:08:05'),
	(8, 'Elyin Araúz', 'Departamento de sonido', NULL, NULL, 'Elyin_Araúz_Sonido.jpg', 1, '2026-01-27 16:08:36'),
	(9, 'Feliciano & Ana Roldán', 'Líderes de Células Familiares, Villanueva de Algaidas', NULL, NULL, 'Feliciano_&_Ana_Célula Familiares.jpg', 1, '2026-01-27 16:11:11'),
	(10, 'Felipe Torres', 'Departamento de cámaras', NULL, NULL, 'Felipe_Torres_Camaras.jpg', 1, '2026-01-27 16:11:45'),
	(11, 'Juan Carlos & Rebeca Cano', 'Departamento de Enlace & Ministerio de Misiones', NULL, NULL, 'Juan_Carlos_&_Rebeca _Enlace&Misiones.jpg', 1, '2026-01-27 16:12:43'),
	(12, 'Juan David & Rut', 'Ministerio de adolescentes', NULL, NULL, 'Juan_David_&_Rut_Adolescentes.jpg', 1, '2026-01-27 16:13:08'),
	(13, 'Juan David Barraza', 'Departamento de audiovisuales', NULL, NULL, 'Juan_David_Barraza_Audiovisuales.jpg', 1, '2026-01-27 16:13:32'),
	(14, 'Kassia Perminio', 'Ministerio de Interseción & Ministerio Tienda El Encuentro', NULL, NULL, 'Kassia Permino_Intercesión.jpg', 1, '2026-01-27 16:14:24'),
	(15, 'Marina Orellana', 'Ministerio de limpieza', NULL, NULL, 'Marina_Orellana_Limpieza.jpg', 1, '2026-01-27 16:14:45'),
	(16, 'Natalia Campillo', 'Ministerio de hospital', NULL, NULL, 'Natalia_Campillo_Hospital.jpg', 1, '2026-01-27 16:15:40'),
	(17, 'Ramón & Marina', 'Líderes de Células Familiares, La Roda de Andalucia', NULL, NULL, 'Ramón_&_Marina_Células_Familiares.jpg', 1, '2026-01-27 16:16:19'),
	(18, 'Ramón Lara', 'Diáconos', NULL, NULL, 'Ramón_Lara_Diaconos.jpg', 1, '2026-01-27 16:16:36'),
	(19, 'Rut Madrigal', 'Ministerio de alabanza', NULL, NULL, 'Rut_Paguillo_Alabanza.jpg', 1, '2026-01-27 16:17:06'),
	(20, 'Thomas & Elizabeth', 'Diáconos', NULL, NULL, 'Thomas_&_Elizabeth_Diaconos.jpg', 1, '2026-01-27 16:17:19'),
	(21, 'Victor Javier Jiménez', 'Ministerio de jóvenes', NULL, NULL, 'Victor_Javier_Jimenez_Jovenes.jpg', 0, '2026-01-27 16:17:56'),
	(22, 'Colaborador test 1', 'Cargo del colaborador test 1', 'Descripción test 1', '', 'colaborador_test_1-1769531042.png', 0, '2026-01-27 16:24:02');

-- Volcando estructura para tabla elmesonicea.declaraciones_de_fe
CREATE TABLE IF NOT EXISTS `declaraciones_de_fe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(5) COLLATE utf8mb4_general_ci DEFAULT '0',
  `titulo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `versiculo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `activo` int NOT NULL DEFAULT '0',
  `fecha_creacion` timestamp NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla elmesonicea.declaraciones_de_fe: ~2 rows (aproximadamente)
INSERT INTO `declaraciones_de_fe` (`id`, `numero`, `titulo`, `descripcion`, `versiculo`, `activo`, `fecha_creacion`) VALUES
	(1, '01', 'La inspiración de las escrituras', 'La biblia es la palabra inspirada de Dios', '1 Timoteo 3:15-17', 1, '2026-01-21 22:13:32'),
	(4, '02', 'El único Dios Verdadero', 'Revelado en tres personas: Padre, Hijo y Espíritu Santo', 'Mateo 28:19', 1, '2026-01-23 15:09:16'),
	(5, '03', 'La Deidad del Señor Jesucristo', 'Creemos en su nacimiento virginal, vida sin pecado, milagros y resurrección', 'Mateo 1:23', 1, '2026-01-27 16:53:14'),
	(6, '04', 'La caída del hombre', 'El hombre fue creado bueno, pero cayó por transgresión voluntaria', 'Génesis 1:26-27', 1, '2026-01-27 16:53:51'),
	(7, '05', 'La salvación del hombre', 'Únicamente a través de la sangre de Jesucristo', 'Lucas 24:47', 1, '2026-01-27 16:54:37'),
	(8, '06', 'Las ordenanzas de la iglesia', 'El bautismo en agua y la santa cena', 'Mateo 28:19; 1 Corintios 11:26', 1, '2026-01-27 16:57:59'),
	(9, '07', 'El bautismo en el Espíritu Santo', 'Una promesa para todos los creyentes', 'Hechos 1:4-8', 1, '2026-01-27 16:58:37'),
	(10, '08', 'La evidencia del bautismo en el Espíritu', 'Hablar en otras lenguas', 'Hechos 2:4', 1, '2026-01-27 16:59:06'),
	(11, '09', 'La santificación', 'Un acto de separación del mal y dedicación a Dios', 'Romanos 12:1-2', 1, '2026-01-27 17:00:20'),
	(12, '10', 'La iglesia y su misión', 'El cuerpo de Cristo, cuya misión es evangelizar', 'Efesios 1:22-23', 1, '2026-01-27 17:00:49'),
	(13, '11', 'El ministerio', 'Un llamado divino para liderar y servir', 'Efesios 4:11', 1, '2026-01-27 17:01:15'),
	(14, '12', 'Sanidad divina', 'Provista en la expiación de Cristo', 'Isaías 53:4-5', 1, '2026-01-27 17:01:42'),
	(15, '13', 'La esperanza bienaventurada', 'El rapto de la iglesia', 'Tito 2:13 ', 1, '2026-01-27 17:02:16'),
	(16, '14', 'El reino milenial', 'El reinado de mil años de Jesús en la tierra', 'Apocalipsis 20:1-6', 1, '2026-01-27 17:02:59'),
	(17, '15', 'El juicio final', 'Para aquellos que no aceptaron la salvación', 'Apocalipsis 20:11-15', 1, '2026-01-27 17:03:31'),
	(18, '16', 'Cielos nuevos y tierra nueva', 'Donde mora la justicia', '2 Pedro 3:13', 1, '2026-01-27 17:03:53');

-- Volcando estructura para tabla elmesonicea.eventos
CREATE TABLE IF NOT EXISTS `eventos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `fecha` date DEFAULT NULL,
  `activo` int DEFAULT '1',
  `fecha_registro` timestamp NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla elmesonicea.eventos: ~0 rows (aproximadamente)
INSERT INTO `eventos` (`id`, `titulo`, `descripcion`, `fecha`, `activo`, `fecha_registro`) VALUES
	(5, 'Evento Mollina', 'Descripción de prueba para el evento Mollina', '2026-01-27', 1, '2026-01-27 20:14:10'),
	(6, 'Día de convivencia', 'Descripción de prueba para el evento del día de convivencia', '2026-01-27', 1, '2026-01-27 21:13:54');

-- Volcando estructura para tabla elmesonicea.eventos_galeria
CREATE TABLE IF NOT EXISTS `eventos_galeria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_evento` int NOT NULL DEFAULT '0',
  `imagen` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `titulo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `descripcion` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_eventos` (`id_evento`),
  CONSTRAINT `FK_eventos` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla elmesonicea.eventos_galeria: ~0 rows (aproximadamente)
INSERT INTO `eventos_galeria` (`id`, `id_evento`, `imagen`, `titulo`, `descripcion`) VALUES
	(1, 5, 'Eventomollina-35.jpg', 'Molilla 1', 'Descripción de Molilla 01'),
	(2, 5, 'Eventomollina-2.jpg', 'Molilla 2', 'Descripción de Molilla 02'),
	(3, 5, 'Eventomollina-16.jpg', 'Molilla 3', 'Descripción de Molilla 03'),
	(4, 5, 'Eventomollina-29.jpg', 'Molilla 4', 'Descripción de Molilla 04'),
	(5, 6, '69792a920b017_DíadeconvivenciaNov-3.jpg', 'Convivencia 01', 'Descripción de convivencia 01'),
	(6, 6, '69792a920db13_DíadeconvivenciaNov25-1.jpg', 'Convivencia 02', 'Descripción de convivencia 02'),
	(7, 6, '69792a9211ad1_DíadeconvivenciaNov25-15.jpg', 'Convivencia 03', 'Descripción de convivencia 03'),
	(8, 6, '69792a9215b9b_DíadeconvivenciaNov25-16.jpg', 'Convivencia 04', 'Descripción de convivencia 04'),
	(9, 6, '69792a9218fad_DíadeconvivenciaNov25-26.jpg', 'Convivencia 05', 'Descripción de convivencia 05');

-- Volcando estructura para tabla elmesonicea.frases_dinamicas
CREATE TABLE IF NOT EXISTS `frases_dinamicas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `frase_estatica` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `frases_dinamicas` json NOT NULL,
  `activo` int DEFAULT '0',
  `fecha_creacion` timestamp NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla elmesonicea.frases_dinamicas: ~1 rows (aproximadamente)
INSERT INTO `frases_dinamicas` (`id`, `frase_estatica`, `frases_dinamicas`, `activo`, `fecha_creacion`) VALUES
	(1, 'Fuimos creados para2', '["Primera frase", "Segunda frase", "Tercera frase"]', 1, '2026-01-21 16:03:10');

-- Volcando estructura para tabla elmesonicea.nuestros_pilares
CREATE TABLE IF NOT EXISTS `nuestros_pilares` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_general_ci NOT NULL,
  `activo` int NOT NULL DEFAULT (0),
  `fecha_registro` timestamp NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla elmesonicea.nuestros_pilares: ~5 rows (aproximadamente)
INSERT INTO `nuestros_pilares` (`id`, `titulo`, `descripcion`, `activo`, `fecha_registro`) VALUES
	(1, 'Discipulado', 'Mateo 28:19. Formamos discípulos de Cristo, fundamentados en la Palabra de Dios.', 1, '2026-01-23 16:54:07'),
	(8, 'Acción social', 'Santiago 2:14-17. La fe sin obras es muerta; extendemos la mano al necesitado como reflejo del amor de Dios.', 1, '2026-01-23 21:05:05'),
	(9, 'Misiones', 'Hechos 1:8. Comprometidos con llevar el mensaje de salvación hasta lo último de la tierra.', 1, '2026-01-23 21:05:30');

-- Volcando estructura para tabla elmesonicea.nuestros_valores
CREATE TABLE IF NOT EXISTS `nuestros_valores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(25) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `descripcion` text COLLATE utf8mb4_general_ci NOT NULL,
  `activo` int DEFAULT '0',
  `fecha_registro` timestamp NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla elmesonicea.nuestros_valores: ~8 rows (aproximadamente)
INSERT INTO `nuestros_valores` (`id`, `titulo`, `descripcion`, `activo`, `fecha_registro`) VALUES
	(1, 'Servicio', 'No para ser servidos, sino para servir" (Marcos 10:45). Descripción: La vida del discípulo de Cristo es servicio; amamos a través de nuestras acciones.', 1, '2026-01-23 16:37:16'),
	(2, 'Adoración', 'En espíritu y en verdad" (Juan 4:24). Descripción: Vivimos una vida rendida a Dios, no solo en palabras, sino en obediencia diaria.', 1, '2026-01-23 17:09:20'),
	(3, 'Respeto', '"Honraos los unos a los otros" (Romanos 12:10). Descripción: Valoramos a cada persona como creación divina, fomentando un ambiente de honra.', 1, '2026-01-23 17:09:20'),
	(4, 'Amor ', 'Amaos los unos a los otros" (Juan 13:34). Descripción: Es el sello de nuestra fe y el motor de todo lo que hacemos.', 1, '2026-01-23 17:09:20'),
	(5, 'Integridad', 'Andando en integridad" (Proverbios 10:9). Descripción: Buscamos la transparencia y la rectitud delante de Dios y de los hombres.', 1, '2026-01-23 17:09:20');

-- Volcando estructura para tabla elmesonicea.sliders
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `f_principal` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `f_superior` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `f_inferior` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `img_fondo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `activo` int DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla elmesonicea.sliders: ~3 rows (aproximadamente)
INSERT INTO `sliders` (`id`, `f_principal`, `f_superior`, `f_inferior`, `img_fondo`, `activo`, `fecha_creacion`) VALUES
	(1, 'Frase principal edit', 'Frase superior editada 3', 'Frase inferior editada', 'carousel-5.jpg', 1, '2026-01-20 14:35:04'),
	(2, 'FRASE PRINCIPAL', 'FRASE SUPERIOR MÁS PEQUEÑA', 'FRASE INFERIOR TAMBIÉN PEQUEÑA', 'carousel-2.jpg', 1, '2026-01-20 14:39:57'),
	(19, 'adsgsdfh', 'afdds sdfasfdsd asfd asf sd', 'ghrth thert h  wthgwergewrgw', 'carousel-3.avif', 0, '2026-01-21 16:13:08');

-- Volcando estructura para tabla elmesonicea.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cargo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla elmesonicea.usuarios: ~1 rows (aproximadamente)
INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `foto`, `cargo`, `usuario`, `password`, `fecha_registro`) VALUES
	(1, 'Obed Castro', 'albcast26@gmail.com', 'obed-1769204906.jpg', 'Administrador de TI', 'obed', 'd76d056e81cc92df39f8cb3e1a3a3250', '2026-01-19 17:33:24');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
