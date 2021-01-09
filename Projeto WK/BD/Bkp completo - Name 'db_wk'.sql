-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Jan-2021 às 08:14
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_wk`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `ID` int(11) NOT NULL,
  `NOME` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `CIDADE` varchar(80) COLLATE latin1_general_ci DEFAULT NULL,
  `UF` char(2) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`ID`, `NOME`, `CIDADE`, `UF`) VALUES
(1, 'CLIENTE 1', 'MUNICIPIO 1', 'SC'),
(2, 'CLIENTE 2', 'MUNICIPIO 2', 'PR'),
(3, 'CLIENTE 3', 'MUNICIPIO 3', 'PR'),
(4, 'CLIENTE 4', 'MUNICIPIO 4', 'RS'),
(5, 'CLIENTE 5', 'MUNICIPIO 5', 'RS'),
(6, 'CLIENTE 6', 'MUNICIPIO 6', 'AC'),
(7, 'CLIENTE 7', 'MUNICIPIO 7', 'SC'),
(8, 'CLIENTE 8', 'MUNICIPIO 8', 'RJ'),
(9, 'CLIENTE 9', 'MUNICIPIO 9', 'SP'),
(10, 'CLIENTE 10', 'MUNICIPIO 10', 'TO'),
(11, 'CLIENTE 11', 'MUNICIPIO 1', 'SC'),
(12, 'CLIENTE 12', 'MUNICIPIO 2', 'PR'),
(13, 'CLIENTE 13', 'MUNICIPIO 3', 'PR'),
(14, 'CLIENTE 14', 'MUNICIPIO 4', 'RS'),
(15, 'CLIENTE 15', 'MUNICIPIO 5', 'RS'),
(16, 'CLIENTE 16', 'MUNICIPIO 6', 'AC'),
(17, 'CLIENTE 17', 'MUNICIPIO 7', 'SC'),
(18, 'CLIENTE 18', 'MUNICIPIO 8', 'RJ'),
(19, 'CLIENTE 19', 'MUNICIPIO 9', 'SP'),
(20, 'CLIENTE 20', 'MUNICIPIO 10', 'TO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_dados_gerais`
--

CREATE TABLE `pedido_dados_gerais` (
  `NUM_PEDIDO` int(11) NOT NULL,
  `CLIENTE_CODIGO` int(11) DEFAULT NULL,
  `DATA_EMISSAO` date DEFAULT NULL,
  `TOTAL` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `pedido_dados_gerais`
--

INSERT INTO `pedido_dados_gerais` (`NUM_PEDIDO`, `CLIENTE_CODIGO`, `DATA_EMISSAO`, `TOTAL`) VALUES
(2, 1, '2021-01-09', '61.52'),
(3, 1, '2021-01-09', '61.52'),
(4, 1, '2021-01-09', '51.42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_produtos`
--

CREATE TABLE `pedido_produtos` (
  `ID` int(11) NOT NULL,
  `NUM_PEDIDO` int(11) DEFAULT NULL,
  `ID_PRODUTO` int(11) DEFAULT NULL,
  `QUANTIDADE` decimal(9,2) DEFAULT NULL,
  `VLR_UNITARIO` decimal(9,2) DEFAULT NULL,
  `VLR_TOTAL` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `pedido_produtos`
--

INSERT INTO `pedido_produtos` (`ID`, `NUM_PEDIDO`, `ID_PRODUTO`, `QUANTIDADE`, `VLR_UNITARIO`, `VLR_TOTAL`) VALUES
(36, 2, 1, '10.10', '1.00', '10.10'),
(37, 2, 2, '3.00', '3.00', '9.00'),
(38, 2, 4, '7.07', '6.00', '42.42'),
(39, 3, 1, '10.10', '1.00', '10.10'),
(40, 3, 2, '3.00', '3.00', '9.00'),
(41, 3, 4, '7.07', '6.00', '42.42'),
(55, 4, 2, '3.00', '3.00', '9.00'),
(56, 4, 4, '7.07', '6.00', '42.42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `ID` int(11) NOT NULL,
  `DESCRICAO` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `PRECO` decimal(9,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`ID`, `DESCRICAO`, `PRECO`) VALUES
(1, 'Produto 1', '10.10'),
(2, 'Produto 2', '9.09'),
(3, 'Produto 3', '8.08'),
(4, 'Produto 4', '7.07'),
(5, 'Produto 5', '6.06'),
(6, 'Produto 6', '5.05'),
(7, 'Produto 7', '4.04'),
(8, 'Produto 8', '3.03'),
(9, 'Produto 9', '2.02'),
(10, 'Produto 10', '1.01'),
(11, 'Produto 11', '10.11'),
(12, 'Produto 12', '9.12'),
(13, 'Produto 13', '8.13'),
(14, 'Produto 14', '7.14'),
(15, 'Produto 15', '6.15'),
(16, 'Produto 16', '5.16'),
(17, 'Produto 17', '4.17'),
(18, 'Produto 18', '3.18'),
(19, 'Produto 19', '2.19'),
(20, 'Produto 20', '1.20');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `pedido_dados_gerais`
--
ALTER TABLE `pedido_dados_gerais`
  ADD PRIMARY KEY (`NUM_PEDIDO`);

--
-- Índices para tabela `pedido_produtos`
--
ALTER TABLE `pedido_produtos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_PEDIDO` (`NUM_PEDIDO`),
  ADD KEY `FK_PRODUTO` (`ID_PRODUTO`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `pedido_produtos`
--
ALTER TABLE `pedido_produtos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pedido_produtos`
--
ALTER TABLE `pedido_produtos`
  ADD CONSTRAINT `FK_PEDIDO` FOREIGN KEY (`NUM_PEDIDO`) REFERENCES `pedido_dados_gerais` (`NUM_PEDIDO`),
  ADD CONSTRAINT `FK_PRODUTO` FOREIGN KEY (`ID_PRODUTO`) REFERENCES `produtos` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
