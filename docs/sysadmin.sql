/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 50525
 Source Host           : localhost
 Source Database       : sysadmin

 Target Server Type    : MySQL
 Target Server Version : 50525
 File Encoding         : utf-8

 Date: 08/08/2013 11:37:48 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `permissions`
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_role` int(11) NOT NULL,
  `id_resource` int(11) NOT NULL,
  `permission` enum('allow','deny') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `resources`
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(128) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(40) NOT NULL,
  `id_parent` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_categoriapessoas`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_categoriapessoas`;
CREATE TABLE `tblapoio_categoriapessoas` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nomecategoria` varchar(500) DEFAULT NULL,
  `isdefault` int(1) DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_categoriasprodutos`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_categoriasprodutos`;
CREATE TABLE `tblapoio_categoriasprodutos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nomecategoria` varchar(500) DEFAULT NULL,
  `isdefault` int(1) DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_centrodecustos`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_centrodecustos`;
CREATE TABLE `tblapoio_centrodecustos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `isdefault` int(1) NOT NULL DEFAULT '0',
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_iss`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_iss`;
CREATE TABLE `tblapoio_iss` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `codigoiss` varchar(50) NOT NULL,
  `descricaoiss` varchar(500) NOT NULL,
  `valoriss` decimal(10,2) NOT NULL,
  `valorpis` decimal(10,2) NOT NULL,
  `valorcofins` decimal(10,2) NOT NULL,
  `isdefault` int(11) DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_planodecontas`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_planodecontas`;
CREATE TABLE `tblapoio_planodecontas` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `isdefault` int(1) NOT NULL DEFAULT '0',
  `descricao` varchar(255) NOT NULL,
  `grau` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_prioridades`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_prioridades`;
CREATE TABLE `tblapoio_prioridades` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `rephtml` varchar(500) DEFAULT NULL,
  `padrao` int(1) DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_prospects_estagioproposta`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_prospects_estagioproposta`;
CREATE TABLE `tblapoio_prospects_estagioproposta` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(500) DEFAULT NULL,
  `isdefault` int(1) DEFAULT '0',
  `isopen` int(1) DEFAULT '0',
  `isclosed` int(1) DEFAULT '0',
  `issuspended` int(1) DEFAULT '0',
  `ispendent` int(1) DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_prospects_fontespropostas`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_prospects_fontespropostas`;
CREATE TABLE `tblapoio_prospects_fontespropostas` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(500) DEFAULT NULL,
  `isdefault` int(1) DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_prospects_tiposdenegocios`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_prospects_tiposdenegocios`;
CREATE TABLE `tblapoio_prospects_tiposdenegocios` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(500) DEFAULT NULL,
  `isdefault` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_statuslancamentos`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_statuslancamentos`;
CREATE TABLE `tblapoio_statuslancamentos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nomestatus` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tblapoio_statusos`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_statusos`;
CREATE TABLE `tblapoio_statusos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `descritivo` varchar(500) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `isdefault` int(11) DEFAULT '0',
  `isclosed` int(11) DEFAULT '0',
  `issuspended` int(11) DEFAULT '0',
  `ispendent` int(11) DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_statustickets`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_statustickets`;
CREATE TABLE `tblapoio_statustickets` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `descritivo` varchar(500) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `isdefault` int(11) DEFAULT '0',
  `isclosed` int(11) DEFAULT '0',
  `issuspended` int(11) DEFAULT '0',
  `ispendent` int(11) DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_subcategoriadeprodutos`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_subcategoriadeprodutos`;
CREATE TABLE `tblapoio_subcategoriadeprodutos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) DEFAULT NULL,
  `nomesubcategoria` varchar(500) DEFAULT NULL,
  `isdefault` int(1) DEFAULT '0',
  PRIMARY KEY (`id_registro`),
  KEY `catsubprod` (`id_categoria`) USING BTREE,
  CONSTRAINT `tblapoio_subcategoriadeprodutos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `tblapoio_categoriasprodutos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_tabeladeprecos`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_tabeladeprecos`;
CREATE TABLE `tblapoio_tabeladeprecos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `isdefault` int(1) NOT NULL DEFAULT '0',
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_tipodepedido`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_tipodepedido`;
CREATE TABLE `tblapoio_tipodepedido` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `descritivo` varchar(255) COLLATE utf8_bin NOT NULL,
  `isdefault` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `tblapoio_tipoinspecao`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_tipoinspecao`;
CREATE TABLE `tblapoio_tipoinspecao` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `descritivo` varchar(255) COLLATE utf8_bin NOT NULL,
  `isdefault` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `tblapoio_tipopessoas`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_tipopessoas`;
CREATE TABLE `tblapoio_tipopessoas` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `isdefault` int(1) NOT NULL DEFAULT '0',
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_tiposdecontatos`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_tiposdecontatos`;
CREATE TABLE `tblapoio_tiposdecontatos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `isdefault` int(1) NOT NULL DEFAULT '0',
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_tiposdeenderecos`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_tiposdeenderecos`;
CREATE TABLE `tblapoio_tiposdeenderecos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `isdefault` int(1) NOT NULL DEFAULT '0',
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_tiposdeservicos`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_tiposdeservicos`;
CREATE TABLE `tblapoio_tiposdeservicos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(500) NOT NULL,
  `isdefault` int(11) DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_tiposdocumentos`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_tiposdocumentos`;
CREATE TABLE `tblapoio_tiposdocumentos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nomedocumento` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `tblapoio_tiposestoques`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_tiposestoques`;
CREATE TABLE `tblapoio_tiposestoques` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `isdefault` int(1) NOT NULL DEFAULT '0',
  `descricao` varchar(255) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_tiposos`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_tiposos`;
CREATE TABLE `tblapoio_tiposos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `tipoticket` varchar(500) NOT NULL,
  `datedue` decimal(10,0) DEFAULT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblapoio_unidadesdemedida`
-- ----------------------------
DROP TABLE IF EXISTS `tblapoio_unidadesdemedida`;
CREATE TABLE `tblapoio_unidadesdemedida` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `isdefault` int(1) NOT NULL DEFAULT '0',
  `descricao` varchar(255) NOT NULL,
  `abreviacao` varchar(2) DEFAULT NULL,
  `multiplicador` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblchecklist_basicos`
-- ----------------------------
DROP TABLE IF EXISTS `tblchecklist_basicos`;
CREATE TABLE `tblchecklist_basicos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nomechecklist` varchar(500) DEFAULT NULL,
  `tipochecklist` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblchecklist_etapas`
