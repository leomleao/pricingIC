-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 186.202.152.244
-- Generation Time: 11-Ago-2018 às 12:10
-- Versão do servidor: 5.6.35-81.0-log
-- PHP Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pricingic`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `materiais`
--

CREATE TABLE `materiais` (
  `id` int(11) NOT NULL,
  `codigo` char(20) COLLATE latin1_general_ci NOT NULL,
  `pricingmaterial` char(20) COLLATE latin1_general_ci NOT NULL,
  `descricao` text COLLATE latin1_general_ci NOT NULL,
  `detalhes` text COLLATE latin1_general_ci,
  `multiplo` int(11) NOT NULL,
  `UF` varchar(3) COLLATE latin1_general_ci NOT NULL,
  `IPI` float NOT NULL,
  `NCM` int(8) NOT NULL,
  `concat` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `precoRevenda` char(20) COLLATE latin1_general_ci NOT NULL,
  `precoRevendaPremium` char(20) COLLATE latin1_general_ci NOT NULL,
  `precoAtacado` char(20) COLLATE latin1_general_ci NOT NULL,
  `precoConstrutora` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `materiais`
--

INSERT INTO `materiais` (`id`, `codigo`, `pricingmaterial`, `descricao`, `detalhes`, `multiplo`, `UF`, `IPI`, `NCM`, `concat`, `precoRevenda`, `precoRevendaPremium`, `precoAtacado`, `precoConstrutora`) VALUES
(1, '221-412', '60027404', 'Conector de emenda 2 Pólos', 'Flexível 0,14 – 4,0 mm² Rígido   0,2 – 4,0 mm² 32 A', 100, 'SP', 15, 85369090, '221-412SP', '1.13', '0.99', '0.77', NULL),
(2, '221-413', '60027405', 'Conector de emenda 3 Pólos', 'Flexível 0,14 – 4,0 mm² Rígido   0,2 – 4,0 mm² 32 A', 50, 'SP', 15, 85369090, '221-413SP', '1.39', '1.22', '0.96', NULL),
(3, '221-415', '60027406', 'Conector de emenda 5 Pólos', 'Flexível 0,14 – 4,0 mm² Rígido   0,2 – 4,0 mm² 32 A', 25, 'SP', 15, 85369090, '221-415SP', '2.26', '1.98', '1.55', NULL),
(4, '221-500', '60291432', 'Suporte para família 221', 'Suporte para fixação em trilho', 10, 'SP', 15, 85389090, '221-500SP', '2.37', '2.07', '1.63', NULL),
(5, '60336407', '60336406', 'Conector de emenda 2 Pólos - Flowpack 221-412 com 6 unid.', 'Flexível 0,14 – 4,0 mm² Rígido   0,2 – 4,0 mm² 32 A', 30, 'SP', 15, 85369090, '60336407SP', '7.95', '6.86', '5.54', NULL),
(6, '60336409', '60336408', 'Conector de emenda 3 Pólos - Flowpack 221-413 com 4 unid.', 'Flexível 0,14 – 4,0 mm² Rígido   0,2 – 4,0 mm² 32 A', 30, 'SP', 15, 85369090, '60336409SP', '6.53', '5.69', '4.6', NULL),
(7, '60336411', '60336410', 'Conector de emenda 5 Pólos - Flowpack 221-415 com 4 unid.', 'Flexível 0,14 – 4,0 mm² Rígido   0,2 – 4,0 mm² 32 A', 30, 'SP', 15, 85369090, '60336411SP', '9.86', '8.89', '7.02', NULL),
(8, '222-412', '60220846', 'Conector de emenda 2 Pólos', 'Flexível 0,08 – 4,0 mm² Rígido   0,5 – 2,5 mm² 32 A', 50, 'SP', 15, 85369090, '222-412SP', '1.02', '0.9', '0.7', NULL),
(9, '222-413', '60220848', 'Conector de emenda 3 Pólos', 'Flexível 0,08 – 4,0 mm² Rígido   0,5 – 2,5 mm² 32 A', 50, 'SP', 15, 85369090, '222-413SP', '1.27', '1.11', '0.87', NULL),
(10, '222-415', '60220849', 'Conector de emenda 5 Pólos', 'Flexível 0,08 – 4,0 mm² Rígido   0,5 – 2,5 mm² 32 A', 40, 'SP', 15, 85369090, '222-415SP', '2.06', '1.8', '1.41', NULL),
(11, '222-500', '60027410', 'Suporte para família 222', 'Suporte para fixação em trilho', 10, 'SP', 15, 85389090, '222-500SP', '2.15', '1.88', '1.48', NULL),
(12, '51284346', '60190922', 'Conector de emenda 2 Pólos - Flowpack 222-412 com 6 unid.', 'Flexível 0,08 – 4,0 mm² Rígido   0,5 – 2,5 mm² 32 A', 30, 'SP', 15, 85369090, '51284346SP', '7.23', '6.24', '5.04', NULL),
(13, '51284350', '60190931', 'Conector de emenda 3 Pólos - Flowpack 222-413 com 4 unid.', 'Flexível 0,08 – 4,0 mm² Rígido   0,5 – 2,5 mm² 32 A', 30, 'SP', 15, 85369090, '51284350SP', '5.92', '5.16', '4.17', NULL),
(14, '51284351', '60190938', 'Conector de emenda 5 Pólos - Flowpack 222-415 com 4 unid.', 'Flexível 0,08 – 4,0 mm² Rígido   0,5 – 2,5 mm² 32 A', 30, 'SP', 15, 85369090, '51284351SP', '8.94', '8.06', '6.36', NULL),
(15, '224-101', '60220851', 'Conector de emenda', 'Condutores: Flexível e Rígido 0,5 – 2,5 mm² / 24 A', 100, 'SP', 15, 85369090, '224-101SP', '0.98', '0.85', '0.72', NULL),
(16, '224-201', '60220860', 'Conector de emenda', 'Condutores: Flexível e Rígido 0,5 – 2,5 mm² / 24 A', 50, 'SP', 15, 85369090, '224-201SP', '2.82', '2.45', '2.07', NULL),
(17, '60246573', '60246572', 'Conector de emenda Cartela com 3 unid.', 'Condutores: Flexível e Rígido 0,5 – 2,5 mm² / 24 A', 30, 'SP', 15, 85369090, '60246573SP', '10.15', '9.00', '7.84', NULL),
(18, '243-504', '60222728', 'Conector de emenda - Telefonia/Alarmes - 4 polos;Rígido 0,6 - 0,8mm²  6 A', '', 100, 'SP', 15, 85369090, '243-504SP', '0.68', '0.59', '0.47', NULL),
(19, '243-508', '60222730', 'Conector de emenda - Telefonia/Alarmes - 8 polos;Rígido 0,6 - 0,8mm²  6 A', '', 50, 'SP', 15, 85369090, '243-508SP', '1.06', '0.92', '0.73', NULL),
(20, '243-112', '60029176', 'Suporte para família 243 4 conectores', 'Suporte para fixação em trilho', 10, 'SP', 15, 85389090, '243-112SP', '1.09', '0.95', '0.75', NULL),
(21, '773-102', '60230237', 'Conector de emenda  2 Pólos', 'Condutores:Rígido  0,75 -2,5mm²  /  24 A', 100, 'SP', 15, 85369090, '773-102SP', '0.47', '0.41', '0.32', NULL),
(22, '773-104', '60230239', 'Conector de emenda  4 Pólos', 'Condutores:Rígido  0,75 -2,5mm²  / 24 A', 100, 'SP', 15, 85369090, '773-104SP', '0.66', '0.58', '0.45', NULL),
(23, '773-106', '60230241', 'Conector de emenda  6 Pólos', 'Condutores:Rígido  0,75 -2,5mm²  / 24 A', 50, 'SP', 15, 85369090, '773-106SP', '0.85', '0.74', '0.58', NULL),
(24, '773-108', '60230243', 'Conector de emenda  8 Pólos', 'Condutores:Rígido  0,75 -2,5mm²  / 24 A', 50, 'SP', 15, 85369090, '773-108SP', '1.12', '0.98', '0.77', NULL),
(25, '773-173', '60230259', 'Conector de emenda  3 Pólos', 'Condutores:Rígido  6mm²  / 41 A', 50, 'SP', 15, 85369090, '773-173SP', '1.46', '1.28', '1.00', NULL),
(26, '773-332', '60048547', 'Suporte para família 773', 'Suporte para fixação em trilho', 50, 'SP', 15, 85389090, '773-332SP', '1.76', '1.54', '1.21', NULL),
(27, '294-4012', '60033686', 'Conector de passagem/derivação  2 Pólos', 'Condutores:  Flexível e Rígido 0,5 – 2,5 mm²  /  24 A', 10, 'SP', 15, 85369090, '294-4012SP', '2.26', '1.96', '1.66', NULL),
(28, '294-4013', '60033687', 'Conector de passagem/derivação  3 Pólos', 'Condutores:  Flexível e Rígido 0,5 – 2,5 mm²  /  24 A', 10, 'SP', 15, 85369090, '294-4013SP', '3.53', '3.06', '2.59', NULL),
(29, '862-1552', '60126632', 'Conector de passagem/derivação  2 Pólos', 'Condutores:  Flexível e Rígido 0,5 – 4,0 mm²  /  32 A', 10, 'SP', 15, 85369090, '862-1552SP', '5.08', '4.44', '3.49', NULL),
(30, '862-1503', '60126487', 'Conector de passagem/derivação  3 Pólos', 'Condutores:  Flexível e Rígido 0,5 – 4,0 mm²  /  32 A', 10, 'SP', 15, 85369090, '862-1503SP', '7.57', '6.62', '5.2', NULL),
(31, '873-902', '60052434', 'Conector Macho e Femea para Luminaria/Reator  2 Pólos', 'Rígido 0,75 mm²  6 A (femea)  /  Rígido 0,75 – 2,5mm² 24 A (macho)', 40, 'SP', 15, 85369090, '873-902SP', '2.64', '2.31', '1.81', NULL),
(32, '873-903', '60052435', 'Conector Macho e Femea para Luminaria/Reator  3 Pólos', 'Rígido 0,75 mm²  6 A (femea)  /  Rígido 0,75 – 2,5mm² 24 A (macho)', 20, 'SP', 15, 85369090, '873-903SP', '4.61', '4.03', '3.17', NULL),
(33, '890-222', '60052573', 'Pluge Winsta (Fêmea)  2 Pólos', 'Condutores: Flexível 0,25 – 1,5 mm²   /   Rígido   0,25 – 1,5 mm²', 10, 'SP', 15, 85369090, '890-222SP', '5.75', '5.22', '4.75', NULL),
(34, '890-232', '60052577', 'Pluge Winsta (Macho)  2 Pólos', 'Condutores: Flexível 0,25 – 1,5 mm²   /   Rígido   0,25 – 1,5 mm²', 10, 'SP', 15, 85369090, '890-232SP', '4.88', '4.44', '4.03', NULL),
(35, '890-223', '60052574', 'Pluge Winsta (Fêmea)  3 Pólos', 'Condutores: Flexível 0,25 – 1,5 mm²   /   Rígido   0,25 – 1,5 mm²', 10, 'SP', 15, 85369090, '890-223SP', '6.91', '6.29', '5.71', NULL),
(36, '890-233', '60052578', 'Pluge Winsta (Macho)  3 Pólos', 'Condutores: Flexível 0,25 – 1,5 mm²   /   Rígido   0,25 – 1,5 mm²', 10, 'SP', 15, 85369090, '890-233SP', '6.46', '5.87', '5.34', NULL),
(37, '770-223', '60230057', 'Pluge Winsta (Fêmea)  3 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'SP', 15, 85369090, '770-223SP', '5.17', '4.7', '4.27', NULL),
(38, '770-233', '60230061', 'Pluge Winsta (Macho)  3 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'SP', 15, 85369090, '770-233SP', '4.52', '4.11', '3.74', NULL),
(39, '831-3203', '60050624', 'Pluge Winsta (Macho)  3 Pólos', 'Condutores: Flexível 0,5 – 10 mm²/ Rígido   0,5 – 6 mm²   41A', 10, 'SP', 15, 85369090, '831-3203SP', '15.58', '12.46', '10.9', NULL),
(40, '831-3103', '60050616', 'Pluge Winsta (Fêmea)  3 Pólos', 'Condutores: Flexível 0,5 – 10 mm²/ Rígido   0,5 – 6 mm²   41A', 10, 'SP', 15, 85369090, '831-3103SP', '14.95', '11.96', '10.47', NULL),
(41, '284-621', '60225567', 'Borne de distribuição/derivador com encaixe para trilho DIN, fechado em ambos os lados. Cor cinza', '1 entrada parafuso 6 - 35mm² . 3 saídas mola 0,2 - 10mm² . 125 A', 15, 'SP', 15, 85369090, '284-621SP', '46.98', '42.28', '37.59', NULL),
(42, '770-222', '60048223', 'Pluge Winsta (Fêmea)  2 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'SP', 15, 85369090, '770-222SP', '3.71', '3.37', '3.06', NULL),
(43, '770-232', '60048227', 'Pluge Winsta (Macho)  2 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'SP', 15, 85369090, '770-232SP', '3.47', '3.14', '2.85', NULL),
(44, '770-224', '60230059', 'Pluge Winsta (Fêmea)  4 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'SP', 15, 85369090, '770-224SP', '7.02', '6.37', '5.79', NULL),
(45, '770-234', '60230062', 'Pluge Winsta (Macho)  4 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'SP', 15, 85369090, '770-234SP', '5.58', '5.08', '4.62', NULL),
(46, '770-225', '60230060', 'Pluge Winsta (Fêmea)  5 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'SP', 15, 85369090, '770-225SP', '8.8', '7.99', '7.26', NULL),
(47, '770-235', '60230063', 'Pluge Winsta (Macho)  5 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'SP', 15, 85369090, '770-235SP', '6.66', '6.04', '5.5', NULL),
(48, '221-612', '60359270', 'Conector de emenda 2 Pólos', 'Flexível 0,5 – 6,0 mm² Rígido   0,5 – 6,0 mm² 41 A - 450 Volts', 50, 'SP', 15, 85369090, '221-612SP', '1.86', '1.63', '1.43', NULL),
(49, '221-613', '60359271', 'Conector de emenda 3 Pólos', 'Flexível 0,5 – 6,0 mm² Rígido   0,5 – 6,0 mm² 41 A - 450 Volts', 30, 'SP', 15, 85369090, '221-613SP', '2.23', '1.95', '1.71', NULL),
(50, '221-615', '60360443', 'Conector de emenda 5 Pólos', 'Flexível 0,5 – 6,0 mm² Rígido   0,5 – 6,0 mm² 41 A - 450 Volts', 30, 'SP', 15, 85369090, '221-615SP', '3.71', '3.26', '2.86', NULL),
(51, '60366567', '60366566', 'Conector de emenda 2 Pólos - Flowpack 221-612 com 3 unid.', 'Flexível 0,5 – 6,0 mm² Rígido   0,5 – 6,0 mm² 41 A - 450 Volts', 30, 'SP', 15, 85369090, '60366567SP', '6.49', '5.69', '4.99', NULL),
(52, '210-719', '60027089', 'Chave fenda 2,5 x 0,4', '', 1, 'SP', 8, 82054000, '210-719SP', '15.22', '15.22', '15.22', NULL),
(53, '210-720', '60027090', 'Chave fenda 3,5 x 0,5', '', 1, 'SP', 8, 82054000, '210-720SP', '16.56', '16.56', '16.56', NULL),
(54, '210-721', '60027091', 'Chave fenda 5,5 x 0,8', '', 1, 'SP', 8, 82054000, '210-721SP', '28.5', '28.5', '28.5', NULL),
(55, '210-722', '60027092', 'Kit c.fenda', '', 1, 'SP', 8, 82054000, '210-722SP', '60.28', '60.28', '60.28', NULL),
(56, '210-657', '60027077', 'Chave fenda 3,5x0,5', '', 1, 'SP', 8, 82054000, '210-657SP', '14.71', '14.71', '14.71', NULL),
(57, '206-124', '60026158', 'Alicate Decapador QuickStrip', '', 1, 'SP', 8, 82032010, '206-124SP', '413.96', '413.96', '413.96', NULL),
(58, '206-118', '60220738', 'Alicade de corte', '', 1, 'SP', 8, 82032010, '206-118SP', '219.56', '219.56', '219.56', NULL),
(59, '206-204', '60026174', 'Alicate Crimpagem', '', 1, 'SP', 8, 82032010, '206-204SP', '870.92', '870.92', '870.92', NULL),
(60, '210-101', '60026867', 'Alicate para abertura 222', '', 1, 'SP', 8, 82032010, '210-101SP', '442.23', '442.23', '442.23', NULL),
(61, '812-104', '60118743', 'Conector Busbar 12 polos, 4mm2 CAGE CLAMP\'S - AZ', '', 1, 'SP', 15, 85369090, '812-104SP', '19.42', '19.42', '19.42', NULL),
(62, '812-114', '60118802', 'Conector Busbar 03 polos, 16mm2 CAGE CLAMP - AZ', '', 1, 'SP', 15, 85369090, '812-114SP', '20.06', '20.06', '20.06', NULL),
(63, '812-103', '60230472', 'Conector Busbar 12 polos, 4mm2 CAGE CLAMP\'S - VM', '', 1, 'SP', 15, 85369090, '812-103SP', '19.42', '19.42', '19.42', NULL),
(64, '812-113', '60118787', 'Conector Busbar 03 polos, 16mm2 CAGE CLAMP - VM', '', 1, 'SP', 15, 85369090, '812-113SP', '20.06', '20.06', '20.06', NULL),
(65, '812-100', '60118705', 'Conector Busbar 12 polos, 4mm2 CAGE CLAMP\'S - VD/AM', '', 1, 'SP', 15, 85369090, '812-100SP', '20.11', '20.11', '20.11', NULL),
(66, '812-110', '60230473', 'Conector Busbar 03 polos, 16mm2 CAGE CLAMP - VD/AM', '', 1, 'SP', 15, 85369090, '812-110SP', '20.06', '20.06', '20.06', NULL),
(67, '812-141', '60230476', 'Suporte Barramento VD/AM de aterramento trilho DIN35', '', 1, 'SP', 15, 85389090, '812-141SP', '16.36', '16.36', '16.36', NULL),
(68, '210-133', '60220777', 'Barra de Cobre Estanhado 1000X10X3mm', '', 1, 'SP', 0, 72169090, '210-133SP', '39.62', '39.62', '39.62', NULL),
(69, '812-140', '60050521', 'Base Busbar Isolado TS35', '', 1, 'SP', 15, 85389090, '812-140SP', '5.42', '5.42', '5.42', NULL),
(70, '221-412', '60027404', 'Conector de emenda 2 Pólos', 'Flexível 0,14 – 4,0 mm² Rígido   0,2 – 4,0 mm² 32 A', 100, 'All', 15, 85369090, '221-412All', '1.03', '0.9', '0.71', NULL),
(71, '221-413', '60027405', 'Conector de emenda 3 Pólos', 'Flexível 0,14 – 4,0 mm² Rígido   0,2 – 4,0 mm² 32 A', 50, 'All', 15, 85369090, '221-413All', '1.28', '1.12', '0.88', NULL),
(72, '221-415', '60027406', 'Conector de emenda 5 Pólos', 'Flexível 0,14 – 4,0 mm² Rígido   0,2 – 4,0 mm² 32 A', 25, 'All', 15, 85369090, '221-415All', '2.07', '1.81', '1.4', NULL),
(73, '221-500', '60291432', 'Suporte para família 221', 'Suporte para fixação em trilho', 10, 'All', 15, 85389090, '221-500All', '2.17', '1.9', '1.48', NULL),
(74, '60336407', '60336406', 'Conector de emenda 2 Pólos - Flowpack 221-412 com 6 unid.', 'Flexível 0,14 – 4,0 mm² Rígido   0,2 – 4,0 mm² 32 A', 30, 'All', 15, 85369090, '60336407All', '6.67', '5.75', '4.65', NULL),
(75, '60336409', '60336408', 'Conector de emenda 3 Pólos - Flowpack 221-413 com 4 unid.', 'Flexível 0,14 – 4,0 mm² Rígido   0,2 – 4,0 mm² 32 A', 30, 'All', 15, 85369090, '60336409All', '5.47', '4.77', '3.85', NULL),
(76, '60336411', '60336410', 'Conector de emenda 5 Pólos - Flowpack 221-415 com 4 unid.', 'Flexível 0,14 – 4,0 mm² Rígido   0,2 – 4,0 mm² 32 A', 30, 'All', 15, 85369090, '60336411All', '8.27', '7.45', '5.89', NULL),
(77, '222-412', '60220846', 'Conector de emenda 2 Pólos', 'Flexível 0,08 – 4,0 mm² Rígido   0,5 – 2,5 mm² 32 A', 50, 'All', 15, 85369090, '222-412All', '0.94', '0.82', '0.65', NULL),
(78, '222-413', '60220848', 'Conector de emenda 3 Pólos', 'Flexível 0,08 – 4,0 mm² Rígido   0,5 – 2,5 mm² 32 A', 50, 'All', 15, 85369090, '222-413All', '1.16', '1.02', '0.8', NULL),
(79, '222-415', '60220849', 'Conector de emenda 5 Pólos', 'Flexível 0,08 – 4,0 mm² Rígido   0,5 – 2,5 mm² 32 A', 40, 'All', 15, 85369090, '222-415All', '1.89', '1.65', '1.27', NULL),
(80, '222-500', '60027410', 'Suporte para família 222', 'Suporte para fixação em trilho', 10, 'All', 15, 85389090, '222-500All', '1.97', '1.73', '1.35', NULL),
(81, '51284346', '60190922', 'Conector de emenda 2 Pólos - Flowpack 222-412 com 6 unid.', 'Flexível 0,08 – 4,0 mm² Rígido   0,5 – 2,5 mm² 32 A', 30, 'All', 15, 85369090, '51284346All', '6.06', '5.23', '4.22', NULL),
(82, '51284350', '60190931', 'Conector de emenda 3 Pólos - Flowpack 222-413 com 4 unid.', 'Flexível 0,08 – 4,0 mm² Rígido   0,5 – 2,5 mm² 32 A', 30, 'All', 15, 85369090, '51284350All', '4.97', '4.32', '3.5', NULL),
(83, '51284351', '60190938', 'Conector de emenda 5 Pólos - Flowpack 222-415 com 4 unid.', 'Flexível 0,08 – 4,0 mm² Rígido   0,5 – 2,5 mm² 32 A', 30, 'All', 15, 85369090, '51284351All', '7.5', '6.76', '5.34', NULL),
(84, '224-101', '60220851', 'Conector de emenda    ', 'Condutores: Flexível e Rígido 0,5 – 2,5 mm² / 24 A', 100, 'All', 15, 85369090, '224-101All', '0.9', '0.78', '0.66', NULL),
(85, '224-201', '60220860', 'Conector de emenda    ', 'Condutores: Flexível e Rígido 0,5 – 2,5 mm² / 24 A', 50, 'All', 15, 85369090, '224-201All', '2.59', '2.24', '1.89', NULL),
(86, '60246573', '60246572', 'Conector de emenda         Cartela com 3 unid.', 'Condutores: Flexível e Rígido 0,5 – 2,5 mm² / 24 A', 30, 'All', 15, 85369090, '60246573All', '8.51', '7.55', '6.58', NULL),
(87, '243-504', '60222728', 'Conector de emenda - Telefonia/Alarmes - 4 polos', 'Rígido 0,6 - 0,8mm²  6 A', 100, 'All', 15, 85369090, '243-504All', '0.62', '0.54', '0.42', NULL),
(88, '243-508', '60222730', 'Conector de emenda - Telefonia/Alarmes - 8 polos', 'Rígido 0,6 - 0,8mm²  6 A', 50, 'All', 15, 85369090, '243-508All', '0.97', '0.85', '0.67', NULL),
(89, '243-112', '60029176', 'Suporte para família 243 4 conectores', 'Suporte para fixação em trilho', 10, 'All', 15, 85389090, '243-112All', '1.00', '0.87', '0.69', NULL),
(90, '773-102', '60230237', 'Conector de emenda  2 Pólos', 'Condutores:Rígido  0,75 -2,5mm²  /  24 A', 100, 'All', 15, 85369090, '773-102All', '0.43', '0.38', '0.29', NULL),
(91, '773-104', '60230239', 'Conector de emenda  4 Pólos', 'Condutores:Rígido  0,75 -2,5mm²  / 24 A', 100, 'All', 15, 85369090, '773-104All', '0.61', '0.53', '0.42', NULL),
(92, '773-106', '60230241', 'Conector de emenda  6 Pólos', 'Condutores:Rígido  0,75 -2,5mm²  / 24 A', 50, 'All', 15, 85369090, '773-106All', '0.78', '0.68', '0.53', NULL),
(93, '773-108', '60230243', 'Conector de emenda  8 Pólos', 'Condutores:Rígido  0,75 -2,5mm²  / 24 A', 50, 'All', 15, 85369090, '773-108All', '1.03', '0.9', '0.71', NULL),
(94, '773-173', '60230259', 'Conector de emenda  3 Pólos', 'Condutores:Rígido  6mm²  / 41 A', 50, 'All', 15, 85369090, '773-173All', '1.34', '1.17', '0.92', NULL),
(95, '773-332', '60048547', 'Suporte para família 773', 'Suporte para fixação em trilho', 50, 'All', 15, 85389090, '773-332All', '1.61', '1.41', '1.11', NULL),
(96, '294-4012', '60033686', 'Conector de passagem/derivação  2 Pólos', 'Condutores:  Flexível e Rígido 0,5 – 2,5 mm²  /  24 A', 10, 'All', 15, 85369090, '294-4012All', '2.07', '1.8', '1.52', NULL),
(97, '294-4013', '60033687', 'Conector de passagem/derivação  3 Pólos', 'Condutores:  Flexível e Rígido 0,5 – 2,5 mm²  /  24 A', 10, 'All', 15, 85369090, '294-4013All', '3.24', '2.81', '2.38', NULL),
(98, '862-1552', '60126632', 'Conector de passagem/derivação  2 Pólos', 'Condutores:  Flexível e Rígido 0,5 – 4,0 mm²  /  32 A', 10, 'All', 15, 85369090, '862-1552All', '4.66', '4.08', '3.2', NULL),
(99, '862-1503', '60126487', 'Conector de passagem/derivação  3 Pólos', 'Condutores:  Flexível e Rígido 0,5 – 4,0 mm²  /  32 A', 10, 'All', 15, 85369090, '862-1503All', '6.94', '6.07', '4.77', NULL),
(100, '873-902', '60052434', 'Conector Macho e Femea para Luminaria/Reator  2 Pólos', 'Rígido 0,75 mm²  6 A (femea)  /  Rígido 0,75 – 2,5mm² 24 A (macho)', 40, 'All', 15, 85369090, '873-902All', '2.42', '2.12', '1.66', NULL),
(101, '873-903', '60052435', 'Conector Macho e Femea para Luminaria/Reator  3 Pólos', 'Rígido 0,75 mm²  6 A (femea)  /  Rígido 0,75 – 2,5mm² 24 A (macho)', 20, 'All', 15, 85369090, '873-903All', '4.23', '3.7', '2.91', NULL),
(102, '890-222', '60052573', 'Pluge Winsta (Fêmea)  2 Pólos', 'Condutores: Flexível 0,25 – 1,5 mm²   /   Rígido   0,25 – 1,5 mm²', 10, 'All', 15, 85369090, '890-222All', '5.28', '4.79', '4.36', NULL),
(103, '890-232', '60052577', 'Pluge Winsta (Macho)  2 Pólos', 'Condutores: Flexível 0,25 – 1,5 mm²   /   Rígido   0,25 – 1,5 mm²', 10, 'All', 15, 85369090, '890-232All', '4.48', '4.07', '3.7', NULL),
(104, '890-223', '60052574', 'Pluge Winsta (Fêmea)  3 Pólos', 'Condutores: Flexível 0,25 – 1,5 mm²   /   Rígido   0,25 – 1,5 mm²', 10, 'All', 15, 85369090, '890-223All', '6.35', '5.77', '5.24', NULL),
(105, '890-233', '60052578', 'Pluge Winsta (Macho)  3 Pólos', 'Condutores: Flexível 0,25 – 1,5 mm²   /   Rígido   0,25 – 1,5 mm²', 10, 'All', 15, 85369090, '890-233All', '5.92', '5.39', '4.89', NULL),
(106, '770-223', '60230057', 'Pluge Winsta (Fêmea)  3 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'All', 15, 85369090, '770-223All', '4.73', '4.3', '3.91', NULL),
(107, '770-233', '60230061', 'Pluge Winsta (Macho)  3 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'All', 15, 85369090, '770-233All', '3.77', '3.77', '3.43', NULL),
(108, '831-3203', '60050624', 'Pluge Winsta (Macho)  3 Pólos', 'Condutores: Flexível 0,5 – 10 mm²/ Rígido   0,5 – 6 mm²   41A', 10, 'All', 15, 85369090, '831-3203All', '14.29', '11.43', '10.00', NULL),
(109, '831-3103', '60050616', 'Pluge Winsta (Fêmea)  3 Pólos', 'Condutores: Flexível 0,5 – 10 mm²/ Rígido   0,5 – 6 mm²   41A', 10, 'All', 15, 85369090, '831-3103All', '13.72', '10.97', '9.6', NULL),
(110, '284-621', '60225567', 'Borne de distribuição/derivador com encaixe para trilho DIN, fechado em ambos os lados. Cor cinza', '1 entrada parafuso 6 - 35mm² . 3 saídas mola 0,2 - 10mm² . 125 A', 15, 'All', 15, 85369090, '284-621All', '43.1', '38.79', '34.48', NULL),
(111, '770-222', '60048223', 'Pluge Winsta (Fêmea)  2 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'All', 15, 85369090, '770-222All', '3.4', '3.09', '2.81', NULL),
(112, '770-232', '60048227', 'Pluge Winsta (Macho)  2 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'All', 15, 85369090, '770-232All', '3.17', '2.89', '2.62', NULL),
(113, '770-224', '60230059', 'Pluge Winsta (Fêmea)  4 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'All', 15, 85369090, '770-224All', '6.44', '5.86', '5.32', NULL),
(114, '770-234', '60230062', 'Pluge Winsta (Macho)  4 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'All', 15, 85369090, '770-234All', '5.13', '4.66', '4.23', NULL),
(115, '770-225', '60230060', 'Pluge Winsta (Fêmea)  5 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'All', 15, 85369090, '770-225All', '8.07', '7.34', '6.67', NULL),
(116, '770-235', '60230063', 'Pluge Winsta (Macho)  5 Pólos', 'Condutores: Flexível 0,5 – 4,0 mm²/ Rígido   0,5 – 2,5 mm²', 10, 'All', 15, 85369090, '770-235All', '6.11', '5.55', '5.05', NULL),
(117, '221-612', '60359270', 'Conector de emenda 2 Pólos', 'Flexível 0,5 – 6,0 mm² Rígido   0,5 – 6,0 mm² 41 A - 450 Volts', 50, 'All', 15, 85369090, '221-612All', '1.56', '1.37', '1.2', NULL),
(118, '221-613', '60359271', 'Conector de emenda 3 Pólos', 'Flexível 0,5 – 6,0 mm² Rígido   0,5 – 6,0 mm² 41 A - 450 Volts', 30, 'All', 15, 85369090, '221-613All', '1.87', '1.64', '1.43', NULL),
(119, '221-615', '60360443', 'Conector de emenda 5 Pólos', 'Flexível 0,5 – 6,0 mm² Rígido   0,5 – 6,0 mm² 41 A - 450 Volts', 30, 'All', 15, 85369090, '221-615All', '3.11', '2.73', '2.4', NULL),
(120, '60366567', '60366566', 'Conector de emenda 2 Pólos - Flowpack 221-612 com 3 unid.', 'Flexível 0,5 – 6,0 mm² Rígido   0,5 – 6,0 mm² 41 A - 450 Volts', 30, 'All', 15, 85369090, '60366567All', '5.44', '4.77', '4.18', NULL),
(121, '210-719', '60027089', 'Chave fenda 2,5 x 0,4', '', 1, 'All', 8, 82054000, '210-719All', '13.7', '13.7', '13.7', NULL),
(122, '210-720', '60027090', 'Chave fenda 3,5 x 0,5', '', 1, 'All', 8, 82054000, '210-720All', '14.92', '14.92', '14.92', NULL),
(123, '210-721', '60027091', 'Chave fenda 5,5 x 0,8', '', 1, 'All', 8, 82054000, '210-721All', '25.65', '25.65', '25.65', NULL),
(124, '210-722', '60027092', 'Kit c.fenda', '', 1, 'All', 8, 82054000, '210-722All', '54.26', '54.26', '54.26', NULL),
(125, '210-657', '60027077', 'Chave fenda 3,5x0,5', '', 1, 'All', 8, 82054000, '210-657All', '13.25', '13.25', '13.25', NULL),
(126, '206-124', '60026158', 'Alicate Decapador QuickStrip', '', 1, 'All', 8, 82032010, '206-124All', '372.57', '372.57', '372.57', NULL),
(127, '206-118', '60220738', 'Alicade de corte', '', 1, 'All', 8, 82032010, '206-118All', '197.99', '197.99', '197.99', NULL),
(128, '206-204', '60026174', 'Alicate Crimpagem', '', 1, 'All', 8, 82032010, '206-204All', '783.83', '783.83', '783.83', NULL),
(129, '210-101', '60026867', 'Alicate para abertura 222', '', 1, 'All', 8, 82032010, '210-101All', '398.00', '398.00', '398.00', NULL),
(130, '812-104', '60118743', 'Conector Busbar 12 polos, 4mm2 CAGE CLAMP\'S - AZ', '', 1, 'All', 15, 85369090, '812-104All', '16.29', '16.29', '16.29', NULL),
(131, '812-114', '60118802', 'Conector Busbar 03 polos, 16mm2 CAGE CLAMP - AZ', '', 1, 'All', 15, 85369090, '812-114All', '16.82', '16.82', '16.82', NULL),
(132, '812-103', '60230472', 'Conector Busbar 12 polos, 4mm2 CAGE CLAMP\'S - VM', '', 1, 'All', 15, 85369090, '812-103All', '16.29', '16.29', '16.29', NULL),
(133, '812-113', '60118787', 'Conector Busbar 03 polos, 16mm2 CAGE CLAMP - VM', '', 1, 'All', 15, 85369090, '812-113All', '16.82', '16.82', '16.82', NULL),
(134, '812-100', '60118705', 'Conector Busbar 12 polos, 4mm2 CAGE CLAMP\'S - VD/AM', '', 1, 'All', 15, 85369090, '812-100All', '16.86', '16.86', '16.86', NULL),
(135, '812-110', '60230473', 'Conector Busbar 03 polos, 16mm2 CAGE CLAMP - VD/AM', '', 1, 'All', 15, 85369090, '812-110All', '16.82', '16.82', '16.82', NULL),
(136, '812-141', '60230476', 'Suporte Barramento VD/AM de aterramento trilho DIN35', '', 1, 'All', 15, 85389090, '812-141All', '13.72', '13.72', '13.72', NULL),
(137, '210-133', '60220777', 'Barra de Cobre Estanhado 1000X10X3mm', '', 1, 'All', 0, 72169090, '210-133All', '33.23', '33.23', '33.23', NULL),
(138, '812-140', '60050521', 'Base Busbar Isolado TS35', '', 1, 'All', 15, 85389090, '812-140All', '4.54', '4.54', '4.54', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `materiais`
--
ALTER TABLE `materiais`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materiais`
--
ALTER TABLE `materiais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
