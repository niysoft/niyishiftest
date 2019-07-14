/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : mbti

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-07-14 01:20:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `Question` varchar(255) DEFAULT NULL,
  `Dimension` varchar(255) DEFAULT NULL,
  `Direction` varchar(255) DEFAULT NULL,
  `Meaning` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('You find it takes effort to introduce yourself to other people.', 'EI', '1', 'I', '1');
INSERT INTO `questions` VALUES ('You consider yourself more practical than creative.', 'SN', '-1', 'S', '2');
INSERT INTO `questions` VALUES ('Winning a debate matters less to you than making sure no one gets upset.', 'TF', '1', 'F', '3');
INSERT INTO `questions` VALUES ('You get energized going to social events that involve many interactions.', 'EI', '-1', 'E', '4');
INSERT INTO `questions` VALUES ('You often spend time exploring unrealistic and impractical yet intriguing ideas.', 'SN', '1', 'N', '5');
INSERT INTO `questions` VALUES ('Deadlines seem to you to be of relative rather than absolute importance.', 'JP', '1', 'P', '6');
INSERT INTO `questions` VALUES ('Logic is usually more important than heart when it comes to making important decisions.', 'TF', '-1', 'T', '7');
INSERT INTO `questions` VALUES ('Your home and work environments are quite tidy.', 'JP', '-1', 'J', '8');
INSERT INTO `questions` VALUES ('You do not mind being at the center of attention.', 'EI', '-1', 'E', '9');
INSERT INTO `questions` VALUES ('Keeping your options open is more important than having a to-do list.', 'JP', '1', 'P', '10');

