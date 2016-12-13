-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: 10.236.158.96:5505
-- Generation Time: 2016-12-05 14:12:57
-- 服务器版本： 5.6.28-log
-- PHP Version: 5.6.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `announcement`
--

CREATE TABLE `announcement` (
  `a_content` mediumtext,
  `a_time` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `announcement`
--

INSERT INTO `announcement` (`a_content`, `a_time`) VALUES
('当前无最新公告', '0');

-- --------------------------------------------------------

--
-- 表的结构 `knowledge`
--

CREATE TABLE `knowledge` (
  `K_id` int(11) NOT NULL DEFAULT '0',
  `K_name` varchar(100) DEFAULT NULL,
  `K_type` int(11) DEFAULT NULL,
  `K_level` int(11) DEFAULT NULL,
  `K_weight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `knowledge`
--

INSERT INTO `knowledge` (`K_id`, `K_name`, `K_type`, `K_level`, `K_weight`) VALUES
(0, '数字电路与模拟电路', NULL, 1, 0),
(1, '知识体系', NULL, 3, 0),
(2, '能力目标', NULL, 3, 0),
(3, '电路分析', NULL, 3, 0.3),
(4, '1.电路基本定律与分析方法', NULL, 3, 0),
(5, '1.1电路的作用与组成部分', NULL, 3, 0),
(6, '1.1.1电路模型', NULL, 3, 0),
(7, '1.1.2电压/电流参考方向', NULL, 3, 0),
(8, '1.1.3欧姆定律', NULL, 3, 0),
(9, '1.1.4电源有载/开路/短路', NULL, 3, 0),
(10, '1.2电路的基本分析方法', NULL, 3, 0),
(11, '1.2.1基尔霍夫定律', NULL, 3, 0),
(12, '1.2.2点位及其计算', NULL, 3, 0),
(13, '1.2.3电源模型', NULL, 3, 0),
(14, '1.2.4戴维宁定理与诺顿定理', NULL, 3, 0),
(15, '1.2.5受控电源', NULL, 3, 0),
(16, '1.2.6非线性电阻分析', NULL, 3, 0),
(17, '1.3交流电的基本参数与表示方法', NULL, 3, 0),
(18, '1.3.1正弦电压与电流', NULL, 3, 0),
(19, '1.3.2频率与周期', NULL, 3, 0),
(20, '1.3.3幅值与有效值', NULL, 3, 0),
(21, '1.3.4初相位', NULL, 3, 0),
(22, '1.3.5向量表示法', NULL, 3, 0),
(23, '模拟电路', NULL, 3, 0),
(24, '2.半导体器件', NULL, 3, 0),
(25, '2.1半导体与PN结的导电特性', NULL, 3, 0),
(26, '2.1.1本征半导体', NULL, 3, 0),
(27, '2.1.2 N型和P型半导体', NULL, 3, 0),
(28, '2.1.3 PN结', NULL, 3, 0),
(29, '2.2半导体器件的工作原理、使用方法与主要参数', NULL, 3, 0),
(30, '2.2.1二极管', NULL, 3, 0),
(31, '2.2.2稳压二极管', NULL, 3, 0),
(32, '2.2.3三极管', NULL, 3, 0),
(33, '2.2.4场效应管', NULL, 3, 0),
(34, '3.基本放大电路', NULL, 2, 0),
(35, '3.1三极管放大电路基本组成、评价参数与分析方法', NULL, 3, 0),
(36, '3.1.1三极管放大电路组成', NULL, 3, 0),
(37, '3.1.2静态工作点', NULL, 3, 0),
(38, '3.1.3放大倍数/输入电阻/输出电阻/通频带', NULL, 3, 0),
(39, '3.1.4直流通路/交流通路', NULL, 3, 0),
(40, '3.1.5图解法', NULL, 3, 0),
(41, '3.1.6微变等效电路法', NULL, 3, 0),
(42, '3.2单管放大电路的分析方法和电路特点', NULL, 3, 0),
(43, '3.2.1共发射极放大电路', NULL, 3, 0),
(44, '3.2.2分压式共发射极放大电路', NULL, 3, 0),
(45, '3.2.3共集电极放大电路', NULL, 3, 0),
(46, '3.2.4共基极放大电路', NULL, 3, 0),
(47, '3.3多三极管组成的放大电路', NULL, 3, 0),
(48, '3.3.1多级放大电路', NULL, 3, 0),
(49, '3.3.2差分放大电路', NULL, 3, 0),
(50, '3.3.3功率放大电路', NULL, 3, 0),
(51, '4.集成运算放大器的应用', NULL, 1, 0),
(52, '4.1集成运算放大器分析方法', NULL, 3, 0),
(53, '4.1.1电路结构', NULL, 3, 0),
(54, '4.1.2主要参数', NULL, 3, 0),
(55, '4.1.3理想的集成运算放大器', NULL, 3, 0),
(56, '线性区', NULL, 3, 0),
(57, '虚拟短路', NULL, 3, 0),
(58, '虚拟断路1', NULL, 3, 0),
(59, '饱和区', NULL, 3, 0),
(60, '虚拟断路2', NULL, 3, 0),
(61, '4.2反馈的判断方法', NULL, 3, 0),
(62, '4.2.1直流反馈', NULL, 3, 0),
(63, '4.2.2交流反馈', NULL, 3, 0),
(64, '正反馈', NULL, 3, 0),
(65, '负反馈', NULL, 3, 0),
(66, '电压并联', NULL, 3, 0),
(67, '电压串联', NULL, 3, 0),
(68, '电流并联', NULL, 3, 0),
(69, '电流串联', NULL, 3, 0),
(70, '4.3运算电路的基本组成与分析方法', NULL, 3, 0),
(71, '4.3.1比例运算电路', NULL, 3, 0),
(72, '同相1', NULL, 3, 0),
(73, '反相1', NULL, 3, 0),
(74, '4.3.2加法电路', NULL, 3, 0),
(75, '同相2', NULL, 3, 0),
(76, '反相2', NULL, 3, 0),
(77, '4.3.3减法电路', NULL, 3, 0),
(78, '4.3.4积分电路/微分电路', NULL, 3, 0),
(79, '4.3.5对数电路/指数电路', NULL, 3, 0),
(80, '4.4振荡电路基本组成与工作原理', NULL, 3, 0),
(81, '4.4.1正弦波振荡电路', NULL, 3, 0),
(82, '自激振荡', NULL, 3, 0),
(83, 'RC振荡电路', NULL, 3, 0),
(84, '滤波电路', NULL, 3, 0),
(85, '4.4.2非正弦波振荡电路', NULL, 3, 0),
(86, '电压比较器', NULL, 3, 0),
(87, '单门限电压比较器', NULL, 3, 0),
(88, '过零比较器', NULL, 3, 0),
(89, '滞回比较器', NULL, 3, 0),
(90, '方波', NULL, 3, 0),
(91, '三角波', NULL, 3, 0),
(92, '5.直流稳压电源', NULL, 3, 0),
(93, '5.交流电转化为直流电的方法', NULL, 3, 0),
(94, '5.1整流电路', NULL, 3, 0),
(95, '5.1.1半波整流', NULL, 3, 0),
(96, '5.1.2桥式整流', NULL, 3, 0),
(97, '5.2滤波电路', NULL, 3, 0),
(98, '5.2.1电容滤波', NULL, 3, 0),
(99, '5.2.2电感滤波', NULL, 3, 0),
(100, '5.2.3复式滤波', NULL, 3, 0),
(101, '5.3稳压电路', NULL, 3, 0),
(102, '5.3.1稳压管电路', NULL, 3, 0),
(103, '5.3.2集成稳压器', NULL, 3, 0),
(104, '数字电路', NULL, 3, 0),
(105, '6.逻辑代数', NULL, 3, 0),
(106, '6.1逻辑代数运算法则', NULL, 3, 0),
(107, '6.1.1基本运算法则', NULL, 3, 0),
(108, '6.1.2代入规则', NULL, 3, 0),
(109, '6.1.3反演规则', NULL, 3, 0),
(110, '6.1.4对偶规则', NULL, 3, 0),
(111, '6.2逻辑函数表示方法及化简方法', NULL, 3, 0),
(112, '6.2.1逻辑函数表示方法', NULL, 3, 0),
(113, '真值表', NULL, 3, 0),
(114, '逻辑表达式', NULL, 3, 0),
(115, '标准与或表达式', NULL, 3, 0),
(116, '最简与或表达式', NULL, 3, 0),
(117, '与非式', NULL, 3, 0),
(118, '卡诺图', NULL, 3, 0),
(119, '波形图', NULL, 3, 0),
(120, '逻辑图', NULL, 3, 0),
(121, '6.2.2逻辑函数化简方法', NULL, 3, 0),
(122, '公式化简法', NULL, 3, 0),
(123, '卡诺图化简法', NULL, 3, 0),
(124, '7.组合逻辑电路', NULL, 3, 0),
(125, '7.1逻辑门电路', NULL, 3, 0),
(126, '7.1.1分立元件逻辑门', NULL, 3, 0),
(127, '7.1.2 TTL逻辑门', NULL, 3, 0),
(128, '7.1.3 COMS逻辑门', NULL, 3, 0),
(129, '7.2中规模组合逻辑器件的使用方法', NULL, 3, 0),
(130, '7.2.1加法器', NULL, 3, 0),
(131, '半加器', NULL, 3, 0),
(132, '全加器', NULL, 3, 0),
(133, '7.2.2编码器', NULL, 3, 0),
(134, '二进制编码器', NULL, 3, 0),
(135, '二一十进制编码器', NULL, 3, 0),
(136, '7.2.3译码器', NULL, 3, 0),
(137, '二进制译码器', NULL, 3, 0),
(138, '显示译码器', NULL, 3, 0),
(139, '7.2.4数据选择器', NULL, 3, 0),
(140, '7.3组合逻辑电路分析方法', NULL, 3, 0),
(141, '7.4组合逻辑电路设计方法', NULL, 3, 0),
(142, '7.4.1小规模组合逻辑电路设计', NULL, 3, 0),
(143, '7.4.2采用中规模集成器件设计组合逻辑电路', NULL, 3, 0),
(144, '7.4.3竞争与冒险现象', NULL, 3, 0),
(145, '8.时序逻辑电路', NULL, 3, 0),
(146, '8.1触发器及其使用方法', NULL, 3, 0),
(147, '8.1.1 RS触发器', NULL, 3, 0),
(148, '8.1.2 JK触发器', NULL, 3, 0),
(149, '8.1.3 D触发器', NULL, 3, 0),
(150, '8.1.4 T触发器/T\'触发器', NULL, 3, 0),
(151, '8.2时序逻辑电路的分析方法', NULL, 3, 0),
(152, '8.2.1同步时序逻辑电路分析方法', NULL, 3, 0),
(153, '8.2.2异步时序逻辑电路分析方法', NULL, 3, 0),
(154, '8.3寄存器与计数器的设计方法', NULL, 3, 0),
(155, '8.3.1寄存器', NULL, 3, 0),
(156, '数码寄存器', NULL, 3, 0),
(157, '移位寄存器', NULL, 3, 0),
(158, '8.3.2计数器', NULL, 3, 0),
(159, '二进制计数器', NULL, 3, 0),
(160, '十进制计数器', NULL, 3, 0),
(161, '任意模制计数器', NULL, 3, 0),
(162, '9.存储器和可编程逻辑器件', NULL, 3, 0),
(163, '9.1存储器工作原理', NULL, 3, 0),
(164, '9.1.1随机存取存储器RAM', NULL, 3, 0),
(165, '9.1.2只读存储器ROM', NULL, 3, 0),
(166, '9.2可编程逻辑器件设计数字电路的方法', NULL, 3, 0),
(167, '9.2.1 PLD', NULL, 3, 0),
(168, '9.2.2 PAL', NULL, 3, 0),
(169, '9.2.3 GAL', NULL, 3, 0),
(170, '1.工程知识', NULL, 3, 0),
(171, '掌握数理及自然科学的基础知识', NULL, 3, 0),
(172, '电路模型相关概念', NULL, 3, 0),
(173, '半导体及相关器件工作原理', NULL, 3, 0),
(174, '三极管放大电路工作原理', NULL, 3, 0),
(175, '集成运算放大器的工作原理', NULL, 3, 0),
(176, '直流稳压电源工作原理', NULL, 3, 0),
(177, '逻辑代数', NULL, 3, 0),
(178, '触发器工作原理', NULL, 3, 0),
(179, '存储器和可编程逻辑器件工作原理', NULL, 3, 0),
(180, '运用解决复杂工程问题方法', NULL, 3, 0),
(181, '电路的基本分析方法', NULL, 3, 0),
(182, '基尔霍夫定律', NULL, 3, 0),
(183, '叠加原理', NULL, 3, 0),
(184, '戴维宁定理', NULL, 3, 0),
(185, '诺顿定理', NULL, 3, 0),
(186, '三极管放大电路分析方法', NULL, 3, 0),
(187, '图解法', NULL, 3, 0),
(188, '微变等效电路法', NULL, 3, 0),
(189, '集成运算分析方法', NULL, 3, 0),
(190, '虚拟短路、虚拟断路', NULL, 3, 0),
(191, '非线性区的分析方法', NULL, 3, 0),
(192, '反馈类型判断', NULL, 3, 0),
(193, '逻辑代数的化简方法', NULL, 3, 0),
(194, '公式化简法、', NULL, 3, 0),
(195, '卡诺图化简法、', NULL, 3, 0),
(196, '组合逻辑电路分析与设计方法', NULL, 3, 0),
(197, '分立件电路', NULL, 3, 0),
(198, '中规模集成逻辑门', NULL, 3, 0),
(199, '竞争与冒险现象', NULL, 3, 0),
(200, '时序逻辑电路分析与设计方法', NULL, 3, 0),
(201, '同步逻辑', NULL, 3, 0),
(202, '异步逻辑', NULL, 3, 0),
(203, '寄存器与计数器', NULL, 3, 0),
(204, '2.问题分析', NULL, 3, 0),
(205, '运用草稿、图表、流程表等工程方法描述问题', NULL, 3, 0),
(206, '半导体器件', NULL, 3, 0),
(207, '二极管', NULL, 3, 0),
(208, '伏安特性曲线', NULL, 3, 0),
(209, '三极管', NULL, 3, 0),
(210, '输入特性曲线', NULL, 3, 0),
(211, '输出特性曲线', NULL, 3, 0),
(212, '三极管放大电路', NULL, 3, 0),
(213, '直流通路', NULL, 3, 0),
(214, '交流通路', NULL, 3, 0),
(215, '微变等效电路', NULL, 3, 0),
(216, '集成运算放大器', NULL, 3, 0),
(217, '传输特性曲线', NULL, 3, 0),
(218, '线性区、', NULL, 3, 0),
(219, '非线性区', NULL, 3, 0),
(220, '逻辑代数、', NULL, 3, 0),
(221, '真值表、', NULL, 3, 0),
(222, '卡诺图、', NULL, 3, 0),
(223, '波形图、', NULL, 3, 0),
(224, '状态图、', NULL, 3, 0),
(225, '逻辑图、', NULL, 3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE `message` (
  `m_id` int(11) NOT NULL DEFAULT '0',
  `m_content` mediumtext,
  `m_location` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`m_id`, `m_content`, `m_location`) VALUES
(1, '李东阳 : 哈哈哈哈', '0');

-- --------------------------------------------------------

--
-- 表的结构 `password`
--

CREATE TABLE `password` (
  `p_password` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `password`
--

INSERT INTO `password` (`p_password`) VALUES
('E10ADC3949BA59ABBE56E057F20F883E');

-- --------------------------------------------------------

--
-- 表的结构 `relationlist`
--

CREATE TABLE `relationlist` (
  `id` int(11) NOT NULL DEFAULT '0',
  `father_id` int(11) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `reply`
--

CREATE TABLE `reply` (
  `rpy_id` int(11) NOT NULL DEFAULT '0',
  `rpy_messageid` varchar(20) DEFAULT NULL,
  `rpy_content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `reply`
--

INSERT INTO `reply` (`rpy_id`, `rpy_messageid`, `rpy_content`) VALUES
(1, '1', '李东阳 : 嘻嘻嘻'),
(2, '1', '鲍瑞 : 来了'),
(3, '1', '李东阳 : thththt');

-- --------------------------------------------------------

--
-- 表的结构 `resource`
--

CREATE TABLE `resource` (
  `r_id` int(11) NOT NULL DEFAULT '0',
  `r_type` varchar(10) DEFAULT NULL,
  `r_name` varchar(100) DEFAULT NULL,
  `r_link` varchar(300) DEFAULT NULL,
  `r_location` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `resource`
--

INSERT INTO `resource` (`r_id`, `r_type`, `r_name`, `r_link`, `r_location`) VALUES
(1, '课件', '2.1.3 PN结', '1、PNjie.ppt', ''),
(2, '微课', '2.1.3 PN结', '1、PNjie.mp4', ''),
(3, '课件', '2.2.3三极管', '2、sanjiguan.ppt', ''),
(4, '微课', '2.2.3三极管', '2、sanjiguan.mp4', ''),
(5, '课件', '3.1.1三极管放大电路组成', '3、sanjiguandianlu.ppt', ''),
(6, '微课', '3.1.1三极管放大电路组成', '3、sanjiguandianlu.mp4', ''),
(7, '课件', '3.1.5图解法', '4、tujiefa.ppt', ''),
(8, '微课', '3.1.5图解法', '4、tujiefa.mp4', ''),
(9, '课件', '3.1.6微变等效电路法', '5、weibiandengxiao.ppt', ''),
(10, '微课', '3.1.6微变等效电路法', '5、weibiandengxiao.mp4', ''),
(11, '课件', '3.3.3功率放大电路', '6、gonglvfangda.ppt', ''),
(12, '微课', '3.3.3功率放大电路', '6、gonglvfangda.mp4', ''),
(13, '课件', '4.2反馈的判断方法', '7、fankuileixing.ppt', ''),
(14, '微课', '4.2反馈的判断方法', '7、fankuileixing.mp4', ''),
(15, '课件', '4.3运算电路的基本组成与分析方法', '8、jibenyunsuandianlu.ppt', ''),
(16, '微课', '4.3运算电路的基本组成与分析方法', '8、jibenyunsuandianlu.mp4', ''),
(17, '课件', '4.4.1正弦波振荡电路', '10、zhengxianbo.ppt', ''),
(18, '微课', '4.4.1正弦波振荡电路', '10、zhengxianbo.mp4', ''),
(19, '课件', '滤波电路', '9、youyuanlvbo.ppt', ''),
(20, '微课', '滤波电路', '9、youyuanlvbo.mp4', ''),
(21, '课件', '滞回比较器', '11、chizhibijiaoqi.ppt', ''),
(22, '微课', '滞回比较器', '11、chizhibijiaoqi.mp4', ''),
(23, '课件', '5.交流电转化为直流电的方法', '12、jiaoliudianzhiliudian.ppt', ''),
(24, '微课', '5.交流电转化为直流电的方法', '12、jiaoliudianzhiliudian.mp4', ''),
(25, '课件', '6.2.2逻辑函数化简方法', '13、luojihanshuhuajian.ppt', ''),
(26, '微课', '6.2.2逻辑函数化简方法', '13、luojihanshuhuajian.mp4', ''),
(27, '课件', '7.1.2 TTL逻辑门', '14、TTLluojimen.ppt', ''),
(28, '微课', '7.1.2 TTL逻辑门', '14、TTLluojimen.mp4', ''),
(29, '课件', '7.4.1小规模组合逻辑电路设计', '15、zuheluojidianlu.ppt', ''),
(30, '微课', '7.4.1小规模组合逻辑电路设计', '15、zuheluojidianlu.mp4', ''),
(31, '课件', '7.4.3竞争与冒险现象', '16、jingzhengyumaoxian.ppt', ''),
(32, '微课', '7.4.3竞争与冒险现象', '16、jingzhengyumaoxian.mp4', ''),
(33, '课件', '8.1.1 RS触发器', '17、chufaqi.ppt', ''),
(34, '课件', '8.2.1同步时序逻辑电路分析方法', '18、tongbushixuluoji.ppt', ''),
(35, '微课', '8.2.1同步时序逻辑电路分析方法', '18、tongbushixuluoji.mp4', ''),
(36, '课件', '任意模制计数器', '19、renyimozhijishuqi.ppt', ''),
(37, '微课', '任意模制计数器', '19、renyimozhijishuqi.mp4', ''),
(38, '课件', '9.2.2 PAL', '20、PAL.ppt', ''),
(39, '微课', '9.2.2 PAL', '20、PAL.mp4', ''),
(40, '微课', '数字电路与模拟电路', 'S0_3.mp4', '');

-- --------------------------------------------------------

--
-- 表的结构 `resourcelink`
--

CREATE TABLE `resourcelink` (
  `rl_id` int(11) NOT NULL DEFAULT '0',
  `rl_name` varchar(100) DEFAULT NULL,
  `rl_link` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `statisticallist`
--

CREATE TABLE `statisticallist` (
  `S_id` int(11) NOT NULL DEFAULT '0',
  `K_id` int(11) NOT NULL DEFAULT '0',
  `S_grade` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `statisticallist`
--

INSERT INTO `statisticallist` (`S_id`, `K_id`, `S_grade`) VALUES
(1, 0, 0),
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 11, 0),
(1, 12, 0),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 17, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(1, 28, 0),
(1, 29, 0),
(1, 30, 0),
(1, 31, 0),
(1, 32, 0),
(1, 33, 0),
(1, 34, 0),
(1, 35, 0),
(1, 36, 0),
(1, 37, 0),
(1, 38, 0),
(1, 39, 0),
(1, 40, 0),
(1, 41, 0),
(1, 42, 0),
(1, 43, 0),
(1, 44, 0),
(1, 45, 0),
(1, 46, 0),
(1, 47, 0),
(1, 48, 0),
(1, 49, 0),
(1, 50, 0),
(1, 51, 0),
(1, 52, 0),
(1, 53, 0),
(1, 54, 0),
(1, 55, 0),
(1, 56, 0),
(1, 57, 0),
(1, 58, 0),
(1, 59, 0),
(1, 60, 0),
(1, 61, 0),
(1, 62, 0),
(1, 63, 0),
(1, 64, 0),
(1, 65, 0),
(1, 66, 0),
(1, 67, 0),
(1, 68, 0),
(1, 69, 0),
(1, 70, 0),
(1, 71, 0),
(1, 72, 0),
(1, 73, 0),
(1, 74, 0),
(1, 75, 0),
(1, 76, 0),
(1, 77, 0),
(1, 78, 0),
(1, 79, 0),
(1, 80, 0),
(1, 81, 0),
(1, 82, 0),
(1, 83, 0),
(1, 84, 0),
(1, 85, 0),
(1, 86, 0),
(1, 87, 0),
(1, 88, 0),
(1, 89, 0),
(1, 90, 0),
(1, 91, 0),
(1, 92, 0),
(1, 93, 0),
(1, 94, 0),
(1, 95, 0),
(1, 96, 0),
(1, 97, 0),
(1, 98, 0),
(1, 99, 0),
(1, 100, 0),
(1, 101, 0),
(1, 102, 0),
(1, 103, 0),
(1, 104, 0),
(1, 105, 0),
(1, 106, 0),
(1, 107, 0),
(1, 108, 0),
(1, 109, 0),
(1, 110, 0),
(1, 111, 0),
(1, 112, 0),
(1, 113, 0),
(1, 114, 0),
(1, 115, 0),
(1, 116, 0),
(1, 117, 0),
(1, 118, 0),
(1, 119, 0),
(1, 120, 0),
(1, 121, 0),
(1, 122, 0),
(1, 123, 0),
(1, 124, 0),
(1, 125, 0),
(1, 126, 0),
(1, 127, 0),
(1, 128, 0),
(1, 129, 0),
(1, 130, 0),
(1, 131, 0),
(1, 132, 0),
(1, 133, 0),
(1, 134, 0),
(1, 135, 0),
(1, 136, 0),
(1, 137, 0),
(1, 138, 0),
(1, 139, 0),
(1, 140, 0),
(1, 141, 0),
(1, 142, 0),
(1, 143, 0),
(1, 144, 0),
(1, 145, 0),
(1, 146, 0),
(1, 147, 0),
(1, 148, 0),
(1, 149, 0),
(1, 150, 0),
(1, 151, 0),
(1, 152, 0),
(1, 153, 0),
(1, 154, 0),
(1, 155, 0),
(1, 156, 0),
(1, 157, 0),
(1, 158, 0),
(1, 159, 0),
(1, 160, 0),
(1, 161, 0),
(1, 162, 0),
(1, 163, 0),
(1, 164, 0),
(1, 165, 0),
(1, 166, 0),
(1, 167, 0),
(1, 168, 0),
(1, 169, 0),
(1, 170, 0),
(1, 171, 0),
(1, 172, 0),
(1, 173, 0),
(1, 174, 0),
(1, 175, 0),
(1, 176, 0),
(1, 177, 0),
(1, 178, 0),
(1, 179, 0),
(1, 180, 0),
(1, 181, 0),
(1, 182, 0),
(1, 183, 0),
(1, 184, 0),
(1, 185, 0),
(1, 186, 0),
(1, 187, 0),
(1, 188, 0),
(1, 189, 0),
(1, 190, 0),
(1, 191, 0),
(1, 192, 0),
(1, 193, 0),
(1, 194, 0),
(1, 195, 0),
(1, 196, 0),
(1, 197, 0),
(1, 198, 0),
(1, 199, 0),
(1, 200, 0),
(1, 201, 0),
(1, 202, 0),
(1, 203, 0),
(1, 204, 0),
(1, 205, 0),
(1, 206, 0),
(1, 207, 0),
(1, 208, 0),
(1, 209, 0),
(1, 210, 0),
(1, 211, 0),
(1, 212, 0),
(1, 213, 0),
(1, 214, 0),
(1, 215, 0),
(1, 216, 0),
(1, 217, 0),
(1, 218, 0),
(1, 219, 0),
(1, 220, 0),
(1, 221, 0),
(1, 222, 0),
(1, 223, 0),
(1, 224, 0),
(1, 225, 0),
(2, 0, 0),
(2, 1, 0),
(2, 2, 0),
(2, 3, 0),
(2, 4, 0),
(2, 5, 0),
(2, 6, 0),
(2, 7, 0),
(2, 8, 0),
(2, 9, 0),
(2, 10, 0),
(2, 11, 0),
(2, 12, 0),
(2, 13, 0),
(2, 14, 0),
(2, 15, 0),
(2, 16, 0),
(2, 17, 0),
(2, 18, 0),
(2, 19, 0),
(2, 20, 0),
(2, 21, 0),
(2, 22, 0),
(2, 23, 0),
(2, 24, 0),
(2, 25, 0),
(2, 26, 0),
(2, 27, 0),
(2, 28, 0),
(2, 29, 0),
(2, 30, 0),
(2, 31, 0),
(2, 32, 0),
(2, 33, 0),
(2, 34, 0),
(2, 35, 0),
(2, 36, 0),
(2, 37, 0),
(2, 38, 0),
(2, 39, 0),
(2, 40, 0),
(2, 41, 0),
(2, 42, 0),
(2, 43, 0),
(2, 44, 0),
(2, 45, 0),
(2, 46, 0),
(2, 47, 0),
(2, 48, 0),
(2, 49, 0),
(2, 50, 0),
(2, 51, 0),
(2, 52, 0),
(2, 53, 0),
(2, 54, 0),
(2, 55, 0),
(2, 56, 0),
(2, 57, 0),
(2, 58, 0),
(2, 59, 0),
(2, 60, 0),
(2, 61, 0),
(2, 62, 0),
(2, 63, 0),
(2, 64, 0),
(2, 65, 0),
(2, 66, 0),
(2, 67, 0),
(2, 68, 0),
(2, 69, 0),
(2, 70, 0),
(2, 71, 0),
(2, 72, 0),
(2, 73, 0),
(2, 74, 0),
(2, 75, 0),
(2, 76, 0),
(2, 77, 0),
(2, 78, 0),
(2, 79, 0),
(2, 80, 0),
(2, 81, 0),
(2, 82, 0),
(2, 83, 0),
(2, 84, 0),
(2, 85, 0),
(2, 86, 0),
(2, 87, 0),
(2, 88, 0),
(2, 89, 0),
(2, 90, 0),
(2, 91, 0),
(2, 92, 0),
(2, 93, 0),
(2, 94, 0),
(2, 95, 0),
(2, 96, 0),
(2, 97, 0),
(2, 98, 0),
(2, 99, 0),
(2, 100, 0),
(2, 101, 0),
(2, 102, 0),
(2, 103, 0),
(2, 104, 0),
(2, 105, 0),
(2, 106, 0),
(2, 107, 0),
(2, 108, 0),
(2, 109, 0),
(2, 110, 0),
(2, 111, 0),
(2, 112, 0),
(2, 113, 0),
(2, 114, 0),
(2, 115, 0),
(2, 116, 0),
(2, 117, 0),
(2, 118, 0),
(2, 119, 0),
(2, 120, 0),
(2, 121, 0),
(2, 122, 0),
(2, 123, 0),
(2, 124, 0),
(2, 125, 0),
(2, 126, 0),
(2, 127, 0),
(2, 128, 0),
(2, 129, 0),
(2, 130, 0),
(2, 131, 0),
(2, 132, 0),
(2, 133, 0),
(2, 134, 0),
(2, 135, 0),
(2, 136, 0),
(2, 137, 0),
(2, 138, 0),
(2, 139, 0),
(2, 140, 0),
(2, 141, 0),
(2, 142, 0),
(2, 143, 0),
(2, 144, 0),
(2, 145, 0),
(2, 146, 0),
(2, 147, 0),
(2, 148, 0),
(2, 149, 0),
(2, 150, 0),
(2, 151, 0),
(2, 152, 0),
(2, 153, 0),
(2, 154, 0),
(2, 155, 0),
(2, 156, 0),
(2, 157, 0),
(2, 158, 0),
(2, 159, 0),
(2, 160, 0),
(2, 161, 0),
(2, 162, 0),
(2, 163, 0),
(2, 164, 0),
(2, 165, 0),
(2, 166, 0),
(2, 167, 0),
(2, 168, 0),
(2, 169, 0),
(2, 170, 0),
(2, 171, 0),
(2, 172, 0),
(2, 173, 0),
(2, 174, 0),
(2, 175, 0),
(2, 176, 0),
(2, 177, 0),
(2, 178, 0),
(2, 179, 0),
(2, 180, 0),
(2, 181, 0),
(2, 182, 0),
(2, 183, 0),
(2, 184, 0),
(2, 185, 0),
(2, 186, 0),
(2, 187, 0),
(2, 188, 0),
(2, 189, 0),
(2, 190, 0),
(2, 191, 0),
(2, 192, 0),
(2, 193, 0),
(2, 194, 0),
(2, 195, 0),
(2, 196, 0),
(2, 197, 0),
(2, 198, 0),
(2, 199, 0),
(2, 200, 0),
(2, 201, 0),
(2, 202, 0),
(2, 203, 0),
(2, 204, 0),
(2, 205, 0),
(2, 206, 0),
(2, 207, 0),
(2, 208, 0),
(2, 209, 0),
(2, 210, 0),
(2, 211, 0),
(2, 212, 0),
(2, 213, 0),
(2, 214, 0),
(2, 215, 0),
(2, 216, 0),
(2, 217, 0),
(2, 218, 0),
(2, 219, 0),
(2, 220, 0),
(2, 221, 0),
(2, 222, 0),
(2, 223, 0),
(2, 224, 0),
(2, 225, 0);

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE `student` (
  `S_id` int(11) DEFAULT NULL,
  `S_name` varchar(100) DEFAULT NULL,
  `S_number` varchar(100) NOT NULL DEFAULT '',
  `S_class` varchar(100) DEFAULT NULL,
  `S_teacher` varchar(100) DEFAULT NULL,
  `T_id` int(11) DEFAULT NULL,
  `S_password` varchar(100) DEFAULT NULL,
  `S_email` varchar(100) DEFAULT NULL,
  `S_N` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`S_id`, `S_name`, `S_number`, `S_class`, `S_teacher`, `T_id`, `S_password`, `S_email`, `S_N`) VALUES
(1, '李东阳', '201392133', '1316', '老师一', 1, '202CB962AC59075B964B07152D234B70', '417020264@qq.com', '1000000'),
(2, '鲍瑞', '201392174', '1316', '老师一', 1, '3B712DE48137572F3849AABD5666A4E3', '835086404@qq.com', '1000000');

-- --------------------------------------------------------

--
-- 表的结构 `s_evaluate`
--

CREATE TABLE `s_evaluate` (
  `S_id` int(11) NOT NULL DEFAULT '0',
  `K_id` int(11) NOT NULL DEFAULT '0',
  `S_evaluate` mediumtext,
  `S_slu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `s_evaluate`
--

INSERT INTO `s_evaluate` (`S_id`, `K_id`, `S_evaluate`, `S_slu`) VALUES
(1, 0, NULL, 1),
(2, 0, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `s_homework`
--

CREATE TABLE `s_homework` (
  `S_id` int(11) NOT NULL DEFAULT '0',
  `K_id` int(11) NOT NULL DEFAULT '0',
  `S_homework` varchar(100) DEFAULT NULL,
  `S_grade` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `s_test_online`
--

CREATE TABLE `s_test_online` (
  `K_id` int(11) NOT NULL DEFAULT '0',
  `S_id` int(11) NOT NULL DEFAULT '0',
  `My_answer` varchar(300) DEFAULT NULL,
  `Grade` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `teacherdata`
--

CREATE TABLE `teacherdata` (
  `td_id` int(11) NOT NULL DEFAULT '0',
  `td_name` varchar(100) DEFAULT NULL,
  `td_content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `teacherdata`
--

INSERT INTO `teacherdata` (`td_id`, `td_name`, `td_content`) VALUES
(1, '老师一', '这是老师一的介绍！');

-- --------------------------------------------------------

--
-- 表的结构 `t_homework`
--

CREATE TABLE `t_homework` (
  `K_id` int(11) NOT NULL DEFAULT '0',
  `T_homework` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `t_test_online`
--

CREATE TABLE `t_test_online` (
  `K_id` int(11) NOT NULL DEFAULT '0',
  `Num` int(11) DEFAULT NULL,
  `Link` varchar(100) DEFAULT NULL,
  `Answer` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`a_time`);

--
-- Indexes for table `knowledge`
--
ALTER TABLE `knowledge`
  ADD PRIMARY KEY (`K_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `password`
--
ALTER TABLE `password`
  ADD PRIMARY KEY (`p_password`);

--
-- Indexes for table `relationlist`
--
ALTER TABLE `relationlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`rpy_id`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `resourcelink`
--
ALTER TABLE `resourcelink`
  ADD PRIMARY KEY (`rl_id`);

--
-- Indexes for table `statisticallist`
--
ALTER TABLE `statisticallist`
  ADD PRIMARY KEY (`S_id`,`K_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`S_number`);

--
-- Indexes for table `s_evaluate`
--
ALTER TABLE `s_evaluate`
  ADD PRIMARY KEY (`S_id`,`K_id`);

--
-- Indexes for table `s_homework`
--
ALTER TABLE `s_homework`
  ADD PRIMARY KEY (`S_id`,`K_id`);

--
-- Indexes for table `s_test_online`
--
ALTER TABLE `s_test_online`
  ADD PRIMARY KEY (`K_id`,`S_id`);

--
-- Indexes for table `teacherdata`
--
ALTER TABLE `teacherdata`
  ADD PRIMARY KEY (`td_id`);

--
-- Indexes for table `t_homework`
--
ALTER TABLE `t_homework`
  ADD PRIMARY KEY (`K_id`);

--
-- Indexes for table `t_test_online`
--
ALTER TABLE `t_test_online`
  ADD PRIMARY KEY (`K_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
