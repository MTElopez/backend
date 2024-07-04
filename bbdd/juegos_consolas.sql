-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: juegos_consolas
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `consola`
--

DROP TABLE IF EXISTS `consola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consola` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consola` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consola`
--

LOCK TABLES `consola` WRITE;
/*!40000 ALTER TABLE `consola` DISABLE KEYS */;
INSERT INTO `consola` VALUES (1,'GBA',NULL),(2,'Nintendo GameCube',NULL),(3,'Super Nintendo',NULL),(4,'Nintendo Switch',NULL),(5,'Nintendo 64',NULL),(6,'Playstation One',NULL),(7,'Playstation 2',NULL),(8,'Playstatiz 3',NULL),(9,'Playstation 4',NULL),(10,'Playstation 5',NULL),(11,'Computadora',NULL);
/*!40000 ALTER TABLE `consola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Sandbox'),(2,'Battle Royal'),(3,'Aventura'),(4,'ARPG'),(5,'RPG'),(6,'Deporte'),(7,'Supervivencia'),(8,'Acción'),(9,'Simracing'),(10,'Shooter'),(11,'Terror');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos_juegos`
--

DROP TABLE IF EXISTS `generos_juegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos_juegos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_genero` int(11) DEFAULT NULL,
  `id_juego` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_genero` (`id_genero`),
  KEY `id_juego` (`id_juego`),
  CONSTRAINT `generos_juegos_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `generos_juegos_ibfk_2` FOREIGN KEY (`id_juego`) REFERENCES `juegos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos_juegos`
--

LOCK TABLES `generos_juegos` WRITE;
/*!40000 ALTER TABLE `generos_juegos` DISABLE KEYS */;
INSERT INTO `generos_juegos` VALUES (131,7,17),(132,2,18),(133,7,18),(134,10,18),(135,1,19),(136,7,19),(137,3,20),(138,4,20),(139,8,20),(140,1,21),(141,3,21),(142,7,21),(143,8,21),(144,4,22);
/*!40000 ALTER TABLE `generos_juegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen_consola`
--

DROP TABLE IF EXISTS `imagen_consola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagen_consola` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_consola` int(11) NOT NULL,
  `url_imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_consola` (`id_consola`),
  CONSTRAINT `imagen_consola_ibfk_1` FOREIGN KEY (`id_consola`) REFERENCES `consola` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen_consola`
--

LOCK TABLES `imagen_consola` WRITE;
/*!40000 ALTER TABLE `imagen_consola` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagen_consola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen_juego`
--

DROP TABLE IF EXISTS `imagen_juego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagen_juego` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_juego` int(11) NOT NULL,
  `url_imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_juego` (`id_juego`),
  CONSTRAINT `imagen_juego_ibfk_1` FOREIGN KEY (`id_juego`) REFERENCES `juegos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen_juego`
--

LOCK TABLES `imagen_juego` WRITE;
/*!40000 ALTER TABLE `imagen_juego` DISABLE KEYS */;
INSERT INTO `imagen_juego` VALUES (1,17,'https://mtelopez.github.io/Computadora/imgprueba/rust1.png'),(2,18,'https://mtelopez.github.io/Computadora/imgprueba/pubg1.png'),(3,19,'https://mtelopez.github.io/Computadora/imgprueba/Minecraft.png'),(4,20,'https://mtelopez.github.io/Computadora/imgprueba/witcher1.jpg'),(5,21,'https://mtelopez.github.io/Computadora/imgprueba/terraria1.png'),(6,22,'https://mtelopez.github.io/Computadora/imgprueba/diablo3.png');
/*!40000 ALTER TABLE `imagen_juego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juegos`
--

DROP TABLE IF EXISTS `juegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `juegos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_consola` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `que_es` text DEFAULT NULL,
  `modo_de_juego` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_consola` (`id_consola`),
  CONSTRAINT `juegos_ibfk_1` FOREIGN KEY (`id_consola`) REFERENCES `consola` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juegos`
--

LOCK TABLES `juegos` WRITE;
/*!40000 ALTER TABLE `juegos` DISABLE KEYS */;
INSERT INTO `juegos` VALUES (17,11,'Rust','Rust es un juego de supervivencia creado por Facepunch Studios,La inspiración del videojuego viene de múltiples juegos del género de supervivencia. Los jugadores deben recoger recursos para sobrevivir y fabricar objetos dentro del juego.','Rust es un juego de supervivencia creado por Facepunch Studios. La inspiración del videojuego viene de múltiples juegos del género de supervivencia. Su lanzamiento oficial se produjo el 8 de febrero de 2018, aunque estuvo en acceso anticipado desde 2013. Rust también está disponible en consolas como Xbox One y PlayStation 4 desde el 21 de mayo de 2021 en colaboración con Double Eleven.','Los jugadores deben recoger recursos para sobrevivir y fabricar objetos dentro del juego, a excepción del equipamiento inicial con el que se empieza, que incluye una roca y una antorcha (ocasionalmente en algunos servidores, en su mayoría los modificados, se otorga equipamiento adicional como armas de fuego, ropa y suministros). Los jugadores recolectan recursos como tela, comida, madera, chatarra y piedra. que pueden ser obtenidos cortando árboles o cazando animales, saqueando monumentos entre otros métodos, Hay una lista inicial de fabricación de objetos, como armas, ropa y materiales de construcción, y a medida que se progresa en el juego se pueden conseguir planos u objetos más avanzados para construir objetos como torretas, puertas blindadas, fusiles, francotiradores, armas automáticas, lanzacohetes y C4. Estos pueden encontrarse en cajas (con forma de cubo), personajes muertos (o casi) o investigando objetos encontrados en las bases de otros jugadores. Algunos servidores incluyen modificaciones que proveen elementos al jugador para hacer el inicio más fácil, como duplicar la cantidad de recursos obtenidos al minar menas de piedra o reducir en un 50% el mantenimiento de una base, A medida que vas avanzando, puedes conseguir componentes con los cuales podrás crear nuevos objetos que los requieran Durante la jugabilidad, hay muchos desafíos que el jugador puede enfrentar, como hambre, hipotermia y calor en la antena de la petrolera , ataques de animales salvajes (osos y lobos en su mayoría), o exposición a la radiación de varias zonas radioactivas a través de la isla. A pesar de la radiación, estas áreas contienen los únicos edificios hechos por el hombre al comienzo del juego y tienen objetos valiosos como armas de fuego y componentes, y por lo tanto ofrecen un incentivo al jugador para que se arriesgue a adquirir estas cosas. Ya que el juego es exclusivamente multijugador, los ataques de otros jugadores también son un desafío siempre presente. La navegación puede ser complicada en Siege. Sin un mapa del juego, los nuevos jugadores deben buscar por edificios y guiarse con el sol para poder ubicarse y conseguir sus pertenencias. Algunos mapas han sido creados por terceros, incluso cuartos, aunque ningún mapa ha sido publicado por Facepunch hasta febrero. Un concepto persistente en Siege es formar facciones (o clanes) con otros jugadores. Las facciones suelen crear viviendas ocupas para sus miembros, otorgar objetos, suministros y participar en saqueos organizados. Estos saqueos (también llamados raids o raideos; esta última es una adaptación hispanohablante) se producen cuando uno o más jugadores organizados coordina un ataque a otra persona o facción para robar sus suministros y destruir sus hogares.'),(18,11,'PlayerUnknown\'s Battlegrounds','PUBG es un videojuego de acción en el cual hasta 100 jugadores pelean en una Batalla Real, un tipo de combate a muerte en el cual hay enfrentamientos para ser el último con vida. Los jugadores pueden ingresar en solitario, o con un pequeño equipo.','PUBG: Battlegrounds (anteriormente PlayerUnknown\'s Battlegrounds) es un videojuego de batalla en línea multijugador masivo desarrollado por PUBG Corporation (actual PUBG Studios) y publicado por Bluehole (actual Krafton) para Microsoft Windows, Xbox One, PlayStation 4, Android e iOS, estos dos últimos con ayuda de Tencent Games. El juego era una beta battle royale de ARMA 3 que salió en 2015. Se basa en el estilo Battle Royale de los mods previamente desarrollados por Brendan Playerunknown Greene para otros juegos, pero ampliado independientemente bajo la dirección creativa de él mismo. En el juego, cien jugadores saltan en paracaídas desde un avión a una isla, donde tienen la libertad de moverse hacia un lugar determinado que ellos mismos elijan y buscan armas y equipamiento para matar a otros jugadores mientras evitan ser asesinados. El área segura disponible del mundo del juego disminuye en tamaño durante la partida, dirigiendo a los jugadores sobrevivientes a áreas más reducidas y forzando enfrentamientos. El último jugador o equipo en pie gana la partida.','PUBG es un videojuego de acción en el cual hasta 100 jugadores pelean en una Batalla Real (Battle Royale), un tipo de combate a muerte en el cual hay enfrentamientos para ser el último con vida. Los jugadores pueden ingresar a la partida en solitario, o con un pequeño equipo compuesto por el propio jugador y una, dos o tres personas más, formando respectivamente un dúo, un escuadrón de tres o cuatro jugadores. La última persona o equipo con vida gana la partida. Cada partida comienza con los jugadores que saltan en paracaídas de un avión a una isla, hacia determinadas partes que ellos mismos eligen. La zona de juego es de aproximadamente 8 x 8 o 4 x 4 kilómetros de tamaño (esto puede variar dependiendo del tamaño del mapa; estos comienzan sin artículos aparte de las opciones adaptables de la ropa que seleccionan antes de una partida; todo lo anterior desde un avión que sobrevuela aleatoriamente el mapa en línea recta. Una vez aterrizan, los jugadores pueden buscar edificios y otros sitios o estructuras para encontrar armas, vehículos, armaduras y otro equipamiento. Estos artículos se distribuyen por todo el mapa al comienzo de la partida, con ciertas zonas de alto riesgo, pero, con mejor equipamiento. Estos pasan a permanecer ocultos para evitar ser asesinados o cazar a otros jugadores mientras continúan buscando más equipamiento. Los jugadores asesinados pueden ser saqueados para adquirir su equipamiento. Durante el transcurso del juego un avión volará sobre varias partes aleatorias del mapa jugable y dejará caer un paquete de botín que contiene elementos que normalmente solo se pueden obtener en ese paquete de botín. El paquete también emite un humo rojo altamente visible, atrayendo a interesados cerca de él. Los jugadores pueden optar por jugar desde la perspectiva de primera o tercera persona, cada uno con sus propias ventajas y desventajas en el combate y la conciencia situacional. Cada pocos minutos, el área segura del mapa comienza a encogerse hacia un lugar aleatorio, cualquier jugador que se mantenga o quede fuera de la zona segura recibe daño con el tiempo y finalmente muere. Esta se ve como una pared azul brillante que se contrae con el tiempo, forzando a los jugadores a dirigirse hacia áreas más confinadas y así aumentan las posibilidades de encuentros con demás sobrevivientes. Durante el transcurso de la partida, regiones aleatorias del mapa están resaltadas en rojo y son bombardeadas, siendo una amenaza para los que permanecen en esa zona. En ambos casos, los jugadores son advertidos unos minutos antes de estos eventos, dándoles tiempo para trasladarse a un lugar seguro. En promedio, una ronda completa no toma más de 30 minutos. Al final de cada partida, los jugadores ganan dinero en base al tiempo que sobrevivieron, cantidad de asesinatos y el daño provocado. El dinero se utiliza para comprar cajas que contienen elementos cosméticos para la personalización de los personajes. También se pueden comprar otros objetos estéticos utilizando dinero real que el jugador podrá utilizar.'),(19,11,'Minecraft','Minecraft es un juego de mundo abierto, y no tiene un fin claramente definido, Esto permite una gran libertad en cuanto a la elección de su forma de jugar. A pesar de ello, el juego posee un sistema que otorga logros por completar ciertas acciones.','Minecraft es un videojuego de construcción de tipo mundo abierto o en inglés sandbox creado originalmente por el sueco Markus Persson (conocido comúnmente como «Notch»), que creo posteriormente Mojang Studios (actualmente parte de Microsoft). Fue lanzado el 17 de mayo de 2009, y después de numerosos cambios, su primera versión estable 1.0 fue publicada el 18 de noviembre de 2011. Es un juego formado por bloques, criaturas y comunidades. Los bloques se pueden utilizar para rediseñar el mundo o construir creaciones fantásticas. Las criaturas pueden ser tus amigas o puede que tengas que luchar contra ellas, dependiendo de tu estilo de juego.','Minecraft es un juego de mundo abierto, y no tiene un fin claramente definido (aunque sí que tiene una dimensión llamada a sí misma \'The End\', o en español \'El Final\' en donde después de entrar y matar a la dragona aparecen los créditos del juego y un poema). Esto permite una gran libertad en cuanto a la elección de su forma de jugar. A pesar de ello, el juego posee un sistema que otorga logros por completar ciertas acciones. La cámara es en primera persona, aunque los jugadores tienen la posibilidad de cambiarla a una perspectiva de tercera persona en cualquier momento. El juego se centra en la colocación y destrucción de bloques, siendo que este se compone de objetos tridimensionales cúbicos, colocados sobre un patrón de rejilla fija. Estos cubos o bloques representan principalmente distintos elementos de la naturaleza, como tierra, piedra, minerales, troncos, entre otros.'),(20,11,'The Witcher 3: Wild Hunt','The Witcher 3: Wild Hunt es un juego de rol de acción con una perspectiva en tercera persona. Los jugadores controlan a Geralt de Rivia, un cazador de monstruos conocido como brujo. Tiene una variedad de armas, una ballesta y dos espadas.','The Witcher 3: Wild Hunt es un videojuego de rol desarrollado y publicado por la compañía polaca CD Projekt RED. Esta compañía es la desarrolladora mientras que la distribución corre a cargo de la Warner Bros. Interactive, en el caso de Norteamérica y Bandai Namco para Europa. Fue anunciado en febrero de 2013 y su lanzamiento tuvo lugar a nivel mundial el 19 de mayo de 2015 para PlayStation 4, Xbox One, Microsoft Windows para después llegar a Nintendo Switch el 15 de octubre del 2019. El juego es la tercera parte de la saga, precedido por The Witcher y The Witcher 2: Assassins of Kings, las cuales están basadas en la saga literaria de Geralt de Rivia escrita por Andrzej Sapkowski. Es un juego de perspectiva en tercera persona, el jugador controla al protagonista Geralt de Rivia, un cazador de monstruos conocido como Lobo Blanco, es un brujo, el cual emprende un largo viaje a través de Los reinos del norte. El jugador lucha contra el peligroso mundo mediante magia y espadas, mientras interactúa con los NPC y completa tanto misiones secundarias como la misión principal de la historia, La cual es encontrar a la hija adoptiva de Geralt, Ciri, y detener la profecía del invierno blanco. El juego ha sido aclamado por la crítica y ha obtenido un éxito financiero, vendiendo más de 6 millones de copias en seis semanas. También ha ganado múltiples premios al mejor juego del año, otorgado por diversas revistas especializadas, por críticos y por galas de premios, incluyendo el Golden Joystick Awards, The Game Awards y Game Developers Choice Awards.','The Witcher 3: Wild Hunt es un juego de rol de acción con una perspectiva en tercera persona. Los jugadores controlan a Geralt de Rivia, un cazador de monstruos conocido como brujo. Geralt camina, corre, rueda y esquiva, y (por primera vez en la serie) salta, trepa y nada. Tiene una variedad de armas, incluidas bombas, una ballesta y dos espadas (una de acero y otra de plata). La espada de acero se usa principalmente para matar humanos mientras que la espada de plata es más efectiva contra criaturas y monstruos. Los jugadores pueden sacar, cambiar y envainar sus espadas a voluntad. El juego se centra en la narrativa y tiene una serie de opciones de diálogo que permiten a los jugadores elegir cómo responder a los personajes. Geralt debe tomar decisiones que cambien el estado del mundo y conduzcan a 36 finales posibles, que afecten la vida de los personajes del juego. Puede tener una relación romántica con algunos de los personajes femeninos del juego completando ciertas misiones. Además de las misiones principales, los libros ofrecen más información sobre el mundo del juego. Los jugadores pueden comenzar misiones secundarias después de visitar el tablón de anuncios de una ciudad. En el trayecto de la historia, Geralt tendrá que ir recorriendo todo El Continente para encontrar a Ciri. El continente está compuesto por zonas distintas, las cuales se pueden seleccionar en el mapa, y viajar de una a otra mediante la opción de Viaje Rápido que el juego brinda al jugador.'),(21,11,'Terraria','Terraria es un videojuego de mundo abierto en 2D. Contiene elementos de construcción, exploración, aventura y combate, muy similar a juegos clásicos de la consola Super NES, como por ejemplo la serie Metroid, y a otras entregas no tan antiguas como Minecraft.','Terraria es un videojuego de acción, aventura y de sandbox producido de forma independiente por el estudio Re-Logic. Tiene características tales como la exploración, la artesanía, la construcción de estructuras y el combate. Se lanzó el 16 de mayo de 2011. Hasta la fecha lleva más de 45 000 000 de copias vendidas entre sus diversas plataformas. Se estima que el juego vendió alrededor de 50 000 copias el día del lanzamiento, con más de 17 000 jugadores en línea al mismo tiempo. En asociación con la productora 505 Games el juego fue lanzado para las plataformas Xbox 360, PlayStation 3 y PlayStation Vita, pero estas se dejaron de actualizar. Sus ventas totales se estiman alrededor de un millón de copias. El juego también fue lanzado para los sistemas Android e iOS alcanzando en estas plataformas 8,9 millones de copias descargadas.','Terraria es un videojuego de mundo abierto en 2D. Contiene elementos de construcción, exploración, aventura y combate, muy similar a juegos clásicos de la consola Super NES, como por ejemplo la serie Metroid, y a otras entregas no tan antiguas como Minecraft. El juego comienza en un mundo creado de forma aleatoria. El usuario puede personalizar a su personaje; cambiando el estilo de su pelo, camisa, pantalones, así como el color de los mismos, su género, entre otras personalizaciones que permite el juego. El jugador tiene a su disposición herramientas de distintos tipos, las cuales sirven para moldear el mundo y trabajar los recursos que el jugador encuentre (tales como minerales). Así mismo, el jugador inicia con una cantidad limitada de vida y puntos de magia, los cuales puede incrementar. También es posible mejorar al personaje incrementando su ataque, defensa, velocidad, entre otros, usando distintos objetos obtenibles en el transcurso de la partida. El jugador puede utilizar los materiales y recursos que va encontrando para crear nuevos objetos, tales como armas, armaduras, pociones, etc., siendo los objetos más avanzados los más difíciles de crear. El jugador puede encontrar una gran variedad de enemigos en Terraria, los cuales aparecen dependiendo de diversos factores que incluye la hora, el lugar, eventos especiales e interacciones que hace el personaje. El jugador puede pelear contra sus enemigos con diversas armas como espadas, arcos, armas de fuego, armas mágicas, etc. También se puede batallar con jefes, los cuales dan objetos importantes al ser derrotados y son sumamente difíciles de matar. La mayoría se encuentran o son invocables en determinados biomas, lugares y/o franjas horarias, como «El Muro de Carne» que se encuentra en el infierno, «El Devoramundos» proveniente del bioma «Corrupción», «Esqueletrón» perteneciente a «La Mazmorra», el «Ojo de Cthulhu» el cual solo es invocable en la noche, o también puede ser el caso de «Plantera», la cual se invoca en la selva destruyendo una flor rosada llamada: «Bulbo de Plantera». Todos los jefes pueden ser invocados con sus respectivos invocadores. Completando diferentes requisitos (por ejemplo derrotar a un jefe u obtener objetos específicos) el jugador puede atraer NPC los cuales ocuparán una casa siempre y cuando estas cumplan con los requerimientos necesarios. El juego posee un sistema de comercio en forma de monedas, en el cual el jugador puede comprar o vender diversos objetos a los NPC. Las monedas se consiguen matando monstruos, destruyendo jarrones, encontrando tesoros o vendiendo objetos a los NPC.'),(22,11,'Diablo 3','Diablo III es un RPG de acción con un estilo similar a su predecesor, Diablo II, mientras que mantiene muy pocos elementos del Diablo original. Diablo III se enfoca en el juego cooperativo o en equipo.','Diablo III es un videojuego de rol de acción (ARPG), desarrollado por Blizzard Entertainment. Ésta es la continuación de Diablo II y la tercera parte de la serie que fue creada por la compañía estadounidense Blizzard. Su temática es de fantasía oscura y terrorífica. Su aparición fue anunciada el 28 de junio de 2008 en el Blizzard Entertainment Worldwide Invitational en París, Francia. Blizzard anunció que el lanzamiento se realizaría el 15 de mayo de 2012. Fue uno de los lanzamientos más importantes de un videojuego en la historia, vendiendo una cifra de 3.5 millones de copias en 24 horas y 6.3 millones en una semana. Su secuela Diablo IV se anunció en 2019.','Diablo III es un RPG de acción con un estilo similar a su predecesor, Diablo II , mientras que mantiene muy pocos elementos del Diablo original. Diablo III se enfoca en el juego cooperativo o en equipo. En el modo cooperativo multijugador las partidas tendrán una capacidad máxima de 4 jugadores, a diferencia que en Diablo II eran 8; Blizzard dio como explicación a esto que después de múltiples pruebas y debido a diversos factores concluyeron que 4 jugadores sería el número perfecto pues haría que el juego sea más eficiente y más claro. La compañía en un principio utilizó el motor Havok con el fin de obtener un mayor realismo, que más tarde confirmó que no usaría. Los desarrolladores están buscando que el juego corra en un amplio rango de sistemas, y han dicho que DirectX 10 no será necesario. Se lanzó para Windows y Mac OS X.');
/*!40000 ALTER TABLE `juegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisitos_pc`
--

DROP TABLE IF EXISTS `requisitos_pc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requisitos_pc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `juego_pc_id` int(11) DEFAULT NULL,
  `es_minimo` tinyint(4) DEFAULT NULL,
  `so` varchar(100) DEFAULT NULL,
  `procesador` varchar(100) DEFAULT NULL,
  `interfaz_grafica` varchar(100) DEFAULT NULL,
  `memoria_ram` int(11) DEFAULT NULL,
  `espacio_hd` int(11) DEFAULT NULL,
  `directx` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `juego_pc_id` (`juego_pc_id`),
  CONSTRAINT `requisitos_pc_ibfk_1` FOREIGN KEY (`juego_pc_id`) REFERENCES `juegos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisitos_pc`
--

LOCK TABLES `requisitos_pc` WRITE;
/*!40000 ALTER TABLE `requisitos_pc` DISABLE KEYS */;
INSERT INTO `requisitos_pc` VALUES (1,17,0,'Windows 10 64bit','Intel Core i7-3770 / AMD FX-9590 o superior','670 2GB / AMD R9 280 o superior',10,25,11),(2,17,1,'Windows 11 64bit','Intel Core i7-4790K / AMD Ryzen 5 1600','GTX 980 / AMD R9 Fury',16,25,12),(3,18,0,'64-bit Windows 7, Windows 8.1, Windows 10','Intel Core i5-4430 / AMD FX-6300','NVIDIA GeForce GTX 960 2GB / AMD Radeon R7 370 2GB',8,40,11),(4,18,1,'64-bit Windows 7, Windows 8.1, Windows 10','Intel Core i5-6600K / AMD Ryzen 5 1600','NVIDIA GeForce GTX 1060 3GB / AMD Radeon RX 580 4GB',16,50,11),(5,19,0,'Windows 7 o posterior, macOS o Linux.','Intel Core i3-3210 o AMD A8-7600.','Intel HD Graphics 4000 o AMD Radeon R',4,24,11),(6,19,1,'Windows 10 (May 2020 Update o más reciente) o Windows 11','Intel Core i5-4690 o AMD A10-7800.','NVIDIA GeForce GTX 780 / AMD Radeon 285 / Intel HD 520 / o superior',8,24,12),(7,20,0,'64-bit Windows 7, 64-bit Windows 8 (8.1)','Intel CPU Core i5-2500K 3.3GHz / AMD A10-5800K APU (3.8GHz)','Nvidia GPU GeForce GTX 660 / AMD GPU Radeon HD 7870',6,50,11),(8,20,1,'64-bit Windows 10/11','Intel Core i5-7400 / Ryzen 5 1600','Nvidia GTX 1070 / Radeon RX 480/td>',8,50,12),(9,21,0,'Windows XP / Vista / 7','1.6 GHz','Shader Model 1.1 con 128 MB de VRAM',2,1,9),(10,21,1,'Windows 7, 8/8.1, 10','Dual Core 3.0 Ghz','Memoria de vídeo de 256 MB, compatible con Shader Model 2.0+',4,1,9),(11,22,0,'Windows® 7 / Windows® 8 / Windows® 10 (con el último Service Pack)','Intel® Core™ 2 Duo o AMD Athlon™ 64 X2','NVIDIA® GeForce® 8800GT o ATI Radeon™ HD 2900 XT o Intel® HD Graphics 4000',4,25,NULL),(12,22,1,'Windows® 10 64-bit','Intel® Core™ 2 Duo 2.4 GHz o AMD Athlon™ 64 X2 5600+ 2.8GHz','NVIDIA® GeForce® GTX™ 260 o ATI Radeon™ HD 4870 o superior',6,25,NULL);
/*!40000 ALTER TABLE `requisitos_pc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contraseña` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (4,'1ati','qwer',123,'2341123a@gmail.com','e73b4a401f0c350f7ea9a5d70e51f88389a66020'),(5,'ati','qwer',123,'2341123a@gmail.com','e73b4a401f0c350f7ea9a5d70e51f88389a66020');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04 12:11:51
