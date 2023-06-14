-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Jun-2023 às 00:22
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `saep`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alocacao`
--

CREATE TABLE `alocacao` (
  `id` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `automovel` int(11) NOT NULL,
  `concessionaria` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `alocacao`
--

INSERT INTO `alocacao` (`id`, `area`, `automovel`, `concessionaria`, `quantidade`) VALUES
(1, 1, 1, 1, 8),
(2, 2, 2, 2, 1),
(3, 4, 3, 3, 4),
(4, 7, 4, 4, 6),
(5, 8, 5, 5, 4),
(6, 9, 6, 1, 4),
(7, 10, 7, 2, 1),
(8, 1, 8, 2, 7),
(9, 2, 9, 3, 2),
(10, 4, 10, 4, 6),
(11, 7, 11, 5, 3),
(12, 8, 12, 1, 9),
(13, 9, 13, 2, 9),
(14, 10, 14, 3, 6),
(15, 1, 15, 3, 4),
(16, 2, 16, 4, 1),
(17, 4, 17, 5, 8),
(18, 7, 18, 1, 4),
(19, 8, 19, 2, 10),
(20, 9, 20, 3, 10),
(21, 10, 21, 4, 7),
(22, 1, 22, 4, 3),
(23, 2, 23, 5, 5),
(24, 4, 24, 1, 4),
(25, 7, 25, 2, 3),
(26, 8, 26, 3, 3),
(27, 9, 27, 4, 10),
(28, 10, 28, 5, 4),
(29, 1, 29, 1, 2),
(30, 2, 30, 2, 3),
(31, 4, 31, 3, 4),
(32, 7, 32, 4, 2),
(33, 8, 33, 5, 3),
(34, 9, 34, 1, 4),
(35, 10, 35, 2, 3),
(36, 1, 36, 3, 2),
(37, 2, 37, 4, 3),
(38, 4, 38, 5, 3),
(39, 7, 39, 1, 2),
(40, 8, 40, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `automoveis`
--

CREATE TABLE `automoveis` (
  `id` int(11) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `preco` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `automoveis`
--

INSERT INTO `automoveis` (`id`, `modelo`, `preco`) VALUES
(2, 'Fiat Argo', ' R$ 47.660,00 '),
(3, 'Fiat Mobi', ' R$ 32.102,00 '),
(4, 'Jeep Compass', ' R$ 34.950,00 '),
(5, 'Hyundai HB20', ' R$ 49.302,00 '),
(6, 'Jeep Renegade', ' R$ 36.661,00 '),
(7, 'Volkswagen T-Cross', ' R$ 38.182,00 '),
(8, 'Fiat Toro', ' R$ 57.733,00 '),
(9, 'Hyundai Creta', ' R$ 55.998,00 '),
(10, 'Chevrolet S10', ' R$ 51.035,00 '),
(11, 'Toyota Corolla Cross', ' R$ 34.544,00 '),
(12, 'Toyota Hilux', ' R$ 53.937,00 '),
(13, 'Toyota Corolla', ' R$ 55.022,00 '),
(14, 'Volkswagen Gol', ' R$ 48.253,00 '),
(15, 'Honda HR-V', ' R$ 53.438,00 '),
(16, 'Renault Kwid', ' R$ 31.810,00 '),
(17, 'Volkswagen Nivus', ' R$ 35.104,00 '),
(18, 'Hyundai HB20S', ' R$ 31.855,00 '),
(19, 'Ford Ranger', ' R$ 48.927,00 '),
(20, 'Fiat Uno', ' R$ 38.111,00 '),
(21, 'Fiat Cronos', ' R$ 36.515,00 '),
(22, 'Citro?n C4 Cactus', ' R$ 53.654,00 '),
(23, 'Toyota Yaris Hatchback', ' R$ 55.869,00 '),
(24, 'Volkswagen Voyage', ' R$ 30.954,00 '),
(25, 'Honda Civic', ' R$ 30.871,00 '),
(26, 'Volkswagen Saveiro', ' R$ 32.306,00 '),
(27, 'Caoa Chery Tiggo 5x', ' R$ 30.069,00 '),
(28, 'Volkswagen Virtus', ' R$ 40.689,00 '),
(29, 'Fiat Grand Siena', ' R$ 33.469,00 '),
(30, 'Caoa Chery Tiggo 8', ' R$ 48.481,00 '),
(31, 'Chevrolet Tracker', ' R$ 30.648,00 '),
(32, 'Peugeot 208', ' R$ 46.934,00 '),
(33, 'Toyota SW4', ' R$ 54.252,00 '),
(34, 'Nissan Frontier', ' R$ 32.596,00 '),
(35, 'Honda WR-V', ' R$ 35.139,00 '),
(36, 'Volkswagen Taos', ' R$ 47.546,00 '),
(37, 'Mitsubishi L200', ' R$ 57.049,00 '),
(38, 'Renault Oroch', ' R$ 48.756,00 '),
(39, 'Toyota Yaris Sedan', ' R$ 43.077,00 '),
(40, 'Renault Duster', ' R$ 52.641,00 ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `clientes` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `clientes`) VALUES
(2, 'Adan Roger Guimar?es Dias'),
(3, 'Ad?o Walter Gomes de Sousa'),
(4, 'Adelson Fernandes Sena'),
(5, 'Ademir Augusto Sim?es'),
(6, 'Ademir Borges dos Santos'),
(7, 'Adilio Jos? da Silva Santos'),
(8, 'Adriana Ferreira de Lima Teodoro'),
(9, 'Adriano Bezerra Apolinario'),
(10, 'Adriano Heleno Basso'),
(11, 'Adriano Louren?o do Rego'),
(12, 'Adriano Matos Santos'),
(13, 'Adriano Pires Caetano'),
(14, 'Adriano Prada de Campos'),
(15, 'Adriel Alberto dos Santos'),
(16, 'Agner Vinicius Marques de Camargo'),
(17, 'Agrinaldo Ferreira Soares'),
(18, 'Alan Jhonnes Banlian da Silva e S?\r\n19'),
(20, 'Alcides Jos? Ramos'),
(21, 'Aldemir SantAna dos Santos'),
(22, 'Aleksandro Marcelo da Silva'),
(23, 'Alessandro Martins Silva'),
(24, 'Alessandro Sanches'),
(25, 'Alex dos Reis de Jesus'),
(26, 'Alex Ferreira Soares'),
(27, 'Alex Sandro Oliveira'),
(28, 'Alex Souza Farias'),
(29, 'Alexandra de Lima Silva'),
(30, 'Alexandre Clemente da Costa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `concessionaria`
--

CREATE TABLE `concessionaria` (
  `id` int(11) NOT NULL,
  `concessionaria` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `concessionaria`
--

INSERT INTO `concessionaria` (`id`, `concessionaria`) VALUES
(2, 'Dem?tir concession?ria'),
(3, 'Hera concession?ria'),
(4, 'Estia concession?ria'),
(5, 'Pers?fone concession?ria');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alocacao`
--
ALTER TABLE `alocacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `automoveis`
--
ALTER TABLE `automoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `concessionaria`
--
ALTER TABLE `concessionaria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alocacao`
--
ALTER TABLE `alocacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `automoveis`
--
ALTER TABLE `automoveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `concessionaria`
--
ALTER TABLE `concessionaria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;