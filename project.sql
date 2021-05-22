-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: u_407417202
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

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `aID` int NOT NULL,
  `title` varchar(45) NOT NULL,
  `subtitle` varchar(45) DEFAULT NULL,
  `URL` varchar(100) DEFAULT NULL,
  `categary` varchar(100) NOT NULL,
  `picURL` varchar(450) DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'日語教學-日文五十音(完整版)','認識五十音','https://www.sigure.tw/learn-japanese/basic/50/seion.php','/final_project/article/?id=1','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621072307/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/50_a0geeu.jpg',0),(2,'N3文法「あがる／あげる」','N3文型','https://www.sigure.tw/learn-japanese/grammar/n3/01.php','/final_project/article/?id=2','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621072313/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/NO1_w3uet5.png',1),(3,'N4文法「になる」','N4文型','https://www.sigure.tw/learn-japanese/grammar/n4/05.php','/final_project/article/?id=3','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621072312/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/ninaru_w50yyi.png',2),(4,'N5文法「名詞-主詞轉換」','N5文型','https://www.sigure.tw/learn-japanese/grammar/n5/05.php','/final_project/article/?id=4','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621072312/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/n5_jlrbna.png',3),(5,'跟ryuuuTV學50音','認識五十音','https://www.youtube.com/embed/GmRdUUVgSAA','/final_project/article/?id=5','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621072313/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/reg-cover_nwchpa.jpg',0),(6,'N4文法04「によると」','N4文型','https://www.sigure.tw/learn-japanese/grammar/n4/04.php','/final_project/article/?id=6','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621339931/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/n4-grammar-04_cp5uvf.png',2),(7,'日本國定假日之快樂星期一制度','日本文化學習','https://www.sigure.tw/learn-japanese/mix/knowledge/happy-monday.php','/final_project/article/?id=7','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621560216/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/happy-monday_dwhmiq.png',4),(8,'日本新年號「令和」日文之由來與意思','日本文化學習','https://www.sigure.tw/learn-japanese/mix/knowledge/reiwa-year.php','/final_project/article/?id=8','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621560361/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/reiwa_zdd0u9.png',4),(9,'什麼是送假名？「関わる」跟「関る」有什麼不一樣？','日本文化學習','https://www.sigure.tw/learn-japanese/mix/knowledge/okurigana.php','/final_project/article/?id=9','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621560442/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/okurigana_jjg2dt.png',4),(10,'請求幫忙時不要說「ありがとう」','日本文化學習','https://www.sigure.tw/learn-japanese/mix/knowledge/yoroshiku.php','/final_project/article/?id=10','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621560519/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/yoroshiku_w3cpd3.png',4),(11,'聖誕節相關的豆知識','日本文化學習','https://www.sigure.tw/learn-japanese/mix/knowledge/christmas.php','/final_project/article/?id=11','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621560604/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/christmas_kjbv7e.png',4),(12,'N3文法02「一方(だ)」不斷地','N3文型','https://www.sigure.tw/learn-japanese/grammar/n3/02.php','/final_project/article/?id=12','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621560712/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/maxresdefault_kegdz3.jpg',1),(13,'N3文法15「ぎみ」有點','N3文型','https://www.sigure.tw/learn-japanese/grammar/n3/15.php','/final_project/article/?id=13','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621560814/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/n3-grammar-15_cbpdui.png',1),(14,'N3文法05「恐れがある」恐怕、恐有','N3文型','https://www.sigure.tw/learn-japanese/grammar/n3/05.php','/final_project/article/?id=14','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621560876/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/maxresdefault_1_p0gfzn.jpg',1),(15,'N3文法09「か何か」什麼之類的','N3文型','https://www.sigure.tw/learn-japanese/grammar/n3/09.php','/final_project/article/?id=15','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621560983/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/ka-nani-ka-%E3%81%8B%E4%BD%95%E3%81%8B-%E3%81%8B%E3%81%AA%E3%81%AB%E3%81%8B-jlpt-n3-grammar-meaning-%E6%96%87%E6%B3%95-%E4%BE%8B%E6%96%87-japanese-flashcards-900x506_pr5tr2.png',1),(16,'N4文法06「形容詞さ」表程度','N4文型','https://www.sigure.tw/learn-japanese/grammar/n4/06.php','/final_project/article/?id=16','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621561075/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/n4-grammar-06_atyaam.png',2),(17,'N4文法02「がする」感到、覺得','N4文型','https://www.sigure.tw/learn-japanese/grammar/n4/02.php','/final_project/article/?id=17','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621561128/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/n4-grammar-02-gasuru_fbefpy.png',2),(18,'N4文法08「形容詞+がる」表他人感覺','N4文型','https://www.sigure.tw/learn-japanese/grammar/n4/08.php','/final_project/article/?id=18','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621561252/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/n4-grammar-08_tkxjn9.png',2),(19,'N4文法09「形容動詞變化」','N4文型','https://www.sigure.tw/learn-japanese/grammar/n4/09.php','/final_project/article/?id=19','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621561307/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/n4-grammar-09_mf4q29.png',2),(20,'N5文法04「名詞-連體修飾語」','N5文型','https://www.sigure.tw/learn-japanese/grammar/n5/04.php','/final_project/article/?id=20','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621561385/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/n5-grammar-04-rentaishuushoku_umcm37.png',3),(21,'N5文法00 什麼是品詞？','N5文型','https://www.sigure.tw/learn-japanese/grammar/n5/00.php','/final_project/article/?id=21','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621561449/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/n5-grammar-00-proper-nouns_xscjf0.jpg',3),(22,'N5文法08「形容詞中止形」~て~','N5文型','https://www.sigure.tw/learn-japanese/grammar/n5/08.php','/final_project/article/?id=22','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621561501/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/n5-grammar-08-keiyoushi-chuushikei_f9be0d.png',3),(23,'N5文法14「形容動詞-修飾名詞」~な~','N5文型','https://www.sigure.tw/learn-japanese/grammar/n5/14.php','/final_project/article/?id=23','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621561545/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/n5-grammar-14-keiyoudoushi-meishishuushoku_iie34m.png',3),(24,'日文聽力訓練小短劇『老婆的質問』','N4文型','https://www.youtube.com/embed/JXeo1Ik8-kc','/final_project/article/?id=24','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621562355/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/1621562199984_kajzpa.jpg',2),(25,'3個超強50音記憶法，一天速記50音無難度','認識五十音','https://reurl.cc/3N81qX','/final_project/article/?id=25','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621567286/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/50%E9%9F%B3_mce4qu.png',0),(26,'50音好複雜，背了就忘，寫不出來！現在教你一天就學會！','認識五十音','https://finjapanlife.com/50on-learning/','/final_project/article/?id=26','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621567353/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/50_vrc50g.png',0),(27,'怎麼記也記不住？輕鬆打好日文50音基礎的4個方法','認識五十音','https://colanekojp.com.tw/blogs/4/6','/final_project/article/?id=27','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621567431/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/photocover-396ac68b-472192-lg_vvdixr.jpg',0),(28,'搞懂日文發音的5個特徵！濁音，促音，拗音..etc ＋ 日文Q&A回答初學者朋友問的問題！','認識五十音','https://www.youtube.com/embed/4cKZha88Ito','/final_project/article/?id=28','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621567750/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/1621567732838_rwjnuj.jpg',0),(29,'【五十音學習】-從零開始一年通過日檢N2','認識五十音','https://reurl.cc/DvN1a6','/final_project/article/?id=29','https://res.cloudinary.com/dqtvmz1nq/image/upload/v1621567871/web%E5%85%83%E7%B4%A0%28%E5%8B%BF%E5%88%AA%29/1621567857655_ieexfl.jpg',0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `cID` int NOT NULL AUTO_INCREMENT,
  `MId` int DEFAULT NULL,
  `AId` int NOT NULL,
  `content` varchar(45) NOT NULL,
  PRIMARY KEY (`cID`,`AId`),
  KEY `comment_idx` (`MId`),
  KEY `art_idx` (`AId`),
  CONSTRAINT `art` FOREIGN KEY (`AId`) REFERENCES `article` (`aID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment` FOREIGN KEY (`MId`) REFERENCES `member` (`mID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `mID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `nick` varchar(45) DEFAULT NULL,
  `level` int DEFAULT NULL,
  `lv` int DEFAULT NULL,
  `account` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `date` varchar(80) DEFAULT NULL,
  `photo` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`mID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-21 11:35:00
