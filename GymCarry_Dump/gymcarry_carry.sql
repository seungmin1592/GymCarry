CREATE DATABASE  IF NOT EXISTS `gymcarry` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gymcarry`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: mysql205.cszw5wiaeg6n.us-east-2.rds.amazonaws.com    Database: gymcarry
-- ------------------------------------------------------
-- Server version	8.0.23

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `carry`
--

DROP TABLE IF EXISTS `carry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carry` (
  `CRIDX` int NOT NULL AUTO_INCREMENT COMMENT '캐리IDX',
  `JOINKEY_STATUS` varchar(10) DEFAULT '0' COMMENT '인증키 여부',
  `JOINKEY` varchar(10) DEFAULT NULL COMMENT '인증키 저장',
  `CRPHOTO` varchar(50) DEFAULT 'photo2.png' COMMENT '캐리사진',
  `CRBFPHOTO` varchar(50) DEFAULT 'photo2.png' COMMENT '캐리 바디프로필 사진',
  `CREMAIL` varchar(30) NOT NULL COMMENT '캐리아이디',
  `CRPW` varchar(100) NOT NULL COMMENT '비밀번호',
  `CRNAME` varchar(50) DEFAULT NULL COMMENT '캐리실명',
  `CRNICK` varchar(50) DEFAULT NULL COMMENT '캐리닉네임',
  `CRGENDER` varchar(5) DEFAULT NULL COMMENT '성별',
  `CRPHONE` varchar(50) DEFAULT NULL COMMENT '캐리연락처',
  `CRINTRO` text COMMENT '소갯말',
  `CRDEPART` varchar(10) DEFAULT NULL COMMENT '전문분야',
  `CRFIELD` varchar(10) DEFAULT NULL COMMENT '종목',
  `PLACEIDX` int DEFAULT NULL COMMENT '플레이스IDX',
  `CRPLACE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CRIDX`),
  KEY `FK_PLACE_TO_CARRY` (`PLACEIDX`),
  CONSTRAINT `FK_PLACE_TO_CARRY` FOREIGN KEY (`PLACEIDX`) REFERENCES `place` (`PLACEIDX`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='캐리정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carry`
--

