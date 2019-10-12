-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: entre-gasv1
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

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
-- Table structure for table `c_cliente`
--

DROP TABLE IF EXISTS `c_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c_cliente` (
  `c_row_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `c_nome` varchar(50) NOT NULL,
  `c_sobrenome` varchar(50) DEFAULT NULL,
  `c_apelido` varchar(50) NOT NULL,
  `c_profissao` varchar(50) DEFAULT NULL,
  `c_contacto` varchar(50) DEFAULT NULL,
  `c_contacto2` varchar(50) DEFAULT NULL,
  `c_endereco` varchar(50) DEFAULT NULL,
  `c_provincia` varchar(50) DEFAULT NULL,
  `c_criado_por` int(11) NOT NULL,
  `c_modificado_por` int(11) NOT NULL,
  `c_data_criacao` datetime NOT NULL,
  `c_data_modificacao` datetime NOT NULL,
  `c_start_date` datetime NOT NULL,
  `c_end_date` datetime NOT NULL,
  PRIMARY KEY (`c_row_id`),
  KEY `Index 2` (`c_id`),
  KEY `FK_c_cliente_u_utilizador` (`u_id`),
  KEY `FK_c_cliente_u_utilizador_2` (`c_criado_por`),
  KEY `FK_c_cliente_u_utilizador_3` (`c_modificado_por`),
  CONSTRAINT `FK_c_cliente_u_utilizador` FOREIGN KEY (`u_id`) REFERENCES `u_utilizador` (`u_id`),
  CONSTRAINT `FK_c_cliente_u_utilizador_2` FOREIGN KEY (`c_criado_por`) REFERENCES `u_utilizador` (`u_id`),
  CONSTRAINT `FK_c_cliente_u_utilizador_3` FOREIGN KEY (`c_modificado_por`) REFERENCES `u_utilizador` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_cliente`
--

LOCK TABLES `c_cliente` WRITE;
/*!40000 ALTER TABLE `c_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_configuracao`
--

DROP TABLE IF EXISTS `c_configuracao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c_configuracao` (
  `c_row_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `c_nome` varchar(50) NOT NULL,
  `c_descricao` varchar(50) DEFAULT NULL,
  `c_valor` varchar(50) DEFAULT NULL,
  `c_tipo` varchar(50) NOT NULL,
  `c_criado_por` int(11) NOT NULL,
  `c_modificado_por` int(11) NOT NULL,
  `c_data_criacao` datetime NOT NULL,
  `c_data_modificacao` datetime NOT NULL,
  `c_start_date` datetime NOT NULL,
  `c_end_date` datetime NOT NULL,
  PRIMARY KEY (`c_row_id`),
  KEY `Index 2` (`c_id`),
  KEY `FK_c_configuracao_u_utilizador` (`c_criado_por`),
  KEY `FK_c_configuracao_u_utilizador_2` (`c_modificado_por`),
  CONSTRAINT `FK_c_configuracao_u_utilizador` FOREIGN KEY (`c_criado_por`) REFERENCES `u_utilizador` (`u_id`),
  CONSTRAINT `FK_c_configuracao_u_utilizador_2` FOREIGN KEY (`c_modificado_por`) REFERENCES `u_utilizador` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_configuracao`
--

LOCK TABLES `c_configuracao` WRITE;
/*!40000 ALTER TABLE `c_configuracao` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_configuracao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_encomenda`
--

DROP TABLE IF EXISTS `e_encomenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e_encomenda` (
  `e_row_id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `e_estado` varchar(50) NOT NULL DEFAULT '',
  `p_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `e_criado_por` int(11) NOT NULL,
  `e_modificado_por` int(11) NOT NULL,
  `e_data_criacao` datetime NOT NULL,
  `e_data_modificacao` datetime NOT NULL,
  `e_start_date` datetime NOT NULL,
  `e_end_date` datetime NOT NULL,
  PRIMARY KEY (`e_row_id`),
  KEY `Index 2` (`e_id`),
  KEY `FK_e_encomenda_p_produto` (`p_id`),
  KEY `FK_e_encomenda_l_localizacao` (`l_id`),
  KEY `FK_e_encomenda_u_utilizador` (`u_id`),
  KEY `FK_e_encomenda_u_utilizador_2` (`e_criado_por`),
  KEY `FK_e_encomenda_u_utilizador_3` (`e_modificado_por`),
  CONSTRAINT `FK_e_encomenda_l_localizacao` FOREIGN KEY (`l_id`) REFERENCES `l_localizacao` (`l_id`),
  CONSTRAINT `FK_e_encomenda_p_produto` FOREIGN KEY (`p_id`) REFERENCES `p_produto` (`p_id`),
  CONSTRAINT `FK_e_encomenda_u_utilizador` FOREIGN KEY (`u_id`) REFERENCES `u_utilizador` (`u_id`),
  CONSTRAINT `FK_e_encomenda_u_utilizador_2` FOREIGN KEY (`e_criado_por`) REFERENCES `u_utilizador` (`u_id`),
  CONSTRAINT `FK_e_encomenda_u_utilizador_3` FOREIGN KEY (`e_modificado_por`) REFERENCES `u_utilizador` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_encomenda`
--

LOCK TABLES `e_encomenda` WRITE;
/*!40000 ALTER TABLE `e_encomenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_encomenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gu_grupo_utilizador`
--

DROP TABLE IF EXISTS `gu_grupo_utilizador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gu_grupo_utilizador` (
  `gu_row_id` int(11) NOT NULL AUTO_INCREMENT,
  `gu_id` int(11) NOT NULL,
  `gu_nome` varchar(50) NOT NULL,
  `gu_criado_por` int(11) NOT NULL,
  `gu_modificado_por` int(11) NOT NULL,
  `gu_data_criacao` datetime NOT NULL,
  `gu_data_modificacao` datetime NOT NULL,
  `gu_start_date` datetime NOT NULL,
  `gu_end_date` datetime NOT NULL,
  PRIMARY KEY (`gu_row_id`),
  KEY `Index 2` (`gu_id`),
  KEY `FK_gu_grupo_utilizador_u_utilizador` (`gu_criado_por`),
  KEY `FK_gu_grupo_utilizador_u_utilizador_2` (`gu_modificado_por`),
  CONSTRAINT `FK_gu_grupo_utilizador_u_utilizador` FOREIGN KEY (`gu_criado_por`) REFERENCES `u_utilizador` (`u_id`),
  CONSTRAINT `FK_gu_grupo_utilizador_u_utilizador_2` FOREIGN KEY (`gu_modificado_por`) REFERENCES `u_utilizador` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gu_grupo_utilizador`
--

LOCK TABLES `gu_grupo_utilizador` WRITE;
/*!40000 ALTER TABLE `gu_grupo_utilizador` DISABLE KEYS */;
INSERT INTO `gu_grupo_utilizador` VALUES (1,1,'admin',1,1,'2019-10-05 19:43:27','2019-10-05 19:43:27','2019-10-05 19:43:27','2020-10-05 19:43:27');
/*!40000 ALTER TABLE `gu_grupo_utilizador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l_localizacao`
--

DROP TABLE IF EXISTS `l_localizacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `l_localizacao` (
  `l_row_id` int(11) NOT NULL,
  `l_id` int(11) NOT NULL,
  `l_nome` varchar(50) DEFAULT NULL,
  `l_latitude` varchar(50) DEFAULT NULL,
  `l_longitude` varchar(50) DEFAULT NULL,
  `l_precisao` int(11) DEFAULT NULL,
  `l_criado_por` int(11) NOT NULL,
  `l_modificado_por` int(11) NOT NULL,
  `l_data_criacao` datetime NOT NULL,
  `l_data_modificacao` datetime NOT NULL,
  `l_start_date` datetime NOT NULL,
  `l_end_date` datetime NOT NULL,
  PRIMARY KEY (`l_row_id`),
  KEY `Index 2` (`l_id`),
  KEY `FK_l_localizacao_u_utilizador` (`l_criado_por`),
  KEY `FK_l_localizacao_u_utilizador_2` (`l_modificado_por`),
  CONSTRAINT `FK_l_localizacao_u_utilizador` FOREIGN KEY (`l_criado_por`) REFERENCES `u_utilizador` (`u_id`),
  CONSTRAINT `FK_l_localizacao_u_utilizador_2` FOREIGN KEY (`l_modificado_por`) REFERENCES `u_utilizador` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l_localizacao`
--

LOCK TABLES `l_localizacao` WRITE;
/*!40000 ALTER TABLE `l_localizacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `l_localizacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `p_produto`
--

DROP TABLE IF EXISTS `p_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_produto` (
  `p_row_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `p_nome` varchar(50) DEFAULT NULL,
  `p_preco` double DEFAULT NULL,
  `p_estado` varchar(50) DEFAULT NULL,
  `p_tipo` varchar(50) DEFAULT NULL,
  `p_marca` varchar(50) DEFAULT NULL,
  `p_peso` int(11) DEFAULT NULL,
  `p_criado_por` int(11) NOT NULL,
  `p_modificao_por` int(11) NOT NULL,
  `p_data_criacao` datetime NOT NULL,
  `p_data_modificacao` datetime NOT NULL,
  `p_start_date` datetime NOT NULL,
  `p_end_date` datetime NOT NULL,
  PRIMARY KEY (`p_row_id`),
  KEY `Index 2` (`p_id`),
  KEY `FK_p_produto_u_utilizador` (`p_criado_por`),
  KEY `FK_p_produto_u_utilizador_2` (`p_modificao_por`),
  CONSTRAINT `FK_p_produto_u_utilizador` FOREIGN KEY (`p_criado_por`) REFERENCES `u_utilizador` (`u_id`),
  CONSTRAINT `FK_p_produto_u_utilizador_2` FOREIGN KEY (`p_modificao_por`) REFERENCES `u_utilizador` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p_produto`
--

LOCK TABLES `p_produto` WRITE;
/*!40000 ALTER TABLE `p_produto` DISABLE KEYS */;
INSERT INTO `p_produto` VALUES (2,1,'Botijao',1500,'activo',NULL,NULL,15,1,1,'2019-10-05 19:44:34','2019-10-05 19:44:35','2019-10-05 00:00:00','2050-10-10 00:00:00');
/*!40000 ALTER TABLE `p_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_utilizador`
--

DROP TABLE IF EXISTS `u_utilizador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `u_utilizador` (
  `u_row_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `gu_id` int(11) NOT NULL,
  `u_nome` varchar(50) NOT NULL,
  `u_senha` varchar(50) NOT NULL,
  `u_estado` int(11) NOT NULL,
  `u_ultimo_login` datetime DEFAULT NULL,
  `u_criado_por` int(11) NOT NULL,
  `u_modificado_por` int(11) NOT NULL,
  `u_data_criacao` datetime NOT NULL,
  `u_data_modificacao` datetime NOT NULL,
  `u_start_date` datetime NOT NULL,
  `u_end_date` datetime NOT NULL,
  PRIMARY KEY (`u_row_id`),
  KEY `Index 2` (`u_id`),
  KEY `FK_u_utilizador_gu_grupo_utilizador` (`gu_id`),
  CONSTRAINT `FK_u_utilizador_gu_grupo_utilizador` FOREIGN KEY (`gu_id`) REFERENCES `gu_grupo_utilizador` (`gu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_utilizador`
--

LOCK TABLES `u_utilizador` WRITE;
/*!40000 ALTER TABLE `u_utilizador` DISABLE KEYS */;
INSERT INTO `u_utilizador` VALUES (1,1,1,'jonas','123',1,'2019-10-12 13:18:02',1,1,'2019-10-05 19:43:27','2019-10-05 19:43:28','2019-10-05 19:43:30','2045-10-05 19:43:34'),(2,1,1,'$username','123',0,'2019-10-12 13:18:02',1,1,'2019-10-05 19:43:27','2019-10-05 19:43:27','2019-10-05 19:43:30','2019-10-05 19:43:30');
/*!40000 ALTER TABLE `u_utilizador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-12 13:27:44
