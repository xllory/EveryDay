-- MySQL dump 10.13  Distrib 8.0.2-dmr, for Win64 (x86_64)
--
-- Host: localhost    Database: everyday
-- ------------------------------------------------------
-- Server version	8.0.2-dmr-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `essay`
--

DROP TABLE IF EXISTS `essay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `essay` (
  `ess_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `text` varchar(2000) NOT NULL,
  `ess_type` enum('0','1') DEFAULT '0',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`ess_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `essay_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `essay`
--

LOCK TABLES `essay` WRITE;
/*!40000 ALTER TABLE `essay` DISABLE KEYS */;
INSERT INTO `essay` VALUES (1,2,'项目里程碑拆分','项目需求用户功能：用户可以注册、登录、退出系统发布博客：用户可以创建、修改、查看、删除自己的文章评论功能：任何人都可以对博客进行评论管理员功能：管理员拥有比普通用户更高的权限，可以管理所有用户以及他们的博客、查看每天的博客发布情况，还可以把某个用户设为管理员里程碑1:搭环境采用JavaScript相关技术栈，整体采用ES6规范构建工具使用npm数据库采用关系型数据库：Mysql前端框架React+Redux框架后台使用node.js　框架为express使用webpack打包工具README文件，方便别人拿到代码后，能够成功快速在电脑上运行。代码小步提交到github的组织仓库上。这里有已经搭建好 的环境，可以直接clone到本地验收条件其他人可以方便的获取你的代码其他人可以通过你的说明文件，在本地将服务器快速的运行起来 ，看到页面通过简单的页面可以证明你使用的技术栈和主要的库等已经配置正确里程碑2：用户登录显示未登录状态的首页实现用户的注 册，登陆，退出功能对首页进行组建划分，显示相应的内容使用数据库存储用户信息验收条件代码上传github仓库,更新README文件首页 展示文章列表，用户登录状态（未登录），登陆按钮等数据库数据的状态正确里程碑３:文章的增删改查实现对文章的显示，添加，删除 ，修改。显示采用MarkDown的形式，左边为输入的MarkDown语法，右边显示对应的HTML格式点击发布按钮将文章信息发送到后台发布成功后跳转到文章列表页不用真实数据库，不用用户登录可以将数据保存在json文件中验收条件从首页的写文章按钮可以进入编辑页面编辑页面左边输入MarkDown语法，右边显示对应的HTML格式点击发布按钮将文章信息发送到后台，将该消息输出到控制台点击文章列表中的一项，跳转到该文章对应的编辑页面在该编辑页面中修改文章后点击保存，将更新的文章信息发送到后台，并输出到控制台编辑页面中点击删除按钮，删除该文章，给出确认删除的提示，删除文章成功后，自动跳转回文章列表的首页面里程碑４:使用真实的数据库存储文章信息 确定数据库表的结构将之前的json文件替换为数据库验收条件前一个里程碑的功能没有被破坏可以通过某种方式来初始化数据库结构和预置数据，并在README中说明步骤代码以\"小步\"方式提交到github上，并且每个commit都有清楚的描述若干篇博客用来记录你的学习收获和疑问。','0','2017-11-12 00:00:00'),(2,2,'这是一个＂胶带＂－－学习总结','感觉时间过得越来越快是因为时间越来越重要大二到大三虽然时间只有一年，但是心态却完全不一样了。刚进大学作为萌新感觉新奇也很迷茫，对于以后真的没有什么打算，日子过得很清闲。大一的专业课不多，一年过去我对于这个专业也不是很了解，暑假确实是百无聊赖，就去网上找了一些前端的资料，开始自己写了几个静态网页。大二上学期我加入了现在的实验室，有了一群小伙伴一起学习，也认识了很多优秀的人。我们的实验室在这里我最大的收获应该就是目标和方向吧，起初学习的知识都是自己去网上找一些资料，网上资料的质量良莠不齐，我看了一些入门的教程，之后不知道该去学习什么，没有明确的学习计划，也不知道一个知识要学到什么程度才证明自己掌握了。加入实验室后，有了学习路线图，每个阶段需要学习的知识以及相应的测试都明确了，而且大家一起学，对于自制力不是很好的我来说也是一种激励。比学习内容更重要的是方法和习惯，读书，学英语，这种需要长期坚持的事情需要的其实也就是自律．大二开始我终于启用了我的记事本，将最近一段时间要做的事情记录下来，做完的就划掉，虽然有时候也会拖延症发作，但是和以前不知道要干什么的情况相比好了很多．在这里给大家推荐一个超好用IOS的软件MinimaListMinimaList是一款有着极简风格却功能强大的 to do list应用上了大学没有高中那样紧凑的时间轴，你的时间可以自由安排了，但却不知道要干什么，可能感觉每天很忙，却说不出来忙了些什么？有什么收获？这个问题可以交给每日总结．进了实验室，老师要求每个人每天要写总结.总结大概分为三个部分：今天的经历有什么收获你的感想我的2017-3-27作为拖延症晚期以及健忘患者，我一直没有养成写总结的习惯．不要学我，不要学我，不要学我！博客是个好东西，这个可以有前几天把我们以前的写的游戏参照学姐的又重构了一下，做了一些改进，因为以前的代码丢了，还是由于没有管理好自己的资料．还好有博客记录，及时总结记录真的很重要！学了新的东西，需要做点笔记，那就来写个博客吧，很久没有更新博客也就证明我好久没有学习新的东西了，这个flag标志性很强的．给自己打个广告你觉得无关的两件事情可能正是相辅相成的前两天和学妹聊了聊，关于课业和学习方向性的东西精力的分配．大二开的专业课比如数据结构，算法，java等等，这些课是基础，需要踏踏实实的去学习，感觉把精力放在这些课上就没有时间学习前端的东西了，其实这两个方面并不是对立的．举个例子关于数据结构和算法的知识在javascript中也是要用到的，用javascript语言来练习数据结构和算法是一举两得的事．感觉精力不够用，但又什么都不想舍弃，不妨试试换个角度，换个方法，也许这样比牺牲娱乐时间来学习更高效呢．嗯，这是一个懒人的建议，因为要留时间玩，所以作业练习什么的完成效率要高，解决问题也要找最简单的方法．但是我一般都是拖延到最后时间才去做，效率确实上去了，但是缺少主动性，这个要改．关于学习方法对于课程，我是预习复习都没有（其实大多数同学也一样吧），有作业了去看看，作业做完也就不再深究了，用到的时候在回去看．然后其余时间用来学习自己感兴趣的东西．我从来都不是那种刻苦努力的类型，起码看起来不是，高中的时候班里的大学霸总是下课时间就把作业写了，自习课上就开始做辅导资料，晚上下自习还带套卷子回去，不得不说，我是很佩服的，当然成绩也是有目共睹．有一段时间我也照着那样刷题，但是三天都没坚持下来，晚上带回去的资料都没有翻开过，而且还感觉特别累，学习效率也不高．每个人适合的学习方法不一样，总结出适合自己的一套方法才是最重要的．作者：秘果_li链接：https://www.jianshu.com/p/52bd998112e2來源：简书著作权归作者所有。商业转载请联系作者获得授权，非商业转载请 注明出处。','0','2017-10-12 00:00:00'),(3,7,'当被人认可的时候','还记得之前的暑假嘛，种种原因我们在实验室举办了一个小规模的训练营。在开学一个月之后有一天跟胡老师聊天。偶然说到了这个事情。胡老师说，这么好的事情为什么不写个文章来介绍下我们的小型特训营呢，也做个总结，如果别人不知道，那效果就大打折扣了。一想好像是这么一回事，于是就有了下面这篇文章（我们的上一个暑假）在构思这篇文章的时候，想了几点，包括我们暑假的活动啊，取得的结果以及我自己的一些收获，后来觉得或许附加上其他人的想法能让我们的活动更有感染力。于是就搜集了一下其他人的想法。其中有一个小伙伴的文章，看完之后，让我消除了几乎所有的之前对这个活动的怀疑。魏秋娟同学的文章之所以对这篇文章感触很深，是因为在举办活动之前，在很多方面我都不敢肯定自己。我怀疑自己的能力，想着能不能在暑假的时间里给其他的小伙伴们很好的分享之前老师传授给我们的东西，也想过自己能不能坚持下来，暑假学校真的很热而且吃饭都是问题，我甚至在我们活动正式开始前一天还在害怕如果有人问我问题我解答不上来怎么办，也害怕万一某一个东西我说的不到位或者说错了怎么办，很多很多顾虑。事实好像真的像我想的那样发生了，有过让同学们做练习但是没有达到预期效果的情况，也有天气热到所有人一点力气都没有的时候，也有别人问我问题我打不上来的情况，可是大家给我的反馈并不是我想的那样，大家都在努力的做练习提高自己的水平，他们也并不会因为我对他们的疑问不能及时的做出很好的解答而埋怨我，并且愿意给我时间让我去更好的解决大家提出的问题。在大家都很累的时候可能一起开开黑心情倒是能好一些。在暑假的活动结束之后，大家都各回各家啦，确实有很多地方没有达到我们预期的效果，比如大家的打字速度提升的幅度不是很大，快捷键也没记住多少，或者是其他一些什么。我在想这次的活动是不是失败了，可是在开学之后我发现暑假我们所锻炼的习惯，有人在一直坚持。一种很奇妙的感觉，像是那种我给你了一颗糖，你说很好吃的那种单纯的开心。从大家后来的行动中我才慢慢意识到，是有人认可我和那场暑假的活动的，魏秋娟的那篇文章让我更加坚定了自己想法，真的有人认可我和暑假的特训营以及我们平时的习惯。那些所有能让大家朝更好的方向改变的行为，是有人认可并且愿意去坚持的。更重要的是，经过一个暑假的朝夕相伴，我们每个人之间好像又添了一根线，把我们每个人连的更紧。在被人认可的时候，真的所有一切累过焦虑过不开心过的问题，都不是问题。由衷感谢大家对这个集体的认可，将来的我们，会在前进的道路上，并肩作战。作者：977777链接：https://www.jianshu.om/p/30716a70941a來源：简书著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。','0','2017-06-07 00:00:00'),(4,7,'九个人，三十天','夏天的晚上暑假来临之前特训营跑了暑假对于西邮的学生来说，是一个很好的学习机会。本来听说有暑期特训营，可是计划赶不上变化，特训营的地点，今年不在西安。决定还是留下来吧本来跟着老师计划走的打算也就扑空。可是如果暑假回家，顿时变咸鱼，学校的宿舍又粉刷，东区食堂也没什么吃的，吃住的问题都还没解决就已经大胆交了留校申请表。我们的成员既然暑假留在学校，那就得利用起来，跟其他管理员商量大家暑假应该学什么之后，我们决定先做一份表单来统计大家目前的学习进度以及暑假有没有什么计划。收到大家填的表单之后，统计出来暑假留校的都是15届，也就是开学大三的同学，一共九个人，其中有一个人开始一周后因为家里的原因没有继续，在暑假正式开始之前，有一个理学院的姑娘找到我，说想暑假跟我们一起学习，好事啊，很欢迎啊，接着我就简单问了几个问题，最后欢迎她加入我们。所以我们九个人一起过了大半个暑假。开始前一天总得告诉大家我们暑假做什么。在大致了解了每个人的当时的学习水平之后，决定模仿去年暑假特训营的方式，在训练写代码的同时，把老师传授给我们的技能再传授给其他人。所以在开始的前一天，我们罗列出了我们需要练习的技能和需要掌握的技术，并且把技能和写代码结合起来，包括快捷键的练习以及代码的重构等等。现在大概知道我们这个暑假在一起要做什么了。第一周——练习练习+练习搬出古老但 是经典的pos机，虽然之前大部分人都做过，但是很多人并没有按照\"画tasking图+先写测试+小步提交+codereview+重构+刻意练习\"这样 的流程来做这件事情，这也反映出实验室的日常存在的问题，所以趁这个机会再从头做。tasking ：大部分人都画过tasking图，但是大 大小小的还存在一些问题，比如命名，格式，以及自己设计的结构问题，但是再画了两三个之后，大家的问题就很少了。测试：这一部分大 之前练习的比较少，有的小组之前还没有写过，给大家大概说了一些关于测试的粒度还有TDD的思想（也不知道大家还记不记得），但是还是感觉自己讲的跟老师讲的差距太大， 能直接明了的定义，大部分都是通过例子完成的。重构： 关于重构我自己其实也不是很会写，大家写完pos机之后，找了两位同学的代码给大家看，大部分都是通过if条件还有fo循环实现的，然后我再跟他们分享函数式的编程思 想，感觉。。。可能讲的也不好，对照着他们写的代码，将其用函数来代替，但是关于什么闭包之类的，并没有涉及到（因为我自己也不熟悉。。。）刻意练习 ： 之前在一本书上看到关于刻意练习的特点——只在学习区练习，大量重复训练，持续获得有效的反馈，精神高度集中。我建议大家练习的方式包括以下几点：1.每天早上九点开始，半个小时的打字练习，要求标准指法盲打，在这个过程中观察每个人明显错误的地方并提出意见，在练习一段时间之后进行打字速度的测试，现在应该大部分人打字速度都有提升很多，重点是特训营结束之后有人开始自觉的练习打字。2.写代码的过程中强调使用快捷键，但是这个没有进行具体的效果测试，在后面代码测试的时候，快捷键确实很影响速度。可是大家好像只在代码测试的过程中觉得快捷键有多么重要。。。3.在完成我们做的简单重构之后，要求大家去练习这一段代码，并模仿了去年老师的做法——要求在多长时间内完成一部分代码。可是效果一点都不好，半个小时的时间大部分只完成了一个函数的测试与实现。可是我当时找不到问题出在什么地方，我的猜想是这样的，可能大家对于使用到的函数还不是很会用，打字速度和快捷键的不熟悉影响了效率，或者晚上回去之后并没有练习这一段代码。这一周的练习也包括其他的习题，比如外卖订单处理，还有一些类似的习题，练习过程都跟pos机的差不多，基础的部分可能只有这么多了。作者：977777链接：https://www.jianshu.com/p/877b16d684e1來源：简书著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。','0','2017-01-03 00:00:00');
/*!40000 ALTER TABLE `essay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `stu_name` varchar(20) NOT NULL,
  `sex` enum('0','1') DEFAULT '0',
  `major_class` varchar(20) NOT NULL,
  `github` varchar(100) DEFAULT NULL,
  `blog` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,1,'杨晓庆','1','网络工程','http://github.com/xllory',NULL),(2,2,'李玫颖','1','软件工程','http://github.com/lihei',NULL),(3,3,'张潇文','1','软件工程','http://github.com/special-wen',NULL),(4,4,'王娟','1','电子','http://github.com/baebaewangd',NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `passward` varchar(16) NOT NULL,
  `type` enum('1','0') DEFAULT '0',
  `head_path` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'xllory','111111','1',NULL),(2,'limeiying','222222','1',NULL),(3,'special-wen','333333','1',NULL),(4,'BAEBAEWENGD','666666','1',NULL),(5,'zhongqw','444444','0',NULL),(6,'jiaoqiqi','777777','0',NULL),(7,'liyabin','555555','0',NULL),(8,'zhangge','888888','0',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-20 15:33:52