LOCK TABLES `carry` WRITE;
/*!40000 ALTER TABLE `carry` DISABLE KEYS */;
INSERT INTO `carry` VALUES (1,'1','42562666','tmdals1@nate.com1632472080976.jpg','1632473085125.jpg','tmdals1@nate.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','설현석','설현석','남자','01019152456','안녕하세요. PT팀장 『카일(Kyle)』 송현민 트레이너 입니다. \r\n\r\n가족처럼, 부모님이나 형제를 지도한다는 마음을 가지고 진심을 다해 수업을 진행합니다. \r\n\r\n선명한 복근, 완벽한 S라인을 만들기 위해서만 운동이 필요한 게 아닙니다. 기본적으로 \'건강\'하기 위해서 운동이 필요합니다. 몸을 건강하게 만들기 위해서는 스트레스 받지 않으면서 꾸준히 운동 할 수 있는 〔운동습관〕을 만드는 게 가장 중요합니다. \r\n\r\n회원님들이 생각하시는 불안 요소를 없애면서 운동을 지도합니다. 어떤 동작을 할 때 자세가 안나오면은 많은 회원님들이 본인의 몸을 탓하며 자책을 하곤 합니다. 하지만 그건 회원님의 몸에 문제가 있어서가 아니라 올바른 동작을 하기 위해 필요한 근육이 아직은 생성이 안되었기 때문입니다. \r\n운동만을 강요하는 PT 수업이 아닌 회원님이 몸과 자세와 운동에 대하여 잘 이해할 수 있는 수업을 진행하겠습니다. \r\n\r\n건강을 잃으면 모든 것을 잃습니다. 운동의 목적은 건강입니다.   \r\n\r\n여러분의 건강한 삶을 위해 운동 파트너, 건강 주치의가 되어 드리겠습니다!',NULL,'헬스',20,'우리짐 홍대점'),(2,'1','25564543','tmdals2@nate.com1632472156132.jpg','1632473196285.jpg','tmdals2@nate.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','안대영','안대영','남자','01074405872','안녕하세요, 윤덕희 트레이너입니다. \r\n\r\n■ 키 176cm, 몸무게 61kg에서 7년 정도 운동해서, 대회 체중 몸무게 75kg까지 벌크업을 했습니다.\r\n\r\n■ 몸이 좋아지고 싶은 마음과 몸 관리가 어려워서 스트레스 받는다는 거 누구보다 잘 알고 있습니다.\r\n\r\n■ 제 몸을 성장 시킨 과정과 많은 다이어트 경험을 통한 노하우로 본인에게 맞는 운동법, 식단을 알려드리며 어느 헬스장을 가서도 능동적으로 운동할 수 있고 자기 관리를 할 수 있게 도와드리겠습니다.\r\n\r\n■ 3개월 이상 피티를 받아보셨지만 변화가 없던 분들 전과 다른 확실한 변화 노동이 아닌 정확한 운동을 배울 수 있게 도와드리겠습니다.\r\n\r\n■ 기본적인 교정 불균형과 결림 현상이 심하신 분들 웨이트 트레이닝만으로 잡아드리겠습니다.\r\n\r\n??‍♂️ 남성분: 멸치탈출, 비만탈출, 프로필준비(바디프로필 전액 지원), 선수준비\r\n\r\n??‍♀️ 여성분: 엉덩이(힙업), 허리라인, 어깨라인, 프로필준비\r\n\r\n확실하게 도와드리겠습니다. 감사합니다.','바디프로필','헬스',28,'짐라이트'),(3,'1','72244741','gksdkfma80@naver.com1632472162133.jpeg','1632473088408.jpeg','gksdkfma80@naver.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','김아름','김아름','여자','01044441111','넘어지는대로, 흔들리는대로 연습하실 수 있게. 제가 먼저 망가질거에요! 저와는 즐거운 요가를 경험하셨으면 합니다!\r\n\r\n\r\n\r\n?‍♂️ 이런 분께 추천해요\r\n\r\n▪ 몸을 움직이는 것은 귀찮거나 피곤한 분\r\n\r\n▪ 남의 눈치보지 않고 맘편히 요가해보고 싶은 분!\r\n\r\n\r\n\r\n? 수업 분위기 중계\r\n\r\n▪  낯선 요가용어만 툭툭 던지지 않는다! 옆사람 보지 않아도 따라할 수 있는 쉽고 직관적인 설명이 특징.\r\n\r\n▪  선생님 부터 편안한 모습을 보여주니, 부끄러움 \'제로\'. 눈치보지 않고 제대로 연습할 수 있는 시간.\r\n\r\n? 요가스타일\r\n\r\n▶ 하타, 빈야사 ㅣ클릭해서 알아보세요!\r\n\r\n \r\n\r\n▪ 완벽한 요가 동작을 만들기보다, 구석구석 올바른 몸 사용법을 배워요.\r\n\r\n▪ 몸을 건강하고 바르게 만들어가는 것의 \'재미\'를 안내합니다!\r\n\r\n? 수련 난이도와 강도\r\n▪ 난이도 : 초급\r\n\r\n수련 기간이 3개월 미만이라면 적합해요.\r\n\r\n \r\n\r\n▪ 강도 : 2~3단계\r\n\r\n개인차가 있을수 있으나, 금방 마를 가벼운 땀이 날 수 있어요','재활/통증케어','요가',253,'정원요가테라피'),(4,'1','17053016','tmdals3@nate.com1632482294809.jpg','1632473315300.jpg','tmdals3@nate.com','756bc47cb5215dc3329ca7e1f7be33a2dad68990bb94b76d90aa07f4e44a233a','황상욱','황상욱','남자','01000000002','안녕하세요~ 파크짐 허부건 트레이너입니다!\r\n\r\n1) 레슨 종료시까지 강사 변경 없는 전속 계약 시스템!\r\n2) 50분의 알찬레슨, 탄력적인 스케줄!\r\n3) 레슨효과 책임제!\r\n\r\n--------------\r\n\r\n안녕하세요. 허부건 트레이너입니다.\r\n\r\n학창시절엔 마른 몸을 살아오다 운동으로 지금의 체형을 가지게 되었습니다. 초기에는 혼자 운동하다보니 잘못된 자세와 무게로 허리디스크가 생겨 고생도 많이 했습니다. \r\n\r\n수년간의 시행착오와 트레이닝으로 현재는 통증 없이 운동하고 있고, 제 경험을 바탕으로 트레이닝 지도를 하고 있습니다.\r\n\r\n\"회원님이 목표를 달성하시는 것이 제 가장 큰 기쁨입니다. 변화를 위해 저를 찾으세요. \"','재활/통증케어','헬스',188,'파크짐 충정로점'),(6,'1','35445071','tmdals4@nate.com1632472258425.jpg','1632473480996.jpg','tmdals4@nate.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','장창현','장창현','남자','01074405822','안녕하세요!  헬스보이짐 대표 이태훈입니다!\r\n\r\n이번에 오픈하여 신규회원님을 모집하고있습니다\r\n\r\n저는 이전에 스x짐이라는 대형헬스장에서 회원보유수가 제일  많은 팀장으로 일하고 있었습니다. \r\n하지만 회원님의 보유 수가 많아지면서, 계속적인 관리와 집중도가 떨어지게 되었습니다. \r\n그래서 이번에 제가 대표가 되어서 회원 보유수를 낮추고 회원님 한분한분 좀 더 디테일한 트레이닝과 관리를 해드리고자 오픈하게 되었습니다.\r\n\r\n﻿\r\nPT를 하기에 앞서 한번도 수업 받아보지 않은 선생님, 오늘 얼굴 처음 본 선생님.\r\n무엇을 믿고 적지 않은 돈을 투자하시나요?\r\n운동을 시작하시고자 하지만,그전에 앞서 많은 고민을 가지고 있는 회원님들을 위해,\r\n 고민을 해결해드리고자합니다.\r\n1:1 체험 OT를 통해 내 체성분 상태는 어떤 상태이며,\r\n근육은 어디가 약하고, 그로 인해 어떠한 문제가 생기는지.\r\n그 문제점을 보완하기 위해 어떻게 운동해야하는지,\r\n식단은 어떤식으로 해야하는지 등\r\n여러분들의 모든 고민들과 궁금한 것들을\r\n해결해드리도록 하겠습니다.\r\n\r\n전화주시면 자세히 상담해드리며, PT 1회 체험도 가능합니다. 감사합니다:)','근력강화','헬스',23,'헬스보이짐 상암MBC점'),(7,'1','53670756','tmdals5@nate.com1632472564136.jpg','1632473935325.jpg','tmdals5@nate.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','최사랑','최사랑','여자','01004048142','부드럽고 섬세한 지도로 최상의 결과를 이뤄드릴 최사랑 코치 입니다.\r\n\r\n현대인들에게 필요한 각종 운동효과를 개인별 분석을 통해 올바르고 편안한 운동을 구성해드립니다. 전문 자격과 경력을 살린 체형교정과 몸매관리는 물론, 섬세한 케어의 산전/산후관리 운동을 함께할 것입니다. 여러분의 체형과 체질에 맞게 고안한 검증된 프로그램으로 신체의 균형과 정신적 건강의 조화를 이루고, 건강한 삶을 추구할 수 있도록 도와드리겠습니다\r\n\r\n\"균형잡힌 몸과 마음 가꾸기, 고영경 코치와 시작해보세요\"','체형교정','필라테스',229,'옌필라테스 마포점'),(8,'1','23005134','tmdals6@nate.com1632472601870.jpg','1632474035539.jpg','tmdals6@nate.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','송노을','송노을','여자','01074405126','안녕하세요. 여러분의 아름다운 바디라인을 책임질 송노을코치입니다.\r\n\r\n체대를 다니면서 2009년부터 트레이너와 요가 등 다양한 분야에서 강사 생활을 시작했습니다. 운동을 가르치면서 항상 좋은 움직임과 바른 움직에 대한 고민이 많았습니다. 2012년, 이 고민에 대한 답을 필라테스를 시작하며 찾을 수 있었습니다. 2018년부터는 필라테스 협회에서 교육 강사로 일을 시작하여 필라테스 노하우를 많은 분께 가르쳐 드리고 있습니다.\r\n\r\n제 수업의 모토는 \'운동 is 삶\'입니다. 삶의 살아가다 보면 억울하고, 답답하고, 안 되는 일이 많습니다. 이런 스트레스를 운동으로 떨쳐버리셨으면 좋겠습니다. 자신의 몸을 느끼며 힘들었던 일은 다 잊고, 다시 일어날 수 있는 용기를 주는 수업을 하고 싶습니다. 즐겁고 놀이 같은 수업을 하다 보면 저절로 올바른 정렬과 바디라인은 만드실 수 있습니다. 누구나 운동을 쉽고 바르게 접하실 수 있도록 리드해드리겠습니다.\r\n\r\n\"올바른 체형을 만들어 삶의 질을 향상해 줄 김민정 코치와 함께하세요!\"','바디프로필','필라테스',232,'뉴얼라인필라테스 마포점'),(10,'1','37236336','echan@naver.com1632472618810.png','1632474848620.png','echan@naver.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','이찬성','몬스터','남자','01023224444','안녕하세요 Acub휘트니스 한정희 팀장입니다.\r\n한결같은 마음으로 트레이닝 하겠습니다. 잘 부탁드립니다.','대회준비','헬스',65,'헬스GO 망원점'),(12,'1','56466621','tmdals7@nate.com1632472639456.jpg','1632474344288.jpg','tmdals7@nate.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','윤보름','윤보름','여자','01074405272','안녕하세요. 몸과 마음을 긍정의 활력으로 채워드리는 윤보름 코치입니다.\r\n\r\n단국대학원 스포츠의학 전공으로 기능 회복 트레이닝을 중심으로 활동하고 있습니다. 그동안의 경험을 통해 회원님의 현 상태를 확인하고 꼭 필요한 운동을 지도해드립니다. 체형, 근육 상태, 관절 가동 범위, 구조적 정렬 상태를 바탕으로 운동 단계에 적용하여 진행합니다. 스트레칭과 요가 동작으로 근육을 이완시키고 운동에 가장 기본이 되는 바른 호흡법과 바른 자세를 익힐 수 있도록 도와드립니다.\r\n\r\n약해진 부위의 근육량을 보완하여 좌우 대칭을 맞추어 동작 중에 일어날 수 있는 근육의 불균형을 막고, 몸의 중심인 코어를 단련하여 전체적인 밸런스를 맞추도록 도와드리겠습니다. 코어 근육이 안정화되고 바로 잡혀야만 어떤 운동을 하더라도 부상의 위험을 막을 수 있기 때문입니다. 무엇보다 회원님의 몸을 스스로 알고 운동 목표를 이루기 위해 운동하실 수 있도록 편안한 분위기로 함께 소통하여 즐겁고 유익한 운동시간을 만들도록 진행하겠습니다.\r\n\r\n“운동으로 건강한 몸과 마음을 만드는 임현희 코치와 함께하세요!”','바디프로필','필라테스',242,'모던필라테스 상암점'),(13,'1','63744117','phomin@never.com1632476054648.jpg','1632476173746.jpg','phomin@never.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','표민서','표민서','여자','01009091234','\r\n안녕하세요^^\r\n국제원필라테스아카데미입니다!\r\n저희 센터는 전문 도수치료 자문단과 필라테스 강사의 정확한 분석과 평가를 통한 맞춤식 수업 제공하며, 회원님의 건강한 변화를 위해 연구하는 센터입니다.\r\n과학적인 근거에 기반으로 둔 체형 운동으로 변화되는 몸을 경험해보세요!!\r\n짐캐리 회원님들 언제든 문의주시면 친절히 상담해드리겠습니다.\r\n감사합니다.','체형교정','필라테스',230,'국제원필라테스아카데미'),(14,'1','06062110','playlist@naver.com1632472698274.jpg','1632474508160.jpg','playlist@naver.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','김원길','원로드','남자','01012341231','안녕하세요, 포이나짐 대표 『홍민기 트레이너』입니다.\r\n대학에서 운동처방재활을 전공으로 공부했기 때문에 보다 전문적인 트레이닝을 제공해드리고 있습니다. 보디빌딩식의 운동만을 알려드리는 것이 아닌 \'재활과 기능개선\'에 특화된 트레이닝을 진행합니다.','다이어트','헬스',73,'헬스엔플레이스'),(16,'1','52372744','ejin1234@naver.com1632472707776.png','1632474975066.png','ejin1234@naver.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','이진성','진성','남자','01023445555','체형교정,다이어트,재활등 다양한 방면으로 유쾌하게 운동을 하실수 있도록 도와드리겠습니다^^','재활/통증케어','헬스',12,'머슬마인드PT&헬스 마포공덕점'),(17,'1','76344604','tmdals9@nate.com1632472717624.jpg','1632474459919.jpg','tmdals9@nate.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','홍하얀','홍하얀','여자','01074405276','안녕하세요. 건강한 에너지를 만들어가는 홍히얀 코치입니다.\r\n\r\n무용 예술학과를 졸업하여 꾸준히 몸의 움직임에 대해서 공부를 하고 있습니다. 저의 경험을 바탕으로 다수의 회원님을 만나며 건강에 대한 지식을 나누는 데 힘써왓습니다. 회원님의 그날그날 다른 컨디션에 맞추는 맞춤형 수업으로 진행하고 있습니다. 저와 함께 하는 하루 한 시간으로 건강하게 변화되는 모습을 확인하실 수 있게 성실히 지도하겠습니다.\r\n\r\n저와 함께하시는 수업의 키워드는 \'일상생활에서 적용\'입니다. 한 시간 동안 수업을 통해 몸 사용법에 대한 인지를 키워주고 나머지 23시간 동안 바른 자세, 건강한 몸을 만들 수 있도록 도와드립니다. 그러기 위해 음악과 함께하는 즐거운 근력 향상 프로그램뿐 아니라, 다양한 도구를 활용하여 긴장감이 가득 쌓여있는 몸의 이완을 도와드립니다. 회원님과 꾸준한 소통으로 몸과 마음이 모두 행복한 시간을 만들어드리겠습니다!\r\n\r\n“건강하고 에너지 넘치는 일상을 만드는 홍예나 코치와 함께하세요!”','체형교정','요가',253,'정원요가테라피'),(19,'1','75171323','tmdals10@nate.com1632472759284.jpg','1632474552807.jpg','tmdals10@nate.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','권햇살','권햇살','여자','01074402876','안녕하세요. 내면과 외면의 힘을 기를 수 있게 도와드리는 요가 강사 권햇살입니다.\r\n\r\n저는 무용을 전공해서 어릴 적부터 요가와 필라테스를 자연스럽게 접했습니다. 대학 졸업 후 바로 자격증을 취득해서 11년 차 요가 강사로 활동하고 있으며 여성병원에서 산전 산후 요가 강사로는 5년 차 경력을 가지고 있습니다.\r\n\r\n제가 추구하는 수업은 차분하게 강한 에너지를 발휘할 수 있는 수업입니다. 요가는 정적이지만 강한 힘을 필요로 하는 운동이라고 생각합니다. 내면 외면 모두 강해질 수 있는 수업을 만들어나가겠습니다. 제 수업 키워드는 \'긍정적인 변화\'입니다. 회원님 스스로 몸을 인지하여 불균형을 찾고 다시 몸의 균형을 찾을 수 있도록 도와드립니다. 또한 여성병원에서 많은 산모님들과 함께 호흡하며 산전 산후의 증상과 통증, 심리 등을 오랜 시간 고민하고 공부해왔습니다. 임신과 출산으로 갑작스럽게 변한 몸과 호르몬으로 불안함을 겪고 계신 회원님들께 저의 경험을 살려서 도움을 드리고 싶습니다. 호흡과 명상을 통해 마음을 차분하게 하고 소도구를 활용한 스트레칭과 근력운동을 병행하여 몸과 마음의 긍정적인 변화를 이끌어드리겠습니다.\r\n\r\n\"건강한 엄마, 건강한 나 자신을 만들어가는 시간 이나윤 코치와 함께하세요!\"','체형교정','요가',382,'인요가앤필라테스'),(20,'1','70741671','dohyun@gmail.com1632472786077.jpg','1632475097878.jpg','dohyun@gmail.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','이도현','도현','남자','01037479933','안녕하세요. 목동 하타 요가 이도현 입니다. 올바른 자세를 알려드리며 원하시는 목표를 이루실 수 있도록 도와드리겠습니다! 편하게 방문해주세요','체형교정','요가',338,'목동하타요가'),(21,'1','64576307','butterflyyoga@hotmail.com1632475794901.jpg','1632475997751.jpg','butterflyyoga@hotmail.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','유나비','유나비','여자','01023487216','안녕하세요 요가 아틀리에 유나비 강사입니다. \r\n요가 아틀리에는 자연을 마주할 때의 마음처럼 하루의 휴식과 삶의 균형, 몸과 마음에 대한 바른 지식을 경험할 수 있도록 정성스럽게 준비된 공간입니다. ','체형교정','요가',365,'요가 아틀리에'),(22,'1','51770672','you1234@naver.com1632472809094.png','1632475129489.png','you1234@naver.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','유종관','종관','남자','01055523432','열정은 나의 영원한 원동력!\r\n정성껏 목표를 이룰 수 있도록 함께합니다.','근력강화','헬스',187,'헬스보이짐 여의도점'),(23,'1','63715211','leejh@naver.com1632472816369.jpg','1632474470688.jpg','leejh@naver.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','이준호','준호','남자','01038572727','안녕하세요 이준호 캐리입니다.\r\n\r\n쇼트트랙, 격투기, 골프 세 가지 종목에서 선수 생활을 하면서 많이 다쳤지만, 몸과 올바른 운동 방법에 대해 알 수 있었던 좋은 경험이라 생각하고 있습니다.\r\n회복하기 위해서 몸에 대해 알아가고 공부하면서 자연스럽게 트레이닝에 대해 많은 관심과 매력을 느꼈습니다.\r\n이후 많은 대외 활동을 통해서 많은 운동인들과 지식과 경험을 공유하면서\r\n지금은 누군가에게는 몸을 바꾸거나 가꾸는 경험이 삶 자체를 바꿀 수 있다는 사명감과 보람으로 일하고 있습니다.\r\n\r\n제가 경험한 운동과 지식들이 수업이 끝났을 때도 남아 있을 수 있도록 간결하고 구체적인 방법과 수준에 맞은 운동과\r\n앞으로의 어떤 식으로 운동해야 하고 성장할지 목표 설정을 도와드리는 등 운동이 즐거워질 수 있도록 적극적으로 도와드리겠습니다','체중증가','헬스',173,'아이앤지짐 염창역점'),(24,'1','63201202','nohyujae@never.com1632475714318.jpg','1632475694100.jpg','nohyujae@never.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','노유재','노유','남자','01038927421','안녕하세요 필라테스 캐리 노유재입니다. 필라테스 학원 중 남자 강사가 있는 곳을 찾으신다면 엠오엠 필라테스 상암점으로 방문해주세요. 남성분께 특화된 필라테스 수업과 트레이닝으로 신체의 재활과 교정을 책임져드리겠습니다.','재활/통증케어','필라테스',154,'엠오엠 필라테스 상암점'),(25,'1','47276255','joy@gmail.com1632472861696.jpg','1632473882852.jpg','joy@gmail.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','박수영','JOY','여자','01032727844','클래식필라테스 어드밴스 / 국내 운동처방사 레벨2 / 디스크 재활 수업가능 / 통증케어 수업가능 / 8년차 강사','재활/통증케어','필라테스',282,'마마필라테스 서강대점'),(26,'1','65320450','shinsk@naver.com1632472898429.jpg','1632473729340.jpg','shinsk@naver.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','신세경','세경','여자','01083926122','웰니스 휘트니스의\r\n세경 트레이너입니다.\r\n\r\n현대인들의 잘못된 습관으로 인한\r\n근육의 불균형과 틀어진\r\n체형을 잡아드립니다.\r\n\r\n회원님들의 니즈에 맞춰 다이어트,체력향상,\r\n체형교정 등 회원님과 함께 목표설정 후\r\n그 목표에 도달할수있도록\r\n도와드리겠습니다^^','체형교정','헬스',15,'웰니스 휘트니스'),(27,'1','14205543','h1234@gmail.com1632472938913.png','1632475833788.png','h1234@gmail.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','황지남','지남','남자','01032223445','확실한 강습으로 완벽하고 자신감있는 몸매를 만들어 드리겠습니다!','근력강화','필라테스',183,'헬스보이짐 프리미엄 신촌점'),(28,'1','53040717','woobin33@gmail.com1632472937087.jpg','1632473364301.jpg','woobin33@gmail.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','김우빈','김웁','남자','01037272288','바디프로필/다이어트/체형에맞는 운동방법/\r\n시합준비/힙업/ 몸을 만들어 보지못한분!','바디프로필','헬스',75,'헬스GO 서교점'),(29,'1','07521415','dahee@gmail.com1632472985233.jpg','1632474617898.jpg','dahee@gmail.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','이다희','우다','여자','01017839945','유쾌하고 밝고, 화이팅 넘치는 캐리 이다희입니다.\r\n회원님들과 즐겁게 소통하며 지도합니다.','대회준비','필라테스',291,'필라테스 스튜디오 온'),(30,'1','16076253','zzang@never.com1632474768423.jpg','1632474530028.jpg','zzang@never.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','신짱구','케인','남자','01038271234','안녕하세요 신짱구캐리 입니다. 확실한 헬스 가르쳐드리겠습니다.','근력강화','헬스',65,'헬스GO 망원점'),(31,'1','73347450','mina@naver.com1632473049401.png','1632475504731.png','mina@naver.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','유미나','미나','여자','01055546754','정확한 관절의 움직임과 근육의 쓰임을 통해 효과적으로 운동시켜드립니다.\r\n또한 체형교정과 재활에 관해 꾸준히 공부하기 때문에 회원님들이 가지고 계시는 자세적인 문제와 통증을 잘 파악하고 공감하며 개선해드린답니다.','재활/통증케어','요가',150,'쿠바핏요가'),(32,'1','54535374','gang@naver.com1632473091604.png','1632476082727.png','gang@naver.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','강민영','민영','여자','01024335556','안녕하세요 ^^\r\nAcub필라테스홍은비 트레이너입니다.\r\n운동이 지루하고 힘들고 어렵게만 느껴지신다면 편하게 상담 받으러 오시기 바랍니다.\r\n제 수상 경력은 20년도 머슬마니아 비키니 톨 1위를 하며 다수의 대회 경험이 있습니다.','체형교정','필라테스',147,'필라걸 상암MBC점'),(33,'1','46403734','mihea@naver.com1632473145915.png','1632476334471.png','mihea@naver.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','유미혜','미혜','여자','01023445676','건강한 몸에서 건강한 마음이 나온다고 합니다.\r\n제 수업은 단순히 몸 운동만 하는 것이 아닌 마음까지 돌보는 운동을 지향합니다.\r\n몸도 단단해지고, 마음도 단단해지는 수업!\r\n함께 소통하며 건강한 몸, 마음을 만드는 운동 해봐요.','체형교정','필라테스',154,'엠오엠 필라테스 상암점'),(34,'1','77566675','hhhhharaaam@gmail.com1632476208107.jpg','1632476347849.jpg','hhhhharaaam@gmail.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','강하람','하하람','여자','01012836121','월곡역 동덕여대 근처에 위치한 편안하고 따뜻한 요가나눔의 공간입니다.\r\n\r\n1. 사운드테라피\r\n\r\n2. 명상체험\r\n\r\n3. 전통요가','바디프로필','요가',328,'소마요가코리아'),(35,'1','27044630','hong@naver.com1632473224096.png','1632475660550.png','hong@naver.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','홍진영','진영','여자','01023444462','깊이 있는 전통요가와 자유롭고 즐거운 현대요가, 그리고 건강과 회복을 위한 치유요가 등 전문적이고 다양한 경험을 전합니다. 요가는 삶을 건강하고 즐겁게 만드는 행복한 연습입니다. 나의 건강을 되찾고 유지할 수 있기를 삶의 쉼표와 성장의 시간이 될 수 있도록 함께 하겠습니다.','체형교정','요가',318,'스탠드온프로젝트 무빙요가'),(36,'1','54625072','123@123.com1632473315891.jpeg','1632473572741.jpeg','123@123.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','이솜','아카샤','여자','01011112323','안녕하세요. 여러분의 체형 개선을 도와드릴 이솜 코치입니다.\r\n\r\n저는 생활 스포츠지도사 자격증과 웨이트 트레이닝과 관련한 다수 자격증을 취득하고 4년 이상 코치 활동을 지속하고 있습니다. 근력과 해부학, 펑셔널 트레이닝에 관심이 많으며 체중 감량과 통증, 유연성을 목표로 운동하시는 회원님께 알맞은 운동을 가르쳐드리고 있습니다. 웨이트는 육체 미를 뽐내는 것보다, 건강을 위한 운동이라고 생각합니다.\r\n\r\n유아 체육, 주부 운동 프로그램, 다양한 피트니스 센터 수업 경험이 있어, 처음 만나는 회원님도 편하게 대화하며 운동을 도와드릴 수 있습니다. 운동은 어제 한 시간, 오늘 한 시간이 내일의 나를 변화하게 만들 수 있는 가장 큰 힘이라고 생각합니다. 저와 함께 운동을 시작해보시는 건 어떠신가요?\r\n\r\n“건강한 몸매로 변화를 도와드릴 긍정적인 에너지, 이솜 코치를 만나보세요!”\r\n','체형교정','요가',309,'아메리카요가 홍대점'),(38,'1','76307774','yyh@naver.com1632473321654.png','1632476583146.png','yyh@naver.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','이은혜','은혜','여자','01044523332','안녕하세요\r\n대한필라테스협회에서 자격증을 취득후 바로 현장에서 경력을 쌓았으며\r\n현재 필라테스강사로 활동중입니다.\r\n회원님들의 자세교정과 다이어트에 도움이 되도록 최선을 다하여\r\n회원님들의 목적에 도달할수 있게 도와드리겠습다!','기타','필라테스',178,'스카이 피트니스&필라테스'),(39,'1','15421505','hhwhw@gmail.net1632476577823.jpg','1632476730498.jpg','hhwhw@gmail.net','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','황한결','한결','남자','01021983711','최적화 운동 동선 및 편안한 분위기!\r\n트레이너와 신뢰를 바탕으로 운동하는 퓨어짐!\r\n공부도 그러듯이 운동도 마찬가지입니다! 기본을 탄탄히!!\r\n황한결 캐리가 한결같은 운동을 약속드립니다!!','근력강화','헬스',23,'헬스보이짐 상암MBC점'),(40,'1','77372321','parkoc@gamil.com1632476775741.jpg','1632476893515.jpg','parkoc@gamil.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','박우철','철우','남자','01021936123','수많은 연예인들과 일반고객님들을 지도했습니다!\r\n기능성 트레이닝/재활/다이어트/웨이트 트레이닝 모두\r\n목표달성 가능합니다.','바디프로필','헬스',187,'헬스보이짐 여의도점'),(41,'1','75322760','namnam@never.com1632477136099.jpg','1632477335678.jpg','namnam@never.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','남궁민','남궁민','남자','01023874123','헬스엔플레이스 남궁민 캐리입니다.\r\n헬스엔플레이스 고객님들을 위해 열심히 지도중이며 수많은 피티회원님들을 위해 지금 현재도 열심히 노력중입니다.\r\n올여름, 가을, 겨울 저희 헬스엔플레이스에서 예쁜몸과 건강을 되찾아가시길 바랍니다.\r\n감사합니다.','근력강화','헬스',73,'헬스엔플레이스'),(42,'1','20467610','sonna@eajei.com1632477393206.jpg','1632477595797.jpg','sonna@eajei.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','손나영','손나영','여자','01037842112','정확한 관절의 움직임과 근육의 쓰임을 통해 효과적으로 운동시켜드립니다.\r\n또한 체형교정과 재활에 관해 꾸준히 공부하기 때문에 회원님들이 가지고 계시는 자세적인 문제와 통증을 잘 파악하고 공감하며 개선해드린답니다.\r\n-\r\n제스티 필라테스는 재활 전문 필라테스 기관입니다','재활/통증케어','필라테스',254,'제스티필라테스'),(43,'1','07005743','jeajaein@gmail.net1632477643181.jpg','1632477823965.jpg','jeajaein@gmail.net','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','한재인','한재인','여자','01029129123','1.전세계 요가 프로그램 중 명실상부한 최고의 아쉬탕가 요가와 \'AYS 빈야사 요가\' 의 체계적인 교육시스템\r\n\r\n2.할리우드 셀럽들과 전세계 유명인사들의 최고 찬사를 받은 아쉬탕가 요가\r\n(유연성,근지구력,밸런스,신진대사, 정신집중력 향상)\r\n\r\n3. 전세계에서 인정받는 한국 최초의 Authorized Teacher Level 2 공인인가를 받은 요가명인 한재인 캐리님과 우수한 실력의 강사진(아쉬탕가 요가 스튜디오 since 2005)\r\n\r\n4. 초보자에서부터 요가지도자들까지 배울 수 있는 체계적인 요가 시스템\r\n\r\n5. 현직 요가 지도자들과 요가 매니아들이 자신의 건강을 위해 요가를 직접 배우러 오는 곳',NULL,'요가',351,'요가인'),(44,'1','32103721','12@123.com1632473757969.jpeg','1632474191729.jpeg','12@123.com','35a4be93635897d8338e3f3e995499c5a6b564e8c8829725ecb6459ae6671a9e','김신애','마음챙김 김신애','여자','0102223333','몸과 마음도 훈련이 필요합니다.\r\n\r\n바쁜 일상 속에서 온전히 쉼을 배울 수 있습니다.','기타','요가',354,'아힘사 요가 & 명상'),(45,'1','53360150','yun77@naver.com1632473805415.png','1632474510124.png','yun77@naver.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','이윤진','윤진','여자','01044456667','현피트니스 선수 출신으로 대회 준비하는 선수들 대상들도 기간과 준비 과정에 따른 교육파트를 맞고있으니 가고자 하는길에 도움을 드릴 수 있어요.\r\n현 회원님들은 이해도가 높아지고 목적을 정하고 방향에 맞게 운동하므로\r\n만족도가 높습니다.','근력강화','헬스',96,'헬스존'),(46,'1','37304446','arum@test.com1632474496434.jpeg','1632474601653.jpeg','arum@test.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','사만다','사만다','여자','01011112322','안녕하세요. 현직 트레이너 사만다 코치입니다.\r\n\r\n성인이 된 이후 운동과 관련된 업종에서 커리어를 쌓아왔습니다. 단순히 운동을 잘하는 것을 넘어 운동을 바르게 지도할 수 있는 전문 지도자가 되기 위해 지금도 끊임없이 공부하고 있습니다. 수년간 쌓아온 경력과 노하우를 바탕으로 회원님께 건강을 선물하는 코치가 되겠습니다.\r\n\r\n단기간 다이어트를 하기 위해 저와 운동을 시작하신 회원님이 기억에 남습니다. 올바른 영양 섭취와 회원님의 몸에 맞는 적절한 운동을 지도해드린 결과 지금은 건강한 몸으로 수년째 저와 인연을 이어가고 계십니다. 단순히 반짝이는 효과가 아닌 변화된 몸을 오랫동안 유지할 수 있는 수업으로 회원님께 변화된 삶을 선물해 나아가겠습니다. 운동을 하겠다는 목표를 가지고 계시다면 그 목표를 달성할 때까지 제가 이끌어 드리겠습니다.\r\n\r\n\"최고의 트레이닝으로 변화를 약속하는 사만다 코치와 함께하세요!\"\r\n','다이어트','필라테스',236,'타임투필라테스 서강점'),(47,'1','35313474','ronaldo2@naver.com1632474551155.jpg','1632474716099.jpg','ronaldo2@naver.com','307fd56085a6ed891cfb2c38276d7853b122968754378f1153e0127f3a764a0f','김현묵','제왕','남자','01034391746','안녕하세요 Acub휘트니스 한정희 팀장입니다.\r\n한결같은 마음으로 트레이닝 하겠습니다. 잘 부탁드립니다.','다이어트','헬스',187,'헬스보이짐 여의도점'),(48,'1','54371415','tmdals8@nate.com1632474780237.jpg','1632474863493.jpg','tmdals8@nate.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','백슬기','백슬기','여자','01074402126','안녕하세요. 나의 몸을 인지할 수 있게끔 힘을 기를 수 있게 도와드리는 백슬기 코치입니다.\r\n\r\n저는 학창 시절 내내 운동선수로 시간을 보내왔고, 요가를 포함한 다양한 스포츠 강사로 10년을 넘게 티칭해왔습니다. 요가를 시작하면서 모든 분께 건강한 몸과 마음, 긍정적인 에너지를 선물해 드리고 싶은 마음에 코치를 시작하게 되었습니다.\r\n테라피와 빈야사 요가 수업을 하며 회원님들에게 목소리가 좋다는 평가를 받아 왔습니다. 정적인 요가 시간 동안 차분하고 호소력이 짙은 제 목소리로 회원님들과 함께 호흡하고 있습니다.\r\n\r\n저는 요가가 단순히 매트 위에서 끝나는 것이 아니라, 회원님께서 요가를 통해 얻었던 에너지를 삶에도 적용했으면 합니다. 회원님들께 의미 있는 시간을 만들어 드리고 몸과 마음을 알아차릴 수 있도록 편안한 수업을 진행합니다.\r\n\r\n\"10년 넘게 티칭해온 노하우로 긍정적인 에너지를 선물하는 안소연 코치를 만나보세요!\"','체형교정','요가',370,'나비요가더옴'),(49,'1','23331027','ronaldo4@naver.com1632474798289.jpg','1632475038975.jpg','ronaldo4@naver.com','5c3d951190f52383fe12afcfc3102d9f7835acbc49e3b0f7984a4c685957d49b','김전두','슈가','남자','01049746382','소통하는 트레이너 박! 인! 호!\r\n운동으로써 회원님들과의 소통을 하고싶습니다.\r\n공부도 그러듯이 운동도 마찬가지 입니다! 기본을 탄탄히 !!','근력강화','헬스',228,'리마인드짐'),(50,'1','40565230','arum2@test.com1632474870603.jpeg','1632475021795.jpeg','arum2@test.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','박효영','박효영','여자','01012341234','안녕하세요. 여러분의 체형 개선을 도와드릴 유수연 코치입니다.\r\n\r\n저는 생활 스포츠지도사 자격증과 웨이트 트레이닝과 관련한 다수 자격증을 취득하고 4년 이상 코치 활동을 지속하고 있습니다. 근력과 해부학, 펑셔널 트레이닝에 관심이 많으며 체중 감량과 통증, 유연성을 목표로 운동하시는 회원님께 알맞은 운동을 가르쳐드리고 있습니다. 웨이트는 육체 미를 뽐내는 것보다, 건강을 위한 운동이라고 생각합니다.\r\n\r\n유아 체육, 주부 운동 프로그램, 다양한 피트니스 센터 수업 경험이 있어, 처음 만나는 회원님도 편하게 대화하며 운동을 도와드릴 수 있습니다. 운동은 어제 한 시간, 오늘 한 시간이 내일의 나를 변화하게 만들 수 있는 가장 큰 힘이라고 생각합니다. 저와 함께 운동을 시작해보시는 건 어떠신가요?\r\n\r\n“건강한 몸매로 변화를 도와드릴 긍정적인 에너지, 유수연 코치를 만나보세요!”\r\n','재활/통증케어','필라테스',147,'필라걸 상암MBC점'),(51,'1','23701331','ronaldo6@naver.com1632474929222.jpg','1632475546530.jpg','ronaldo6@naver.com','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5','홍환두','인덱스','여자','01036530531','정확한 관절의 움직임과 근육의 쓰임을 통해 효과적으로 운동시켜드립니다.\r\n또한 체형교정과 재활에 관해 꾸준히 공부하기 때문에 회원님들이 가지고 계시는 자세적인 문제와 통증을 잘 파악하고 공감하며 개선해드린답니다.\r\n\r\n수업이 궁금하시다면 \'체험권\'을 통해 등록해보세요!\r\n나중에 수업에 정식으로 등록하실경우\r\n\'체험하신 부분 포함해서 결제\'하실 수 있어요 :)','다이어트','필라테스',154,'엠오엠 필라테스 상암점'),(52,'1','74604761','playlist4@naver.com1632475203274.jpeg','1632475622693.jpg','playlist4@naver.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','홍연화','해리케인','여자','01036534432','물리치료사 출신의 임상 재활 경력 9년차 전문 재활필라테스 강사입니다:)\r\n\r\n수업이 궁금하시다면 \'체험권\'을 통해 등록해보세요!\r\n나중에 수업에 정식으로 등록하실경우\r\n\'체험하신 부분 포함해서 결제\'하실 수 있어요 :)','근력강화','필라테스',242,'모던필라테스 상암점'),(53,'1','10273454','arum3@test.com1632475390249.jpeg','1632475588359.jpeg','arum3@test.com','35a4be93635897d8338e3f3e995499c5a6b564e8c8829725ecb6459ae6671a9e','강감찬','감찬','남자','01028982888','수업 키워드는 과학적인 진단과 습관 형성입니다. 몸을 수치로 이해하는 것은 몸의 인지에 큰 영향을 미칩니다. 제 수업에서 전문적인 진단 프로그램을 통해 몸의 균형, 체성분 분석을 진행하고 그에 맞게 운동 프로그램을 디자인합니다. 단계적으로 코칭 간격을 조정하여 회원님의 운동 습관 형성을 도와드립니다. 회원님과 함께 유쾌하며 확실한 코칭으로 긍정적 동기부여를 확실히 해드리겠습니다. 즐거움으로 운동의 재미를 느끼게 된다면 꾸준함은 자연스레 따라오게 되고, 행복하고 건강한 몸과 마음을 가질 수 있습니다. 즐겁고 행복한 수업, 건강한 라이프스타일을 갖게 해주는 수업이 될 수 있도록 노력하겠습니다.','재활/통증케어','필라테스',232,'뉴얼라인필라테스 마포점'),(54,'1','65020014','moon@gmail.com1632475576269.jpg','1632475721805.jpg','moon@gmail.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','문빈','달콩','남자','01037267382','요가 문 서울 문빈입니다. 몸과 마음이 함께 건강해지고 아름다워지는 것에 철학을 두어 한분 한분께 진심으로 깊이있게 트레이닝 하고 있습니다.','체형교정','요가',358,'요가 문 서울'),(55,'1','21256607','playlist5@naver.com1632475707170.jpg','1632476165806.jpg','playlist5@naver.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','연정화','정화','여자','01094836182','유쾌하고 밝고, 화이팅 넘치는 트레이너 김수연입니다.\r\n회원님들과 즐겁게 소통하며 지도합니다.','체형교정','요가',320,'오요가스튜디오'),(56,'1','76777070','arum4@test.com1632475752974.jpeg','1632475943991.jpeg','arum4@test.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','효진초이','효진','여자','01023244321','저는 국가대표를 꿈꾸며 초등학생부터 운동을 시작했습니다. 개인 사정으로 꿈을 접게 되면서 운동에 대한 갈증이 항상 남아있었습니다. 그러다 보니 강사로 활동하면서 누구보다 자기 계발에 열심이었다고 자신합니다. 생활의 활력을 잃고 몸과 마음이 지친 분들께 운동으로 에너지를 불어넣어드리는 강사가 되고자 합니다.\r\n\r\n\'시작이 반이다\'라는 말이 있듯이 어떤 일이든지 시작이 중요합니다. 일단 시작하셨다면 결과까지 만들어내기 위해서 꾸준함이 필요하겠죠. 꾸준함을 만들어 드리는 것이 코치인 저의 역할이라고 생각합니다. 편안하면서도 효과적으로, 쉽게 따라 하면서 재미있게 운동하실 수 있게 도와드리겠습니다. 운동을 해본 적이 없거나 신체 기능이 저하돼서 운동 동작에 한계가 있는 회원님들도 계실 텐데요, 저는 회원님 개개인의 신체 특성과 성향을 고려하여 맞춤형으로 수업을 진행합니다. 회원님의 소중한 시간을 값지게 활용해서 원하시는 운동 효과를 느끼실 수 있도록 제가 최선을 다하겠습니다.','바디프로필','헬스',187,'헬스보이짐 여의도점'),(57,'1','27116104','playlist6@naver.com1632475821994.jpg','photo2.png','playlist6@naver.com','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','류은경','경은','여자','01036489364',NULL,NULL,NULL,NULL,NULL),(59,'1','02427561','playlist7@naver.com1632490625190.png','1632476242744.jpg','playlist7@naver.com','b0c64e484b2b1c26fec23e2c40ddeda7ac0b4c47f7b70466eed4fd57ac461606','김무수','연채꽃','여자','01099228464','몸과 마음이 함께 건강해지고 아름다워지는 것에 철학을 두어 한분 한분께 진심으로 깊이있게 트레이닝 하고 있습니다.','체형교정','요가',360,'제야딥요가스쿨 이대점'),(60,'1','57023152','kimm@gmail.com1632475918676.jpg','1632476130335.jpg','kimm@gmail.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','김희진','희진','여자','01017289905','유쾌하고 밝고, 화이팅 넘치는 캐리 김희진입니다.\r\n회원님들과 즐겁게 소통하며 지도합니다.','근력강화','헬스',199,'센트럴짐'),(61,'1','10211247','playlist8@naver.com1632475993676.jpg','1632476368719.jpg','playlist8@naver.com','756bc47cb5215dc3329ca7e1f7be33a2dad68990bb94b76d90aa07f4e44a233a','김은우','아이온','여자','01083649393','회원 개개인에 맞는 수업으로\r\n꼼꼼하게 트레이닝 들어갑니다^^','체형교정','요가',313,'제야딥요가스쿨'),(62,'1','66207574','playlist9@naver.com1632476055193.jpg','1632476498586.jpg','playlist9@naver.com','756bc47cb5215dc3329ca7e1f7be33a2dad68990bb94b76d90aa07f4e44a233a','이은서','은서이','여자','01085749980','운동선수일 때 어디가 아프든 , 뼈에 금이가든 코치들이 운동을 쉴 수 없게 했었고 그러다보니 제대로 회복이 되지 못해 후유증이 남기도 했습니다.\r\n그래서 그 때 다짐했던게 \'내 회원은 아프지 않게, 다치지 않게 운동할 수 있게 지도하자\' 였습니다.\r\n그래서 정확한 자세를 잡는 것이 제일 중요하다 생각하고, 배우는 입장에서도 우선적으로 정확한 운동법을 배우는게 중요하다고 생각하기에 그 부분에 있어서 늘 최선을 다하고 있습니다!','근력강화','헬스',57,'JC 휘트니스'),(64,'1','04721646','arum5@test.com1632476086032.jpeg','1632476283952.jpeg','arum5@test.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','모니카','모니카','여자','01011112324','유년시절 엘리트 체육을 시작으로 체육교육학과에 진학했고, 동계스포츠 스켈레톤 국가대표 선수로 2년 동안 활동하였습니다. 이후 퍼스널 트레이너로 현재까지 계속 활동하고 있습니다. 비교적 특별하면서도 길었던 저의 경력으로 많은 회원님들과 함께할 수 있었습니다. 그만큼 다양한 운동 프로그램을 구성해왔습니다. 운동 목적은 사람마다 다릅니다. 그럼에도 제 경력을 적극 살려 회원님께 최적의 운동 프로그램을 제공하겠습니다!\r\n\r\n제가 추구하는 수업에는 큰 3가지 목적이 있습니다. 운동을 통해 ‘건강’, ‘행복’, ‘기적’을 선사하고 회원님의 운동 방향을 찾아드리는 것입니다. 운동은 선택이 아닌 필수입니다. 삶에서 필수인 영역을 진정 즐길 수 있게끔 만들어드리겠습니다. 꾸준한 흥미를 통해 건강한 삶을 유지해보세요. 삶에 큰 에너지가 느껴지도록 이끌어드리겠습니다.\r\n\r\n','근력강화','헬스',278,'밸런스랩운동센터'),(65,'1','34751266','arum6@test.com1632476519691.jpeg','1632476616037.png','arum6@test.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','제시카','한국어잘해요','여자','01044442222','현대인들에게 필요한 각종 운동효과를 개인별 분석을 통해 올바르고 편안한 운동을 구성해드립니다. 전문 자격과 경력을 살린 체형교정과 몸매관리는 물론, 섬세한 케어의 산전/산후관리 운동을 함께할 것입니다. 여러분의 체형과 체질에 맞게 고안한 검증된 프로그램으로 신체의 균형과 정신적 건강의 조화를 이루고, 건강한 삶을 추구할 수 있도록 도와드리겠습니다\r\n\r\n','바디프로필','헬스',148,'좋은습관 PT STUDIO 염리대흥'),(67,'1','32465064','hxxsxx@gmail.com1632476949807.jpg','1632477326482.png','hxxsxx@gmail.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','이혁수','수혁','남자','01085694848','깊이 있는 전통 요가와 자유롭고 즐거운 현대 요가, 그리고 건강과 회복을 위한 치유 요가 등 전문적이고 다양한 경험을 전합니다. 요가는 삶을 건강하고 즐겁게 만드는 행복한 연습입니다. 나의 건강을 되찾고 유지할 수 있기를 삶의 쉼표와 성장의 시간이 될 수 있도록 함께 하겠습니다.','다이어트','요가',346,'차크라요가'),(68,'1','71367740','jang@gmail.com1632477527170.jpg','1632477830133.jpg','jang@gmail.com','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c','장도연','DOYEON','여자','01077492946','안녕하세요\r\n필라테스 트레이너 장도연입니다.\r\n전 30년 가까이 무용을 했고 마지막 10년은 활발한 공연활동을 하면서\r\n엄청난 연습량으로 몸을 많이 혹사하게 되어 목과 허리, 골반 등 성한곳이\r\n없을 정도로 만성통증에 시달리고 있었습니다. 2000년대 초 한국에 처음 도입된\r\n필라테스를 알게되어 재활치료를 받으며 몸이 다시 재건되는 신세계를 경험하고\r\n필라테스 강사로 전향해서 현재는 저의 건강 뿐 아니라 몸이 아프고 불편한 분들을 케어 하면서 보람을 느끼고 있습니다.','체형교정','필라테스',262,'필라테스918');
/*!40000 ALTER TABLE `carry` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-26 22:47:08