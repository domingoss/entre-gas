-- --------------------------------------------------------
-- Anfitrião:                    127.0.0.1
-- Versão do servidor:           10.1.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Versão:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for entre-gasv1
CREATE DATABASE IF NOT EXISTS `entre-gasv1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `entre-gasv1`;

-- Dumping structure for table entre-gasv1.c_cliente
CREATE TABLE IF NOT EXISTS `c_cliente` (
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

-- Dumping data for table entre-gasv1.c_cliente: ~0 rows (approximately)
/*!40000 ALTER TABLE `c_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_cliente` ENABLE KEYS */;

-- Dumping structure for table entre-gasv1.c_configuracao
CREATE TABLE IF NOT EXISTS `c_configuracao` (
  `c_row_id` int(11) NOT NULL AUTO_INCREMENT,
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

-- Dumping data for table entre-gasv1.c_configuracao: ~0 rows (approximately)
/*!40000 ALTER TABLE `c_configuracao` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_configuracao` ENABLE KEYS */;

-- Dumping structure for table entre-gasv1.e_encomenda
CREATE TABLE IF NOT EXISTS `e_encomenda` (
  `e_row_id` int(11) NOT NULL AUTO_INCREMENT,
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

-- Dumping data for table entre-gasv1.e_encomenda: ~0 rows (approximately)
/*!40000 ALTER TABLE `e_encomenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_encomenda` ENABLE KEYS */;

-- Dumping structure for table entre-gasv1.gu_grupo_utilizador
CREATE TABLE IF NOT EXISTS `gu_grupo_utilizador` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table entre-gasv1.gu_grupo_utilizador: ~0 rows (approximately)
/*!40000 ALTER TABLE `gu_grupo_utilizador` DISABLE KEYS */;
/*!40000 ALTER TABLE `gu_grupo_utilizador` ENABLE KEYS */;

-- Dumping structure for table entre-gasv1.l_localizacao
CREATE TABLE IF NOT EXISTS `l_localizacao` (
  `l_row_id` int(11) NOT NULL AUTO_INCREMENT,
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

-- Dumping data for table entre-gasv1.l_localizacao: ~0 rows (approximately)
/*!40000 ALTER TABLE `l_localizacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `l_localizacao` ENABLE KEYS */;

-- Dumping structure for table entre-gasv1.p_produto
CREATE TABLE IF NOT EXISTS `p_produto` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table entre-gasv1.p_produto: ~0 rows (approximately)
/*!40000 ALTER TABLE `p_produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `p_produto` ENABLE KEYS */;

-- Dumping structure for table entre-gasv1.u_utilizador
CREATE TABLE IF NOT EXISTS `u_utilizador` (
  `u_row_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `gu_id` int(11) NOT NULL,
  `u_nome` varchar(50) NOT NULL,
  `u_senha` varchar(50) NOT NULL,
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

-- Dumping data for table entre-gasv1.u_utilizador: ~0 rows (approximately)
/*!40000 ALTER TABLE `u_utilizador` DISABLE KEYS */;
/*!40000 ALTER TABLE `u_utilizador` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
