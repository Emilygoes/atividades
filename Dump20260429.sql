-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: oficina
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
-- Table structure for table `carros`
--

DROP TABLE IF EXISTS `carros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carros` (
  `marca` varchar(45) DEFAULT NULL,
  `placa` varchar(10) NOT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carros`
--

LOCK TABLES `carros` WRITE;
/*!40000 ALTER TABLE `carros` DISABLE KEYS */;
INSERT INTO `carros` VALUES ('Kia','AAB5Y75','Stinger'),('Toyota','AGI7P92','Hilux'),('Fiat','BCO7G81','Pulse'),('Nissan','BCU2B31','Versa'),('Ford','BEC7F45','Ka'),('Toyota','BEY6T57','Yaris'),('Renault','CBQ3K18','Captur'),('Hyundai','CDE7M75','Tucson'),('Volkswagen','CNB8E80','Gol'),('Fiat','DEV1F82','Cronos'),('Nissan','DVD3H81','Frontier'),('Toyota','DZH5O67','Corolla'),('Mercedes-Benz','EHU8R01','C200'),('Chevrolet','EUV9C25','Tracker'),('Renault','FHW6V51','Duster'),('Volkswagen','FMT4V89','Nivus'),('Jeep','GNS7J59','Compass'),('Honda','HJD0V55','City'),('Nissan','IEI4Y90','Kicks'),('Kia','JKX8J62','Sportage'),('Hyundai','JOT5T54','Creta'),('Renault','KMQ6P63','Sandero'),('Toyota','LDV5W82','RAV4'),('Hyundai','LEY6W86','HB20'),('Ford','LJC4Q73','EcoSport'),('Volkswagen','LJY2D86','Virtus'),('Audi','MNS9X35','A3'),('BMW','MRK0C65','320i'),('Peugeot','NZD4G74','208'),('Chevrolet','OAV2Q94','Onix'),('Fiat','OII2U64','Strada'),('Jeep','PIF1D46','Grand Cherokee'),('marca','placa','modelo'),('Ford','PVI2M98','Territory'),('Mitsubishi','PVL3I69','Eclipse Cross'),('Ford','QRP7R41','Ranger'),('Honda','QVT9H95','Civic'),('Renault','QWP2G38','Kwid'),('Fiat','RGG9K28','Argo'),('Chevrolet','SKC8F91','Cruze'),('Jeep','TSQ1U35','Renegade'),('Chevrolet','VIN9L83','S10'),('Fiat','VSL2T81','Toro'),('Hyundai','VTA8P22','i30'),('Peugeot','VWN2F53','2008'),('Volkswagen','WHQ4A54','Polo'),('Honda','XFZ9B82','Fit'),('Jeep','XVE8H88','Commander'),('Volkswagen','ZJC8V88','T-Cross'),('Honda','ZOL5I21','HR-V'),('Chevrolet','ZUB3N04','Spin');
/*!40000 ALTER TABLE `carros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `data_nascimento` date NOT NULL,
  `endereco` varchar(100) NOT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES ('10101010101','Juliana Silva','1993-04-25','Rua J, 140'),('11111111111','Carlos Souza','1990-03-12','Rua A, 120'),('22222222222','Fernanda Lima','1995-07-20','Rua B, 85'),('33333333333','João Pedro','1987-11-02','Rua C, 210'),('44444444444','Mariana Alves','1998-01-18','Rua D, 56'),('55555555555','Pedro Henrique','1989-09-30','Rua E, 77'),('66666666666','Aline Costa','1997-05-14','Rua F, 101'),('77777777777','Lucas Martins','1985-06-08','Rua G, 43'),('88888888888','Bianca Rocha','1996-12-22','Rua H, 98'),('99999999999','Rafael Gomes','1991-08-11','Rua I, 65');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `id_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `valor` decimal(10,2) NOT NULL,
  `forma_pagamento` varchar(30) NOT NULL,
  `data_pagamento` date NOT NULL,
  `cpf_pessoa` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_pagamento`),
  KEY `cpf_pessoa` (`cpf_pessoa`),
  CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`cpf_pessoa`) REFERENCES `pessoas` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,150.00,'Pix','2026-04-01','017.847.573'),(2,320.00,'Cartão','2026-04-03','035.376.953'),(3,100.00,'Dinheiro','2026-04-05','039.169.565'),(4,480.00,'Pix','2026-04-07','048.197.318'),(5,220.00,'Cartão','2026-04-09','051.741.024'),(6,350.00,'Pix','2026-04-10','079.924.548'),(7,600.00,'Dinheiro','2026-04-12','079.920.925'),(8,90.00,'Pix','2026-04-14','133.487.387'),(9,750.00,'Cartão','2026-04-16','172.811.344'),(10,500.00,'Pix','2026-04-18','173.023.845');
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pecas`
--

DROP TABLE IF EXISTS `pecas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pecas` (
  `id_peca` int(11) NOT NULL,
  `estoque` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `id_servico` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_peca`),
  KEY `id_servico` (`id_servico`),
  CONSTRAINT `pecas_ibfk_1` FOREIGN KEY (`id_servico`) REFERENCES `servico` (`id_servico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pecas`
--

LOCK TABLES `pecas` WRITE;
/*!40000 ALTER TABLE `pecas` DISABLE KEYS */;
INSERT INTO `pecas` VALUES (1,15,'Filtro de óleo',1),(2,30,'Pastilha de freio',2),(3,10,'Pneu',3),(4,8,'Bateria',4),(5,20,'Radiador',5),(6,12,'Amortecedor',6),(7,18,'Correia dentada',7),(8,25,'Velas',8),(9,14,'Kit embreagem',9),(10,40,'Filtro de ar',10);
/*!40000 ALTER TABLE `pecas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoas` (
  `nome` varchar(45) DEFAULT NULL,
  `cpf` varchar(11) NOT NULL,
  `idade` int(11) DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES ('Marcos Ribeiro','017.847.573',33,'Masculino'),('Mariana Borges','035.376.953',56,'Feminino'),('Amanda Braga','039.169.565',18,'Feminino'),('Vitor Campos','048.197.318',20,'Masculino'),('Paula Dias','051.741.024',57,'Feminino'),('Patricia Araujo','079.920.925',18,'Feminino'),('Gustavo Nunes','079.924.548',33,'Masculino'),('Helena Martins','133.487.387',44,'Feminino'),('Kevin Fernandes','172.811.344',30,'Masculino'),('Camila Paiva','173.023.845',37,'Feminino'),('Felipe Andrade','243.972.956',52,'Masculino'),('Juliana Rocha','287.059.102',18,'Feminino'),('Igor Alves','288.846.525',21,'Masculino'),('Helena Vieira','302.959.493',35,'Feminino'),('Renato Machado','344.968.801',56,'Masculino'),('Jéssica Monteiro','356.469.929',33,'Feminino'),('André Nascimento','372.410.424',56,'Masculino'),('Tiago Cavalcanti','385.141.781',43,'Masculino'),('Eduardo Lima','398.969.287',42,'Masculino'),('Daniela Santos','423.299.088',33,'Feminino'),('Larissa Gomes','435.129.577',69,'Feminino'),('Leonardo Farias','445.507.684',46,'Masculino'),('Beatriz Cardoso','463.558.839',46,'Feminino'),('João Batista','473.703.874',48,'Masculino'),('Breno Marques','492.699.432',36,'Masculino'),('César Moreira','528.914.971',37,'Masculino'),('Ivan Correia','547.745.619',55,'Masculino'),('Natalia Carvalho','575.946.441',27,'Feminino'),('Fernanda Costa','577.021.607',44,'Feminino'),('Vanessa Pinto','584.547.947',57,'Feminino'),('Henrique Soares','634.837.339',39,'Masculino'),('Diana Freitas','694.369.012',55,'Feminino'),('Bruno Souza','702.745.893',46,'Masculino'),('Nathalia Ramos','720.763.100',62,'Feminino'),('Otávio Cunha','745.382.271',50,'Masculino'),('Elaine Godoy','758.595.278',31,'Feminino'),('Fabiana Melo','765.334.620',40,'Feminino'),('Emilio Castro','775.997.375',32,'Masculino'),('Diego Bastos','800.792.284',47,'Masculino'),('Isadora Leite','812.138.657',50,'Feminino'),('Ana Silva','813.720.634',66,'Feminino'),('Otávio Mendes','824.527.442',28,'Masculino'),('Simone Azevedo','834.328.106',38,'Feminino'),('Gabriel Pereira','838.989.947',36,'Masculino'),('Sabrina Lopes','841.514.275',61,'Feminino'),('Carlos Oliveira','849.817.634',46,'Masculino'),('Giovana Vasconcelos','855.873.226',69,'Feminino'),('Rafael Teixeira','913.433.701',63,'Masculino'),('Ursula Ferreira','991.631.222',31,'Feminino'),('Thiago Barros','998.709.593',64,'Masculino'),('nome','cpf',0,'genero');
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `id_servico` int(11) NOT NULL AUTO_INCREMENT,
  `problema` text NOT NULL,
  `servico_realizado` text NOT NULL,
  `data_entrega` date NOT NULL,
  `placa` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_servico`),
  KEY `placa` (`placa`),
  CONSTRAINT `servico_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `carros` (`placa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (1,'Troca de óleo','Serviço concluído','2026-04-01','AAB5Y75'),(2,'Freios gastos','Pastilhas trocadas','2026-04-03','AGI7P92'),(3,'Alinhamento','Serviço realizado','2026-04-05','BCO7G81'),(4,'Problema elétrico','Fiação ajustada','2026-04-07','BCU2B31'),(5,'Bateria fraca','Bateria trocada','2026-04-09','BEC7F45'),(6,'Superaquecimento','Radiador reparado','2026-04-10','BEY6T57'),(7,'Suspensão ruim','Amortecedores trocados','2026-04-12','CBQ3K18'),(8,'Pneu furado','Conserto realizado','2026-04-14','CDE7M75'),(9,'Troca embreagem','Concluído','2026-04-16','CNB8E80'),(10,'Revisão geral','Finalizado','2026-04-18','DEV1F82');
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-29  4:26:48
