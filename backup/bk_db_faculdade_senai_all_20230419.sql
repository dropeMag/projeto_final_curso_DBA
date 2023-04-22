-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_faculdade_senai
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `tb_aluno`
--

DROP TABLE IF EXISTS `tb_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_aluno` (
  `id_aluno` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `sobrenome` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `cpf` char(14) COLLATE utf8mb4_general_ci NOT NULL,
  `rg` int NOT NULL,
  `dt_nascimento` date NOT NULL,
  `sexo` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `mae` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pai` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `id_curso` int NOT NULL,
  `id_turma` int NOT NULL,
  `id_endereco` int NOT NULL,
  PRIMARY KEY (`id_aluno`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `fk_id_endereco_aluno` (`id_endereco`),
  KEY `fk_id_turma_aluno` (`id_turma`),
  KEY `fk_id_curso_aluno` (`id_curso`),
  CONSTRAINT `fk_id_curso_aluno` FOREIGN KEY (`id_curso`) REFERENCES `tb_curso` (`id_curso`),
  CONSTRAINT `fk_id_endereco_aluno` FOREIGN KEY (`id_endereco`) REFERENCES `tb_endereco_aluno` (`id_endereco`),
  CONSTRAINT `fk_id_turma_aluno` FOREIGN KEY (`id_turma`) REFERENCES `tb_turma` (`id_turma`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_aluno`
--

LOCK TABLES `tb_aluno` WRITE;
/*!40000 ALTER TABLE `tb_aluno` DISABLE KEYS */;
INSERT INTO `tb_aluno` VALUES (1,'Igor','da Paz','096.500.320-53',8014583,'2004-02-18','m','ouro@gmail.com','Isabel Mendes','João Pedro Gomes',1,1,1,1),(2,'Lavínia','Barbosa','855.150.680-33',5327815,'2002-04-20','f','pedra@gmail.com','Maria Julia Barros','Davi Lucas Carvalho',0,2,2,2),(3,'Davi','Jesus','279.364.260-60',8804016,'1988-01-17','m','agua@gmail.com','Sophia da Costa','Lorenzo Novaes',1,3,3,3),(4,'Lavínia','Conceição','272.939.010-38',1484020,'2000-10-04','f','terra@gmail.com','Giovanna Santos','Ryan Farias',1,4,4,4),(5,'Yuri','Santos','741.968.840-08',1664466,'1986-01-24','m','fogo@gmail.com','Sophia Nunes',NULL,1,5,5,5),(6,'Yasmin','Vieira','628.154.920-16',9413536,'1999-01-30','f','ar@gmail.com','Ana Sophia Aragão','Erick Aragão',1,6,6,6),(7,'Enrico','Castro','682.662.260-24',6701205,'2001-02-07','m','eter@gmail.com',NULL,'João Lucas Campos',0,7,7,7),(8,'Luiza','Aragão','955.259.310-79',8334354,'2003-09-02','f','eterno@gmail.com','Stella Farias',NULL,1,8,8,8),(9,'Luiz','Carla','529.270.480-61',4906262,'2003-02-17','m','cura@gmail.com',NULL,'Henrique Pires',1,9,9,9),(10,'Heloísa','Novaes','873.455.520-04',5288891,'1996-09-22','f','homunculos@gmail.com','Manuela Viana',NULL,0,10,10,10);
/*!40000 ALTER TABLE `tb_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_curso`
--

DROP TABLE IF EXISTS `tb_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_curso` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `sigla` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `carga_horaria` int NOT NULL,
  `id_departamento` int NOT NULL,
  PRIMARY KEY (`id_curso`),
  UNIQUE KEY `sigla` (`sigla`),
  KEY `fk_id_departamento_curso` (`id_departamento`),
  CONSTRAINT `fk_id_departamento_curso` FOREIGN KEY (`id_departamento`) REFERENCES `tb_departamento` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_curso`
--

LOCK TABLES `tb_curso` WRITE;
/*!40000 ALTER TABLE `tb_curso` DISABLE KEYS */;
INSERT INTO `tb_curso` VALUES (1,'Agronegócio','AGN',1200,1),(2,'Antropologia','ATP',1100,2),(3,'Jornalismo','JNL',1400,3),(4,'Fotografia','FTG',1200,4),(5,'Direito','DRT',1300,5),(6,'Matemática','MTM',1100,6),(7,'Arqueologia','AQL',1250,7),(8,'Engenharia de Software','EGNST',1300,8),(9,'Fisioterapia','FST',1220,9),(10,'Hotelaria','HTL',1400,10);
/*!40000 ALTER TABLE `tb_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_departamento`
--

DROP TABLE IF EXISTS `tb_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_departamento` (
  `id_departamento` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `responsavel` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_departamento`
--

LOCK TABLES `tb_departamento` WRITE;
/*!40000 ALTER TABLE `tb_departamento` DISABLE KEYS */;
INSERT INTO `tb_departamento` VALUES (1,'Administração e Economia','Bruno Fernandes Goncalves'),(2,'Ciências Sociais','Estevan Costa Almeida'),(3,'Comunicação e Mídia','Nicolas Rocha Cunha'),(4,'Design e Arte','Eduardo Gomes Carvalho'),(5,'Direito','Eduarda Castro Costa'),(6,'Educação','Marina Martins Santos'),(7,'Engenharia e Arquitetura','Rodrigo Gomes Cavalcanti'),(8,'Informação e Tecnologia','Giovanna Carvalho Oliveira'),(9,'Saúde','Renan Rodrigues Barros'),(10,'Turismo e Gastronomia','Lavinia Sousa Cavalcanti');
/*!40000 ALTER TABLE `tb_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_disciplina`
--

DROP TABLE IF EXISTS `tb_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_disciplina` (
  `id_disciplina` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `carga_horaria` int NOT NULL,
  `creditos` int NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `optativa` tinyint(1) NOT NULL,
  `qnt_aluno` int NOT NULL,
  `id_departamento` int NOT NULL,
  PRIMARY KEY (`id_disciplina`),
  KEY `fk_id_departamento_disciplina` (`id_departamento`),
  CONSTRAINT `fk_id_departamento_disciplina` FOREIGN KEY (`id_departamento`) REFERENCES `tb_departamento` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_disciplina`
--

LOCK TABLES `tb_disciplina` WRITE;
/*!40000 ALTER TABLE `tb_disciplina` DISABLE KEYS */;
INSERT INTO `tb_disciplina` VALUES (1,'Semeação Básica',65,12,'',0,0,1),(2,'Evolução Humana',55,12,'',0,0,2),(3,'Comunicação Popular',45,14,'',0,0,3),(4,'Edição Profissional',45,16,'',0,0,4),(5,'Defesa Criminal',30,25,'',1,0,5),(6,'Cálculos Avançados 2',45,16,'',0,0,6),(7,'Escavação 2',35,19,'',0,0,7),(8,'Big Data',60,20,'',0,0,8),(9,'Fisioculturismo',40,23,'',1,0,9),(10,'Vinhos e Queijos',55,21,'',0,0,10);
/*!40000 ALTER TABLE `tb_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_disciplina_aluno`
--

DROP TABLE IF EXISTS `tb_disciplina_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_disciplina_aluno` (
  `id_aluno` int NOT NULL,
  `id_disciplina` int NOT NULL,
  PRIMARY KEY (`id_aluno`,`id_disciplina`),
  KEY `fk_disciplina_assoc_aluno` (`id_disciplina`),
  CONSTRAINT `fk_aluno_assoc_disciplina` FOREIGN KEY (`id_aluno`) REFERENCES `tb_aluno` (`id_aluno`),
  CONSTRAINT `fk_disciplina_assoc_aluno` FOREIGN KEY (`id_disciplina`) REFERENCES `tb_disciplina` (`id_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_disciplina_aluno`
--

LOCK TABLES `tb_disciplina_aluno` WRITE;
/*!40000 ALTER TABLE `tb_disciplina_aluno` DISABLE KEYS */;
INSERT INTO `tb_disciplina_aluno` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `tb_disciplina_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_disciplina_curso`
--

DROP TABLE IF EXISTS `tb_disciplina_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_disciplina_curso` (
  `id_disciplina` int NOT NULL,
  `id_curso` int NOT NULL,
  PRIMARY KEY (`id_disciplina`,`id_curso`),
  KEY `fk_curso_assoc_disciplina` (`id_curso`),
  CONSTRAINT `fk_curso_assoc_disciplina` FOREIGN KEY (`id_curso`) REFERENCES `tb_curso` (`id_curso`),
  CONSTRAINT `fk_disciplina_assoc_curso` FOREIGN KEY (`id_disciplina`) REFERENCES `tb_disciplina` (`id_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_disciplina_curso`
--

LOCK TABLES `tb_disciplina_curso` WRITE;
/*!40000 ALTER TABLE `tb_disciplina_curso` DISABLE KEYS */;
INSERT INTO `tb_disciplina_curso` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `tb_disciplina_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_disciplina_disciplina`
--

DROP TABLE IF EXISTS `tb_disciplina_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_disciplina_disciplina` (
  `id_disciplina_1` int NOT NULL,
  `id_disciplina_2` int NOT NULL,
  PRIMARY KEY (`id_disciplina_1`,`id_disciplina_2`),
  KEY `fk_disciplina_2_assoc_disciplina` (`id_disciplina_2`),
  CONSTRAINT `fk_disciplina_1_assoc_disciplina` FOREIGN KEY (`id_disciplina_1`) REFERENCES `tb_disciplina` (`id_disciplina`),
  CONSTRAINT `fk_disciplina_2_assoc_disciplina` FOREIGN KEY (`id_disciplina_2`) REFERENCES `tb_disciplina` (`id_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_disciplina_disciplina`
--

LOCK TABLES `tb_disciplina_disciplina` WRITE;
/*!40000 ALTER TABLE `tb_disciplina_disciplina` DISABLE KEYS */;
INSERT INTO `tb_disciplina_disciplina` VALUES (1,3),(2,7);
/*!40000 ALTER TABLE `tb_disciplina_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_disciplina_historico`
--

DROP TABLE IF EXISTS `tb_disciplina_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_disciplina_historico` (
  `id_historico` int NOT NULL,
  `id_disciplina` int NOT NULL,
  `frequencia` float NOT NULL,
  `nota` float NOT NULL,
  PRIMARY KEY (`id_historico`,`id_disciplina`),
  KEY `fk_disciplina_assoc_historico` (`id_disciplina`),
  CONSTRAINT `fk_disciplina_assoc_historico` FOREIGN KEY (`id_disciplina`) REFERENCES `tb_disciplina` (`id_disciplina`),
  CONSTRAINT `fk_id_historico_assoc_disciplina` FOREIGN KEY (`id_historico`) REFERENCES `tb_historico` (`id_historico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_disciplina_historico`
--

LOCK TABLES `tb_disciplina_historico` WRITE;
/*!40000 ALTER TABLE `tb_disciplina_historico` DISABLE KEYS */;
INSERT INTO `tb_disciplina_historico` VALUES (1,1,87,9),(2,2,98,8),(3,3,100,9.6),(4,4,65,6.25),(5,5,78,7.5),(6,6,85,8.7),(7,7,98,9.9),(8,8,78,7.6),(9,9,90,8.6),(10,10,100,10);
/*!40000 ALTER TABLE `tb_disciplina_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_disciplina_professor`
--

DROP TABLE IF EXISTS `tb_disciplina_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_disciplina_professor` (
  `id_professor` int NOT NULL,
  `id_disciplina` int NOT NULL,
  PRIMARY KEY (`id_professor`,`id_disciplina`),
  KEY `fk_disciplina_assoc_professor` (`id_disciplina`),
  CONSTRAINT `fk_disciplina_assoc_professor` FOREIGN KEY (`id_disciplina`) REFERENCES `tb_disciplina` (`id_disciplina`),
  CONSTRAINT `fk_professor_assoc_disciplina` FOREIGN KEY (`id_professor`) REFERENCES `tb_professor` (`id_professor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_disciplina_professor`
--

LOCK TABLES `tb_disciplina_professor` WRITE;
/*!40000 ALTER TABLE `tb_disciplina_professor` DISABLE KEYS */;
INSERT INTO `tb_disciplina_professor` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `tb_disciplina_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_endereco_aluno`
--

DROP TABLE IF EXISTS `tb_endereco_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_endereco_aluno` (
  `id_endereco` int NOT NULL AUTO_INCREMENT,
  `cep` char(11) COLLATE utf8mb4_general_ci NOT NULL,
  `cidade` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `bairro` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `numero` int NOT NULL,
  `complemento` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_logradouro` int NOT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `fk_id_logradouro_aluno` (`id_logradouro`),
  CONSTRAINT `fk_id_logradouro_aluno` FOREIGN KEY (`id_logradouro`) REFERENCES `tb_tipo_logradouro` (`id_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_endereco_aluno`
--

LOCK TABLES `tb_endereco_aluno` WRITE;
/*!40000 ALTER TABLE `tb_endereco_aluno` DISABLE KEYS */;
INSERT INTO `tb_endereco_aluno` VALUES (1,'13267379','Ceilândia','Sul',11,NULL,1),(2,'72983202','Ceilândia','Norte',12,NULL,2),(3,'21004486','Ceilândia','Leste',13,'Sul',3),(4,'76693300','Ceilândia','Psul',14,NULL,4),(5,'71858705','Ceilândia','Pnorte',15,'24 andar',5),(6,'90588411','Ceilândia','Sol Nascente',16,NULL,6),(7,'17786534','Ceilândia','Centro',17,'Apt. 32',7),(8,'22918906','Taguatinga','Norte',18,NULL,8),(9,'81634136','Taguatinga','Sul',19,NULL,9),(10,'84173132','Taguatinga','Pistão Sul',20,NULL,10);
/*!40000 ALTER TABLE `tb_endereco_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_endereco_professor`
--

DROP TABLE IF EXISTS `tb_endereco_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_endereco_professor` (
  `id_endereco` int NOT NULL AUTO_INCREMENT,
  `cep` char(11) COLLATE utf8mb4_general_ci NOT NULL,
  `cidade` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `bairro` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `numero` int NOT NULL,
  `complemento` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_logradouro` int NOT NULL,
  `id_professor` int NOT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `fk_id_logradouro_professor` (`id_logradouro`),
  KEY `fk_id_professor_professor` (`id_professor`),
  CONSTRAINT `fk_id_logradouro_professor` FOREIGN KEY (`id_logradouro`) REFERENCES `tb_tipo_logradouro` (`id_logradouro`),
  CONSTRAINT `fk_id_professor_professor` FOREIGN KEY (`id_professor`) REFERENCES `tb_professor` (`id_professor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_endereco_professor`
--

LOCK TABLES `tb_endereco_professor` WRITE;
/*!40000 ALTER TABLE `tb_endereco_professor` DISABLE KEYS */;
INSERT INTO `tb_endereco_professor` VALUES (1,'22673798','Ceilândia','Sul',11,NULL,1,1),(2,'94832062','Ceilândia','Norte',12,NULL,2,2),(3,'56044486','Ceilândia','Leste',13,'Sul',3,3),(4,'68933300','Ceilândia','Psul',14,NULL,4,4),(5,'89568705','Ceilândia','Pnorte',15,'24 andar',5,5),(6,'56488411','Ceilândia','Sol Nascente',16,NULL,6,6),(7,'74586534','Ceilândia','Centro',17,'Apt. 32',7,7),(8,'93518906','Taguatinga','Norte',18,NULL,8,8),(9,'75634136','Taguatinga','Sul',19,NULL,9,9),(10,'13573132','Taguatinga','Pistão Sul',20,NULL,10,10);
/*!40000 ALTER TABLE `tb_endereco_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_historico`
--

DROP TABLE IF EXISTS `tb_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_historico` (
  `id_historico` int NOT NULL AUTO_INCREMENT,
  `semestre` int NOT NULL,
  `dt_inicio` int NOT NULL,
  `dt_fim` int DEFAULT NULL,
  `turno` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_historico`),
  KEY `fk_dt_inicio_historico` (`dt_inicio`),
  KEY `fk_dt_fim_historico` (`dt_fim`),
  CONSTRAINT `fk_dt_fim_historico` FOREIGN KEY (`dt_fim`) REFERENCES `tb_periodo` (`id_periodo`),
  CONSTRAINT `fk_dt_inicio_historico` FOREIGN KEY (`dt_inicio`) REFERENCES `tb_periodo` (`id_periodo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_historico`
--

LOCK TABLES `tb_historico` WRITE;
/*!40000 ALTER TABLE `tb_historico` DISABLE KEYS */;
INSERT INTO `tb_historico` VALUES (1,2,1,NULL,'m'),(2,3,2,NULL,'v'),(3,4,3,NULL,'n'),(4,5,4,NULL,'m'),(5,6,5,NULL,'v'),(6,7,6,NULL,'n'),(7,8,7,NULL,'m'),(8,9,8,NULL,'v'),(9,10,9,NULL,'n'),(10,11,10,NULL,'m');
/*!40000 ALTER TABLE `tb_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_periodo`
--

DROP TABLE IF EXISTS `tb_periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_periodo` (
  `id_periodo` int NOT NULL AUTO_INCREMENT,
  `semestre` int DEFAULT NULL,
  `ano` int DEFAULT NULL,
  PRIMARY KEY (`id_periodo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_periodo`
--

LOCK TABLES `tb_periodo` WRITE;
/*!40000 ALTER TABLE `tb_periodo` DISABLE KEYS */;
INSERT INTO `tb_periodo` VALUES (1,1,2023),(2,2,2022),(3,1,2022),(4,2,2021),(5,1,2021),(6,2,2020),(7,1,2020),(8,2,2019),(9,1,2019),(10,2,2018),(11,1,2018);
/*!40000 ALTER TABLE `tb_periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_professor`
--

DROP TABLE IF EXISTS `tb_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_professor` (
  `id_professor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `sobrenome` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `cpf` char(14) COLLATE utf8mb4_general_ci NOT NULL,
  `rg` int NOT NULL,
  `dt_nascimento` date NOT NULL,
  `sexo` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `id_departamento` int NOT NULL,
  PRIMARY KEY (`id_professor`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `fk_id_departamento_professor` (`id_departamento`),
  CONSTRAINT `fk_id_departamento_professor` FOREIGN KEY (`id_departamento`) REFERENCES `tb_departamento` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_professor`
--

LOCK TABLES `tb_professor` WRITE;
/*!40000 ALTER TABLE `tb_professor` DISABLE KEYS */;
INSERT INTO `tb_professor` VALUES (1,'Enrico','Rodrigues','987.756.960-45',9785417,'1983-12-20','m','fulano@gmail.com',1,1),(2,'Cecília','Mendes','896.078.950-02',8299161,'1994-03-12','f','beltrano@gmail.com',1,2),(3,'Carlos','da Rocha','505.059.690-41',6626527,'1984-09-24','m','sicrano@gmail.com',0,3),(4,'Evelyn','Mendes','552.937.020-92',6721478,'2001-05-20','f','deltrano@gmail.com',1,4),(5,'Eduardo','Barbosa','440.842.020-45',8279411,'1984-10-16','m','rolando@gmail.com',1,5),(6,'Ana Clara','Souza','339.427.050-10',6925643,'2000-11-18','f','fuxicando@gmail.com',1,6),(7,'Nathan','da Mota','447.673.780-36',2730565,'1987-11-12','m','zombando@gmail.com',0,7),(8,'Evelyn','Cunha','366.045.970-40',5780654,'1989-05-10','f','montando@gmail.com',1,8),(9,'Lucca','Rodrigues','887.826.590-01',2526558,'1985-06-12','m','jogando@gmail.com',1,9),(10,'Ana Vitória','Farias','470.839.380-67',6366502,'1998-02-08','f','carlos@gmail.com',0,10);
/*!40000 ALTER TABLE `tb_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_telefone_aluno`
--

DROP TABLE IF EXISTS `tb_telefone_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_telefone_aluno` (
  `id_telefone` int NOT NULL AUTO_INCREMENT,
  `ddd` char(2) COLLATE utf8mb4_general_ci NOT NULL,
  `numero` varchar(9) COLLATE utf8mb4_general_ci NOT NULL,
  `id_aluno` int NOT NULL,
  `id_tipo_telefone` int NOT NULL,
  PRIMARY KEY (`id_telefone`),
  KEY `fk_id_aluno_telefone` (`id_aluno`),
  KEY `fk_tipo_telefone_aluno` (`id_tipo_telefone`),
  CONSTRAINT `fk_id_aluno_telefone` FOREIGN KEY (`id_aluno`) REFERENCES `tb_aluno` (`id_aluno`),
  CONSTRAINT `fk_tipo_telefone_aluno` FOREIGN KEY (`id_tipo_telefone`) REFERENCES `tb_tipo_telefone` (`id_tipo_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_telefone_aluno`
--

LOCK TABLES `tb_telefone_aluno` WRITE;
/*!40000 ALTER TABLE `tb_telefone_aluno` DISABLE KEYS */;
INSERT INTO `tb_telefone_aluno` VALUES (1,'61','916472377',1,1),(2,'62','962055814',2,1),(3,'63','984953735',3,1),(4,'64','973654215',4,1),(5,'81','973242261',5,1),(6,'82','984283742',6,1),(7,'72','997784832',7,1),(8,'93','906448272',8,1),(9,'92','983225167',9,1),(10,'64','932753621',10,1);
/*!40000 ALTER TABLE `tb_telefone_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_telefone_professor`
--

DROP TABLE IF EXISTS `tb_telefone_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_telefone_professor` (
  `id_telefone` int NOT NULL AUTO_INCREMENT,
  `ddd` char(2) COLLATE utf8mb4_general_ci NOT NULL,
  `numero` varchar(9) COLLATE utf8mb4_general_ci NOT NULL,
  `id_professor` int NOT NULL,
  `id_tipo_telefone` int NOT NULL,
  PRIMARY KEY (`id_telefone`),
  KEY `fk_id_professor_telefone` (`id_professor`),
  KEY `fk_tipo_telefone_professor` (`id_tipo_telefone`),
  CONSTRAINT `fk_id_professor_telefone` FOREIGN KEY (`id_professor`) REFERENCES `tb_professor` (`id_professor`),
  CONSTRAINT `fk_tipo_telefone_professor` FOREIGN KEY (`id_tipo_telefone`) REFERENCES `tb_tipo_telefone` (`id_tipo_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_telefone_professor`
--

LOCK TABLES `tb_telefone_professor` WRITE;
/*!40000 ALTER TABLE `tb_telefone_professor` DISABLE KEYS */;
INSERT INTO `tb_telefone_professor` VALUES (1,'61','993167237',1,1),(2,'62','973620584',2,1),(3,'63','973849573',3,1),(4,'64','984736215',4,1),(5,'81','983732261',5,1),(6,'82','995848372',6,1),(7,'72','994984832',7,1),(8,'93','998048272',8,1),(9,'92','999825167',9,1),(10,'64','998373621',10,1);
/*!40000 ALTER TABLE `tb_telefone_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo_logradouro`
--

DROP TABLE IF EXISTS `tb_tipo_logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipo_logradouro` (
  `id_logradouro` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo_logradouro`
--

LOCK TABLES `tb_tipo_logradouro` WRITE;
/*!40000 ALTER TABLE `tb_tipo_logradouro` DISABLE KEYS */;
INSERT INTO `tb_tipo_logradouro` VALUES (1,'alameda'),(2,'avenida'),(3,'baixa'),(4,'ciclovia'),(5,'comunidade'),(6,'distrito'),(7,'esplanada'),(8,'fazenda'),(9,'lago'),(10,'ponta');
/*!40000 ALTER TABLE `tb_tipo_logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo_telefone`
--

DROP TABLE IF EXISTS `tb_tipo_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_tipo_telefone` (
  `id_tipo_telefone` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_tipo_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo_telefone`
--

LOCK TABLES `tb_tipo_telefone` WRITE;
/*!40000 ALTER TABLE `tb_tipo_telefone` DISABLE KEYS */;
INSERT INTO `tb_tipo_telefone` VALUES (1,'celular'),(2,'fixo');
/*!40000 ALTER TABLE `tb_tipo_telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_turma`
--

DROP TABLE IF EXISTS `tb_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_turma` (
  `id_turma` int NOT NULL AUTO_INCREMENT,
  `qnt_aluno` int NOT NULL,
  `turno` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  `id_periodo` int NOT NULL,
  `id_curso` int NOT NULL,
  PRIMARY KEY (`id_turma`),
  KEY `fk_id_curso_turma` (`id_curso`),
  KEY `fk_id_periodo_turma` (`id_periodo`),
  CONSTRAINT `fk_id_curso_turma` FOREIGN KEY (`id_curso`) REFERENCES `tb_curso` (`id_curso`),
  CONSTRAINT `fk_id_periodo_turma` FOREIGN KEY (`id_periodo`) REFERENCES `tb_periodo` (`id_periodo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_turma`
--

LOCK TABLES `tb_turma` WRITE;
/*!40000 ALTER TABLE `tb_turma` DISABLE KEYS */;
INSERT INTO `tb_turma` VALUES (1,0,'m',1,1),(2,0,'v',2,2),(3,0,'n',3,3),(4,0,'m',4,4),(5,0,'v',5,5),(6,0,'n',6,6),(7,0,'m',7,7),(8,0,'v',8,8),(9,0,'n',9,9),(10,0,'m',10,10);
/*!40000 ALTER TABLE `tb_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_faculdade_senai'
--

--
-- Dumping routines for database 'db_faculdade_senai'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-19 16:53:26