-- ----------------------------
DROP TABLE IF EXISTS `tblchecklist_etapas`;
CREATE TABLE `tblchecklist_etapas` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_check` int(11) NOT NULL,
  `nomeetapa` varchar(500) DEFAULT NULL,
  `duein` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblcontasbancarias`
-- ----------------------------
DROP TABLE IF EXISTS `tblcontasbancarias`;
CREATE TABLE `tblcontasbancarias` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `numerobanco` int(11) NOT NULL,
  `nomebanco` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `agencia` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `conta` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `carteirapadrao` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `valoremissaoboleto` decimal(10,2) DEFAULT NULL,
  `msgboleto_l1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `msgboleto_l2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `msgboleto_l3` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `msgboleto_l4` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `convenio` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `variacaocarteita` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `codigocliente` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `localpagamento_l1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `localpagamento_l2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `localpagamento_l3` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `id_registro` (`id_registro`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `tblestoque_locais`
-- ----------------------------
DROP TABLE IF EXISTS `tblestoque_locais`;
CREATE TABLE `tblestoque_locais` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `localestoque` varchar(500) COLLATE utf8_bin NOT NULL,
  `informacoes` text COLLATE utf8_bin,
  `is_default` int(11) DEFAULT NULL,
  `tipoestoque` int(11) DEFAULT NULL,
  `canmanualmove` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `tblestoque_movimentos`
-- ----------------------------
DROP TABLE IF EXISTS `tblestoque_movimentos`;
CREATE TABLE `tblestoque_movimentos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `id_estoque` int(11) NOT NULL,
  `quantidade` decimal(50,10) NOT NULL,
  `historico` varchar(1000) DEFAULT NULL,
  `usuario` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `prodestoque` (`id_produto`) USING BTREE,
  CONSTRAINT `tblestoque_movimentos_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `tblprodutos_basicos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblfinanceiro_categorias`
-- ----------------------------
DROP TABLE IF EXISTS `tblfinanceiro_categorias`;
CREATE TABLE `tblfinanceiro_categorias` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `tipocategoria` int(11) DEFAULT NULL,
  `nomecategoria` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `tblfinanceiro_subcategorias`
-- ----------------------------
DROP TABLE IF EXISTS `tblfinanceiro_subcategorias`;
CREATE TABLE `tblfinanceiro_subcategorias` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) DEFAULT NULL,
  `nomesubcategoria` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_default` int(11) DEFAULT NULL,
  `consideraresultado` int(11) DEFAULT NULL,
  `agruparem` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `tblmarketing_campanhas`
-- ----------------------------
DROP TABLE IF EXISTS `tblmarketing_campanhas`;
CREATE TABLE `tblmarketing_campanhas` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nomecampanha` varchar(500) DEFAULT NULL,
  `msgnew` int(11) DEFAULT NULL,
  `msgreply` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `assuntomensagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblmovimentobancario`
-- ----------------------------
DROP TABLE IF EXISTS `tblmovimentobancario`;
CREATE TABLE `tblmovimentobancario` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_conta` int(11) NOT NULL,
  `datalancamento` date NOT NULL,
  `valorregistro` decimal(10,2) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL,
  `situacao` int(11) DEFAULT NULL,
  `id_pessoa` int(11) DEFAULT NULL,
  `tipolancamento` int(11) DEFAULT NULL,
  `saldocomesse` decimal(10,2) DEFAULT NULL,
  `observacoes` text COLLATE utf8_bin,
  `nomelancamento` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `dataregistro` datetime DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `contas` (`id_conta`) USING BTREE,
  CONSTRAINT `tblmovimentobancario_ibfk_1` FOREIGN KEY (`id_conta`) REFERENCES `tblcontasbancarias` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `tblos_basicos`
-- ----------------------------
DROP TABLE IF EXISTS `tblos_basicos`;
CREATE TABLE `tblos_basicos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_contato` int(11) NOT NULL,
  `cod_os` varchar(15) NOT NULL,
  `dataabertura` datetime NOT NULL,
  `status_os` int(11) NOT NULL,
  `tipo_os` int(11) NOT NULL,
  `relato_cliente` text NOT NULL,
  `relato_tecnico` text,
  `financeiro` int(11) DEFAULT NULL,
  `user_open` int(11) DEFAULT NULL,
  `user_lastupdate` int(11) DEFAULT NULL,
  `datelastupdate` datetime DEFAULT NULL,
  `formapagamento` int(11) DEFAULT NULL,
  `id_ticket` int(11) DEFAULT '0',
  `id_prospect` int(11) DEFAULT '0',
  `accesshash` varchar(90) DEFAULT NULL,
  `sendmail` int(11) DEFAULT '0',
  `sendsms` int(1) DEFAULT '0',
  `clientcheck` int(1) DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblos_notes`
-- ----------------------------
DROP TABLE IF EXISTS `tblos_notes`;
CREATE TABLE `tblos_notes` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_os` int(11) NOT NULL,
  `usuario_note` int(11) DEFAULT '0',
  `data_note` datetime DEFAULT NULL,
  `anotacao` text,
  `nome_usuario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `note_os` (`id_os`) USING BTREE,
  CONSTRAINT `tblos_notes_ibfk_1` FOREIGN KEY (`id_os`) REFERENCES `tblos_basicos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblos_produtos`
-- ----------------------------
DROP TABLE IF EXISTS `tblos_produtos`;
CREATE TABLE `tblos_produtos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_os` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` decimal(10,2) NOT NULL,
  `vlunitario` decimal(10,2) NOT NULL,
  `obstecnica` varchar(2000) NOT NULL,
  `dataadicionado` datetime NOT NULL,
  `useradd` int(11) NOT NULL,
  `totalitem` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblos_servicos`
