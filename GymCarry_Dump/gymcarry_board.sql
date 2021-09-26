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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `POSTIDX` int NOT NULL AUTO_INCREMENT COMMENT '게시글IDX',
  `POSTNAME` varchar(255) NOT NULL COMMENT '제목',
  `POSTCONTENT` text NOT NULL COMMENT '글내용',
  `POSTNICK` varchar(50) NOT NULL COMMENT '닉네임',
  `MEMIDX` int DEFAULT NULL COMMENT '회원번호',
  `POSTDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '작성일자',
  `POSTVIEW` int NOT NULL DEFAULT '0' COMMENT '조회수',
  `BOARDCATEGORY` varchar(50) NOT NULL COMMENT '말머리',
  PRIMARY KEY (`POSTIDX`),
  KEY `FK_MEMBER_TO_BOARD` (`MEMIDX`),
  CONSTRAINT `FK_MEMBER_TO_board` FOREIGN KEY (`MEMIDX`) REFERENCES `member` (`MEMIDX`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='게시판';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'신촌 근처 맛집있나요?','맨날 같은 것만 먹어서 질리네요.....<br />\r\n저는 한중양일식 안가립니다...ㅊㅊ부탁..^ㅇ^','BlueVinyl',5,'2021-09-24 10:20:35',17,'소통'),(2,'케틀벨하면 등허리가 아픈데 맞나요ㅠㅠ?','케틀벨 어제 해봤는데 캐리님은 뒷허벅지 햄스트링쪽에 자극이 오는게 맞다고 하셨거든요&nbsp;<br />\r\n근데 오늘 근육통은 등허리쪽에 왔는데....<br />\r\n어떻게 하면 케틀벨 자세 잘 잡을 수 있을까요ㅠㅠ? 조언 좀 부탁드립니당...','별이',11,'2021-09-24 11:26:54',8,'질문/답변'),(3,'딸램이랑 산책하기 좋은 곳 추천해주세요^^*','날도 선선한데.. ㅎ 이사온지 얼마 안돼서 서강대쪽은 잘 모르겠네요 ㅎㅎ&nbsp;<br />\r\n여기 멋진 젊은이들이 만타구 해서 가입혔어요~^^ 잘부탁^^*','별보다빛나리',20,'2021-09-24 11:57:08',1,'소통'),(4,'술먹으면 근손실이 오나요','재가 근육때메 스트레스받아서 결국 술담배를 찾게 되더라고요..<br />\r\n<br />\r\n술먹으면 근육이 분해된다고 들었는데<br />\r\n<br />\r\n담배도 하루 3갑정도 피우고요<br />\r\n<br />\r\n술먹으면 근육이 손실되나요','여나',24,'2021-09-24 11:57:27',6,'질문/답변'),(5,'남친 사르르녹이는 방법 알려드림','------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 염산에 담궈버리면 사르르 녹음','난리부르스',27,'2021-09-24 11:57:38',18,'소통'),(6,'신촌에서 저녁에 같이 런데이 하실 분?','신촌/마포 부근에서 퇴근 후에 같이 런데이 뛰실 분 계신가요??<br />\r\n일주일에 주2~3회정도 뛰실 분 구합니다!!!&nbsp;','은경',1,'2021-09-24 11:58:14',10,'소통'),(7,'인바디 기계를 샀는데 몸에 체단백질과 단백질이 너무 부족해요. 왜이럴까요 ? 그리고 이것을 늘리는 법을 알려주세요. 만약 음식섭취로 회복할 수','인바디 기계를 샀는데<br />\r\n몸에 체단백질과 단백질이 너무 부족해요. 왜이럴까요 ?<br />\r\n그리고 이것을 늘리는 법을 알려주세요.<br />\r\n만약 음식섭취로 회복할 수 있는 것이라면 하루 권장량도 알려주세요<br />\r\n그리고 계란은 단백질 아닌가요..? 계란 많이먹는데도 이러네..','여나',24,'2021-09-24 11:58:48',3,'소통'),(8,'바디프로필 찍기 좋은 사진관 추전 좀 해주세요~!','다음달에 바프 찍기로 했는데 사진관 추전 좀 부탁드려요<br />\r\n그리고 태닝도 꼭 해야될까여?<br />\r\n사진관에서 포토샵으로 해주시나여?','승민최고',18,'2021-09-24 11:59:54',3,'소통'),(9,'뜨개질 하실 분 구해요~^^*','오후에 동네에서 모여서 뜨개질 하실 분 구해요^^*<br />\r\n재료비는 각자하궁.. 다들 모여서 수다 떨면서 이것저것 만들어봐요 ^^<br />\r\n<br />\r\n<br />\r\n*나이 제한 없음 ^^','별보다빛나리',20,'2021-09-24 12:01:35',0,'소통'),(10,'자전거 타고 전국일주','자전거 타고 전국일주 할껀데 경험자 형님들 조언 부탁드립니다<br />\r\n어디서 출발해서 며칠 잡고 가셨나요?<br />\r\n전국일주 대비해서 하체운동 빡쌔게 하고 있는데<br />\r\n하체 운동 루틴도 좀 추천해주세요~!','승민최고',18,'2021-09-24 12:01:39',1,'소통'),(11,'원래 피티가 이런가요?','피티 1시간동안 30분은 노가리까고 30분은 대충 대충 수업하는데 환불 받고 싶은데 뭐라고 말을 해야될까요?<br />\r\n이런식으로 수업하면 환불 가능한가요?','승민최고',18,'2021-09-24 12:03:45',2,'질문/답변'),(12,'주말에 일박 이일 등산 가실분 !!!!!','<img alt=\"\" src=\"/gym/resources/ckUpload/525d068f-6f74-4ad9-b4da-35018ab469b9_KakaoTalk_Photo_2021-09-24-17-34-35-1.jpeg\" style=\"height:299px; width:300px\" /><br />\r\n<br />\r\n저희 신촌에서 20-30대 등산 모임있는데 같이 등산하고 놀아요~~~~&nbsp;','스타빌로',19,'2021-09-24 12:05:23',18,'소통'),(13,'허닭 닭가슴살 좋은가요?','이번에 사려고 하는데 호불호가 많이 갈리는거 같아서요!&nbsp;<br />\r\n헬창분들 의견 좀 듣고 싶습니다!<br />\r\n<br />\r\n++ 닭찌찌 추천 해주시면 감사드리겠습니다!~','승민최고',18,'2021-09-24 12:05:47',5,'질문/답변'),(14,'혹시 주말에 자바 스터디 하실 분 계신가요~? ','자바의정석 매주 각자 한 파트씩 맡아서 발표하고 진행하려고 해요~<br />\r\n관심있으신분 연락주세요 !','스타빌로',19,'2021-09-24 12:07:30',8,'질문/답변'),(15,'그룹 피티 받으실 3분 구합니다','저까지 총 4명 그룹 피티구요<br />\r\n저는 헬스 경력 2년차 입니다<br />\r\n3대 380이구요<br />\r\n초보자 말고 중상급자 오셨으면 좋겠습니다.','승민쓰',14,'2021-09-24 12:08:12',15,'소통'),(16,'운동 루틴','저는 하체가 너무 하기 싫은데 하체를 어떤 마음가짐을 가지고 해야 될까요?','승민쓰',14,'2021-09-24 12:09:44',4,'질문/답변'),(17,'바디프로필 찍었습니다.','<img alt=\"\" src=\"/gym/resources/ckUpload/6c868865-a822-48a2-a2e1-90e263cce595_311a07ebeba0bfc54eee3c13fe4259e9.jpg\" style=\"height:777px; width:564px\" /><br />\r\n<br />\r\n바디 프로필 찍었습니다.<br />\r\n평가 부탁드립니다.<br />\r\n악플은 신고합니다.','승민쓰',14,'2021-09-24 12:11:30',24,'소통'),(18,'강쥐랑 산책 하실분 !!!','저는 강아지 없지만 강아지랑 잘 놀 수 있어요 !!!&nbsp;<br />\r\n강아지 산책 가고 싶어요 데려가주실 수 있는 분 ?&nbsp;','강아지좋아나도좋아',19,'2021-09-24 12:16:02',10,'소통'),(19,'관장형 헬스장..','<br />\r\n<img alt=\"\" src=\"/gym/resources/ckUpload/104f89ef-7eac-443d-a4f2-2efdbe3fe1be_sadfasdf.jpg\" style=\"height:162px; width:311px\" /><br />\r\n헬스장 잘못 온 거 같은데 이거 맞나여..?','김승민',8,'2021-09-24 12:16:37',9,'소통'),(20,'요즘 트레이너들 양아치많네요','핸드폰이나 보고.......................<br />\r\n1시간 수업인데 50분도 겨우 채우고..............','BlueVinyl',5,'2021-09-24 12:25:28',8,'소통'),(21,'운동하면 난리부르스~','닭 찌찌 먹으면서 같으운동하실분~~?','난리부르스',27,'2021-09-24 12:28:31',6,'질문/답변'),(22,' ♥ 마음의 평온을 찾는 방법 15가지','<p><strong>1. 기준선을 낮춰라.&nbsp;</strong><strong>&nbsp;<br />\r\n<br />\r\n인생에서 가장 큰 긴장 요소 가운데 하나는 우리 스스로 세운 기준에 끊임없이 맞추어 살아야 한다는 것이다.</strong><br />\r\n<br />\r\n<strong>마음을 편안하게 갖고&nbsp;이따금씩 그러한 기준들을 약간 완화시켜 본다.&nbsp;</strong></p>\r\n<br />\r\n<img alt=\"\" id=\"img_2\" src=\"https://mblogthumb-phinf.pstatic.net/MjAxNjEwMjRfMjk0/MDAxNDc3MzAxODMxNDgy.PLRHTMXVXY2WJ2gLWXE-14x_jBiM7uRCU0wFAstRnVIg.NNUGKHMyxW9dAR29uaBpdbiVcPLdgZzD2SuK0ddVYq8g.JPEG.potoi/image_7033324891477301819702.jpg?type=w800\" style=\"height:733px; width:550px\" />\r\n<p><strong>2. 약간의 시간을 낭비하라.&nbsp;</strong><strong>&nbsp;<br />\r\n<br />\r\n일에 열중하는 사람들은 시시한 오락 활동 따위에 결코 시간을 낭비하지 않는다.</strong><br />\r\n<br />\r\n<strong>그러나 평온함을 찾기 위해 잠시 시간을 보내는 것은 결코 낭비가 아니다.&nbsp;<br />\r\n&nbsp;</strong><br />\r\n<strong>3. 어떤 일이든 전환점에서는 휴식을 가져라.</strong><strong>&nbsp;&nbsp;<br />\r\n&nbsp;<br />\r\n인간은 항상 인생의 모든 변화들을 하나의 커다란 마조히즘적 상황 속에 몰아넣으려는 경향이 있다.</strong><br />\r\n<br />\r\n<strong>당신이 받고 있는 스트레스의 정도를 줄이면서 한 번에 한 가지씩 풀도록 한다.&nbsp;</strong></p>\r\n<br />\r\n<img alt=\"\" id=\"img_3\" src=\"https://mblogthumb-phinf.pstatic.net/MjAxNjEwMjRfNjUg/MDAxNDc3MzAxODY3OTg3.D2spjHeEw4CL81oCQslhNCGQbyVxyEL3vhfs8pQbyEUg.eiIjTqoyt-YYZJ6HpJBReQKEE66JILaydEAkvNad39Eg.JPEG.potoi/image_3133460481477301857684.jpg?type=w800\" style=\"height:732px; width:550px\" />\r\n<p><strong>4. 사소한 문제에 신경 쓰지 마라.</strong><strong>&nbsp;&nbsp;<br />\r\n<br />\r\n마음의 평온을 유지하는 가장 효과적인 방법은 사소한 문제로 고민하며 잠을 설치지 않는 것이다.&nbsp;</strong><br />\r\n<br />\r\n<strong>그다음으로 효과적인 방법은&nbsp; 어떤 문제든지 아주 작은 문제로 생각하는 것이다.&nbsp;</strong><br />\r\n<br />\r\n<strong>5. 그때 일은 그때 걱정하라.</strong><strong>&nbsp;<br />\r\n<br />\r\n대부분 사람들은 미래 일을 걱정한다.&nbsp;대게 일어나지도 않을&nbsp;일을 가지고 이리저리 궁리한다.</strong><br />\r\n<br />\r\n<strong>현재의 일에 충실하다 보면 앞으로의 일도 잘 풀려나갈 것이다.&nbsp;</strong></p>\r\n<br />\r\n<img alt=\"\" id=\"img_4\" src=\"https://mblogthumb-phinf.pstatic.net/MjAxNjEwMjRfMTIw/MDAxNDc3MzAxOTAxOTg2.myRLfqjAwI-TBrzBCA9U94FlvfBVUkt4D2_9xBRyAOgg.Kz2sBwa6s9hapXl-jnPPZQZi7dkV5UXFiylYv6WwHusg.JPEG.potoi/image_8488596891477301889534.jpg?type=w80_blur\" style=\"height:825px; width:550px\" />\r\n<p><strong>6. 모든 것을 최대한 긍정적으로 보라.</strong><br />\r\n<br />\r\n<strong>어떠한 사람이든 상황이든 최대한 긍정적인 시각을 갖도록 노력하라.</strong><br />\r\n<br />\r\n<strong>그러면 당신은 그로 인해 낙천적이고 긍정적인 사고를 갖게 될 것이며 또한 평온함에 젖게 될 것이다.</strong><br />\r\n<br />\r\n<strong>7. 자신을 인간이라고 생각하라.</strong><strong>&nbsp;<br />\r\n<br />\r\n완벽한 사람이 되겠다는 생각은 일단 접어둔다. 현재의 자신에게 만족하도록 한다.</strong><br />\r\n<br />\r\n<strong>그러면 결과적으로 훨씬 편안해질 것이다.&nbsp;</strong></p>\r\n<br />\r\n<img alt=\"\" id=\"img_5\" src=\"https://mblogthumb-phinf.pstatic.net/MjAxNjEwMjRfMTEg/MDAxNDc3MzAxOTMyOTQ3.3s09S21rEeCxjjTNmQN4pyj4OiJoi3jhBKBOnU111j0g.kMdYUX_LzrJzkPyJJCTxWq-UMzUbCqoLHiIVVCnMVRcg.JPEG.potoi/image_708708821477301919486.jpg?type=w80_blur\" style=\"height:733px; width:550px\" />\r\n<p><strong>8. 작은 기쁨을 찾아라.</strong><strong>&nbsp;<br />\r\n<br />\r\n무언가에 완전히 정신을 집중한 다음 마음을 활짝 열고 다가가 본다.</strong><br />\r\n<br />\r\n<strong>그러면 그 안에서 즐거움과 동시에 어떤 복합적인 미묘함을 느끼게 될 것이다.</strong><br />\r\n<br />\r\n<strong>한 송이의 포도, 한 컵의 물, 잔, 또는 구름이 뭉게뭉게 피어난 하늘 이 모든 것들이 당신을 평온의 길로 안내할 것이다.&nbsp;</strong><br />\r\n<br />\r\n<strong>9. 과거는 잊어버려라.</strong><strong>&nbsp;<br />\r\n<br />\r\n과거의 행동이나 상황에 대해서 후회한다 하더라도 실제적으로 도움이 되는 것은 아무것도 없다.</strong><br />\r\n<br />\r\n<strong>왜냐하면 과거는&nbsp; 단지 당신의 기억만으로 존재할 뿐이기 때문이다. 이처럼 과거가 현실성이 없다는 것을 인식하게 될 때 당신은 평온을 찾게 될 것이다.&nbsp;</strong></p>\r\n<br />\r\n<img alt=\"\" id=\"img_6\" src=\"https://mblogthumb-phinf.pstatic.net/MjAxNjEwMjRfMTYg/MDAxNDc3MzAxOTY3OTM4.JrVNgP1JpDtiDndJ3CpM932yzmEczyjaEfA_W_MsGlog.eOJE6G0Z3l_NFlXeOAR8x9SIoqyzSzTWHgUmXYGUNeYg.JPEG.potoi/image_8567617241477301951777.jpg?type=w80_blur\" style=\"height:734px; width:550px\" />\r\n<p><strong>10. 화가 나더라도 즉각 잊어버려라.</strong><strong>&nbsp;<br />\r\n<br />\r\n다른 사람을 원망하고 미워하게 되면 그 사람보다 자신이 더 괴로울 뿐이다.</strong><br />\r\n<br />\r\n<strong>자신을 위해서 가능한 한 빨리 그리고 거리낌 없이 상대를 용서하는 것이 좋다.&nbsp;</strong><br />\r\n<br />\r\n<strong>11. 도시를 떠나라.</strong><strong>&nbsp;<br />\r\n<br />\r\n복잡한 도시의 거리를&nbsp;걷는 것보다 한가로운 시골길을 여유롭게 거닐 때, 소음을 내는 차량들보다는 구불구불한 언덕길을 바라볼 때, 복잡한 항구보다 탁 트인 바다를 항해할 때 마음은 더욱 상쾌해진다.&nbsp;</strong></p>\r\n<br />\r\n<img alt=\"\" id=\"img_7\" src=\"https://mblogthumb-phinf.pstatic.net/MjAxNjEwMjRfMTM1/MDAxNDc3MzAyMDE3OTA3.9KNjY2G0Da4dvZ6RKsec1zOKMc7MaYdc78KnH5Q0xncg.sj1asz-KVOXb9Ec4PQvN1iX4MHOs1E2F4BKRjtYQU7Mg.JPEG.potoi/image_1896526191477301986303.jpg?type=w80_blur\" style=\"height:733px; width:550px\" />\r\n<p><strong>12. 땀을 흘려라.&nbsp;</strong><br />\r\n<br />\r\n<strong>운동을 하게 되면 스트레스로 인한 부정적인 영향을 막을 수가 있고 기분이 상쾌해짐을 느낄 수 있다.</strong><br />\r\n<br />\r\n<strong>이마에 가볍게&nbsp; 땀이 흐를 때까지 운동을 해본다. 그리고 괜찮다면 계속 20분 정도 더 해보는 것도 좋다.&nbsp;</strong><br />\r\n<br />\r\n<strong>13. 아량을 베푸는 습관을 가져라.&nbsp;</strong><br />\r\n<br />\r\n<strong>스스로 관대해지도록 노력하라. 남을 도와주고 친절하게 대하며&nbsp; 칭찬을 하도록 한다.</strong><br />\r\n<br />\r\n<strong>이렇게 함으로써 가장 기분이 좋아지는&nbsp; 사람은 바로.. 당신 자신이다.&nbsp;</strong></p>\r\n<br />\r\n<img alt=\"\" id=\"img_8\" src=\"https://mblogthumb-phinf.pstatic.net/MjAxNjEwMjRfNDIg/MDAxNDc3MzAyMDgyMzIz.zm0jBKJPmgwpLsgo0JwfpuAM3btWo8j0Rj3y888plTUg.3A_WNebt_8ExIeLx8LpMRFkWwSpnkt82kV_CZ4JxnBMg.JPEG.potoi/image_6403878401477302067396.jpg?type=w80_blur\" style=\"height:734px; width:550px\" />\r\n<p><strong>14. 항상 미소를 지어라.</strong><br />\r\n<br />\r\n<strong>미소를 띠게 되면 모든 얼굴 근육이 이완되면서 여러 가지로 기분이 좋게 하는 감정의 연쇄 반응이 일어난다.&nbsp;</strong><br />\r\n<br />\r\n<strong>15. 자신의 일을 중요하게 생각하라.</strong><strong>&nbsp;<br />\r\n<br />\r\n억지로 힘든 노동을 하느냐, 아니면 고생하고도&nbsp;기분 좋게 일을 하느냐의 차이는 대부분 그 일을 바라보는 시각의 차이일 뿐이다.</strong><br />\r\n<br />\r\n<strong>자신의 일이 중요하다고 생각하는 만큼 그에 따른 성취감도 클 것이며 긴장감을 푸는데 많은 도움이 될 것이다.&nbsp;</strong><br />\r\n<br />\r\n<strong>~ 평온함에 관한 작은 책 중에</strong></p>\r\n<br />\r\n<img alt=\"\" id=\"img_9\" src=\"https://mblogthumb-phinf.pstatic.net/MjAxNjEwMjRfMTYw/MDAxNDc3MzAzMDY3MTc5.DbVPd0S5SedTDQqGtUHzfWlQ_MQaFYIbsIcPyyYjs2Ig.YiGbKb5lqzxNpG6sENKYINzsMqx74-BDQJftEAvqc1Qg.JPEG.potoi/2016-0623ssc.jpg?type=w80_blur\" style=\"height:900px; width:600px\" />','평온하세요',21,'2021-09-24 12:29:23',10,'소통'),(23,'콩박힌 떡 먹는 강아지 보신적있으세요?','있더라고요<br />\r\n우리집 개요','지원지원',3,'2021-09-24 12:34:52',10,'소통'),(24,'식단 평가 좀 해주세요!','아침 = 아몬드,고구마<br />\r\n간식 = 아몬드<br />\r\n점심 = 닭찌찌 볶음밥<br />\r\n간식 = 아몬드<br />\r\n저녁 = 삼겹살','승민쓰',14,'2021-09-24 12:36:12',8,'질문/답변'),(25,'피티 결제하고 가기싫은 나...','정상인가요....?','춘식',29,'2021-09-24 12:38:05',13,'소통'),(26,'프로젝트 완료 가능..?','프로젝트 기간안에 끝날 수 있을까요..?<br />\r\n오류가 계속 생기네요..<br />\r\n후.....','승민최고',18,'2021-09-24 12:45:55',8,'소통'),(27,'내일 10시에 비트캠프 신촌점에서 스터디 할 사람 구합니다.','내일 10시에 비트캠프 신촌점에서 스터디 할 사람 구합니다.','승민최고',18,'2021-09-24 12:46:19',11,'소통'),(28,'환승연애 보시는 분...','정말 재밌어ㅠ','BlueVinyl',5,'2021-09-24 12:52:37',13,'소통'),(29,'사진 커밋했는데...받아보시고...','프사보이는지 알려주실분.....','별이',11,'2021-09-24 13:05:11',32,'소통'),(30,'오늘 코로나 확진자수...','3000명 넘었네요...다들 마스크 잘 씁시다..!','별이',11,'2021-09-24 13:18:48',7,'소통'),(31,'이제 슬슬 가을이 오나봐여','살찔 계절','춘식',29,'2021-09-24 13:23:52',16,'소통'),(32,'내일 점심 뭐 먹을까요..?','<h1><cite><span style=\"font-size:24px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span class=\"marker\">저녁 전에는 헤어지겠네요....</span></span></span></cite></h1>\r\n\r\n<p>뭐먹지 우리............</p>\r\n\r\n<p>얼마안남았네........</p>\r\n','서강준',17,'2021-09-24 16:37:55',30,'질문/답변'),(33,'캘린더 완성~~~','일정 추가 : 클릭 or 드래그로 일정 추가 + 일정 저장하기 버튼 클릭!<br />\r\n일정 변경 : 일정을 클릭후 드래그로 날짜 변경 + 일정 저장하기 버튼 클릭!<br />\r\n일정 삭제 : 일정 클릭 후 팝업 창 확인 클릭 + 일정 저장하기 버튼 클릭!<br />\r\n<br />\r\n안될거라 생각했었는데 다 되니까 기분이 너무 좋네여^_______________^&nbsp;','춘식',29,'2021-09-25 04:28:21',8,'소통'),(34,'피자 빨리 먹고싶다....................','너무 배고파요...','YerinBaek',4,'2021-09-25 04:31:51',13,'소통'),(35,'식단 중인데 피자 몰래먹기 가넝?','캐리쌤한테는 비밀로,,,','신셋찌',1,'2021-09-25 04:40:15',5,'질문/답변'),(36,'수면부족으로 피곤한 것 같은데 영양제 추천 해주세요.','아이허브는 배송이 너무 오래걸려서~ ㅎ 한국 제품 중 괜찮은걸로 추천 해주세요^^','평온하세요',21,'2021-09-25 04:49:27',7,'소통'),(37,'프로필 사진 잘 찍는 곳 추천해주세요','닉네임에 사진이 없어서 찍을려구요 ㅠㅠ','수묵화',23,'2021-09-25 07:02:14',5,'소통'),(38,'배불러서....잠이와요.....','집에가고싶어요...','지원지원',3,'2021-09-25 07:02:45',2,'소통'),(39,'캐시삭제 좋아하세요..?','저는 아니요..<br />\r\n<br />\r\n<img alt=\"\" src=\"/gym/resources/ckUpload/9e4540a9-dfa6-4a29-954f-c523863e35bb_KakaoTalk_20210926_010136728.png\" style=\"height:166px; width:205px\" />','BlueVinyl',5,'2021-09-25 16:15:13',10,'질문/답변'),(40,'환승연애 보시는 분 !!!? ','민재랑 코코 잘 될 수 있을까요 ?ㅠㅠ 다음화 너무 궁금해요&nbsp;','ohyeah',58,'2021-09-26 12:57:35',3,'소통'),(41,'셀카 찍었는데 봐주실분 ??? ','<img alt=\"\" src=\"https://cdn.gukjenews.com/news/photo/201910/1190637_968032_305.jpg\" style=\"height:600px; width:600px\" /><br />\r\n<br />\r\n프사 바꾸려는데 픽 해주세여~~','김승민',8,'2021-09-26 13:08:16',1,'소통');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
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

-- Dump completed on 2021-09-26 22:48:20
