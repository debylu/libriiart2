-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Jan-2023 às 22:37
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `oficina`
--
CREATE DATABASE IF NOT EXISTS `oficina` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `oficina`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cpf` char(12) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `cep` char(9) NOT NULL,
  `numerocasa` int(11) NOT NULL,
  `complemento` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cpf`, `nome`, `telefone`, `cep`, `numerocasa`, `complemento`) VALUES
('123456789-10', 'Jariele', '(21)99886-4587', '23085-610', 100, 'apartamento 10'),
('123456789-11', 'Rafaela', '(21)99999-1122', '23085-610', 1020, 'casa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `cep` char(9) NOT NULL,
  `rua` varchar(60) NOT NULL,
  `bairro` varchar(40) NOT NULL,
  `cidade` varchar(40) NOT NULL,
  `uf` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`cep`, `rua`, `bairro`, `cidade`, `uf`) VALUES
('23085-610', 'Rua Padre Pauwels', 'Campo Grande', 'Rio de Janeiro', 'RJ'),
('26551-090', 'Travessa Elpidio', 'Cruzeiro do Sul', 'Mesquita', 'RJ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `matricula` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `cpf` char(12) NOT NULL,
  `qualificacao` varchar(30) NOT NULL,
  `experiencia` varchar(20) NOT NULL,
  `cep` char(9) NOT NULL,
  `numerocasa` int(11) NOT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`matricula`, `nome`, `telefone`, `cpf`, `qualificacao`, `experiencia`, `cep`, `numerocasa`, `complemento`, `email`, `senha`) VALUES
(1, 'João da Silva', '(21)99869-4581', '123456789-12', 'lanterneiro', '3 anos', '26551-090', 100, 'casa', 'joao@gmail.com', '$2y$10$OHLcBJcU87bu4MRpZOeVZuFE9YvPjGAotnaF0ADhTGUE3mV1E63w2'),
(2, 'Pedro Santos', '(21)99911-2222', '123456789-13', 'mecânico', '10 anos', '23085-610', 31, 'fundos', 'pedro', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `peca`
--

CREATE TABLE `peca` (
  `codigopeca` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `marca` varchar(40) NOT NULL,
  `modeloano` varchar(250) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `peca`
--

INSERT INTO `peca` (`codigopeca`, `nome`, `marca`, `modeloano`, `quantidade`, `preco`) VALUES
(1, 'pastilha de freio', 'frasle', 'citroen c3 e c4 - 2007,2008,2009,2010', 30, 170),
(2, 'amortecedores dianteiros par', 'nakata', 'Renault Sandero,logan 2010/2011/2012', 10, 530);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `ordemservico` int(11) NOT NULL,
  `defeito` varchar(100) NOT NULL,
  `dataentrada` date NOT NULL,
  `datasaida` date NOT NULL,
  `preco` double NOT NULL,
  `garantia` varchar(50) NOT NULL,
  `formapagamento` varchar(20) NOT NULL,
  `placa` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`ordemservico`, `defeito`, `dataentrada`, `datasaida`, `preco`, `garantia`, `formapagamento`, `placa`) VALUES
(1, 'barulho no freio', '2022-12-01', '2022-12-01', 120, '3 meses', 'a vista', 'lsv3A86'),
(2, 'suspensão batendo lado direito', '2022-12-05', '2022-12-06', 450, '3 meses', 'cartão parcelado 3X', 'mmm1B55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicofunc`
--

CREATE TABLE `servicofunc` (
  `idservicofunc` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `ordemservico` int(11) NOT NULL,
  `matricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servicofunc`
--

INSERT INTO `servicofunc` (`idservicofunc`, `descricao`, `ordemservico`, `matricula`) VALUES
(1, 'realizada troca das plastilhas', 1, 2),
(2, 'realizada troca dos amortecedores', 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicopeca`
--

CREATE TABLE `servicopeca` (
  `idservicopeca` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `codigopeca` int(11) NOT NULL,
  `ordemservico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servicopeca`
--

INSERT INTO `servicopeca` (`idservicopeca`, `quantidade`, `codigopeca`, `ordemservico`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` char(7) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `cor` varchar(20) NOT NULL,
  `ano` char(4) NOT NULL,
  `cpf` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `marca`, `modelo`, `cor`, `ano`, `cpf`) VALUES
('lsv3A86', 'citroen', 'c3', 'preto', '2009', '123456789-10'),
('mmm1B55', 'Renault', 'Logan', 'prata', '2015', '123456789-11');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cpf`),
  ADD KEY `cep` (`cep`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`cep`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`matricula`),
  ADD KEY `cep` (`cep`);

--
-- Índices para tabela `peca`
--
ALTER TABLE `peca`
  ADD PRIMARY KEY (`codigopeca`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`ordemservico`),
  ADD KEY `placa` (`placa`);

--
-- Índices para tabela `servicofunc`
--
ALTER TABLE `servicofunc`
  ADD PRIMARY KEY (`idservicofunc`),
  ADD KEY `ordemservico` (`ordemservico`),
  ADD KEY `matricula` (`matricula`);

--
-- Índices para tabela `servicopeca`
--
ALTER TABLE `servicopeca`
  ADD PRIMARY KEY (`idservicopeca`),
  ADD KEY `codigopeca` (`codigopeca`),
  ADD KEY `ordemservico` (`ordemservico`);

--
-- Índices para tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `peca`
--
ALTER TABLE `peca`
  MODIFY `codigopeca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `ordemservico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `servicofunc`
--
ALTER TABLE `servicofunc`
  MODIFY `idservicofunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `servicopeca`
--
ALTER TABLE `servicopeca`
  MODIFY `idservicopeca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`cep`) REFERENCES `endereco` (`cep`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`cep`) REFERENCES `endereco` (`cep`);

--
-- Limitadores para a tabela `servico`
--
ALTER TABLE `servico`
  ADD CONSTRAINT `servico_ibfk_1` FOREIGN KEY (`placa`) REFERENCES `veiculo` (`placa`);

--
-- Limitadores para a tabela `servicofunc`
--
ALTER TABLE `servicofunc`
  ADD CONSTRAINT `servicofunc_ibfk_1` FOREIGN KEY (`ordemservico`) REFERENCES `servico` (`ordemservico`),
  ADD CONSTRAINT `servicofunc_ibfk_2` FOREIGN KEY (`matricula`) REFERENCES `funcionario` (`matricula`);

--
-- Limitadores para a tabela `servicopeca`
--
ALTER TABLE `servicopeca`
  ADD CONSTRAINT `servicopeca_ibfk_1` FOREIGN KEY (`codigopeca`) REFERENCES `peca` (`codigopeca`),
  ADD CONSTRAINT `servicopeca_ibfk_2` FOREIGN KEY (`ordemservico`) REFERENCES `servico` (`ordemservico`);

--
-- Limitadores para a tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `cliente` (`cpf`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;