-- ----------------------------
DROP TABLE IF EXISTS `tblos_servicos`;
CREATE TABLE `tblos_servicos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_os` int(11) NOT NULL,
  `id_servico` int(11) NOT NULL,
  `quantidade` decimal(10,2) NOT NULL,
  `vlunitario` decimal(10,2) NOT NULL,
  `obstecnica` varchar(2000) NOT NULL,
  `dataadicionado` datetime NOT NULL,
  `useradd` int(11) DEFAULT NULL,
  `totalitem` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblpagamentos_dados`
-- ----------------------------
DROP TABLE IF EXISTS `tblpagamentos_dados`;
CREATE TABLE `tblpagamentos_dados` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) DEFAULT NULL,
  `id_pessoa` int(11) NOT NULL,
  `tiporegistro` varchar(50) NOT NULL,
  `id_registro_vinculado` int(11) DEFAULT NULL,
  `datacadastro` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `totalgeral` decimal(10,2) NOT NULL,
  `primeirovencimento` date NOT NULL,
  `ultimovencimento` date DEFAULT NULL,
  `totalparcelas` decimal(10,0) DEFAULT NULL,
  `parcelaspagas` decimal(10,0) DEFAULT NULL,
  `parcelasavencer` decimal(10,0) DEFAULT NULL,
  `totalpago` decimal(10,2) DEFAULT NULL,
  `totalapagar` decimal(10,2) DEFAULT NULL,
  `status_lancamento` int(11) DEFAULT NULL,
  `contapadrao` int(11) DEFAULT NULL,
  `categorialanc` int(11) DEFAULT NULL,
  `tipodocumento` int(11) DEFAULT NULL,
  `numerodocumento` varchar(255) DEFAULT NULL,
  `statuslancamento` int(11) DEFAULT NULL,
  `nomelancamento` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `empresa_lanc` (`id_empresa`) USING BTREE,
  KEY `pessoa_plcan` (`id_pessoa`) USING BTREE,
  CONSTRAINT `tblpagamentos_dados_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `tblpessoas_basicos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tblpagamentos_dados_ibfk_2` FOREIGN KEY (`id_empresa`) REFERENCES `tblsystem_empresas` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblpagamentos_lancamentos`
-- ----------------------------
DROP TABLE IF EXISTS `tblpagamentos_lancamentos`;
CREATE TABLE `tblpagamentos_lancamentos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_lancamento` int(11) NOT NULL,
  `datavencimento` date NOT NULL,
  `valororiginal` decimal(10,2) NOT NULL,
  `numeroparcela` decimal(10,0) DEFAULT NULL,
  `quantidadeparcelas` decimal(10,0) DEFAULT NULL,
  `tipodocumento` int(11) DEFAULT NULL,
  `data_sysbaixa` datetime DEFAULT NULL,
  `user_sysbaixa` int(11) DEFAULT NULL,
  `databaixa` date DEFAULT NULL,
  `valorbaixa` decimal(10,2) DEFAULT NULL,
  `valorjuros` decimal(10,2) DEFAULT NULL,
  `valormultas` decimal(10,2) DEFAULT NULL,
  `valordescontos` decimal(10,2) DEFAULT NULL,
  `valorpago` decimal(10,2) DEFAULT NULL,
  `tipopagamento` int(11) DEFAULT NULL,
  `contapagamento` int(11) DEFAULT NULL,
  `id_registro_fluxo` int(11) DEFAULT NULL,
  `id_banco` int(11) DEFAULT NULL,
  `numerodocumento` varchar(255) DEFAULT NULL,
  `statuslancamento` int(11) DEFAULT NULL,
  `user_liberacao` int(11) DEFAULT '0',
  `datalibera` datetime DEFAULT NULL,
  `linhadigitavel` varchar(1000) DEFAULT NULL,
  `imagemdocumento` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `recebimento_id` (`id_lancamento`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblpessoas_basicos`
-- ----------------------------
DROP TABLE IF EXISTS `tblpessoas_basicos`;
CREATE TABLE `tblpessoas_basicos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) NOT NULL,
  `tipopessoa` smallint(2) NOT NULL,
  `tipocadastro` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `subcategoria` int(11) DEFAULT NULL,
  `razaosocial` varchar(300) NOT NULL,
  `nomefantasia` varchar(300) NOT NULL,
  `cnpj` varchar(20) NOT NULL,
  `inscestadual` varchar(30) NOT NULL,
  `inscmunicipal` varchar(30) NOT NULL,
  `dataabertura` date NOT NULL,
  `datacadastro` datetime NOT NULL,
  `userid` int(11) NOT NULL,
  `alteracoes` int(11) DEFAULT NULL,
  `dataultalteracao` datetime DEFAULT NULL,
  `userlastalt` int(11) DEFAULT NULL,
  `bloqcad` datetime DEFAULT NULL,
  `userbloq` int(11) DEFAULT NULL,
  `tags` text,
  `observacoes` text,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblpessoas_contatos`
-- ----------------------------
DROP TABLE IF EXISTS `tblpessoas_contatos`;
CREATE TABLE `tblpessoas_contatos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) NOT NULL,
  `tipocontato` int(11) DEFAULT '0',
  `nomecontato` varchar(500) DEFAULT NULL,
  `contato` varchar(500) DEFAULT NULL,
  `isdefault` int(1) unsigned NOT NULL DEFAULT '0',
  `telcomercial` varchar(50) DEFAULT NULL,
  `telresidencial` varchar(50) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `ramal` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `contato_pessoas` (`id_pessoa`) USING BTREE,
  CONSTRAINT `tblpessoas_contatos_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `tblpessoas_basicos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblpessoas_enderecos`
-- ----------------------------
DROP TABLE IF EXISTS `tblpessoas_enderecos`;
CREATE TABLE `tblpessoas_enderecos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) NOT NULL,
  `tipoendereco` int(11) NOT NULL,
  `cep` decimal(8,0) unsigned zerofill DEFAULT NULL,
  `logradouro` varchar(900) DEFAULT NULL,
  `numero` varchar(500) DEFAULT NULL,
  `complemento` varchar(500) DEFAULT NULL,
  `bairro` varchar(500) DEFAULT NULL,
  `cidade` varchar(500) DEFAULT NULL,
  `estado` varchar(4) DEFAULT NULL,
  `codpais` decimal(4,0) DEFAULT NULL,
  `codibge` decimal(8,0) DEFAULT NULL,
  `isdefault` int(1) DEFAULT '0',
  PRIMARY KEY (`id_registro`),
  KEY `pessoa_endereco` (`id_pessoa`) USING BTREE,
  CONSTRAINT `tblpessoas_enderecos_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `tblpessoas_basicos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblpessoas_outros`
