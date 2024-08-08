-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/08/2024 às 17:46
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdetec`
--
CREATE DATABASE IF NOT EXISTS `bdetec` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdetec`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `rm` int(11) NOT NULL,
  `nome` varchar(128) NOT NULL,
  `idade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`rm`, `nome`, `idade`) VALUES
(1, 'Ana Souza', 20),
(2, 'Bruno Costa', 22),
(3, 'Carlos Lima', 21),
(4, 'Daniela Silva', 23),
(5, 'Eduardo Oliveira', 20),
(6, 'Fernanda Almeida', 24),
(7, 'Gabriel Santos', 22),
(8, 'Helena Martins', 21),
(9, 'Igor Pereira', 23),
(10, 'Juliana Rocha', 20),
(11, 'Kleber Ferreira', 25),
(12, 'Letícia Gomes', 22),
(13, 'Marcelo Fernandes', 21),
(14, 'Natália Cruz', 23),
(15, 'Otávio Alves', 20),
(16, 'Patrícia Dias', 24),
(17, 'Quintino Silva', 22),
(18, 'Rafaela Lima', 21),
(19, 'Samuel Araújo', 23),
(20, 'Tais Santos', 20),
(21, 'Ulysses Costa', 22),
(22, 'Vera Oliveira', 24),
(23, 'William Campos', 21),
(24, 'Xuxa Lima', 23),
(25, 'Yasmin Rocha', 20),
(26, 'Zé Fernandes', 22),
(27, 'André Almeida', 21),
(28, 'Beatriz Martins', 23),
(29, 'Cláudia Silva', 24),
(30, 'David Santos', 22),
(31, 'Emanuelle Costa', 20),
(32, 'Felipe Oliveira', 21),
(33, 'Gisele Fernandes', 23),
(34, 'Hugo Araújo', 24),
(35, 'Isabela Dias', 22),
(36, 'Jorge Lima', 20),
(37, 'Karina Rocha', 21),
(38, 'Lucas Santos', 23),
(39, 'Mariana Costa', 24),
(40, 'Nicolas Silva', 22),
(41, 'Olivia Gomes', 20),
(42, 'Paulo Almeida', 21),
(43, 'Quésia Rocha', 23),
(44, 'Roberta Santos', 24),
(45, 'Silvio Fernandes', 22),
(46, 'Tatiane Lima', 20),
(47, 'Ugo Araújo', 21),
(48, 'Vanessa Costa', 23),
(49, 'William Oliveira', 24),
(50, 'Ximena Santos', 22),
(51, 'Yuri Gomes', 20),
(52, 'Zara Almeida', 21),
(53, 'Adriana Rocha', 23),
(54, 'Breno Lima', 24),
(55, 'Cynthia Silva', 22),
(56, 'Daniel Gomes', 20),
(57, 'Elena Costa', 21),
(58, 'Fabio Santos', 23),
(59, 'Gabriela Fernandes', 24),
(60, 'Hélder Rocha', 22),
(61, 'Ingrid Almeida', 20),
(62, 'Júlio Araújo', 21),
(63, 'Karla Lima', 23),
(64, 'Luan Silva', 24),
(65, 'Mônica Santos', 22),
(66, 'Neto Costa', 20),
(67, 'Olga Fernandes', 21),
(68, 'Pedro Almeida', 23),
(69, 'Quintana Rocha', 24),
(70, 'Raul Lima', 22),
(71, 'Sandra Silva', 20),
(72, 'Tiago Costa', 21),
(73, 'Ursula Santos', 23),
(74, 'Valter Fernandes', 24),
(75, 'Wanda Rocha', 22),
(76, 'Xander Lima', 20),
(77, 'Yasmin Oliveira', 21),
(78, 'Zé Silva', 23),
(79, 'Amanda Gomes', 24),
(80, 'Bernardo Santos', 22),
(81, 'Cláudia Almeida', 20),
(82, 'Douglas Rocha', 21),
(83, 'Eduarda Lima', 23),
(84, 'Fernando Costa', 24),
(85, 'Giovana Silva', 22),
(86, 'Henrique Santos', 20),
(87, 'Isabel Rocha', 21),
(88, 'Júlio Santos', 23),
(89, 'Karine Almeida', 24),
(90, 'Letícia Lelê do DoisC', 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `atribuicaoaluno`
--

CREATE TABLE `atribuicaoaluno` (
  `rm` int(11) NOT NULL,
  `idcurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atribuicaoaluno`
--

INSERT INTO `atribuicaoaluno` (`rm`, `idcurso`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `atribuicaomateria`
--

CREATE TABLE `atribuicaomateria` (
  `idcurso` int(11) NOT NULL,
  `idmateria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atribuicaomateria`
--

INSERT INTO `atribuicaomateria` (`idcurso`, `idmateria`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL,
  `curso` varchar(128) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`idcurso`, `curso`, `status`) VALUES
(1, 'Informática para Internet', 1),
(2, 'Administração', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `materias`
--

CREATE TABLE `materias` (
  `idmateria` int(11) NOT NULL,
  `materia` varchar(128) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `materias`
--

INSERT INTO `materias` (`idmateria`, `materia`, `status`) VALUES
(1, 'DB', 1),
(2, 'Folha de Pontos', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`rm`);

--
-- Índices de tabela `atribuicaoaluno`
--
ALTER TABLE `atribuicaoaluno`
  ADD PRIMARY KEY (`rm`,`idcurso`);

--
-- Índices de tabela `atribuicaomateria`
--
ALTER TABLE `atribuicaomateria`
  ADD PRIMARY KEY (`idcurso`,`idmateria`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcurso`);

--
-- Índices de tabela `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`idmateria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
