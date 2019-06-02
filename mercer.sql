/*
 Navicat Premium Data Transfer

 Source Server         : MERCER
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : mercer

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 02/06/2019 07:48:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addfriend
-- ----------------------------
DROP TABLE IF EXISTS `addfriend`;
CREATE TABLE `addfriend`  (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `friend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_state` int(255) UNSIGNED ZEROFILL DEFAULT NULL,
  `friend_state` int(255) UNSIGNED ZEROFILL DEFAULT NULL,
  PRIMARY KEY (`f_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addfriend
-- ----------------------------
INSERT INTO `addfriend` VALUES (1, 'quxiaoli', 'zengjingran', 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001);

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `b_id` int(10) NOT NULL AUTO_INCREMENT,
  `b_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dates` datetime(0) DEFAULT NULL,
  `u_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`b_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (1, 'hello', NULL, 'abcde');
INSERT INTO `blog` VALUES (2, 'hello world', NULL, 'abcde');
INSERT INTO `blog` VALUES (3, 'sdasdad', NULL, 'abcde');
INSERT INTO `blog` VALUES (4, 'asdsadadad', NULL, 'abcde');
INSERT INTO `blog` VALUES (5, 'dadad', NULL, 'abcde');
INSERT INTO `blog` VALUES (6, 'abcde', NULL, 'smile');
INSERT INTO `blog` VALUES (7, 'hello', NULL, 'smile');
INSERT INTO `blog` VALUES (8, 'hee', NULL, 'smile');
INSERT INTO `blog` VALUES (9, 'hello world', NULL, 'simile');
INSERT INTO `blog` VALUES (10, 'zdzg', NULL, 'smile');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `co_id` int(20) NOT NULL,
  `b_id` int(20) DEFAULT NULL,
  `co_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `co_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `co_time` datetime(0) DEFAULT NULL,
  `u_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `co_date` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`co_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `c_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 4, '333', '222');
INSERT INTO `comment` VALUES (2, 5, 'Grizemann', 'Let us do it again');

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends`  (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `friend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`f_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friends
-- ----------------------------
INSERT INTO `friends` VALUES (1, 'zengjingran', 'quxiaoli');

-- ----------------------------
-- Table structure for jr
-- ----------------------------
DROP TABLE IF EXISTS `jr`;
CREATE TABLE `jr`  (
  `age` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`age`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jrs
-- ----------------------------
DROP TABLE IF EXISTS `jrs`;
CREATE TABLE `jrs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jrs
-- ----------------------------
INSERT INTO `jrs` VALUES (2, 'Fernando', 'T9', 34);
INSERT INTO `jrs` VALUES (3, 'Griezemann', 'AG7', 25);

-- ----------------------------
-- Table structure for mercerjr
-- ----------------------------
DROP TABLE IF EXISTS `mercerjr`;
CREATE TABLE `mercerjr`  (
  `mercerjr` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for messageboard
-- ----------------------------
DROP TABLE IF EXISTS `messageboard`;
CREATE TABLE `messageboard`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messageboard
-- ----------------------------
INSERT INTO `messageboard` VALUES (1, NULL, NULL);
INSERT INTO `messageboard` VALUES (2, NULL, NULL);
INSERT INTO `messageboard` VALUES (3, NULL, NULL);
INSERT INTO `messageboard` VALUES (4, '456', '456');
INSERT INTO `messageboard` VALUES (5, 'torres', 'I must win this game');
INSERT INTO `messageboard` VALUES (6, 'torres', 'I will win this game again');
INSERT INTO `messageboard` VALUES (7, 'Griezmann', 'I love Atletic');

-- ----------------------------
-- Table structure for newuser
-- ----------------------------
DROP TABLE IF EXISTS `newuser`;
CREATE TABLE `newuser`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newuser
-- ----------------------------
INSERT INTO `newuser` VALUES (1, 'Torres', '99999999');
INSERT INTO `newuser` VALUES (4, 'Griezmann', '77777777');
INSERT INTO `newuser` VALUES (5, 'Kane', '101010');
INSERT INTO `newuser` VALUES (6, 'Messi', '11111111');
INSERT INTO `newuser` VALUES (7, 'Messi', '11111111');
INSERT INTO `newuser` VALUES (8, 'Torres', '99999999');
INSERT INTO `newuser` VALUES (9, 'Torres', '99999999');
INSERT INTO `newuser` VALUES (10, 'Torres', '99999999');
INSERT INTO `newuser` VALUES (11, 'Griezmann', '77777777');
INSERT INTO `newuser` VALUES (12, 'Griezmann', '77777777');
INSERT INTO `newuser` VALUES (13, 'Griezmann', '77777777');
INSERT INTO `newuser` VALUES (14, 'Griezmann', '77777777');
INSERT INTO `newuser` VALUES (15, 'Griezmann', '77777777');
INSERT INTO `newuser` VALUES (16, 'Griezmann', '77777777');
INSERT INTO `newuser` VALUES (17, 'Griezmann', '77777777');
INSERT INTO `newuser` VALUES (18, 'Griezmann', '77777777');
INSERT INTO `newuser` VALUES (19, 'Griezmann', '77777777');
INSERT INTO `newuser` VALUES (20, 'Torres', '99999999');
INSERT INTO `newuser` VALUES (21, 'Griezmann', '77777777');
INSERT INTO `newuser` VALUES (22, 'Torres', '99999999');
INSERT INTO `newuser` VALUES (23, 'Torres', '99999999');

-- ----------------------------
-- Table structure for runoob_tbl
-- ----------------------------
DROP TABLE IF EXISTS `runoob_tbl`;
CREATE TABLE `runoob_tbl`  (
  `runoob_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `runoob_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `runoob_author` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `submission_date` date DEFAULT NULL,
  PRIMARY KEY (`runoob_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sheet
-- ----------------------------
DROP TABLE IF EXISTS `sheet`;
CREATE TABLE `sheet`  (
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `profession` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sheet
-- ----------------------------
INSERT INTO `sheet` VALUES ('La lucha', '160101108', '信息与通信工程');
INSERT INTO `sheet` VALUES ('娱乐天空', '170131128', '电子与通信工程');
INSERT INTO `sheet` VALUES ('☆冰冷＆火焰', '170201001', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('未来       尽在我手', '170301048', '控制科学与工程');
INSERT INTO `sheet` VALUES ('四喜丸子', '171501003', '马克思主义理论');
INSERT INTO `sheet` VALUES ('星尘', '180231064', '计算机');
INSERT INTO `sheet` VALUES ('x。L~u。。', '180301051', '控制科学与工程');
INSERT INTO `sheet` VALUES ('key2', '180931018', '广播电视');
INSERT INTO `sheet` VALUES ('xiaoj', '2013211638', '计算机');
INSERT INTO `sheet` VALUES ('万里清风', '2014212558', '控制科学与工程');
INSERT INTO `sheet` VALUES ('不定积分', '2015210680', '光电信息科学与工程');
INSERT INTO `sheet` VALUES ('SUPER', '2015210703', '电子科学与技术');
INSERT INTO `sheet` VALUES ('-', '2015210761', '电磁场与无线技术');
INSERT INTO `sheet` VALUES ('北有孤酒°', '2015210974', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('这个✔', '2015211562', '智能科学与技术');
INSERT INTO `sheet` VALUES ('夕酉酒`', '2015211752', '网络工程');
INSERT INTO `sheet` VALUES ('坨坨肉', '2015212103', '英语');
INSERT INTO `sheet` VALUES ('201∞', '2015212535', '智能电网信息工程');
INSERT INTO `sheet` VALUES ('fantasying', '2015212552', '测控技术与仪器');
INSERT INTO `sheet` VALUES ('夜', '2015212908', '电气工程及其自动化');
INSERT INTO `sheet` VALUES ('紫月', '2015213014', '社会体育指导与管理');
INSERT INTO `sheet` VALUES ('茨维塔耶娃', '2015213443', '广播电视编导');
INSERT INTO `sheet` VALUES ('窝哟窝', '2015213972', '软件工程');
INSERT INTO `sheet` VALUES ('小机灵', '2015214058', '软件工程');
INSERT INTO `sheet` VALUES ('angel beats', '2015214404', '机械设计制造及其自动化');
INSERT INTO `sheet` VALUES ('、', '2015214437', '机械设计制造及自动化');
INSERT INTO `sheet` VALUES ('铁齿tp/铜牙', '2015214490', '微电子科学与工程');
INSERT INTO `sheet` VALUES ('fireice', '2016210655', '数字媒体技术');
INSERT INTO `sheet` VALUES ('BFG', '2016210917', '光电信息科学与工程');
INSERT INTO `sheet` VALUES ('滥丶好人', '2016210981', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('outsider', '2016211003', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('bug marker', '2016211034', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('Une immense', '2016211052', '信息管理与与信息系统');
INSERT INTO `sheet` VALUES ('如花', '2016211305', '智能科学与技术');
INSERT INTO `sheet` VALUES ('༼གང་ཟག་།།༽', '2016211308', '工商管理');
INSERT INTO `sheet` VALUES ('羊羊', '2016211315', '会计学');
INSERT INTO `sheet` VALUES ('看看', '2016211427', '物流管理');
INSERT INTO `sheet` VALUES ('怪人', '2016211441', '电子商务');
INSERT INTO `sheet` VALUES ('我', '2016211463', '智能科学与技术');
INSERT INTO `sheet` VALUES ('路麓北枳', '2016211561', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('人生何事等闲', '2016211712', '信息安全');
INSERT INTO `sheet` VALUES ('机灵小不懂', '2016211722', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('渐行渐远渐无书', '2016211818', '网络工程');
INSERT INTO `sheet` VALUES ('别傻了你', '2016211837', '计算机科学与技术学院');
INSERT INTO `sheet` VALUES ('沒離開過', '2016211873', '计算机科学与技术专业卓越工程师班');
INSERT INTO `sheet` VALUES ('史蒂芬.邹', '2016211879', '信息安全');
INSERT INTO `sheet` VALUES ('东风', '2016211926', '智能科学与技术');
INSERT INTO `sheet` VALUES ('dsM', '2016211996', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('渔', '2016212049', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('何时遇见', '2016212075', '信息安全卓越班');
INSERT INTO `sheet` VALUES ('défis', '2016212089', '智能科学与技术');
INSERT INTO `sheet` VALUES ('我还能继续学习', '2016212127', '英语专业');
INSERT INTO `sheet` VALUES ('大王叫我来巡山', '2016212150', '智能科学与技术');
INSERT INTO `sheet` VALUES ('优雅的像只猫', '2016212345', '法学');
INSERT INTO `sheet` VALUES ('Tsringkiki', '2016212351', '法学');
INSERT INTO `sheet` VALUES ('姝缇', '2016212355', '法学');
INSERT INTO `sheet` VALUES ('青山见我应如是', '2016212377', '知识产权');
INSERT INTO `sheet` VALUES ('青山', '2016212418', '法学');
INSERT INTO `sheet` VALUES ('小97q', '2016212421', '法学');
INSERT INTO `sheet` VALUES ('何以解忧，唯有暴富', '2016212490', '电气工程及其自动化');
INSERT INTO `sheet` VALUES ('Live', '2016212609', '物联网工程');
INSERT INTO `sheet` VALUES ('JR CC 的笑', '2016212630', '自动化');
INSERT INTO `sheet` VALUES ('超脱', '2016212643', '自动化');
INSERT INTO `sheet` VALUES ('风林火山', '2016212698', '自动化专业卓越工程师班');
INSERT INTO `sheet` VALUES ('不好耍', '2016212801', '自动化专业卓越工程师班');
INSERT INTO `sheet` VALUES ('Heard', '2016212817', '电气工程及其自动化');
INSERT INTO `sheet` VALUES ('光', '2016212843', '物联网工程');
INSERT INTO `sheet` VALUES ('瓢儿白', '2016212873', '电气工程及其自动化');
INSERT INTO `sheet` VALUES ('遇☆见', '2016212874', '自动化');
INSERT INTO `sheet` VALUES ('胖迪的小先森', '2016212886', '电气工程及其自动化');
INSERT INTO `sheet` VALUES ('右契°', '2016212943', '物联网');
INSERT INTO `sheet` VALUES ('无。', '2016212945', '物联网');
INSERT INTO `sheet` VALUES ('.', '2016213012', '智能电网信息工程');
INSERT INTO `sheet` VALUES ('奇怪的人weirdos', '2016213050', '社会体育指导与管理');
INSERT INTO `sheet` VALUES ('见时', '2016213805', '数字媒体艺术');
INSERT INTO `sheet` VALUES ('圣诞老人不在嘉的驯鹿 `', '2016213816', '数字媒体艺术');
INSERT INTO `sheet` VALUES ('木枝', '2016213818', '数字媒体艺术');
INSERT INTO `sheet` VALUES ('Dreaming', '2016213819', '动画');
INSERT INTO `sheet` VALUES ('一只积极向上的五星', '2016213876', '软件工程专业');
INSERT INTO `sheet` VALUES ('回忆...羊驼', '2016213900', '软件工程');
INSERT INTO `sheet` VALUES ('Serendipity.', '2016213917', '软件工程');
INSERT INTO `sheet` VALUES ('莫问ゅ纷飞', '2016213935', '软件工程');
INSERT INTO `sheet` VALUES ('彧蔚非吾', '2016213938', '软件工程');
INSERT INTO `sheet` VALUES ('久', '2016214210', '英语+软件');
INSERT INTO `sheet` VALUES ('一只秋田犬', '2016214215', '软件工程专业');
INSERT INTO `sheet` VALUES ('马克图布', '2016214619', '机械设计及其自动化');
INSERT INTO `sheet` VALUES ('one Day/', '2016214632', '先进制造工程学院');
INSERT INTO `sheet` VALUES ('v~寂', '2016214879', '微电子科学与工程');
INSERT INTO `sheet` VALUES ('Ellen Jiang', '2016214936', '集成电路设计与集成系统');
INSERT INTO `sheet` VALUES ('曙 光', '2016214939', '集成电路与设计');
INSERT INTO `sheet` VALUES ('二月二十', '2016215019', '微电子科学与工程专业实验班');
INSERT INTO `sheet` VALUES ('李宝库', '2017210054', '广播电视工程');
INSERT INTO `sheet` VALUES ('Ego', '2017210079', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('暮临朝', '2017210108', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('▓卐江先輝卍▓', '2017210136', '通信与信息工程学院');
INSERT INTO `sheet` VALUES ('丶xv', '2017210251', '通信工程');
INSERT INTO `sheet` VALUES ('noki', '2017210264', '电子信息工程');
INSERT INTO `sheet` VALUES ('山人有妙计', '2017210297', '通信工程卓越班');
INSERT INTO `sheet` VALUES ('半糖主义', '2017210341', '信息工程');
INSERT INTO `sheet` VALUES ('\\n', '2017210420', '信息工程');
INSERT INTO `sheet` VALUES ('风雨中的等待', '2017210467', '信息工程');
INSERT INTO `sheet` VALUES ('.', '2017210472', '通信工程');
INSERT INTO `sheet` VALUES (NULL, '2017210749', '电子工程类');
INSERT INTO `sheet` VALUES ('哎呦我去', '2017211072', '经济学');
INSERT INTO `sheet` VALUES ('咚', '2017211088', '经济学');
INSERT INTO `sheet` VALUES ('DOLGAR', '2017211091', '经济学');
INSERT INTO `sheet` VALUES ('糯米团子', '2017211097', '经济学');
INSERT INTO `sheet` VALUES ('ضك دئ', '2017211117', '经济学');
INSERT INTO `sheet` VALUES ('Thus', '2017211140', '电子商务');
INSERT INTO `sheet` VALUES ('刺客', '2017211143', '电子商务');
INSERT INTO `sheet` VALUES ('∵you can you up艹', '2017211211', '工程管理');
INSERT INTO `sheet` VALUES ('☁☁☁', '2017211215', '工程管理');
INSERT INTO `sheet` VALUES ('delibal', '2017211254', '市场营销');
INSERT INTO `sheet` VALUES ('Blacksheep', '2017211256', '会计学');
INSERT INTO `sheet` VALUES ('张小疯子666', '2017211257', '市场营销');
INSERT INTO `sheet` VALUES ('当下～', '2017211258', '会计学');
INSERT INTO `sheet` VALUES ('Broken cocoon butterfly', '2017211259', '会计学');
INSERT INTO `sheet` VALUES ('王志强', '2017211296', '计算机科学与技术学院/人工智能学院');
INSERT INTO `sheet` VALUES ('10032', '2017211297', '市场营销专业');
INSERT INTO `sheet` VALUES ('短笛大魔王', '2017211306', '市场营销');
INSERT INTO `sheet` VALUES ('Aube', '2017211307', '工商管理');
INSERT INTO `sheet` VALUES ('Hollow', '2017211355', '会计学');
INSERT INTO `sheet` VALUES ('ξ翼弋', '2017211381', '市场营销');
INSERT INTO `sheet` VALUES ('、', '2017211402', '市场营销');
INSERT INTO `sheet` VALUES ('.', '2017211408', '市场营销');
INSERT INTO `sheet` VALUES ('落野', '2017211413', '会计学');
INSERT INTO `sheet` VALUES ('来日方长', '2017211416', '会计学');
INSERT INTO `sheet` VALUES ('不瘦到90不改名', '2017211417', '市场营销');
INSERT INTO `sheet` VALUES ('了反念你逼傻', '2017211454', '物流管理');
INSERT INTO `sheet` VALUES ('Pump   It', '2017211507', '物流管理');
INSERT INTO `sheet` VALUES ('給時間時間', '2017211509', '物流专业实验班');
INSERT INTO `sheet` VALUES ('缘仙', '2017211510', '物流管理');
INSERT INTO `sheet` VALUES ('慎独', '2017211525', '物流管理');
INSERT INTO `sheet` VALUES ('八二年的喜之郎', '2017211531', '物流管理');
INSERT INTO `sheet` VALUES ('珍惜', '2017211547', '物流管理');
INSERT INTO `sheet` VALUES ('三十四', '2017211573', '信息安全');
INSERT INTO `sheet` VALUES ('4.0', '2017211682', '信息安全');
INSERT INTO `sheet` VALUES ('史前巨嘤嘤怪', '2017211769', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('善醉易醒', '2017211773', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('勒司布洛斯', '2017211808', '智能科学与技术');
INSERT INTO `sheet` VALUES (NULL, '2017211815', '智能科学与技术');
INSERT INTO `sheet` VALUES ('LXY', '2017211849', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('。', '2017212017', '空间信息与数字技术');
INSERT INTO `sheet` VALUES ('至→荖♂不渝’', '2017212026', '计算机科学与技术卓越工程师班');
INSERT INTO `sheet` VALUES ('Jude', '2017212042', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('进击的小鱼', '2017212048', '计算机科学与技术卓越工程师班');
INSERT INTO `sheet` VALUES ('在路上', '2017212064', '计算机科学与技术卓越工程师班');
INSERT INTO `sheet` VALUES ('Cookies', '2017212164', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('路明非₆₆₆⁶⁶⁶', '2017212300', '生物医学工程');
INSERT INTO `sheet` VALUES ('fuf_high', '2017212310', '生物医学工程');
INSERT INTO `sheet` VALUES ('布加迪', '2017212323', '生物医学工程');
INSERT INTO `sheet` VALUES ('我唱我调', '2017212337', '生物医学工程');
INSERT INTO `sheet` VALUES ('En Taro Tassadar', '2017212341', '生物医学工程');
INSERT INTO `sheet` VALUES ('Hazel', '2017212405', '生物信息');
INSERT INTO `sheet` VALUES ('层楼误少年', '2017212416', '生物信息学');
INSERT INTO `sheet` VALUES ('單銫の琴键', '2017212439', '生物信息学');
INSERT INTO `sheet` VALUES ('小胖', '2017212440', '生物信息学');
INSERT INTO `sheet` VALUES ('下着雨的无锡', '2017212459', '生物信息学');
INSERT INTO `sheet` VALUES ('time is right', '2017212491', '知识产权');
INSERT INTO `sheet` VALUES (',..周川', '2017212707', '电气工程及其自动化');
INSERT INTO `sheet` VALUES ('°', '2017212727', '自动化');
INSERT INTO `sheet` VALUES ('丶苓', '2017212738', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('会吹口哨的戳戳', '2017212762', '测控技术与仪器');
INSERT INTO `sheet` VALUES ('良田', '2017212775', '测控技术与仪器');
INSERT INTO `sheet` VALUES ('Diablo', '2017212816', '电气工程及其自动化');
INSERT INTO `sheet` VALUES ('.net', '2017212847', '自动化专业卓越工程师师');
INSERT INTO `sheet` VALUES ('浪', '2017212933', '电气工程及其自动化');
INSERT INTO `sheet` VALUES ('不学好电分模电信号不改名', '2017212935', '电气工程及其自动化');
INSERT INTO `sheet` VALUES ('Lucky、', '2017212956', '物联网工程');
INSERT INTO `sheet` VALUES ('Hend', '2017212959', '物联网工程');
INSERT INTO `sheet` VALUES ('皮皮东', '2017212973', '物联网工程');
INSERT INTO `sheet` VALUES ('某的某某', '2017213050', '物联网工程');
INSERT INTO `sheet` VALUES ('C', '2017213064', '物联网工程');
INSERT INTO `sheet` VALUES ('Spring', '2017213081', '物联网工程');
INSERT INTO `sheet` VALUES ('查无此人', '2017213210', '社会体育指导与管理');
INSERT INTO `sheet` VALUES ('self', '2017213211', '社会体育指导与管理');
INSERT INTO `sheet` VALUES ('侦察兵', '2017213219', '社会体育指导与管理');
INSERT INTO `sheet` VALUES ('蒸蒸日上', '2017213385', '信息与计算科学');
INSERT INTO `sheet` VALUES ('…', '2017213386', '信息与计算科学');
INSERT INTO `sheet` VALUES ('我的头可不是面团捏的', '2017213428', '广播电视编导');
INSERT INTO `sheet` VALUES ('流白如墨', '2017213452', '广播电视编导');
INSERT INTO `sheet` VALUES ('淡    与    往', '2017213456', '广播电视编导');
INSERT INTO `sheet` VALUES ('LHMS', '2017213458', '广播电视编导');
INSERT INTO `sheet` VALUES ('雨影区☔️', '2017213464', '广播电视编导');
INSERT INTO `sheet` VALUES ('夜末天未亮', '2017213483', '广播电视编导');
INSERT INTO `sheet` VALUES ('青旅', '2017213491', '广播电视编导');
INSERT INTO `sheet` VALUES ('where u go i go', '2017213528', '广播电视编导');
INSERT INTO `sheet` VALUES ('CXR', '2017213576', '广播电视编导');
INSERT INTO `sheet` VALUES ('咋西哟', '2017213583', '广播电视编导');
INSERT INTO `sheet` VALUES ('传媒～左莹', '2017213584', '广播电视编导');
INSERT INTO `sheet` VALUES ('^_-', '2017213899', '视觉传达');
INSERT INTO `sheet` VALUES ('GHOST-Saxon Ray', '2017214020', '软件+英语');
INSERT INTO `sheet` VALUES ('女＝小鸡凤爪', '2017214036', '软件工程');
INSERT INTO `sheet` VALUES (']O[', '2017214050', '软件工程');
INSERT INTO `sheet` VALUES ('Invictus', '2017214069', '软件工程');
INSERT INTO `sheet` VALUES ('都变成负荷', '2017214071', '软件工程');
INSERT INTO `sheet` VALUES ('猪猪帆天下第一乖巧', '2017214077', '软件工程');
INSERT INTO `sheet` VALUES ('兜里面有怪兽', '2017214101', '软件工程专业');
INSERT INTO `sheet` VALUES ('风集云卷剑亦鸣', '2017214123', '软件工程');
INSERT INTO `sheet` VALUES ('月阳Harris', '2017214202', '软件工程');
INSERT INTO `sheet` VALUES ('柚子', '2017214203', '软件工程');
INSERT INTO `sheet` VALUES ('龟仙派', '2017214228', '软件工程学院');
INSERT INTO `sheet` VALUES ('芳华漫', '2017214253', '软件工程');
INSERT INTO `sheet` VALUES ('优秀大学生', '2017214304', '软件工程');
INSERT INTO `sheet` VALUES ('知非', '2017214311', '软件工程');
INSERT INTO `sheet` VALUES ('Inner Voice', '2017214343', '软件工程');
INSERT INTO `sheet` VALUES ('大包子', '2017214366', '软件工程');
INSERT INTO `sheet` VALUES ('最与初', '2017214443', '软件工程');
INSERT INTO `sheet` VALUES ('Paprika', '2017214451', '软件工程');
INSERT INTO `sheet` VALUES ('uYn', '2017214466', '软件工程学院');
INSERT INTO `sheet` VALUES ('Phospherus', '2017214492', '软件工程');
INSERT INTO `sheet` VALUES ('.', '2017214614', '先进制造大类');
INSERT INTO `sheet` VALUES ('未完的梦', '2017214705', '先进制造类');
INSERT INTO `sheet` VALUES ('不学好C51绝不改网名', '2017214777', '通信工程');
INSERT INTO `sheet` VALUES ('天、', '2017214809', '智能科学与技术');
INSERT INTO `sheet` VALUES ('Jass', '2017214830', '集成电路工程类');
INSERT INTO `sheet` VALUES ('猫科动物', '2017214957', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('。', '2018210137', '通信与信息工程学院');
INSERT INTO `sheet` VALUES ('江南~_~你的烟雨我的梦', '2018210139', '通信与信息类');
INSERT INTO `sheet` VALUES ('云深不知处', '2018210162', '通信与信息类');
INSERT INTO `sheet` VALUES ('Lone Ranger', '2018210205', '通信与信息类');
INSERT INTO `sheet` VALUES ('MY', '2018210293', '通信与信息工程');
INSERT INTO `sheet` VALUES ('七零八落い', '2018210450', '通信信息类');
INSERT INTO `sheet` VALUES ('沈霁', '2018210536', '电子工程类');
INSERT INTO `sheet` VALUES ('、、', '2018210740', '电子工程类');
INSERT INTO `sheet` VALUES ('图唐卡门—Homesick', '2018210756', '电子工程类电子信息');
INSERT INTO `sheet` VALUES ('星火自然', '2018210799', '光电信息科学与技术');
INSERT INTO `sheet` VALUES ('MissU', '2018210803', '光电工程学院');
INSERT INTO `sheet` VALUES ('.....我是............', '2018210804', '光电信息科学与技术工程');
INSERT INTO `sheet` VALUES ('啦啦啦', '2018210836', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('烟雨❄平生☬', '2018210842', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('future', '2018210845', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('免了，都懂', '2018210860', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('对味知音', '2018210862', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('婉美~~shunjian', '2018210863', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('静人静心 ✔', '2018210865', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('木啊', '2018210866', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('新一代青年', '2018210890', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('小羊驼的男朋友', '2018210904', '信息管理和信息系统');
INSERT INTO `sheet` VALUES ('空の雲が翻ってい', '2018210918', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('云遮月遮天', '2018210921', '信息管理与信息系统');
INSERT INTO `sheet` VALUES ('LY', '2018210935', '经济学');
INSERT INTO `sheet` VALUES ('L.✨', '2018210956', '经济学');
INSERT INTO `sheet` VALUES ('甘棠', '2018210999', '工程管理');
INSERT INTO `sheet` VALUES ('你看云时很近', '2018211023', '工程管理');
INSERT INTO `sheet` VALUES ('慕', '2018211027', '工程管理');
INSERT INTO `sheet` VALUES ('SUMMIT®巅峰', '2018211032', '工程管理');
INSERT INTO `sheet` VALUES ('牧之', '2018211072', '工商管理');
INSERT INTO `sheet` VALUES ('高德伟', '2018211073', '工商管理');
INSERT INTO `sheet` VALUES ('.Cyan', '2018211084', '信息技术会计实验班');
INSERT INTO `sheet` VALUES ('Jorki', '2018211088', '工商管理');
INSERT INTO `sheet` VALUES ('飘', '2018211098', '工商管理类');
INSERT INTO `sheet` VALUES ('悟空　', '2018211125', '信息技术会计');
INSERT INTO `sheet` VALUES ('丶', '2018211167', '工商管理');
INSERT INTO `sheet` VALUES ('征程.', '2018211168', '工商管理类');
INSERT INTO `sheet` VALUES ('苏晨♚', '2018211199', '工商管理');
INSERT INTO `sheet` VALUES ('下一站，秋名山', '2018211218', '电子商务大类');
INSERT INTO `sheet` VALUES ('山驴丶比', '2018211229', '电子商务大类');
INSERT INTO `sheet` VALUES ('Eveglow', '2018211244', '电子商务大类');
INSERT INTO `sheet` VALUES ('Small Teenager', '2018211255', '电子商务类');
INSERT INTO `sheet` VALUES ('Chéri', '2018211256', '电子商务');
INSERT INTO `sheet` VALUES ('N.✨', '2018211280', '电子商务');
INSERT INTO `sheet` VALUES ('有菁', '2018211328', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('山风', '2018211332', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('如也', '2018211335', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('一苇杭之', '2018211336', '计算机智能科学类');
INSERT INTO `sheet` VALUES ('小P孩です', '2018211343', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('梧桐^O^勿懂', '2018211369', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('凤兮凤兮', '2018211381', '计算机与智能科学');
INSERT INTO `sheet` VALUES ('来年陌生最亲某某', '2018211394', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('〆殇城ヾ', '2018211396', '计算机科学与技术学院');
INSERT INTO `sheet` VALUES ('木图木图', '2018211398', '计算机与智能科学');
INSERT INTO `sheet` VALUES ('砧声向晚', '2018211421', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('雨落心尘', '2018211438', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('转逝', '2018211440', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('小裤头四个洞', '2018211451', '计算机智能科学类');
INSERT INTO `sheet` VALUES ('如果', '2018211458', '计算机科学与技术专业');
INSERT INTO `sheet` VALUES ('清浊无人裁', '2018211475', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('亲爱的阿基米德', '2018211490', '计算机科学与技术学院/人工智能学院');
INSERT INTO `sheet` VALUES ('13.', '2018211496', '计算机');
INSERT INTO `sheet` VALUES ('宁静致远', '2018211498', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('Zero', '2018211502', '计算机科学与技术学院');
INSERT INTO `sheet` VALUES ('Solitario caminante', '2018211508', '计算机科学与技术卓越工程师班');
INSERT INTO `sheet` VALUES ('【Mirror】', '2018211518', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('若水穿尘', '2018211519', '计算机与智能科学');
INSERT INTO `sheet` VALUES ('江鸟', '2018211523', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('寒露', '2018211529', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('浅淡半生', '2018211531', '计算机科学与技术/人工智能学院');
INSERT INTO `sheet` VALUES ('沅芷湘兰', '2018211532', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('高数杀我', '2018211570', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('m\'Andrew', '2018211579', '计算机科学与技术专业');
INSERT INTO `sheet` VALUES ('以泉映梨花', '2018211582', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('韶光', '2018211585', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('狗子', '2018211586', '计算机科学与技术 人工智能');
INSERT INTO `sheet` VALUES ('苦瓜', '2018211596', '计算机科与智能科学');
INSERT INTO `sheet` VALUES ('DEVIL DOG', '2018211617', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('盘尼西林。', '2018211618', '智能科学类');
INSERT INTO `sheet` VALUES ('。。', '2018211619', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('Have you', '2018211632', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('小麻花儿', '2018211635', '计算机');
INSERT INTO `sheet` VALUES ('﹏Never', '2018211638', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('Hindsight', '2018211642', '计算机类');
INSERT INTO `sheet` VALUES ('霸霸', '2018211645', '计算机智能科学类');
INSERT INTO `sheet` VALUES ('lnln', '2018211651', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('luolin', '2018211653', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('不考过CET4不改名', '2018211654', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('北月', '2018211670', '计算机科学与技术学院');
INSERT INTO `sheet` VALUES ('冰川世纪。', '2018211673', '计算机与智能科学');
INSERT INTO `sheet` VALUES ('Ambitious', '2018211675', '计算机科学与技术学院/人工智能学院');
INSERT INTO `sheet` VALUES ('Malfurion', '2018211679', '计算机与智能科学');
INSERT INTO `sheet` VALUES ('四羟基合铝酸钠', '2018211682', '计算机科学与技术学院／人工智能学院');
INSERT INTO `sheet` VALUES ('鹿儿岛', '2018211683', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('...木...๑≡ω≡๑', '2018211685', '计算机智能科学类');
INSERT INTO `sheet` VALUES ('Invisible', '2018211693', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('旅行者', '2018211694', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('Cloudy', '2018211699', '计算机与智能科学');
INSERT INTO `sheet` VALUES ('◣八级圣骑士', '2018211714', '计算机');
INSERT INTO `sheet` VALUES ('暗里著迷✨', '2018211716', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('Solamish', '2018211717', '计算机科学与技术/人工智能学院');
INSERT INTO `sheet` VALUES ('S', '2018211718', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('无須終有', '2018211719', '计算机与智能科学');
INSERT INTO `sheet` VALUES ('Salty丶Sugar QAQ', '2018211721', '计算机科学与技术类');
INSERT INTO `sheet` VALUES ('Dreamer的萨萨', '2018211725', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('宫水', '2018211731', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('Chunibyonh', '2018211739', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('Indulgence.', '2018211740', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('长安', '2018211763', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('柒', '2018211767', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('坠入潮汐', '2018211768', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('Namtso', '2018211770', '计算机');
INSERT INTO `sheet` VALUES ('C美滋', '2018211774', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('everything freezing', '2018211777', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('晴鸟Θ知乐', '2018211779', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('再这样就GG了', '2018211787', '计算机');
INSERT INTO `sheet` VALUES ('残忆', '2018211795', '计算机科学与技术');
INSERT INTO `sheet` VALUES ('心想事成', '2018211799', '计算机科学与技术/人工智能学院');
INSERT INTO `sheet` VALUES ('D', '2018211800', '计算机类');
INSERT INTO `sheet` VALUES ('Life after life', '2018211804', '计算机技术与科学');
INSERT INTO `sheet` VALUES ('桐生战兔', '2018211814', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('Xuany', '2018211822', '计算机与智能科学类');
INSERT INTO `sheet` VALUES ('ミ无言歌、', '2018211829', '计算机科学与技术卓越工程师班');
INSERT INTO `sheet` VALUES ('梦想', '2018211856', '计算机类');
INSERT INTO `sheet` VALUES ('相濡以沫', '2018211861', '计算机科学与技术学院/人工智能学院');
INSERT INTO `sheet` VALUES ('miracle', '2018211928', '英语专业');
INSERT INTO `sheet` VALUES ('无名氏', '2018211931', '英语类');
INSERT INTO `sheet` VALUES ('Mephisto', '2018211997', '生物医学工程');
INSERT INTO `sheet` VALUES ('觞梓、淡雨如愁', '2018212013', '生物信息学院');
INSERT INTO `sheet` VALUES ('云深不知处', '2018212022', '生物医学');
INSERT INTO `sheet` VALUES ('Gau', '2018212028', '生物医学工程');
INSERT INTO `sheet` VALUES ('故人。', '2018212034', '生物信息学');
INSERT INTO `sheet` VALUES ('　', '2018212043', '生物信息学');
INSERT INTO `sheet` VALUES ('小智', '2018212053', '生物信息');
INSERT INTO `sheet` VALUES ('俊河', '2018212054', '生物信息');
INSERT INTO `sheet` VALUES ('就是我呀？！', '2018212082', '生物信息学');
INSERT INTO `sheet` VALUES ('独立寒秋', '2018212097', '生物信息学');
INSERT INTO `sheet` VALUES ('落', '2018212131', '医学信息工程');
INSERT INTO `sheet` VALUES ('silly fox', '2018212151', '医学信息工程');
INSERT INTO `sheet` VALUES ('SD～～', '2018212152', '医学信息工程');
INSERT INTO `sheet` VALUES ('临雨', '2018212153', '医学信息工程');
INSERT INTO `sheet` VALUES ('陽', '2018212210', '网络空间安全与信息法学院');
INSERT INTO `sheet` VALUES ('燎原', '2018212292', '网络安全类');
INSERT INTO `sheet` VALUES ('爱老婆', '2018212486', '机器人工程实验班');
INSERT INTO `sheet` VALUES ('江', '2018212499', '自动化专业');
INSERT INTO `sheet` VALUES ('早西', '2018212508', '电气与自动化');
INSERT INTO `sheet` VALUES ('｀', '2018212542', '电气工程及其自动化');
INSERT INTO `sheet` VALUES ('刘涛', '2018212544', '电气工程及其自动化');
INSERT INTO `sheet` VALUES ('伊斯坦布尔', '2018212566', '自动化与电气工程');
INSERT INTO `sheet` VALUES ('今天还要掉头发吗', '2018212567', '自动化与电气工程');
INSERT INTO `sheet` VALUES ('on', '2018212579', '自动化');
INSERT INTO `sheet` VALUES ('一般一半', '2018212587', '机器人工程');
INSERT INTO `sheet` VALUES ('Z', '2018212591', '自动化与电气工程类');
INSERT INTO `sheet` VALUES ('嗯', '2018212596', '自动化');
INSERT INTO `sheet` VALUES ('⠌', '2018212598', '电气工程与自动化');
INSERT INTO `sheet` VALUES ('Autism北辰。', '2018212658', '机器人工程');
INSERT INTO `sheet` VALUES ('Coolest', '2018212694', '自动化与电气工程');
INSERT INTO `sheet` VALUES ('穿小裙裙的葡萄', '2018212731', '自动化及其电气工程');
INSERT INTO `sheet` VALUES ('刚睡醒的熊猫', '2018212736', '自动化');
INSERT INTO `sheet` VALUES ('夜    幕', '2018212739', '自动化大类');
INSERT INTO `sheet` VALUES ('孟三爷', '2018212740', '自动化机器人');
INSERT INTO `sheet` VALUES ('仰起头“”微笑', '2018212795', '自动化与电气工程');
INSERT INTO `sheet` VALUES ('徐凤年', '2018212809', '自动化与电气工程');
INSERT INTO `sheet` VALUES ('Cryst41', '2018212811', '电气工程及其自动化');
INSERT INTO `sheet` VALUES ('山渐青', '2018212832', '自动化');
INSERT INTO `sheet` VALUES ('冬沫', '2018212875', '自动化及电气工程类');
INSERT INTO `sheet` VALUES ('拾荒者', '2018212899', '自动化及其电气工程类');
INSERT INTO `sheet` VALUES ('Observer', '2018212914', '机器人工程');
INSERT INTO `sheet` VALUES ('请叫我李半瞎', '2018212915', '自动化及其电气工程');
INSERT INTO `sheet` VALUES ('WuJiTa', '2018212919', '自动化与电气工程类');
INSERT INTO `sheet` VALUES ('木易', '2018212940', '自动化与电气工程类');
INSERT INTO `sheet` VALUES ('↗尐呔孓', '2018212956', '机器人工程专业');
INSERT INTO `sheet` VALUES ('(                                )', '2018212968', '自动化与电气工程');
INSERT INTO `sheet` VALUES ('可乐~随乐', '2018212970', '自动化及电气工程');
INSERT INTO `sheet` VALUES ('春风不识路', '2018212971', '自动化及其电气工程');
INSERT INTO `sheet` VALUES ('三十年西风', '2018213009', '自动化与电气工程');
INSERT INTO `sheet` VALUES ('水上月。', '2018213062', '自动化与电气工程类');
INSERT INTO `sheet` VALUES ('积极分子', '2018213074', '社会体育管理与指导');
INSERT INTO `sheet` VALUES ('避事主义者', '2018213156', '应用物理');
INSERT INTO `sheet` VALUES ('——。', '2018213159', '应用物理学');
INSERT INTO `sheet` VALUES ('Keats', '2018213210', '数学与大数据');
INSERT INTO `sheet` VALUES ('尔本', '2018213211', '数学与信息技术类');
INSERT INTO `sheet` VALUES ('18', '2018213229', '社会体育指导与管理');
INSERT INTO `sheet` VALUES ('快乐的人', '2018213249', '数学与信息技术类');
INSERT INTO `sheet` VALUES ('彧', '2018213268', '数学类');
INSERT INTO `sheet` VALUES ('清汤', '2018213277', '数学与信息技术类');
INSERT INTO `sheet` VALUES ('interesting', '2018213281', '数学与信息技术');
INSERT INTO `sheet` VALUES ('焱の枫', '2018213282', '数学与信息技术类');
INSERT INTO `sheet` VALUES ('阿b', '2018213286', '数学与信息技术');
INSERT INTO `sheet` VALUES ('♚缘起↗缘灭', '2018213288', '数学与大数据科学');
INSERT INTO `sheet` VALUES ('伶俜', '2018213482', '广编电视编导');
INSERT INTO `sheet` VALUES ('♚ o﹎﹎', '2018213879', '软件工程');
INSERT INTO `sheet` VALUES ('Y_X', '2018213893', '软件工程');
INSERT INTO `sheet` VALUES ('猷£彧', '2018214028', '软件工程');
INSERT INTO `sheet` VALUES ('东曦', '2018214162', '软件工程');
INSERT INTO `sheet` VALUES ('魔法少女郭德纲丶', '2018214170', '软件工程');
INSERT INTO `sheet` VALUES ('佐伊卡赞', '2018214174', '软件工程');
INSERT INTO `sheet` VALUES ('Cherry', '2018214194', '软件工程');
INSERT INTO `sheet` VALUES ('〖青听】', '2018214228', '软件工程');
INSERT INTO `sheet` VALUES ('咯努乾杯 (๑]؂[๑）否', '2018214264', '软件工程');
INSERT INTO `sheet` VALUES ('(ಡωಡ)～(*^ω^*)', '2018214387', '先进制造类');
INSERT INTO `sheet` VALUES ('夏家仲夏', '2018214440', '先进制造');
INSERT INTO `sheet` VALUES ('铭＾心～鴤＾槱', '2018214461', '先进制造类');
INSERT INTO `sheet` VALUES ('唯心、永恒', '2018214567', '先进制造工程学院');
INSERT INTO `sheet` VALUES ('。，，', '2018214576', '先进制造大类');
INSERT INTO `sheet` VALUES ('孤独患者。', '2018214577', '先进制造');
INSERT INTO `sheet` VALUES ('Natural person', '2018214659', '集成电路工程');
INSERT INTO `sheet` VALUES ('Star ashes', '2018214677', '集成电路工程');
INSERT INTO `sheet` VALUES ('心的跳动', '2018214838', '集成电路工程专业');
INSERT INTO `sheet` VALUES ('远在咫尺', '2018214849', '邮政工程');
INSERT INTO `sheet` VALUES ('QL', '2018214853', '邮政工程');
INSERT INTO `sheet` VALUES ('breeze', '2018214863', '邮政工程');
INSERT INTO `sheet` VALUES ('Claptrap', '2018214869', '邮政工程');
INSERT INTO `sheet` VALUES ('木子木木', '2018214874', '邮政工程');
INSERT INTO `sheet` VALUES ('Leonor', '2018214877', '邮政工程');
INSERT INTO `sheet` VALUES ('冰蕊', '2018214880', '邮政工程');
INSERT INTO `sheet` VALUES ('橡子', '2018214881', '邮政工程');
INSERT INTO `sheet` VALUES ('pyy    \\', '2018214882', '邮政工程');
INSERT INTO `sheet` VALUES ('Beauty、异乡人', '2018214891', '邮政工程');
INSERT INTO `sheet` VALUES ('岱玹', '2018214982', '电子信息工程');
INSERT INTO `sheet` VALUES ('Harry Porcheng', '2018215040', '软件工程');
INSERT INTO `sheet` VALUES ('绝对', '201822284', '网络安全');
INSERT INTO `sheet` VALUES ('-', '2816212018', '智能科学与技术专业');
INSERT INTO `sheet` VALUES ('度。', '4121805', '计算机科学与技术学院');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `student` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `state` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`student`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (9, '曾靖然', '27', 'fernando', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'zengjingran', '199916');
INSERT INTO `user` VALUES (2, 'quxiaoli', '1998116');
INSERT INTO `user` VALUES (3, 'zengwenguang', '1999123');
INSERT INTO `user` VALUES (4, 'liukecheng', '200023');

SET FOREIGN_KEY_CHECKS = 1;