-- ----------------------------
DROP TABLE IF EXISTS `tblpessoas_outros`;
CREATE TABLE `tblpessoas_outros` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) NOT NULL,
  `inscestsub` varchar(500) DEFAULT NULL,
  `inscsuframa` varchar(500) DEFAULT NULL,
  `cnpjentrega` varchar(500) DEFAULT NULL,
  `centrodecustos` int(11) DEFAULT '0',
  `planodecontas` int(11) DEFAULT '0',
  `tabeladeprecos` int(11) DEFAULT '0',
  `modalidadefrete` int(11) DEFAULT '0',
  `vendedorpadrao` int(11) DEFAULT '0',
  `comissao` decimal(10,2) DEFAULT NULL,
  `transportadorpadrao` int(11) DEFAULT '0',
  `acessosistemas` int(11) DEFAULT NULL,
  `acessosoap` int(11) DEFAULT NULL,
  `chavesoap` varchar(500) DEFAULT NULL,
  `envionewsletter` int(11) DEFAULT NULL,
  `enviosms` int(11) DEFAULT NULL,
  `obsnf` text,
  PRIMARY KEY (`id_registro`),
  KEY `pessoas_outros` (`id_pessoa`) USING BTREE,
  CONSTRAINT `tblpessoas_outros_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `tblpessoas_basicos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblpgtos_lancamentos`
-- ----------------------------
DROP TABLE IF EXISTS `tblpgtos_lancamentos`;
CREATE TABLE `tblpgtos_lancamentos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_lancamento` int(11) NOT NULL,
  `datavencimento` date NOT NULL,
  `valororiginal` decimal(10,2) NOT NULL,
  `numeroparcela` decimal(10,0) DEFAULT NULL,
  `quantidadeparcelas` decimal(10,0) DEFAULT NULL,
  `tipodocumento` int(11) DEFAULT NULL,
  `data_sysbaixa` datetime DEFAULT NULL,
  `user_sysbaixa` int(11) DEFAULT NULL,
  `databaixa` date DEFAULT NULL,
  `valorbaixa` decimal(10,2) DEFAULT NULL,
  `valorjuros` decimal(10,2) DEFAULT NULL,
  `valormultas` decimal(10,2) DEFAULT NULL,
  `valordescontos` decimal(10,2) DEFAULT NULL,
  `valorpago` decimal(10,2) DEFAULT NULL,
  `tipopagamento` int(11) DEFAULT NULL,
  `contapagamento` int(11) DEFAULT NULL,
  `id_registro_fluxo` int(11) DEFAULT NULL,
  `id_banco` int(11) DEFAULT NULL,
  `numerodocumento` varchar(255) DEFAULT NULL,
  `statuslancamento` int(11) DEFAULT NULL,
  `user_liberacao` int(11) DEFAULT '0',
  `datalibera` datetime DEFAULT NULL,
  `linhadigitavel` varchar(1000) DEFAULT NULL,
  `imagemdocumento` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `recebimento_id` (`id_lancamento`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblproducao_basicos`
-- ----------------------------
DROP TABLE IF EXISTS `tblproducao_basicos`;
CREATE TABLE `tblproducao_basicos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_prod_venda` int(11) NOT NULL,
  `quantidade` decimal(10,2) NOT NULL,
  `id_user` int(11) NOT NULL,
  `dataregistro` datetime DEFAULT NULL,
  `accesscode` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `prod_venda` (`id_prod_venda`),
  CONSTRAINT `prod_venda` FOREIGN KEY (`id_prod_venda`) REFERENCES `tblvendas_produtos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `tblproducao_etapas`
-- ----------------------------
DROP TABLE IF EXISTS `tblproducao_etapas`;
CREATE TABLE `tblproducao_etapas` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nomeetapa` varchar(500) COLLATE utf8_bin NOT NULL,
  `tipoetapa` varchar(500) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `tblproducao_registros`
-- ----------------------------
DROP TABLE IF EXISTS `tblproducao_registros`;
CREATE TABLE `tblproducao_registros` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_producao` int(11) NOT NULL,
  `etapa` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `datalancamento` datetime NOT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `id_prod` (`id_producao`),
  CONSTRAINT `id_prod` FOREIGN KEY (`id_producao`) REFERENCES `tblproducao_basicos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `tblproducao_status`
