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
-- Table structure for table `adminboard`
--

DROP TABLE IF EXISTS `adminboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminboard` (
  `IDX` int NOT NULL AUTO_INCREMENT,
  `CATEGORY` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TITLE` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CONTENT` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ADMINIDX` int NOT NULL,
  PRIMARY KEY (`IDX`),
  KEY `FK_ADMIN_TO_ADMINBOARD_idx` (`ADMINIDX`),
  CONSTRAINT `FK_ADMIN_TO_ADMINBOARD` FOREIGN KEY (`ADMINIDX`) REFERENCES `admin` (`adminidx`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='공지사항 게시판';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminboard`
--

LOCK TABLES `adminboard` WRITE;
/*!40000 ALTER TABLE `adminboard` DISABLE KEYS */;
INSERT INTO `adminboard` VALUES (1,'약관 및 정책','[서비스 이용 약관]','제 1 조 (약관의 적용목적)\r\n\r\n이 약관은 위트레인(이하 “회사”라 한다)이 운영하는 “짐캐리”에서 제공하는 인터넷 서비스(이하 “서비스”라 한다)를 이용함에 있어 “회사”와 “이용자”의 권리, 의무 및 책임 사항을 규정함을 목적으로 합니다.\r\n\r\n제 2조 (용어의 정의)\r\n\r\n1. “짐캐리”라 함은 “회사”가 “파트너 회원”이 등록한 체육시설 및 코치의 정보를 “이용자”에게 제공하기 위하여 컴퓨터 등 정보 통신 설비를 이용하여 설정한 가상의 게시 공간을 말하며, 아울러 인터넷 사이트 및 모바일 어플리케이션을 운영하는 회사의 의미로도 사용합니다.\r\n\r\n2. “이용자”라 함은 “짐캐리” 서비스를 이용하는 “개인 사용자 회원” 또는 “파트너 회원\" 또는 “비회원”을 말합니다.\r\n\r\n3. “회원”은 “개인 사용자 회원”과 “파트너 회원”을 의미합니다.\r\n\r\n4. “개인 사용자 회원”이라 함은 “회사”가 정한 소정의 절차를 거쳐서 회원 가입을 한 개인으로서, “짐캐리”의 정보를 지속적으로 제공 받고 이용할 수 있는 권한을 가진 자를 말합니다.\r\n\r\n5. “파트너 회원\"이라 함은 “회사”가 정한 소정의 절차를 거쳐서 회원 가입을 한 체육시설 담당자 또는 코치로서 “짐캐리”에 허락 받은 프로필을 게시할 수 있는 권한을 가진 “회원”을 말합니다.\r\n\r\n6. “비회원”이라 함은 회원으로 가입하지 않고 “회사”가 제공하는 서비스를 이용하는 자를 말합니다.\r\n\r\n7. “콘텐츠”라 함은 “파트너 회원”이 홍보를 위하여 게재한 모든 글, 사진 등을 말합니다.\r\n\r\n8. “050 연결 전화번호”라 함은 “회사”가 “파트너 회원”에게 무료로 제공하는 050으로 시작하는 대체 전화번호를 의미합니다.\r\n\r\n위 항에서 정의되지 않은 이 약관상의 용어의 의미는 일반적인 관행에 의합니다.\r\n\r\n제 3 조 (약관 명시와 개정)\r\n\r\n1. “회사”는 이 약관의 내용을 회원가입 단계 및 서비스 내에서 확인할 수 있도록 게시합니다.\r\n\r\n2. “회사”는 약관의 규제에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.\r\n\r\n3. “회사”가 이 약관을 개정하는 경우에는 개정된 약관의 적용일자 및 개정사유를 명시하여 현행 약관과 함께 그 적용일자 7일(불리한 경우 30일) 이전부터 적용일자 전일까지 위 제1항의 방법으로 공지합니다. “회원”에게 불리한 약관의 개정은 이용자가 등록한 전자우편, 로그인 시 팝업창 등의 전자적 수단을 통하여 통지하도록 합니다.\r\n\r\n4. “회사”가 전항에 따라 개정약관을 공지 또는 통지하면서 “회원”에게 동 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 “회원”이 명시적으로 거부의 의사표시를 하지 아니한 경우 “회원”이 개정약관에 동의한 것으로 봅니다.\r\n\r\n5. “회원”이 개정약관의 적용에 동의하지 않는 경우 “회사”는 개정 약관의 내용을 적용할 수 없으며, 이 경우 “회원”은 이용계약을 해지할 수 있습니다. 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 “회사”는 이용계약을 해지할 수 있습니다.\r\n\r\n6. 본 약관에서 정하지 아니한 사항과 본 약관의 해석에 관해서는 약관의 규제 등에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 또는 상관례에 의합니다.\r\n\r\n제 4조 (서비스의 제공 및 변경)\r\n\r\n1. “짐캐리”는 다음과 같은 업무를 수행합니다.\r\n\r\n체육시설 정보 및 코치에 관한 정보 제공 서비스\r\n기타 “짐캐리”의 이용자를 위하여 제공하는 서비스\r\n“짐캐리”는 지적재산권, 부정경쟁방지법 등 관련법에 저촉되지 않은 체육시설 정보를 직접 제공합니다. 또한, “파트너 회원”이 체육시설 및 코치의 홍보를 위해 “콘텐츠”를 올릴 수 있는 플랫폼을 제공합니다. “이용자”는 자신이 생산하여 플랫폼에 제공한 “콘텐츠”에 대한 저작권을 갖습니다. 따라서, “콘텐츠”에 대한 책임은 “콘텐츠”를 생산해서 올린 원저작자에 있습니다.\r\n“짐캐리”가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 기술적 사양의 변경 등의 사유로 변경할 경우에는, 그 변경이 실질적으로 이용자에게 불리한 것이 아닌 경우 그 사유를 이용자에게 통지하거나, 이용자가 알아볼 수 있도록 공지사항으로 게시합니다.\r\n“짐캐리”는 정보 제공 목적으로 “이용자”에게 이메일, 문자메세지, 푸시 알림(App Push)을 발송 할 수 있습니다.\r\n제 5조 (서비스의 중단)\r\n\r\n1. 회원의 서비스 기간은 “회사”에 서비스를 신청하여 이용 승낙이 있은 날로부터 이용 계약 해지 시까지 입니다.\r\n\r\n2. “짐캐리”는 컴퓨터 등 정보 통신 설비의 보수 점검, 교체 및 고장, 통신의 두절, 천재지변 등 운영상 상당한 이유가 있는 경우에는 서비스의 제공을 제한하거나 일시적으로 중단할 수 있습니다.\r\n\r\n3. 사업종목의 전환, 사업의 포기, 업체 간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 “짐캐리”는 제8조에 정한 방법으로 충분한 기간을 두어 이용자에게 통지하거나 이용자가 알아볼 수 있도록 공지 사항으로 게시합니다.\r\n\r\n제 6조 (대리 행위의 부인)\r\n\r\n“회사”는 효율적인 서비스를 위한 시스템 운영 및 관리 책임만을 부담하며, 이용자가 짐캐리의 정보를 이용하는 중에 발생한 상담 및 직접거래와 관련하여 당사자 중 어느 일방을 대리하지 아니하고, 이용자 사이에 성립된 거래 및 회원이 제공하고 등록한 정보에 대해서는 해당 이용자가 그에 대한 책임을 부담하여야 합니다.\r\n\r\n제 7조 (보증의 부인)\r\n\r\n“회사”는 신고 받은 허위 정보의 삭제조치를 취하는 등의 서비스 관리자로서의 책임을 부담합니다. 단, 이용자가 짐캐리를 이용해 얻은 정보를 기반으로 별도의 이용자 간 계약을 체결할 경우에 대한 위험과 책임은 계약을 체결한 해당 이용자가 부담합니다.\r\n\r\n제 8 조 (회원에 대한 통지 및 공지)\r\n\r\n1. \"회사”는 이동전화 단문 메시지 서비스(SMS) 또는 푸시알림(App push) 등으로 회원에게 통지할 수 있습니다.\r\n\r\n2. “회사”는 불특정다수 회원에 대한 통지의 경우 공지사항을 통하여 게시함으로 개별 통지를 대신 할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항 또는 회원에게 불리한 약관 개정 등에 대해서는 제1항의 방법 또는 문자메시지(SMS) 송신, 전자메일 송신 등의 방법으로 개별적으로 통지합니다.\r\n\r\n제9 조 (회원가입)\r\n\r\n1. “이용자”는 “회사”가 정한 가입 양식에 따라 회원 정보를 기입함과 함께, 이 약관에 동의한다는 의사표시를 함으로서 회원 가입을 신청합니다.\r\n\r\n2. “회사”는 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 “개인 사용자 회원” 또는 “파트너 회원\"으로 등록합니다.\r\n\r\n등록 내용에 허위, 기재누락, 오기가 있는 경우\r\n가입 신청자가 이전에 회원 자격을 상실한 적이 있는 경우(다만 회원 자격 상실 후 “회사”가 필요하다고 판단하여 회원 재가입에 대한 승낙을 얻은 경우에는 예외로 합니다.)\r\n“회사”로부터 회원 자격 정지 조치 등을 받은 회원이 그 조치 기간 중에 이용 계약을 임의 해지하고 재가입 신청을 하는 경우\r\n기타 회원으로 등록하는 것이 “짐캐리”의 기술상 현저히 곤란하다고 판단되는 경우\r\n본 약관에 위배되거나 위법 또는 부당한 이용신청임이 확인된 경우\r\n3. 회원 가입 계약의 성립 시기는 “짐캐리”의 승낙이 회원에게 도달한 시점으로 합니다.\r\n\r\n4. “회원”은 “서비스” 안에 “내 정보” 화면을 통하여 언제든지 본인의 개인 정보를 열람하고 수정할 수 있습니다. 다만, “서비스” 관리를 위해서 필요한 이동 전화 번호 등은 수정이 불가능 할 수 있습니다.\r\n\r\n5. “회원”은 등록 사항에 변경이 있는 경우, 즉시 온라인 수정을 하거나 전자우편 및 기타 방법으로 “회사”에 그 변경 사항을 알려야 합니다.\r\n\r\n6. 제5항의 변경 사항을 “회사”에 알리지 않아 발생한 불이익에 대하여 “회사”는 책임지지 않습니다.\r\n\r\n7. 회원 가입은 반드시 본인의 진정한 정보를 통하여 가입할 수 있습니다. “회사”는 “회원”의 종류에 따라, 회원이 등록한 정보에 대하여 전문기관을 통한 실명확인 및 본인인증을 요청하거나, 파트너 회원의 경우 관할 행정기관에 연락하여 회원 가입 시 기재한 사항이 체육시설업 신고 현황과 일치하는지 확인하는 등 기타 확인 조치를 할 수 있습니다. “회원”의 정보가 “회원” 본인의 것이 아닌 경우 “회사”는 회원 가입을 거부할 수 있습니다.\r\n\r\n8. “회사”는 “회원”을 등급 별로 구분하여 이용 시간, 이용 회수, 서비스 메뉴, 콘텐츠 등록 제한 등을 세분하여 서비스 이용에 차등을 둘 수 있습니다.\r\n\r\n제 10조 (이용계약의 해지 및 회원 탈퇴)\r\n\r\n1. \"회원”은 “짐캐리\"에 언제든지 탈퇴를 요청하여 이용 계약을 해지할 수 있습니다. 단 이용 계약이 종료되면 “회사”는 회원에게 부가적으로 제공한 각종 혜택을 회수할 수 있습니다.\r\n\r\n2. 제 1항에 따라 해지를 한 회원은 이 약관이 정하는 회원 가입 절차와 관련 조항에 따라 신규 회원으로 다시 가입 할 수 있습니다. 다만 회원이 중복 참여가 제한 된 판촉 이벤트 중복 참여 등 부정한 목적으로 회원 탈퇴 후 재이용을 신청하는 경우 “회사”는 6개월간 가입을 거부할 수 있습니다. 또한 가입신청자가 콘텐츠 등록, 허위정보 신고 등 관련하여 이용정지 혹은 이용계약 해지의 제재를 받은 적이 있는 경우, 운동닥터는 해당 가입신청자의 재가입을 거부할 수 있습니다.\r\n\r\n3. 제 1항에 따라 해지를 한 이후에는 재가입이 불가하며, 모든 가입은 신규 가입으로 처리 됩니다.\r\n\r\n4. 회원이 다음 각 호의 사유에 해당하는 경우, “짐캐리”는 회원의 서비스 이용 정지, 일부 서비스 제한, 이용계약 해지 등을 할 수 있습니다.\r\n\r\n가입 신청 시에 허위 내용을 등록한 경우\r\n다른 사람의 이용을 방해하거나 그 정보를 도용하는 등 질서를 위협하는 경우\r\n“짐캐리”를 이용하여 법령 또는 이 약관이 금지하는 행위를 하는 경우\r\n“짐캐리” 서비스를 이용하여 “짐캐리”의 회원을 타 서비스로 유도하는 경우\r\n기타 ”회사”의 합리적인 판단에 기하여 서비스의 제공을 거부할 필요가 있다고 객관적으로 인정되는 경우\r\n5. “회사”는 “회원”이 적절하지 않은 정보를 게시했다고 판단하는 경우, 회원이 제공한 콘텐츠를 수정 또는 삭제, 회원의 서비스 이용정지, 이용계약 해지, 이용계약 해지 후 재가입 또는 신규가입 거부 등의 조치를 취할 수 있습니다.\r\n\r\n6. 회원이 다음 각 호의 사유에 해당하는 경우, “짐캐리”는 회원과의 이용계약을 해지할 수 있습니다.\r\n\r\n“짐캐리”가 회원 자격을 제한·정지시킨 후, 회원 자격을 제한 또는 정지시킨 사유와 동일한 행위를 2회 이상 반복하거나, ”운동닥터”가 그러한 사유를 시정할 것을 요청하였음에도 불구하고 요청 후 30일 이내에 그 사유가 시정되지 아니하는 경우\r\n“파트너 회원”이 적절하지 않은 “콘텐츠”를 게시하는 행위가 2회 이상 반복되는 경우\r\n다른 회원의 권리나 명예, 신용 기타 정당한 이익을 침해하거나 대한민국 법령 또는 공서 양속에 위배되는 행위를 한 경우\r\n회원가입신청 승낙거부 사유가 추후 발견된 경우\r\n회사의 확인 결과 회원이 휴업 또는 폐업한 경우\r\n회사가 제공하는 서비스의 원활한 진행을 방해하는 행위를 하거나 시도한 경우\r\n회사가 정한 서비스 운영정책을 이행하지 않거나 위반한 경우\r\n기타 회사가 합리적인 판단에 기하여 서비스의 제공을 거부할 필요가 있다고 인정할 경우\r\n7. “회사”가 해지를 하는 경우 “회사”는 “회원”에게 “회원”이 등록한 e-mail, 전화, 기타의 방법을 통하여 해지 사유를 밝혀 해지 의사를 통지 합니다. 이용 계약은 “회사”의 해지 의사를 회원에게 통지한 시점에서 종료 됩니다.\r\n\r\n8. 본 항에서 정한 바에 따라 이용 계약이 종료된 경우에는, 회원의 재이용 신청에 대하여 “회사”는 이에 대한 승인을 거부 할 수 있습니다.\r\n\r\n제 11조 (050 연결 전화번호 서비스 이용)\r\n\r\n1. 서비스 제공을 위한 “050 연결 전화번호”는 “회사”에 의해 자동으로 부여됩니다.\r\n\r\n2. “회원”은 서비스 내에서 \"050 연결 전화번호”를 선택 및 변경할 수 없으나, 개인정보 및 서비스 이용상의 문제로 고객센터 요청 시 번호 변경 조치가 시행될 수 있습니다.\r\n\r\n3. “회사”가 부여한 \"050 연결 전화번호”를 거부하는 “회원”은 \"050 연결 전화번호”가 부여되지 않습니다. 단, 이러한 경우 \"짐캐리” 서비스의 일부 또는 전부의 이용이 어려울 수 있습니다.\r\n\r\n3. “회사”는 서비스 제공에 필요하거나 기술상 필요한 경우 번호를 임의로 변경할 수 있습니다.\r\n\r\n4. “회사”는 번호자원의 효율적인 운영을 위하여 최근 3개월 동안 수신과 발신 통화량이 전혀 발생하지 않은 번호에 대해서는 통지 후 번호를 회수할 수 있습니다.\r\n\r\n제 12 조 (개인정보의 보호)\r\n\r\n“회사”는 “회원”의 개인정보를 적법하게 수집, 이용하고 안전하게 보관합니다. “회사”는 필요·최소한의 개인정보만 수집·이용하고, “회원”의 동의 또는 법령상 근거가 없는 이상 제3자에게 제공하지 않습니다. “회원”은 법령에서 달리 정하고 있지 않는 이상 언제든지 “회사”가 처리하고 있는 개인정보의 열람·처리정지·수정·삭제를 요청할 수 있고, “회사”는 지체 없이 관련 조치를 취합니다. 그 밖에 개인정보 수집, 이용, 제3자 제공, 수탁, 파기 등에 관한 사항은 “회사”가 별도로 제공하는 “개인정보 처리방침”에 따릅니다. “회사”의 홈페이지 또는 어플리케이션 이외의 사이트에는 회사의 약관과 개인정보 처리방침이 적용되지 않습니다.\r\n\r\n제 13조 (체육시설 및 코치 정보 제공 서비스)\r\n\r\n“회사”는 체육시설 및 코치 에 관한 정보 제공 서비스를 운영하며, “이용자”는 스스로 해당 정보를 통하여 타 이용자와 상담을 할 수 있습니다. “회사”는 “이용자”와 직접 상담 및 거래를 하지 않으며, “이용자” 간의 성립된 상담 및 계약과 관련된 법적 책임은 당사자인 이용자들 스스로가 부담합니다.\r\n\r\n제 14 조 (정보 제공 및 광고 게재)\r\n\r\n1. “회사”는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보를 서비스 내 공지사항, 서비스 화면, 전자 우편 등의 방법으로 회원에게 제공 할 수 있습니다. 다만, 회원은 관련법에 따른 상담 관련 정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 위 정보 제공에 대하여 수신 거절을 할 수 있습니다.\r\n\r\n2. “회사”는 서비스 운영과 관련하여 “회사”가 제공하는 서비스의 화면 및 홈페이지 등에 광고를 게재할 수 있습니다.\r\n\r\n제 15조 (부적합 정보 및 허위 정보)\r\n\r\n회사는 짐캐리에 게시된 정보 중 사회통념, 관례에 부적합하거나 허위 정보로 판단되는 경우 비공개처리 후 삭제, 수정을 요청하거나 직접 삭제 또는 수정 할 수 있으며, 그러한 정보 제공이 본 약관에 위배되는 경우 해당 회원의 서비스 이용을 정지하거나 회원과의 이용계약을 해지할 수 있습니다. 운동닥터에 부적합한 정보 및 허위 정보를 등록하여 상담 및 계약 과정에서 타 이용자에게 손해가 발생하는 경우, 정보 등록자는 관련 법령에 의거하여 책임을 질 수 있습니다.\r\n\r\n제 16조 (상담 및 계약의 성립, 서비스의 이용)\r\n\r\n1. “짐캐리”는 통신판매중개자로서 거래 당사자가 아니며, 상품정보 및 거래에 대한 책임은 해당 “파트너 회원(판매자)”에게 있습니다.\r\n\r\n2. “짐캐리”를 통해 전화 및 문자 등의 수단으로 상담이 이루어지는 경우, 당사자간 거래 또는 계약이 이루어지는 경우 “회사”는 상담 당사자 간의 상담 및 계약에 개입하지 않으며, 이와 관련해서 일체의 책임을 부담하지 않습니다.\r\n\r\n3. “이용자”는 짐캐리서비스에서 정보 게시나 정보 찾기 등 체육시설 및 코치 정보를 제공할 경우, 반드시 기본적으로 제공할 것으로 지정되어 있는 항목을 기재해야 하며, 추가적인 정보를 기재할 때에도 “짐캐리”에서 지정하는 양식과 방법에 따라서 기재해야 합니다.\r\n\r\n4. “이용자”는 각자가 제공한 정보에 대한 법적인 책임을 집니다.\r\n\r\n5. “짐캐리”는 제18조의 규정된 컨텐츠 사용 목적과 방법에 따라서만 이용자가 제공한 정보를 사용합니다.\r\n\r\n6. 이용자가 제공하는 상세설명과 이미지는 제 3자의 권리를 침해하지 않아야 합니다.\r\n\r\n제 18 조 (콘텐츠 사용에 대한 권리)\r\n\r\n1. “이용자”는 “짐캐리”에 직접 작성한 콘텐츠에 대한 저작권을 보유합니다.\r\n\r\n2. “이용자”는 “짐캐리”에 직접 작성한 콘텐츠를 제공함으로써, 콘텐츠 제공 시점부터 회사에 다음과 같은 내용의 해당 콘텐츠 이용권한을 부여합니다.\r\n\r\n콘텐츠 이용 목적 : “짐캐리”의 체육시설 및 코치 정보 제공 서비스 운영, “짐캐리” 서비스의 온라인/오프라인 광고, “짐캐리” 서비스 기획, 운영, 고도화, 예측, 전략 수립 등을 위한 빅데이터 분석\r\n콘텐츠 이용 권한 : 복제, 배포, 전시, 수정, 공연, 파생저작물 제작이 가능한, 취소불가능한, 비독점적인, 로열티가 없는, 완납된, 전세계적인 라이선스 권한\r\n3. “이용자”는 본조 제2항의 콘텐츠 이용권한을 회사에 제공할 수 있는 권리를 가지고 있음을 보증합니다.\r\n\r\n제 19 조 (회사의 의무)\r\n\r\n1. “회사”는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 서비스를 운영하는데 최선을 다하여야 합니다.\r\n\r\n2. “회사”는 이용자 상호간의 상담 및 거래에 있어서 어떠한 보증도 제공하지 않습니다. 이용자 상호간 거래 행위에서 발생하는 문제 및 손실에 대해서 “회사”는 일체의 책임을 부담하지 않으며, 거래 당사자 간에 직접 해결해야 합니다.\r\n\r\n제 20 조 (회원의 ID 및 비밀번호에 대한 의무)\r\n\r\n1. ID와 비밀번호에 관한 관리책임은 “회원”에게 있습니다.\r\n\r\n2. “회원”은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.\r\n\r\n3. “회원”이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 “짐캐리”에 통보하고 “짐캐리”의 안내가 있는 경우에는 그에 따라야 합니다.\r\n\r\n제 21 조 (이용자의 의무)\r\n\r\n1. “이용자”는 다음 행위를 하여서는 안됩니다. 만약 다음 각 호와 같은 행위가 확인되면 “짐캐리”는 추가적인 피해 발생을 막기 위하여 “이용자”에게 위반 사실과 서비스 일시 중단을 통지하고 5일 이내에 시정할 것을 요구합니다. “이용자”가 동 기간 내에 소명하지 아니하거나 정당한 사유를 제시하지 못할 경우 “짐캐리”는 “이용자”와의 서비스 이용 계약을 해지할 수 있습니다.\r\n\r\n타인의 정보 도용\r\n“짐캐리”에 게시된 정보의 허위 변경\r\n“짐캐리”가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시\r\n“짐캐리” 기타 제3자의 저작권 등 지적재산권에 대한 침해\r\n“짐캐리” 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위\r\n외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서 양속에 반하는 정보를 “짐캐리\"에 공개 또는 게시하는 행위\r\n“짐캐리”에 게시된 “파트너 회원\"의 연락처 또는 개인정보를 상담 및 직접 거래 외 다른 용도로 사용\r\n“회사” 서비스 운영을 고의 및 과실로 방해하는 경우\r\n기타 현행 법령 위반 등 중대한 사유로 인하여 “회사”가 서비스 제공을 지속하지 못할 객관적인 이유가 있는 경우\r\n제 22 조 (사용 가능한 결제 수단)\r\n\r\n1. 회원은 짐캐리에서 이루어지는 서비스 거래에 대한 대금 지급방법을 다음 각 호의 하나로 할 수 있습니다.\r\n\r\n직불카드, 신용카드 등의 각종 카드 결제\r\n카카오페이, 페이코 등의 각종 간편결제\r\n기타 회사가 지정하는 결제 수단\r\n제 23 조 (구매신청)\r\n\r\n1. 회원은 이 약관 및 회사가 정한 규정에 따라 아래와 같이 파트너 회원(판매자)의 서비스에 대한 구매를 신청합니다.\r\n\r\n회원정보(성명, 연락처) 입력\r\n서비스 선택사항 입력\r\n결제방법 선택\r\n결제방법에 따른 결제 정보 입력\r\n개인정보 제3자 제공 및 취소/환불 약관에 대한 동의\r\n2. 결제와 관련하여 회원이 입력한 정보 및 그 정보와 관련하여 발생한 불이익은 전적으로 회원이 부담하여야 합니다.\r\n\r\n제 24 조 (취소/환불)\r\n\r\n1. 이용자가 구매 신청한 서비스 등을 부득이한 사정으로 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고, 이미 짐캐리에 결제가 완료된 경우에는 통지일로부터 3일 이내에 취소 및 환불 절차를 취합니다.\r\n\r\n2. 짐캐리에서 이루어지는 거래에 대해 회사가 제시하는 분쟁해결 기준은 각 구매(결제) 페이지 취소/환불 약관에 표기되어 있으며, 이는 파트너 회원(판매자)의 환불 규정에 따라 변경될 수 있습니다.\r\n\r\n3. 회사는 통신판매중개자로서 원칙적으로 회원 간 거래에 대하여 환불 의무가 없으며, 당사자간 원활한 분쟁 해결을 위하여 기준을 제시할 뿐이므로 회사는 이에 대한 책임을 보증하지 않습니다. 회원 사이에 분쟁이 발생한 경우 관련 당사자간 해결이 분쟁해결기준보다 앞서므로, 파트너 회원(판매자)의 판단 하에 환불규정 기준 이상으로 구매자에게 환불을 할 수 있습니다.\r\n\r\n제 25 조 (파트너 회원의 매출 및 수수료 정산)\r\n\r\n1. 파트너 회원은 회사가 서비스 판매 대금을 결제 받고 이에 대한 정산 업무를 수행하는 것에 동의합니다.\r\n\r\n2. 파트너 회원은 짐캐리에서 판매하는 서비스 대금의 전부나 일부를 회사 서비스 외의 방식을 통하여 직접 받거나 받기 위한 일체의 시도를 하여서는 안됩니다\r\n\r\n3. 짐캐리를 통해 상담이 진행된 이용자가 파트너 회원에게 직접 지급하려고 하는 경우에도 파트너 회원은 반드시 짐캐리 서비스를 통하여 결제하도록 하여야 합니다.\r\n\r\n4. 회사는 각 이용자가 지불한 금액에서 ‘플랫폼 서비스 이용료’를 공제한 나머지 금액을 파트너 회원에게 지급합니다.\r\n\r\n5. ‘플랫폼 서비스 이용료’는 [제 27조, 제 28조]와 같으며 협의 또는 회사의 경영상 필요, 내부 사정에 따라 요율, 결제방법 등이 변경될 수 있습니다.\r\n\r\n6. 회사는 매월, 전월의 플랫폼 서비스 이용료에 대한 세금계산서를 파트너 회원에게 제공해야 합니다.\r\n\r\n7. 회사는 파트너 회원이 정산정보에 기재한 입금계좌로 정산 대금을 지급합니다. 파트너 회원이 지정한 입금 계좌의 예금주는 회원 본인 또는 소속된 시설 사업자임을 원칙으로 합니다.\r\n\r\n제 26 조 (파트너 회원 정산의 보류)\r\n\r\n1. 회사는 파트너 회원의 귀책사유로 인해 회사 및 이용자에게 발생한 손해 등의 제비용을 판매대금 정산 시 공제할 수 있으며, 파트너 회원과의 이용계약 종료 후 당해 파트너 회원의 판매대금의 일정 비율에 해당하는 금액을 이용계약 종료일로부터 일정기간 동안 예치하여 동 기간 동안 이용자로부터의 환불 등 클레임 제기 시 관련 비용의 지급에 사용할 수 있습니다.\r\n\r\n2. 파트너 회원의 채권자의 신청에 의한 판매대금의 가압류, 압류 및 추심명령 등 법원의 결정이 있을 경우, 회사는 파트너 회원과 채권자 간의 합의 또는 채무액의 변제 등으로 동 결정이 해제될 때까지 판매대금의 정산을 중지할 수 있습니다.\r\n\r\n3. 파트너 회원이 본 약관의 규정을 위반하거나 위반한 것으로 의심될 만한 타당한 정황이 있는 경우 거래에 대한 처리, 취소 등을 위해 판매대금의 정산을 일정기간 보류할 수 있습니다.\r\n\r\n4. 본 조에 정한 외에도 법률의 규정에 의하거나 합리적인 사유가 있는 경우에는 회사는 파트너 회원에게 통지하고 판매대금의 전부 또는 일부에 대한 정산을 일정 기간 유보하거나 회사가 파트너 회원에게 가지는 채권과 상계할 수 있습니다.\r\n\r\n제 27 조 (파트너 회원의 플랫폼 서비스 이용료)\r\n\r\n1. 플랫폼 서비스 이용료는 다음과 같습니다.\r\n\r\n중개 이용료\r\n결제 서비스 수수료\r\n부가가치세 등 제세공과금\r\n2. 플랫폼 서비스 이용료는 서비스 판매 설정 페이지, 관리 페이지에 표기된 수수료로 합니다. 단, 회사와 파트너 회원간의 협의 또는 회사의 내부적인 정책 등에 따라 수수료 및 징수 방법을 다르게 정할 수 있습니다.\r\n\r\n제 28 조 (파트너 회원의 정산 및 세무 업무에 대한 동의)\r\n\r\n1. 본인은 회사가 정산 및 지급 업무를 수행함에 있어 등기부등본상 법인명, 사업자등록증상 사업자명, 본인의 실명 등 기타 개인정보를 이용하여 사업소득신고 등 세무 업무를 수행하는 것에 동의합니다.\r\n\r\n2. 본인은 타사 또는 타인의 명의나 계좌 등을 이용하여 정산 및 지급 업무를 할 것을 회사에 요구하지 않을 것을 확약합니다.\r\n\r\n제 29 조 (저작권의 귀속 및 이용 제한)\r\n\r\n“이용자”는 서비스를 이용함으로써 얻은 정보·컨텐츠 중 “회사”가 저작권 등 지적 재산권을 보유하고 있는 정보·컨텐츠를 “회사”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 이용하거나 제3자에게 이용하게 하여서는 안됩니다.\r\n\r\n제 30 조 (면책 및 회원·이용자간 분쟁해결)\r\n\r\n1. “회사”는 천재지변, 전쟁 및 기타 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 대한 책임이 면제됩니다.\r\n\r\n2. “회사”는 기간통신 사업자가 전기통신 서비스를 중지하거나 정상적으로 제공하지 아니하여 손해가 발생한 경우 책임이 면제됩니다.\r\n\r\n3. “회사”는 서비스용 설비의 보수, 교체, 점검, 공사 등 서비스 운영에 필요한 상당한 사유로 발생한 손해에 대해 회사의 고의 또는 과실이 없는 한 책임이 면제됩니다.\r\n\r\n4. “회사”는 “이용자”의 귀책사유로 인한 서비스 이용의 장애 또는 손해에 대하여 책임을 지지 않습니다.\r\n\r\n5. “회사”는 “이용자”의 컴퓨터 또는 스마트폰 오류에 의해 손해가 발생한 경우, 또는 신상정보 및 전자우편 주소를 부실하게 기재하여 손해가 발생한 경우 책임을 지지 않습니다.\r\n\r\n6. “회사”는 이용자가 서비스를 이용하여 기대하는 수익을 얻지 못하거나 상실한 것에 대하여 책임을 지지 않습니다.\r\n\r\n7. “회사”는 회원이 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여 회사의 고의 또는 중대한 과실이 없는 한 책임을 지지 않습니다.\r\n\r\n8. \"회사”는 이용자 상호간 및 이용자와 제 3자 사이에 발생한 분쟁에 대해 개입할 의무가 없으며, 이로 인한 손해를 책임을 지지 않으며, 그러한 분쟁은 분쟁당사자들이 직접 해결하여야 합니다.\r\n\r\n9. 푸시 알림(App Push)으로 발송되는 모든 정보는 참고 용도로만 사용할 수 있으며, 시스템 오류, 천재지변 등으로 인하여 알림이 정상적으로 발송되지 않을 수 있습니다. 이에 관련한 피해에 대해서 “회사”는 책임을 지지 않습니다.\r\n\r\n제 31 조 (재판권 및 준거법)\r\n\r\n1. 서비스 이용과 관련하여 회사와 이용자 간의 분쟁에 관한 소송의 관할은 민사소송법에 의합니다.\r\n\r\n2. 본 계약은 대한민국 법에 의하여 해석됩니다.\r\n\r\n본 약관의 공지 및 시행 일자는 다음과 같습니다.\r\n\r\n공지일자: 2020년 10 월 8 일\r\n\r\n시행일자: 2020년 10 월 15 일','2021-09-05 03:54:22',1),(2,'약관 및 정책','[개인정보 보호정책]','주식회사 짐캐리[이하 “짐캐리” 또는 “회사”라 한다]은 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보 보호법을 비롯한 모든 개인정보보호 관련 규정을 준수함에 따라 개인정보 처리방침을 수립∙공개하고 있습니다. 회사는 이를 인터넷 홈페이지 및 모바일 애플리케이션에 공개하여 이용자가 언제나 용이하게 열람할 수 있도록 하여 이용자 권익보호에 최선을 다하고 있습니다.\r \r - 제1조 개인정보의 처리 목적\r \r 회사는 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.\r \r 1. 짐캐리 회원가입 및 관리\r 회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별∙인증, 회원자격 유지∙관리, 본인확인, 서비스 부정이용 방지, 각종 고지∙통지, 고충처리 등을 목적으로 개인정보를 처리합니다.\r \r 2. 서비스 제공\r 서비스 제공, 콘텐츠 제공, 맞춤서비스 제공 등을 목적으로 개인정보를 처리합니다.\r \r 3. 마케팅 또는 이벤트 실시\r 마케팅 또는 이벤트 참여기회 제공, 광고정보 제공 등의 목적으로 개인정보를 처리합니다.\r \r 제2조 개인정보의 처리 및 보유기간\r \r 회사는 법령과 운영 방침에 따른 개인정보 보유∙이용기간 또는 정보주체로부터 개인정보를 수집 시 동의 받은 개인정보 보유∙이용기간 내에서 개인정보를 처리∙보유합니다.\r \r 1. 짐캐리 회원가입 및 관리: 회원 탈퇴 시 까지\r 다만, 다음의 사유에 해당하는 경우에는 해당 사유 종료 시까지\r \r 1) 관계 법령 위반에 따른 수사∙조사 등이 진행중인 경우, 해당 수사∙조사 종료 시까지\r 1) 회원이 2년간 서비스 이용기록이 없는 경우, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제29조에 따라 회원에게 사전 통지하고 즉시 파기합니다.\r 2. 마케팅 또는 이벤트 실시: 마케팅 또는 이벤트 종료 후 60일\r \r 다만, 이용자가 철회 요청하는 경우 지체 없이 해당 개인정보를 파기함\r \r 3. 서비스 제공: 서비스 공급완료 및 요금 결제∙정산 완료 시\r \r 다만, 다음의 사유에 해당하는 경우에는 해당 사유 종료 시까지\r \r 1) 「전자상거래 등에서의 소비자보호에 관한 법률」에 따른 표시∙광고, 계약내용 및 이행 등 거래에 관한 기록\r \r 표시 및 광고에 관한 기록: 6개월\r \r 계약 또는 청약철회 등에 관한 기록: 5년\r \r 대금결제 및 재화 등의 공급에 관한 기록: 5년\r \r 소비자의 불만 또는 분쟁처리에 관한 기록: 3년\r \r 제3조 개인정보의 제3자 제공\r \r 회사는 이용자의 개인정보를 ‘제2조 개인정보의 수집∙이용 목적’에서 고지한 범위 내에서 사용하며, 동의 범위를 초과하여 이용하거나 원칙적으로 제3자에게 제공하지 않습니다.\r \r 다만, 다음의 경우에는 개인정보를 제3자에게 제공할 수 있습니다.\r \r 1. 통계작성, 학술연구나 시장조사를 위해 특정 개인을 식별할 수 없는 형태로 가공하여 제공하는 경우\r \r 2. 이용자들이 사전에 동의한 경우\r \r 3. 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우\r \r 제4조 개인정보처리의 위탁\r \r 회사는 더 나은 서비스를 제공하기 위하여 이용자의 개인정보 처리를 외부전문기관에 위탁할 수 있으며, 위탁하는 업무의 내용과 수탁자를 언제든지 쉽게 확인할 수 있도록 회사의 개인정보 처리방침에 지속적으로 게재하여 공개합니다.\r \r 1. 회사는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.\r \r 수탁 업체 : 델피콤\r 위탁 내용 : 050 전화번호 연결 서비스\r 위탁 기간 : 위탁계약 종료 시 또는 회원탈퇴 시\r 수탁 업체 : Amazon Web Service inc.\r 위탁 내용 : 데이터 보관\r 위탁 기간 : 위탁계약 종료 시 또는 회원탈퇴 시\r 2. 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체 없이 본 개인정보 처리방침을 통하여 공개합니다.\r \r 제5조 정보주체의 권리∙의무 및 행사방법\r \r 1. 이용자는 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.\r \r 개인정보 열람요구\r 오류 등이 있을 경우 정정 요구\r 삭제요구\r 처리정지 요구\r 2. 제1항에 따른 권리 행사는 서면, 전화, 전자우편, 팩스 등을 통하여 하실 수 있으며 회사는 이에 대해 지체 없이 조치합니다.\r \r 3. 이용자가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우, 회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.\r \r 4. 제1항에 따른 권리 행사는 이용자의 법정대리인이나 위임을 받은 자 등 대리인을 통해 할 수 있습니다.\r \r 5. 이용자는 정보통신망법, 개인정보 보호법 등 관계법령을 위반하여 회사가 처리하고 있는 이용자 본인이나 타인의 개인정보 및 사생활을 침해할 수 없습니다.\r \r 제6조 처리하는 개인정보 항목\r \r 회사는 다음의 개인정보 항목을 처리하고 있습니다.\r \r 1. 짐캐리 개인사용자회원가입및관리\r \r 필수항목: 성명, 이메일, 비밀번호\r 선택항목: 휴대전화번호\r 2. 짐캐리 파트너 회원 가입 및 관리\r \r 필수항목: 성명, 휴대전화번호, 이메일, 성별, 비밀번호, 소속 체육시설 정보(체육시설 명칭, 주소, 전화번호, 대상 고객 성별)\r 선택항목: 예명, 회원가입 경로, 사업자등록정보(사업자등록증, 사업자등록번호, 사업자명), 주민등록정보(주민등록증, 주민등록번호), 계좌 정보(은행명, 예금주, 계좌번호)\r 3. 마케팅 또는 이벤트 실시\r \r 필수항목: 성명, 휴대전화번호, 마케팅 또는 이벤트 관련 응모내용\r 선택항목: 없음\r 4. 인터넷 서비스 이용과정에서 개인정보가 자동으로 생성∙수집될 수 있습니다.\r \r IP주소, 쿠키, MAC주소, 서비스 이용기록, 방문기록 등\r \r 제7조 개인정보의 파기\r \r 1. 회사는 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체 없이 개인정보를 파기합니다.\r \r 2. 이용자로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는 해당 개인정보를 별도의 데이터베이스(DB)에 옮기거나 보관장소를 달리하여 보존합니다.\r \r 3. 개인정보 파기 절차 및 방법은 다음과 같습니다.\r \r 파기절차\r 회사는 파기 사유가 발생한 개인정보를 선정하고, 회사의 개인정보 보호책임자의 승인을 받아 개인정보를 파기합니다.\r \r 파기방법\r 회사는 전자적 파일 형태로 기록∙저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다. 종이 문서에 기록∙저장된 개인정보는 분쇄기로 분쇄하여 파기합니다.\r \r 제8조 개인정보의 안전성 확보조치\r \r 회사는 이용자의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 유출, 변조 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적∙관리적∙물리적 조치를 취하고 있습니다.\r \r 1. 관리적 조치\r \r 개인정보 내부관리계획의 수립 및 시행\r 개인정보취급자 지정 최소화 및 교육\r 2. 기술적 조치\r \r 개인정보 접근 제한\r 접속기록 보관 및 위∙변조 방지\r 3. 물리적 조치\r \r 비인가자에 대한 출입 통제\r 회사는 이용자 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다. 회원 개개인이 본인의 개인정보를 보호하기 위해서 자신의 아이디와 비밀번호를 적절하게 관리하고 여기에 대한 책임을 져야 합니다.\r \r 제9조 개인정보 자동 수집 장치의 설치∙운영 및 거부에 관한 사항\r \r 1. 쿠키는 웹 서비스 제공자의 서버가 이용자의 컴퓨터로 전송하는 소량의 정보이며, 여기에는 방문한 웹사이트의 정보 등이 담겨 있습니다. 쿠키는 이용자 컴퓨터의 웹 브라우저는 식별하지만 이용자를 개인적으로 식별하지는 않으며, 이용자는 웹 브라우저의 옵션 메뉴를 통해 쿠키의 수용 여부 등을 설정할 수 있습니다.\r \r 2. 회사는 쿠키를 통해 별도로 개인정보를 수집하거나 활용하지 않습니다. 방문자는 쿠키에 대해 선택권을 가지고 있습니다.\r \r 3. 웹 브라우저 상단의 [IE: 도구 - 인터넷 옵션 - 개인정보 – 고급정보 / Chrome: 설정 - 고급 - 콘텐츠 설정 - 쿠키]에서 모든 쿠키의 허용, 동의를 통한 쿠키의 허용, 모든 쿠키의 차단을 스스로 결정할 수 있습니다.\r \r 제10조 개인정보 보호책임자\r \r 1. 회사는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 이용자의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.\r \r 개인정보 보호책임자\r 성명: 김성환\r 직위: 대표자\r 메일: gymcarry@gmail.com\r 서비스 대표 메일 : help@gymcarry.co.kr\r 2. 이용자는 회사의 서비스를 이용하면서 발생한 모든 개인정보보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 서비스 대표 연락처로 문의하실 수 있습니다. 회사는 정보주체의 문의에 대해 지체 없이 답변 및 처리합니다.\r \r 제11조 개인정보 열람청구\r \r 1. 회사는 이용자의 개인정보를 보호하고 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다. 회사는 이용자와의 원활한 의사소통을 위해 고객센터를 운영하고 있으며 연락처는 다음과 같습니다.\r \r 고객센터\r 대표번호: 0507-0270-7000\r 메일: help@gymcarry.co.kr\r 2. 고객센터 운영시간은 평일 오전 10시부터 오후 6시(10:00~18:00)까지 운영되고 있으며 토요일, 공휴일은 운영하지 않습니다.\r \r 제12조 권익침해 구제방법\r \r 1. 개인정보에 관한 권익을 침해 당한 경우, 개인정보 침해신고센터, 대검찰청 컴퓨터 등 첨단범죄 신고, 사이버경찰청 등으로 문의하실 수 있습니다.\r \r 개인정보 침해신고센터\r 전화번호: 118\r 홈페이지: privacy.kisa.or.kr\r 개인정보 분쟁조정위원회\r 전화번호: 1833-6972\r 홈페이지: www.kopico.go.kr\r 대검찰청 사이버범죄수사단\r 전화번호 : 1301\r 홈페이지 : www.spo.go.kr\r 경찰청 사이버안전국\r 전화번호 : 182\r 홈페이지 : cyberbureau.police.go.kr\r \r 제13조 개인정보 처리방침 변경에 관한 사항\r \r 1. 본 「개인정보 처리방침」은 2019년 4 월 30일에 최초 제정되었으며, 정부 및 회사의 정책 또는 보안기술의 변경에 따라 내용의 추가, 삭제 및 수정이 있을 경우에는 개정 최소 7일 전부터 서비스의 ‘공지사항’을 통해 고지하고, 본 정책은 시행일자에 시행됩니다.\r \r 공지일자: 2020년 10 월 13 일\r \r 시행일자: 2020년 10 월 20 일\r \r 2. 이전 개인정보 처리방침은 약관 게시판에서 확인하실 수 있습니다.','2021-09-05 02:35:33',1),(3,'공지사항','개인정보처리방침 변경 안내','항상 짐캐리를 이용해 주시는 고객님께 감사드립니다.\r\n아래와 같이 2020년 10월 20일자로 개인정보 처리방침이 변경됨을 안내드립니다.\r\n\r\n공고일 : 2020년 10월 13일\r\n시행일 : 2020년 10월 20일\r\n\r\n변경 사유\r\n가. 파트너 회원(캐리, 센터)의 처리하는 개인정보 항목 변경\r\n\r\n변경 내용\r\n가. 선택항목 중 사업자등록정보, 주민등록정보, 계좌정보 추가 (짐캐리 매출 정산 목적)','2021-09-06 06:22:10',1),(4,'공지사항','서비스 이용 약관 변경 안내 (2021년 09월 15일 시행)','항상 짐캐리를 이용해 주시는 고객님께 감사드립니다.\r\n아래와 같이 2021년 09월 15일자로 서비스 이용 약관이 변경됨을 안내드립니다.\r\n\r\n공고일 : 2021년 09월 8일\r\n시행일 : 2021년 09월 15일\r\n\r\n변경 사유\r\n가. 레슨 구매 중개(결제) 기능 추가로 인한 관련 약관 보완\r\n\r\n변경 내용\r\n가. 기존 제 22조, 23조, 24조가 제 29조, 30조, 31조로 변경\r\n나. 아래 약관 조항 추가\r\n---\r\n\r\n제 16조 (상담 및 계약의 성립, 서비스의 이용)\r\n\r\n1. “짐캐리”는 통신판매중개자로서 거래 당사자가 아니며, 상품정보 및 거래에 대한 책임은 해당 “파트너 회원(판매자)”에게 있습니다.\r\n\r\n제 22 조 (사용 가능한 결제 수단)\r\n\r\n1. 회원은 짐캐리에서 이루어지는 서비스 거래에 대한 대금 지급 방법을 다음 각 호의 하나로 할 수 있습니다.\r\n\r\n1) 직불카드, 신용카드 등의 각종 카드 결제\r\n2) 카카오페이, 페이코 등의 각종 간편 결제\r\n3) 기타 회사가 지정하는 결제 수단\r\n\r\n\r\n제 23 조 (구매 신청)\r\n\r\n1. 회원은 이 약관 및 회사가 정한 규정에 따라 아래와 같이 파트너 회원(판매자)의 서비스에 대한 구매를 신청합니다.\r\n\r\n1) 회원 정보(성명, 연락처) 입력\r\n2) 서비스 선택 사항 입력\r\n3) 결제 방법 선택\r\n4) 결제 방법에 따른 결제 정보 입력\r\n5) 개인정보 제 3자 제공 및 취소/환불 약관에 대한 동의\r\n\r\n2. 결제와 관련하여 회원이 입력한 정보 및 그 정보와 관련하여 발생한 불이익은 전적으로 회원이 부담하여야 합니다.\r\n\r\n\r\n제 24 조 (취소/환불)\r\n\r\n1. 이용자가 구매 신청한 서비스 등을 부득이한 사정으로 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고, 이미 짐캐리에 결제가 완료된 경우에는 통지일로부터 3일 이내에 취소 및 환불 절차를 취합니다.\r\n\r\n2. 짐캐리에서 이루어지는 거래에 대해 회사가 제시하는 분쟁 해결 기준은 각 구매(결제) 페이지 취소/환불 약관에 표기되어 있으며, 이는 파트너 회원(판매자)의 환불 규정에 따라 변경될 수 있습니다.\r\n\r\n3. 회사는 통신판매중개자로서 원칙적으로 회원 간 거래에 대하여 환불 의무가 없으며, 당사자 간 원활한 분쟁 해결을 위하여 기준을 제시할 뿐이므로 회사는 이에 대한 책임을 보증하지 않습니다. 회원 사이에 분쟁이 발생한 경우 관련 당사자 간 해결이 분쟁 해결 기준보다 앞서므로, 파트너 회원(판매자)의 판단 하에 환불 규정 기준 이상으로 구매자에게 환불을 할 수 있습니다.\r\n\r\n\r\n제 25 조 (파트너 회원의 매출 및 수수료 정산)\r\n\r\n1. 파트너 회원은 회사가 서비스 판매 대금을 결제 받고 이에 대한 정산 업무를 수행하는 것에 동의합니다.\r\n\r\n2. 파트너 회원은 짐캐리에서 판매하는 서비스 대금의 전부나 일부를 회사 서비스 외의 방식을 통하여 직접 받거나 받기 위한 일체의 시도를 하여서는 안됩니다\r\n\r\n3. 짐캐리를 통해 상담이 진행된 이용자가 파트너 회원에게 직접 지급하려고 하는 경우에도 파트너 회원은 반드시 짐캐리 서비스를 통하여 결제하도록 하여야 합니다.\r\n\r\n4. 회사는 각 이용자가 지불한 금액에서 ‘플랫폼 서비스 이용료’ 를 공제한 나머지 금액을 파트너 회원에게 지급합니다.\r\n\r\n5. ‘플랫폼 서비스 이용료’는 [제 27조, 제 28조]와 같으며 협의 또는 회사의 경영 상 필요, 내부 사정에 따라 결제 방법 등이 변경될 수 있습니다.\r\n\r\n6. 회사는 매월, 전월의 플랫폼 서비스 이용료에 대한 세금계산서를 파트너 회원에게 제공해야 합니다.\r\n\r\n7. 회사는 파트너 회원이 정산 정보에 기재한 입금 계좌로 정산 대금을 지급합니다. 파트너 회원이 지정한 입금 계좌의 예금주는 회원 본인 또는 소속된 시설 사업자임을 원칙으로 합니다.\r\n\r\n\r\n제 26 조 (파트너 회원 정산의 보류)\r\n\r\n1. 회사는 파트너 회원의 귀책사유로 인해 회사 및 이용자에게 발생한 손해 등의 제비용을 판매 대금 정산 시 공제할 수 있으며, 파트너 회원과의 이용 계약 종료 후 당해 파트너 회원의 판매 대금의 일정 비율에 해당하는 금액을 이용 계약 종료일로부터 일정 기간 동안 예치하여 동 기간 동안 이용자로부터의 환불 등 클레임 제기 시 관련 비용의 지급에 사용할 수 있습니다.\r\n\r\n2. 파트너 회원의 채권자의 신청에 의한 판매 대금의 가압류, 압류 및 추심 명령 등 법원의 결정이 있을 경우, 회사는 파트너 회원과 채권자 간의 합의 또는 채무액의 변제 등으로 동 결정이 해제될 때까지 판매 대금의 정산을 중지할 수 있습니다.\r\n\r\n3. 파트너 회원이 본 약관의 규정을 위반하거나 위반한 것으로 의심될 만한 타당한 정황이 있는 경우 거래에 대한 처리, 취소 등을 위해 판매 대금의 정산을 일정 기간 보류할 수 있습니다.\r\n\r\n4. 본 조에 정한 외에도 법률의 규정에 의하거나 합리적인 사유가 있는 경우에는 회사는 파트너 회원에게 통지하고 판매 대금의 전부 또는 일부에 대한 정산을 일정 기간 유보하거나 회사가 파트너 회원에게 가지는 채권과 상계할 수 있습니다.\r\n\r\n\r\n제 27 조 (파트너 회원의 플랫폼 서비스 이용료)\r\n\r\n1. 플랫폼 서비스 이용료는 다음과 같습니다.\r\n\r\n1) 중개 이용료\r\n2) 결제 서비스 수수료\r\n3) 부가가치세 등 제세공과금\r\n\r\n2. 플랫폼 서비스 이용료는 서비스 판매 설정 페이지, 관리 페이지에 표기된 수수료로 합니다. 단, 회사와 파트너 회원간의 협의 또는 회사의 내부적인 정책 등에 따라 수수료 및 징수 방법을 다르게 정할 수 있습니다.\r\n\r\n\r\n제 28 조 (파트너 회원의 정산 및 세무 업무에 대한 동의)\r\n\r\n1. 본인은 회사가 정산 및 지급 업무를 수행함에 있어 등기부등본상 법인명, 사업자등록증상 사업자명, 본인의 실명 등 기타 개인정보를 이용하여 사업소득신고 등 세무 업무를 수행하는 것에 동의합니다.\r\n\r\n2. 본인은 타사 또는 타인의 명의나 계좌 등을 이용하여 정산 및 지급 업무를 할 것을 회사에 요구하지 않을 것을 확약합니다.\r\n\r\n-----\r\n\r\n감사합니다.','2021-09-08 20:40:55',1),(5,'공지사항','나의 캐리를 찾는 법 \'GYM CARRY 짐캐리\' 출시!','안녕하세요, 짐캐리입니다.\r\n2021년 9월 9일 짐캐리 서비스가 출시되었습니다.\r\n\r\n---------------------------------------------------------\r\n\r\n나의 캐리를 찾는 법, \'짐캐리’\r\n\r\n▶︎ 한눈에 찾는 내 주변 캐리\r\n이젠 PT, 캐리 알아보기 쉬워요!\r\n내 주변 캐리를 알아보고, 즉시 상담 받아보세요!\r\n\r\n▶︎ 내 주변 PT는 얼마?\r\nPT 가격이 공개되어 믿을 수 있어요!\r\n\r\n▶︎ 캐리 프로필 한눈에 보기\r\n캐리의 사진, 특징, 가격, 스케줄, 자격증, 센터 정보를 손쉽게 확인하세요!\r\n\r\n▶︎ 직접 검증할 수 있는 자격증&경력\r\n\r\n▶︎ 실력있는 캐리 맞아?\r\n캐리 포트폴리오로, 다른 회원들의 변화를 확인하세요!\r\n\r\n▶︎ 캐리에게 즉시 상담받기\r\n캐리에게 1:1 문의를 통해 직접 상담을 받아보세요!\r\n(소속 플레이스의 연락처로 직접 상담 신청도 가능합니다.)','2021-09-09 09:20:59',1),(6,'약관 및 정책','[마케팅 정보 수신동의]','주식회사 짐캐리는 「개인정보보호법」 및 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 등 관계법령에 따라 광고성 정보 전송을 위한 사전 수신동의를 받고 있습니다.\r \r \r \r -전송방법\r \r 고객님의 모바일 앱푸시, 이메일, 문자를 통해 전달될 수 있습니다.\r \r \r \r -전송내용\r \r 발송되는 정보는 운동닥터가 제공하는 이벤트 및 혜택정보, 신규 게시물 정보, 운동정보 등을 관련 법의 규정을 준수하여 발송합니다.\r \r 단, 광고성 정보 이외 의무적으로 안내되어야 하는 정보성 내용은 수신동의 여부와 무관하게 제공됩니다.\r \r     \r \r -철회안내\r \r 수신동의 이후라도 동의를 철회할 수 있으며, 동의하지 않아도 회사가 제공하는 기본적인 서비스를 이용할 수 있습니다.\r \r \r \r -수신동의변경\r \r 짐캐리의 App 서비스를 통해 마케팅 정보 수신동의를 변경(동의/철회)할 수 있습니다.','2021-09-09 09:43:31',1),(7,'약관 및 정책','[정기결제 약관]','정기 결제 약관\r\n\r\n \r\n\r\n제 1조 (목적)\r\n\r\n본 약관은 주식회사 짐캐리(이하 “회사”)이 운영하는 짐캐리 서비스(웹사이트, 모바일 앱 등)에서 제공하는 정기 결제 상품를 이용하고자 하는 자와 회사 간의 권리·의무, 서비스 이용 절차 및 기타 제반 사항을 정함에 그 목적이 있다.\r\n\r\n \r\n\r\n제 2조 (용어의 정의)\r\n\r\n1. 정기 결제 상품이란, 회원이 가입할 수 있는 월 정액 유료 서비스로서 회사가 대상 회원에게 추가적으로 제공하는 각종 서비스 및 관련 부가서비스 일체를 의미한다.\r\n\r\n2. 회원이란, 『짐캐리 이용약관』에 동의하고 그 서비스를 이용하는 자로서, 본 서비스를 이용하기 위해 본 약관에 동의한 자를 의미한다.\r\n\r\n3. 대상 회원이란, 『짐캐리 이용약관』에 동의하고 그 서비스를 이용하는 자로서, 본 서비스 중 개별 서비스를 이용할 수 있는 요건을 갖춘 자를 의미한다.\r\n\r\n4. 대상 서비스란, 회사가 제공하는 본 서비스 중 회사가 개별 서비스에 대한 상세 설명을 통해 지정한 상품을 의미한다.\r\n\r\n5. 무료 체험 기간이란, 이벤트 또는 부가 서비스 등을 통해 회사가 본 회원에게 제공하며, 특정 상품을 무상으로 이용할 수 있는 기간을 의미한다.\r\n\r\n \r\n\r\n제 3조 (서비스의 제공 및 변경)\r\n\r\n1. 대상 회원, 대상 상품 및 대상 서비스의 내용 등은 회사의 사정에 따라 변경될 수 있으며, 그 변경으로 인하여 본 회원이 본 서비스를 중도에 이용하지 못하게 된 경우 회사는 본 약관 제 10조의 규정에 따라 환불한다.\r\n\r\n2. 본 서비스는 특정 회원에게 무료 체험 기간을 제공할 수 있으며, 해당 기간 본 회원은 무상으로 서비스를 이용할 수 있다. 다만, 무료 체험 기간 경과 후에는 이용료를 결제한 본 회원에 한하여 본 서비스를 제공한다.\r\n\r\n3. 회원은 특정 상품의 무료 체험 기간이 만료된 이후, 회원이 해당 상품에 등록한 결제 정보를 이용하여 회사가 이용료를 결제하는데 동의한다.\r\n\r\n4. 이용료 액수가 변경된 경우에는 변경된 이용료가 결제되는 시점에 회원에게 별도로 새로운 동의를 받아야 한다.\r\n\r\n \r\n\r\n제 4조 (본 서비스 가입 신청)\r\n\r\n1. 본 서비스는 대상 회원이 본 서비스를 위한 약관에 동의하고 결제 정보를 입력함으로써 정기 결제 상품을 가입 신청할 수 있다.\r\n\r\n2. 회사는 대상 회원에게 『짐캐리 이용약관』상 결격사유가 없으면 상품 가입 신청을 승인한다.\r\n\r\n \r\n\r\n제 5조 (추가 정보의 수집)\r\n\r\n회사는 본 서비스를 제공하기 위하여 필수적으로 요구되는 정보를 별도의 동의 없이 추가로 수집할 수 있다. 다만, 수집하는 정보가 개인정보에 해당하는 경우 관련 법령, 『짐캐리 이용약관』 및 『짐캐리  개인정보보호정책』상의 개인정보 보호 규정을 준수해야 한다.\r\n\r\n \r\n\r\n제 6조 (본 회원의 의무)\r\n\r\n회원은 회사로부터 본 서비스의 수령 및 이용료의 결제를 위해 회원 본인의 정보를 최신으로 유지하여야 하며, 회사는 회원 정보가 부정확하여 발생하는 불이익에 대하여 책임지지 않는다.\r\n\r\n \r\n\r\n제 7조 (회사의 통지 의무)\r\n\r\n1. 회사는 회원에게 본 서비스의 개별 서비스에 대해 설명하여야 하고, 서비스 내용의 변경이 있는 경우, 이를 회원에게 통지하여야 한다.\r\n\r\n2. 회원의 이용료가 결제된 경우 회사는 회원에게 결제 사실을 통지하여야 한다.\r\n\r\n \r\n\r\n제 8조 (금지 행위)\r\n\r\n1. 회원은 이 약관에 따른 회원의 권리, 의무의 전부 또는 일부를 타인에게 대여, 양도, 위임할 수 없다.\r\n\r\n2. 회원은 본 서비스의 정상적인 운영 또는 다른 회원의 본 서비스 이용을 방해하는 행위를 하여서는 아니된다.\r\n\r\n \r\n\r\n제 9조 (서비스의 중단)\r\n\r\n1. 회원의 카드 한도 초과 등으로 이용료의 결제가 이루어 지지 않을 경우 회사는 해당 회원에게 서비스 제공을 중지할 수 있으며, 위와 같은 상황이 지속되는 경우 회사는 해당 회원에게 영구적으로 서비스의 제공을 중단할 수 있다.\r\n\r\n2. 회원은 언제든지 본 서비스의 이용을 해지할 수 있다.\r\n\r\n \r\n\r\n제 10조 (환불)\r\n\r\n1. 회사는 본 서비스 및 개별 서비스에 대하여 결제 및 환불 조건과 그 변경 내용에 대해 회원에게 설명하여야 한다.\r\n\r\n2. 회원이 이용료를 결제한 이후 본 서비스가 중도에 해지 되는 경우, 아래와 같이 이용 기간에 따라 비용을 제하고 환불 조치한다.\r\n\r\n상품 이용 기간에 따른 비용 : 결제 금액 * (이용기간 / 결제한 월의 일수)\r\n \r\n\r\n제 11조 (기타)\r\n\r\n본 약관과 『짐캐리 이용약관』이 상충하는 경우 본 약관이 우선하여 적용되고, 본 약관에서 규정하지 않은 사항은 『짐캐리 이용약관』을 적용한다.\r\n\r\n \r\n\r\n본 약관의 공지 및 시행 일자는 다음과 같다.\r\n\r\n공지일자: 2021년 1 월 21 일\r\n\r\n시행일자: 2021년 1 월 28 일','2021-09-09 09:44:32',1);
/*!40000 ALTER TABLE `adminboard` ENABLE KEYS */;
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

-- Dump completed on 2021-09-26 22:47:59