-- ----------------------------
-- Table structure for results
-- ----------------------------
DROP TABLE IF EXISTS `results`;
CREATE TABLE `results` (
  `question_id` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of results
-- ----------------------------
INSERT INTO `results` VALUES ('1', '1', '7', '1');
INSERT INTO `results` VALUES ('2', '1', '7', '2');
INSERT INTO `results` VALUES ('3', '2', '7', '3');
INSERT INTO `results` VALUES ('4', '2', '7', '4');
INSERT INTO `results` VALUES ('5', '3', '7', '5');
INSERT INTO `results` VALUES ('6', '3', '7', '6');
INSERT INTO `results` VALUES ('7', '4', '7', '7');
INSERT INTO `results` VALUES ('8', '4', '7', '8');
INSERT INTO `results` VALUES ('9', '5', '7', '9');
INSERT INTO `results` VALUES ('10', '5', '7', '10');
INSERT INTO `results` VALUES ('1', '1', '9', '11');
INSERT INTO `results` VALUES ('2', '1', '9', '12');
INSERT INTO `results` VALUES ('3', '2', '9', '13');
INSERT INTO `results` VALUES ('4', '2', '9', '14');
INSERT INTO `results` VALUES ('5', '3', '9', '15');
INSERT INTO `results` VALUES ('6', '3', '9', '16');
INSERT INTO `results` VALUES ('7', '4', '9', '17');
INSERT INTO `results` VALUES ('8', '4', '9', '18');
INSERT INTO `results` VALUES ('9', '5', '9', '19');
INSERT INTO `results` VALUES ('10', '5', '9', '20');
INSERT INTO `results` VALUES ('1', '1', '10', '21');
INSERT INTO `results` VALUES ('2', '1', '10', '22');
INSERT INTO `results` VALUES ('3', '2', '10', '23');
INSERT INTO `results` VALUES ('4', '2', '10', '24');
INSERT INTO `results` VALUES ('5', '3', '10', '25');
INSERT INTO `results` VALUES ('6', '3', '10', '26');
INSERT INTO `results` VALUES ('7', '4', '10', '27');
INSERT INTO `results` VALUES ('8', '4', '10', '28');
INSERT INTO `results` VALUES ('9', '5', '10', '29');
INSERT INTO `results` VALUES ('10', '7', '10', '30');
INSERT INTO `results` VALUES ('1', '1', '11', '31');
INSERT INTO `results` VALUES ('2', '1', '11', '32');
INSERT INTO `results` VALUES ('3', '2', '11', '33');
INSERT INTO `results` VALUES ('4', '2', '11', '34');
INSERT INTO `results` VALUES ('5', '3', '11', '35');
INSERT INTO `results` VALUES ('6', '3', '11', '36');
INSERT INTO `results` VALUES ('7', '4', '11', '37');
INSERT INTO `results` VALUES ('8', '4', '11', '38');
INSERT INTO `results` VALUES ('9', '5', '11', '39');
INSERT INTO `results` VALUES ('10', '7', '11', '40');
INSERT INTO `results` VALUES ('1', '1', '12', '41');
INSERT INTO `results` VALUES ('2', '1', '12', '42');
INSERT INTO `results` VALUES ('3', '2', '12', '43');
INSERT INTO `results` VALUES ('4', '2', '12', '44');
INSERT INTO `results` VALUES ('5', '3', '12', '45');
INSERT INTO `results` VALUES ('6', '3', '12', '46');
INSERT INTO `results` VALUES ('7', '4', '12', '47');
INSERT INTO `results` VALUES ('8', '4', '12', '48');
INSERT INTO `results` VALUES ('9', '5', '12', '49');
INSERT INTO `results` VALUES ('10', '7', '12', '50');
INSERT INTO `results` VALUES ('1', '1', '13', '51');
INSERT INTO `results` VALUES ('2', '1', '13', '52');
INSERT INTO `results` VALUES ('3', '2', '13', '53');
INSERT INTO `results` VALUES ('4', '2', '13', '54');
INSERT INTO `results` VALUES ('5', '3', '13', '55');
INSERT INTO `results` VALUES ('6', '3', '13', '56');
INSERT INTO `results` VALUES ('7', '4', '13', '57');
INSERT INTO `results` VALUES ('8', '4', '13', '58');
INSERT INTO `results` VALUES ('9', '5', '13', '59');
INSERT INTO `results` VALUES ('10', '7', '13', '60');
INSERT INTO `results` VALUES ('1', '1', '14', '61');
INSERT INTO `results` VALUES ('2', '1', '14', '62');
INSERT INTO `results` VALUES ('3', '2', '14', '63');
INSERT INTO `results` VALUES ('4', '2', '14', '64');
INSERT INTO `results` VALUES ('5', '3', '14', '65');
INSERT INTO `results` VALUES ('6', '3', '14', '66');
INSERT INTO `results` VALUES ('7', '4', '14', '67');
INSERT INTO `results` VALUES ('8', '4', '14', '68');
INSERT INTO `results` VALUES ('9', '5', '14', '69');
INSERT INTO `results` VALUES ('10', '7', '14', '70');
INSERT INTO `results` VALUES ('1', '1', '15', '71');
INSERT INTO `results` VALUES ('2', '1', '15', '72');
INSERT INTO `results` VALUES ('3', '2', '15', '73');
INSERT INTO `results` VALUES ('4', '2', '15', '74');
INSERT INTO `results` VALUES ('5', '3', '15', '75');
INSERT INTO `results` VALUES ('6', '3', '15', '76');
INSERT INTO `results` VALUES ('7', '4', '15', '77');
INSERT INTO `results` VALUES ('8', '4', '15', '78');
INSERT INTO `results` VALUES ('9', '5', '15', '79');
INSERT INTO `results` VALUES ('10', '7', '15', '80');
INSERT INTO `results` VALUES ('1', '1', '16', '81');
INSERT INTO `results` VALUES ('2', '2', '16', '82');
INSERT INTO `results` VALUES ('3', '3', '16', '83');
INSERT INTO `results` VALUES ('4', '4', '16', '84');
INSERT INTO `results` VALUES ('5', '5', '16', '85');
INSERT INTO `results` VALUES ('6', '6', '16', '86');
INSERT INTO `results` VALUES ('7', '7', '16', '87');
INSERT INTO `results` VALUES ('8', '6', '16', '88');
INSERT INTO `results` VALUES ('9', '5', '16', '89');
INSERT INTO `results` VALUES ('10', '1', '16', '90');
INSERT INTO `results` VALUES ('1', '1', '17', '91');
INSERT INTO `results` VALUES ('2', '2', '17', '92');
INSERT INTO `results` VALUES ('3', '2', '17', '93');
INSERT INTO `results` VALUES ('4', '2', '17', '94');
INSERT INTO `results` VALUES ('5', '2', '17', '95');
INSERT INTO `results` VALUES ('6', '2', '17', '96');
INSERT INTO `results` VALUES ('7', '2', '17', '97');
INSERT INTO `results` VALUES ('8', '2', '17', '98');
INSERT INTO `results` VALUES ('9', '2', '17', '99');
INSERT INTO `results` VALUES ('10', '2', '17', '100');
INSERT INTO `results` VALUES ('1', '1', '18', '101');
INSERT INTO `results` VALUES ('2', '2', '18', '102');
INSERT INTO `results` VALUES ('3', '2', '18', '103');
INSERT INTO `results` VALUES ('4', '2', '18', '104');
INSERT INTO `results` VALUES ('5', '2', '18', '105');
INSERT INTO `results` VALUES ('6', '2', '18', '106');
INSERT INTO `results` VALUES ('7', '2', '18', '107');
INSERT INTO `results` VALUES ('8', '2', '18', '108');
INSERT INTO `results` VALUES ('9', '2', '18', '109');
INSERT INTO `results` VALUES ('10', '2', '18', '110');
INSERT INTO `results` VALUES ('1', '1', '19', '111');
INSERT INTO `results` VALUES ('2', '2', '19', '112');
INSERT INTO `results` VALUES ('3', '2', '19', '113');
INSERT INTO `results` VALUES ('4', '2', '19', '114');
INSERT INTO `results` VALUES ('5', '2', '19', '115');
INSERT INTO `results` VALUES ('6', '2', '19', '116');
INSERT INTO `results` VALUES ('7', '2', '19', '117');
INSERT INTO `results` VALUES ('8', '2', '19', '118');
INSERT INTO `results` VALUES ('9', '2', '19', '119');
INSERT INTO `results` VALUES ('10', '2', '19', '120');
INSERT INTO `results` VALUES ('1', '4', '20', '121');
INSERT INTO `results` VALUES ('2', '4', '20', '122');
INSERT INTO `results` VALUES ('3', '3', '20', '123');
INSERT INTO `results` VALUES ('4', '2', '20', '124');
INSERT INTO `results` VALUES ('5', '1', '20', '125');
INSERT INTO `results` VALUES ('6', '6', '20', '126');
INSERT INTO `results` VALUES ('7', '1', '20', '127');
INSERT INTO `results` VALUES ('8', '3', '20', '128');
INSERT INTO `results` VALUES ('9', '2', '20', '129');
INSERT INTO `results` VALUES ('10', '1', '20', '130');
INSERT INTO `results` VALUES ('1', '4', '21', '131');
INSERT INTO `results` VALUES ('2', '4', '21', '132');
INSERT INTO `results` VALUES ('3', '3', '21', '133');
INSERT INTO `results` VALUES ('4', '2', '21', '134');
INSERT INTO `results` VALUES ('5', '1', '21', '135');
INSERT INTO `results` VALUES ('6', '6', '21', '136');
INSERT INTO `results` VALUES ('7', '1', '21', '137');
INSERT INTO `results` VALUES ('8', '3', '21', '138');
INSERT INTO `results` VALUES ('9', '2', '21', '139');
INSERT INTO `results` VALUES ('10', '1', '21', '140');
INSERT INTO `results` VALUES ('1', '1', '22', '141');
INSERT INTO `results` VALUES ('2', '2', '22', '142');
INSERT INTO `results` VALUES ('9', '1', '23', '143');
INSERT INTO `results` VALUES ('10', '1', '23', '144');
INSERT INTO `results` VALUES ('9', '1', '24', '145');
INSERT INTO `results` VALUES ('10', '1', '24', '146');
INSERT INTO `results` VALUES ('9', '1', '25', '147');
INSERT INTO `results` VALUES ('10', '1', '25', '148');
INSERT INTO `results` VALUES ('9', '1', '26', '149');
INSERT INTO `results` VALUES ('10', '1', '26', '150');
INSERT INTO `results` VALUES ('9', '1', '27', '151');
INSERT INTO `results` VALUES ('10', '1', '27', '152');
INSERT INTO `results` VALUES ('9', '2', '28', '153');
INSERT INTO `results` VALUES ('10', '1', '28', '154');
INSERT INTO `results` VALUES ('9', '2', '29', '155');
INSERT INTO `results` VALUES ('10', '2', '29', '156');
INSERT INTO `results` VALUES ('9', '2', '30', '157');
INSERT INTO `results` VALUES ('10', '1', '30', '158');
INSERT INTO `results` VALUES ('9', '1', '31', '159');
INSERT INTO `results` VALUES ('10', '2', '31', '160');
INSERT INTO `results` VALUES ('1', '1', '32', '161');
INSERT INTO `results` VALUES ('2', '2', '32', '162');
INSERT INTO `results` VALUES ('3', '2', '32', '163');
INSERT INTO `results` VALUES ('4', '3', '32', '164');
INSERT INTO `results` VALUES ('5', '3', '32', '165');
INSERT INTO `results` VALUES ('6', '4', '32', '166');
INSERT INTO `results` VALUES ('7', '1', '32', '167');
INSERT INTO `results` VALUES ('8', '4', '32', '168');
INSERT INTO `results` VALUES ('9', '2', '32', '169');
INSERT INTO `results` VALUES ('10', '5', '32', '170');
INSERT INTO `results` VALUES ('1', '1', '33', '171');
INSERT INTO `results` VALUES ('2', '4', '33', '172');
INSERT INTO `results` VALUES ('3', '2', '33', '173');
INSERT INTO `results` VALUES ('4', '7', '33', '174');
INSERT INTO `results` VALUES ('5', '7', '33', '175');
INSERT INTO `results` VALUES ('6', '5', '33', '176');
INSERT INTO `results` VALUES ('7', '5', '33', '177');
INSERT INTO `results` VALUES ('8', '5', '33', '178');
INSERT INTO `results` VALUES ('9', '5', '33', '179');
INSERT INTO `results` VALUES ('10', '5', '33', '180');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'talk@havypage.com');
INSERT INTO `users` VALUES ('32', 'niyi@synnods.com');
INSERT INTO `users` VALUES ('33', 'khadijatolawale@gmail.com');