-- ----------------------------
DROP TABLE IF EXISTS `tblproducao_status`;
CREATE TABLE `tblproducao_status` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nomestatus` varchar(500) COLLATE utf8_bin NOT NULL,
  `tipoetapa` varchar(500) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

-- ----------------------------
--  Table structure for `tblprodutos_basicos`
-- ----------------------------
DROP TABLE IF EXISTS `tblprodutos_basicos`;
CREATE TABLE `tblprodutos_basicos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nomeproduto` varchar(500) NOT NULL,
  `referenciaproduto` varchar(500) NOT NULL,
  `codigointerno` varchar(500) NOT NULL,
  `codigonfe` varchar(500) NOT NULL,
  `categoriaproduto` int(11) NOT NULL,
  `subcategoriaproduto` int(11) DEFAULT NULL,
  `eangtin` varchar(20) DEFAULT NULL,
  `ncmproduto` varchar(11) NOT NULL,
  `origemproduto` int(11) DEFAULT NULL,
  `pesoproduto` decimal(10,3) DEFAULT NULL,
  `contaestoque` int(11) DEFAULT NULL,
  `estoqueminimo` decimal(10,3) DEFAULT NULL,
  `estoquemaximo` decimal(10,3) DEFAULT NULL,
  `unidadedemedida` int(11) DEFAULT NULL,
  `avisarestoque` int(11) DEFAULT NULL,
  `orcarautomatico` int(11) NOT NULL,
  `precocusto` decimal(10,2) DEFAULT NULL,
  `precovenda` decimal(10,2) DEFAULT NULL,
  `margemlucro` decimal(10,2) DEFAULT NULL,
  `userlastalter` int(11) DEFAULT NULL,
  `datelastalter` datetime DEFAULT NULL,
  `bloqcad` int(11) DEFAULT NULL,
  `userbloq` int(11) DEFAULT NULL,
  `datebloq` datetime DEFAULT NULL,
  `alteracoes` decimal(10,0) DEFAULT NULL,
  `infadicionaisnfe` varchar(1000) DEFAULT NULL,
  `obsinternas` text,
  `produtocomposto` int(11) DEFAULT '0',
  `imagempadrao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblprodutos_compostos`
-- ----------------------------
DROP TABLE IF EXISTS `tblprodutos_compostos`;
CREATE TABLE `tblprodutos_compostos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `id_composto` int(11) NOT NULL,
  `quantidadecomposto` decimal(50,10) NOT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `prodcomposto` (`id_produto`) USING BTREE,
  KEY `compostoprod` (`id_composto`) USING BTREE,
  CONSTRAINT `tblprodutos_compostos_ibfk_1` FOREIGN KEY (`id_composto`) REFERENCES `tblprodutos_basicos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tblprodutos_compostos_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `tblprodutos_basicos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblprospects_basico`
-- ----------------------------
DROP TABLE IF EXISTS `tblprospects_basico`;
CREATE TABLE `tblprospects_basico` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `protocolo` varchar(50) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `nomeempresa` varchar(500) DEFAULT NULL,
  `tiponegocio` int(11) DEFAULT NULL,
  `estagioproposta` int(11) DEFAULT NULL,
  `fonteproposta` int(11) DEFAULT NULL,
  `campanhaproposta` int(11) DEFAULT NULL,
  `probabilidadeproposta` decimal(10,2) DEFAULT NULL,
  `datalimite` date DEFAULT NULL,
  `valorproposta` decimal(10,2) DEFAULT NULL,
  `id_solicitante` int(11) DEFAULT NULL,
  `nomesolicitante` varchar(500) DEFAULT NULL,
  `emailsolicitante` varchar(500) DEFAULT NULL,
  `celularsolicitante` varchar(50) DEFAULT NULL,
  `tags` varchar(1000) DEFAULT NULL,
  `atribuidoa` int(11) DEFAULT NULL,
  `descritivoproposta` text,
  `dateopen` datetime DEFAULT NULL,
  `useropen` int(11) DEFAULT NULL,
  `datelastupdate` datetime DEFAULT NULL,
  `userlastupdate` int(114) DEFAULT NULL,
  `nomesolicitante1` varchar(500) DEFAULT NULL,
  `emailsolicitante1` varchar(500) DEFAULT NULL,
  `celularsolicitante1` varchar(50) DEFAULT NULL,
  `id_solicitante1` int(11) DEFAULT NULL,
  `hashprospect` varchar(255) DEFAULT NULL,
  `statusprospect` int(11) DEFAULT '0',
  `dateread` datetime DEFAULT '0000-00-00 00:00:00',
  `readtimes` decimal(10,0) DEFAULT NULL,
  `sendmail` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblprospects_checklist`
-- ----------------------------
DROP TABLE IF EXISTS `tblprospects_checklist`;
CREATE TABLE `tblprospects_checklist` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_prospect` int(11) NOT NULL,
  `id_checklist` int(11) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblprospects_checklist_itens`
-- ----------------------------
DROP TABLE IF EXISTS `tblprospects_checklist_itens`;
CREATE TABLE `tblprospects_checklist_itens` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_prospect` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `statusitem` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `dateitem` datetime DEFAULT NULL,
  `datedue` date DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblprospects_estagios`
-- ----------------------------
DROP TABLE IF EXISTS `tblprospects_estagios`;
CREATE TABLE `tblprospects_estagios` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_prospect` int(11) NOT NULL,
  `dataatualizacao` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `westagioproposta` int(11) NOT NULL,
  `iestagioproposta` int(11) NOT NULL,
  `wprobabilidadeproposta` decimal(10,2) NOT NULL,
  `iprobabilidadeproposta` decimal(10,2) NOT NULL,
  `wdatalimite` date NOT NULL,
  `idatalimite` date NOT NULL,
  `wvalorproposta` decimal(10,2) NOT NULL,
  `ivalorproposta` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblprospects_notes`
-- ----------------------------
DROP TABLE IF EXISTS `tblprospects_notes`;
CREATE TABLE `tblprospects_notes` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_prospect` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `privatenote` int(11) DEFAULT '0',
  `assuntonote` varchar(1000) DEFAULT NULL,
  `textonote` text,
  `datanote` datetime DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblprospects_updates`
-- ----------------------------
DROP TABLE IF EXISTS `tblprospects_updates`;
CREATE TABLE `tblprospects_updates` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_prospect` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nomeresposta` varchar(255) NOT NULL,
  `emailresposta` varchar(255) DEFAULT NULL,
  `dataresposta` datetime DEFAULT NULL,
  `estagioproposta` int(11) DEFAULT NULL,
  `probabilidadeproposta` decimal(10,2) DEFAULT NULL,
  `datalimite` datetime DEFAULT NULL,
  `valorproposta` decimal(10,2) NOT NULL DEFAULT '0.00',
  `informacoesresposta` text,
  `hashreply` varchar(255) DEFAULT NULL,
  `dateread` datetime DEFAULT NULL,
  `timesread` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblrecebimentos_dados`
-- ----------------------------
DROP TABLE IF EXISTS `tblrecebimentos_dados`;
CREATE TABLE `tblrecebimentos_dados` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) DEFAULT NULL,
  `id_pessoa` int(11) NOT NULL,
  `tiporegistro` varchar(50) NOT NULL,
  `id_registro_vinculado` int(11) DEFAULT NULL,
  `datacadastro` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `totalgeral` decimal(10,2) NOT NULL,
  `primeirovencimento` date NOT NULL,
  `ultimovencimento` date DEFAULT NULL,
  `totalparcelas` decimal(10,0) DEFAULT NULL,
  `parcelaspagas` decimal(10,0) DEFAULT NULL,
  `parcelasavencer` decimal(10,0) DEFAULT NULL,
  `totalpago` decimal(10,2) DEFAULT NULL,
  `totalapagar` decimal(10,2) DEFAULT NULL,
  `status_lancamento` int(11) DEFAULT NULL,
  `contapadrao` int(11) DEFAULT NULL,
  `categorialanc` int(11) DEFAULT NULL,
  `tipodocumento` int(11) DEFAULT NULL,
  `numerodocumento` varchar(255) DEFAULT NULL,
  `statuslancamento` int(11) DEFAULT NULL,
  `nomelancamento` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblrecebimentos_lancamentos`
-- ----------------------------
DROP TABLE IF EXISTS `tblrecebimentos_lancamentos`;
CREATE TABLE `tblrecebimentos_lancamentos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_lancamento` int(11) NOT NULL,
  `datavencimento` date NOT NULL,
  `valororiginal` decimal(10,2) NOT NULL,
  `numeroparcela` decimal(10,0) DEFAULT NULL,
  `quantidadeparcelas` decimal(10,0) DEFAULT NULL,
  `tipodocumento` int(11) DEFAULT NULL,
  `data_sysbaixa` datetime DEFAULT NULL,
  `user_sysbaixa` int(11) DEFAULT NULL,
  `databaixa` date DEFAULT NULL,
  `valorbaixa` decimal(10,2) DEFAULT NULL,
  `valorjuros` decimal(10,2) DEFAULT NULL,
  `valormultas` decimal(10,2) DEFAULT NULL,
  `valordescontos` decimal(10,2) DEFAULT NULL,
  `valorpago` decimal(10,2) DEFAULT NULL,
  `tipopagamento` int(11) DEFAULT NULL,
  `contapagamento` int(11) DEFAULT NULL,
  `id_registro_fluxo` int(11) DEFAULT NULL,
  `id_banco` int(11) DEFAULT NULL,
  `numerodocumento` varchar(255) DEFAULT NULL,
  `statuslancamento` int(11) DEFAULT NULL,
  `user_liberacao` int(11) DEFAULT '0',
  `datalibera` datetime DEFAULT NULL,
  `linhadigitavel` varchar(500) DEFAULT NULL,
  `imagemdocumento` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `recebimento_id` (`id_lancamento`) USING BTREE,
  CONSTRAINT `tblrecebimentos_lancamentos_ibfk_1` FOREIGN KEY (`id_lancamento`) REFERENCES `tblrecebimentos_dados` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblrecibos_pagamento`
-- ----------------------------
DROP TABLE IF EXISTS `tblrecibos_pagamento`;
CREATE TABLE `tblrecibos_pagamento` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `valorrecibo` decimal(10,2) NOT NULL,
  `valorextenso` varchar(1000) COLLATE utf8_bin NOT NULL,
  `descricaorecibo` text COLLATE utf8_bin NOT NULL,
  `dataelocal` varchar(200) COLLATE utf8_bin NOT NULL,
  `dateprint` datetime DEFAULT NULL,
  `user_print` int(11) DEFAULT NULL,
  `timesprint` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `tblservicos_basicos`
-- ----------------------------
DROP TABLE IF EXISTS `tblservicos_basicos`;
CREATE TABLE `tblservicos_basicos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nomeservico` varchar(500) DEFAULT NULL,
  `tiposervico` int(11) DEFAULT NULL,
  `valorservico` decimal(20,8) DEFAULT NULL,
  `iss` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblsoap_cep`
-- ----------------------------
DROP TABLE IF EXISTS `tblsoap_cep`;
CREATE TABLE `tblsoap_cep` (
  `tipo_endereco` varchar(45) DEFAULT NULL,
  `endereco` varchar(72) DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `cep` varchar(8) NOT NULL,
  `bairro` varchar(72) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `cepcidade` varchar(9) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `cod_mun` varchar(8) DEFAULT NULL,
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=791819 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblsystem_configs`
-- ----------------------------
DROP TABLE IF EXISTS `tblsystem_configs`;
CREATE TABLE `tblsystem_configs` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `configname` varchar(500) NOT NULL,
  `configvalue` varchar(500) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblsystem_empresa_nf`
-- ----------------------------
DROP TABLE IF EXISTS `tblsystem_empresa_nf`;
CREATE TABLE `tblsystem_empresa_nf` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa` int(11) NOT NULL,
  `certificadodigital` varchar(255) DEFAULT NULL,
  `senhacertificado` varchar(255) DEFAULT NULL,
  `frasecertificado` varchar(255) DEFAULT NULL,
  `logotipodante` varchar(255) DEFAULT NULL,
  `modelonfe` int(11) DEFAULT NULL,
  `versaonfe` varchar(255) DEFAULT NULL,
  `lastnfe` decimal(15,0) DEFAULT NULL,
  `serienfe` int(11) DEFAULT NULL,
  `danfelogopos` varchar(255) DEFAULT NULL,
  `danfepapel` varchar(255) DEFAULT NULL,
  `danfecanhoto` varchar(255) DEFAULT NULL,
  `danfefonte` varchar(255) DEFAULT NULL,
  `danfeformato` varchar(255) DEFAULT NULL,
  `ambienteemissao` int(11) DEFAULT NULL,
  `schemes` varchar(255) DEFAULT NULL,
  `emailhostname` varchar(255) DEFAULT NULL,
  `emailusername` varchar(255) DEFAULT NULL,
  `emailpassword` varchar(255) DEFAULT NULL,
  `emailname` varchar(255) DEFAULT NULL,
  `sendtocontabil` int(11) DEFAULT NULL,
  `contabilemail` varchar(255) DEFAULT NULL,
  `contabilname` varchar(255) DEFAULT NULL,
  `emailsend` int(11) DEFAULT NULL,
  `emailcancel` int(11) DEFAULT NULL,
  `emailsendport` varchar(255) DEFAULT NULL,
  `emailreceiveport` varchar(255) DEFAULT NULL,
  `processreceivednfe` int(11) DEFAULT NULL,
  `validadecertificado` date DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `empresa-Nf` (`id_empresa`) USING BTREE,
  CONSTRAINT `tblsystem_empresa_nf_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `tblsystem_empresas` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblsystem_empresas`
-- ----------------------------
DROP TABLE IF EXISTS `tblsystem_empresas`;
CREATE TABLE `tblsystem_empresas` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `tiporegistro` int(11) DEFAULT NULL,
  `principal` int(11) DEFAULT NULL,
  `razaosocial` varchar(255) DEFAULT NULL,
  `nomefantasia` varchar(255) DEFAULT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `inscestadual` varchar(255) DEFAULT NULL,
  `inscmunicipal` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `numeroend` varchar(255) DEFAULT NULL,
  `complementoend` varchar(255) DEFAULT NULL,
  `bairroend` varchar(255) DEFAULT NULL,
  `cidadeend` varchar(255) DEFAULT NULL,
  `estadoend` varchar(255) DEFAULT NULL,
  `codmun` varchar(255) DEFAULT NULL,
  `coduf` varchar(255) DEFAULT NULL,
  `cnae` varchar(255) DEFAULT NULL,
  `regimetributario` varchar(255) DEFAULT NULL,
  `codpais` varchar(255) DEFAULT NULL,
  `logotipo` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblsystem_files`
-- ----------------------------
DROP TABLE IF EXISTS `tblsystem_files`;
CREATE TABLE `tblsystem_files` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `tipofile` varchar(255) DEFAULT NULL,
  `idreg` int(11) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filetype` varchar(255) DEFAULT NULL,
  `filehash` varchar(255) DEFAULT NULL,
  `accesshash` varchar(255) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `useradded` int(11) NOT NULL DEFAULT '0',
  `obsfile` text,
  `downloads` decimal(10,0) DEFAULT '0',
  `nomeamigavel` varchar(500) DEFAULT NULL,
  `tags` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblsystem_mensagens`
-- ----------------------------
DROP TABLE IF EXISTS `tblsystem_mensagens`;
CREATE TABLE `tblsystem_mensagens` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nomemensagem` varchar(500) DEFAULT NULL,
  `htmlmensagem` text,
  `textmensagem` text,
  `smsmensagem` text,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblsystem_menus`
-- ----------------------------
DROP TABLE IF EXISTS `tblsystem_menus`;
CREATE TABLE `tblsystem_menus` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `parans` varchar(255) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblsystem_sms`
-- ----------------------------
DROP TABLE IF EXISTS `tblsystem_sms`;
CREATE TABLE `tblsystem_sms` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `msg` varchar(150) DEFAULT NULL,
  `from` varchar(50) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `callback` int(11) DEFAULT NULL,
  `schedule` datetime DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `retornocode` int(3) unsigned zerofill DEFAULT NULL,
  `retornomessage` varchar(250) DEFAULT NULL,
  `calbackcode` int(3) unsigned zerofill DEFAULT NULL,
  `callbackmessage` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblsystem_sms_replys`
-- ----------------------------
DROP TABLE IF EXISTS `tblsystem_sms_replys`;
CREATE TABLE `tblsystem_sms_replys` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `celular` varchar(50) DEFAULT NULL,
  `enviadode` varchar(50) DEFAULT NULL,
  `msg` text,
  `acct` varchar(50) DEFAULT NULL,
  `datareceived` datetime DEFAULT NULL,
  `id_sendmessage` int(11) DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblsystem_subistitutos`
-- ----------------------------
DROP TABLE IF EXISTS `tblsystem_subistitutos`;
CREATE TABLE `tblsystem_subistitutos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nomeamigavel` varchar(500) DEFAULT NULL,
  `nomestatus` varchar(500) DEFAULT NULL,
  `descritivo` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblsystem_users`
-- ----------------------------
DROP TABLE IF EXISTS `tblsystem_users`;
CREATE TABLE `tblsystem_users` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `nomecompleto` varchar(255) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `useravatar` varchar(255) DEFAULT NULL,
  `passdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `lastlogin` datetime DEFAULT NULL,
  `lastloginip` varchar(20) DEFAULT NULL,
  `signature` text,
  `superadmin` int(11) DEFAULT NULL,
  `recoverpass` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblsystem_usersfav`
-- ----------------------------
DROP TABLE IF EXISTS `tblsystem_usersfav`;
CREATE TABLE `tblsystem_usersfav` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbltickets_acompanhantes`
-- ----------------------------
DROP TABLE IF EXISTS `tbltickets_acompanhantes`;
CREATE TABLE `tbltickets_acompanhantes` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_ticket` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbltickets_basicos`
-- ----------------------------
DROP TABLE IF EXISTS `tbltickets_basicos`;
CREATE TABLE `tbltickets_basicos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `protocolo` varchar(50) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `solicitante` int(11) DEFAULT '0',
  `nomesolicitante` varchar(500) DEFAULT NULL,
  `emailsolicitante` varchar(500) DEFAULT NULL,
  `celularsolicitante` varchar(500) DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL,
  `atribuidoa` int(11) DEFAULT NULL,
  `tipoticket` int(11) DEFAULT NULL,
  `prioridadeticket` int(11) DEFAULT NULL,
  `tags` varchar(1000) DEFAULT NULL,
  `assuntoticket` varchar(1000) DEFAULT NULL,
  `dadosticket` text,
  `dateopen` datetime DEFAULT NULL,
  `datefirstreply` datetime DEFAULT NULL,
  `datelastreply` datetime DEFAULT NULL,
  `dateclosed` datetime DEFAULT NULL,
  `datereopen` datetime DEFAULT NULL,
  `statusticket` int(11) DEFAULT NULL,
  `staffopen` int(11) DEFAULT NULL,
  `stafffirstreply` int(11) DEFAULT NULL,
  `stafflastreply` int(11) DEFAULT NULL,
  `flagticket` int(11) DEFAULT NULL,
  `datedue` datetime DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbltickets_deptos`
-- ----------------------------
DROP TABLE IF EXISTS `tbltickets_deptos`;
CREATE TABLE `tbltickets_deptos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nomedepto` varchar(500) NOT NULL,
  `deptolider` int(11) NOT NULL,
  `parentdepto` int(11) DEFAULT NULL,
  `displayorder` int(11) DEFAULT NULL,
  `deptotype` int(11) DEFAULT NULL,
  `deptoemail` varchar(250) DEFAULT NULL,
  `deptomailserver` varchar(250) DEFAULT NULL,
  `deptomailpassword` varchar(250) DEFAULT NULL,
  `deptomailserverport` varchar(20) DEFAULT NULL,
  `isdefault` int(1) DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbltickets_flags`
-- ----------------------------
DROP TABLE IF EXISTS `tbltickets_flags`;
CREATE TABLE `tbltickets_flags` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_ticket` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbltickets_messages_deptos`
-- ----------------------------
DROP TABLE IF EXISTS `tbltickets_messages_deptos`;
CREATE TABLE `tbltickets_messages_deptos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_depto` int(11) NOT NULL,
  `messagenew` int(11) NOT NULL,
  `messagereply` int(11) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbltickets_notes`
-- ----------------------------
DROP TABLE IF EXISTS `tbltickets_notes`;
CREATE TABLE `tbltickets_notes` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_ticket` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `privatenote` int(11) DEFAULT '0',
  `assuntonote` varchar(1000) DEFAULT NULL,
  `textonote` text,
  `datanote` datetime DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbltickets_parser`
-- ----------------------------
DROP TABLE IF EXISTS `tbltickets_parser`;
CREATE TABLE `tbltickets_parser` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `parsertype` varchar(255) DEFAULT NULL,
  `ssl` int(11) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `depto_id` int(11) DEFAULT NULL,
  `tipo_ticket` int(11) DEFAULT NULL,
  `statusticket` int(11) DEFAULT NULL,
  `prioridadeticket` int(11) DEFAULT NULL,
  `sendemail` int(11) DEFAULT NULL,
  `deleteemail` int(11) DEFAULT NULL,
  `messagefornew` int(11) DEFAULT NULL,
  `messageforreply` int(11) DEFAULT NULL,
  `lastrun` datetime DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbltickets_prioridades`
-- ----------------------------
DROP TABLE IF EXISTS `tbltickets_prioridades`;
CREATE TABLE `tbltickets_prioridades` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `prioridade` varchar(500) NOT NULL,
  `datedue` decimal(10,0) DEFAULT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbltickets_replys`
-- ----------------------------
DROP TABLE IF EXISTS `tbltickets_replys`;
CREATE TABLE `tbltickets_replys` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_ticket` int(11) NOT NULL,
  `staffreply` int(11) NOT NULL,
  `nomereply` varchar(500) NOT NULL,
  `emailreply` varchar(500) NOT NULL,
  `assuntoreply` varchar(500) DEFAULT NULL,
  `textreply` text,
  `replydate` datetime DEFAULT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbltickets_tipos`
-- ----------------------------
DROP TABLE IF EXISTS `tbltickets_tipos`;
CREATE TABLE `tbltickets_tipos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `tipoticket` varchar(500) NOT NULL,
  `datedue` decimal(10,0) DEFAULT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblusers_deptos`
-- ----------------------------
DROP TABLE IF EXISTS `tblusers_deptos`;
CREATE TABLE `tblusers_deptos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_depto` int(11) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblusers_messages`
-- ----------------------------
DROP TABLE IF EXISTS `tblusers_messages`;
CREATE TABLE `tblusers_messages` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `user_from` int(11) DEFAULT NULL,
  `user_to` int(11) DEFAULT NULL,
  `statusmessage` int(11) DEFAULT NULL,
  `assuntomessage` varchar(500) DEFAULT NULL,
  `contentmessage` text,
  `datemessage` datetime DEFAULT NULL,
  `messageprioridade` int(11) DEFAULT '0',
  `flagmessage` int(11) DEFAULT '0',
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblusers_tasks`
-- ----------------------------
DROP TABLE IF EXISTS `tblusers_tasks`;
CREATE TABLE `tblusers_tasks` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `user_from` int(11) DEFAULT NULL,
  `user_to` int(11) DEFAULT NULL,
  `assunto` varchar(500) DEFAULT NULL,
  `dateopen` date DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `prioridade` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `complete` decimal(10,2) DEFAULT NULL,
  `descritivo` text,
  PRIMARY KEY (`id_registro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblvendas_basicos`
-- ----------------------------
DROP TABLE IF EXISTS `tblvendas_basicos`;
CREATE TABLE `tblvendas_basicos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_pessoa` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `pedido_cliente` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `datainspecao` datetime DEFAULT NULL,
  `tipo_inspecao` int(11) DEFAULT NULL,
  `entrega_de` date DEFAULT NULL,
  `entrega_ate` date DEFAULT NULL,
  `agendamento_entrega` datetime DEFAULT NULL,
  `obspedido` text COLLATE utf8_bin,
  `obsfaturamento` text COLLATE utf8_bin,
  `tipo_pedido` int(11) DEFAULT NULL,
  `datacriado` datetime DEFAULT NULL,
  `usermake` int(11) DEFAULT NULL,
  `datalastup` datetime DEFAULT NULL,
  `userup` int(11) DEFAULT NULL,
  `alteracoes` int(11) DEFAULT NULL,
  `liberaprod` int(11) DEFAULT '0',
  `userlibera` int(11) DEFAULT '0',
  `datalibera` datetime DEFAULT NULL,
  `pedidoemproducao` int(11) DEFAULT '0',
  `dataentradaprod` datetime DEFAULT NULL,
  `userrespprod` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `pessoa_venda` (`id_pessoa`) USING BTREE,
  CONSTRAINT `tblvendas_basicos_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `tblpessoas_basicos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `tblvendas_produtos`
-- ----------------------------
DROP TABLE IF EXISTS `tblvendas_produtos`;
CREATE TABLE `tblvendas_produtos` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_venda` int(11) NOT NULL,
  `id_produto` int(11) DEFAULT NULL,
  `quantidade` decimal(30,10) DEFAULT NULL,
  `vl_unitario` decimal(30,10) DEFAULT NULL,
  `vl_total` decimal(10,2) DEFAULT NULL,
  `comissao` decimal(10,2) DEFAULT NULL,
  `qtd_faturada` decimal(30,10) DEFAULT NULL,
  `qtd_afaturar` decimal(30,10) DEFAULT NULL,
  `adicional_1` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `adicional_2` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `adicional_3` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `useradd` int(11) DEFAULT NULL,
  `dateadd` datetime DEFAULT NULL,
  `useralter` int(11) DEFAULT NULL,
  `datealter` datetime DEFAULT NULL,
  `id_prod` int(11) DEFAULT '0',
  `userprod` int(11) DEFAULT NULL,
  `dataprod` datetime DEFAULT NULL,
  `statusproducao` int(11) DEFAULT '0',
  PRIMARY KEY (`id_registro`),
  KEY `venda_prod` (`id_venda`) USING BTREE,
  KEY `prod_venda` (`id_produto`) USING BTREE,
  CONSTRAINT `tblvendas_produtos_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `tblprodutos_basicos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tblvendas_produtos_ibfk_2` FOREIGN KEY (`id_venda`) REFERENCES `tblvendas_basicos` (`id_registro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

SET FOREIGN_KEY_CHECKS = 1;
