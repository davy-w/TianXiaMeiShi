SET NAMES UTF8;
DROP DATABASE IF EXISTS menu;
CREATE DATABASE menu CHARSET=UTF8;
USE menu;
/**热门话题**/
DROP TABLE IF EXISTS menu_index_HotTopic;
CREATE TABLE menu_index_HotTopic(
hid INT PRIMARY KEY AUTO_INCREMENT,
avatar VARCHAR(32),
uname VARCHAR(32),
sendtime INT,
title VARCHAR(64),
content VARCHAR(200) NOT NULL,
imgurl_1 VARCHAR(128),
imgurl_2 VARCHAR(128),
imgurl_3 VARCHAR(128),
imgurl_4 VARCHAR(128),
val FLOAT
);
INSERT INTO menu_index_HotTopic VALUES(NULL,"avatar_01.jpg","清水淡竹","1","花样早餐","睿睿的花样早餐来喽","hot_01_01.jpg","hot_01_02.jpg","","",3.5);
INSERT INTO menu_index_HotTopic VALUES(NULL,"avatar_02.jpg","米拉Miira","2","今儿不是馒头也不吃花卷，改换家庭自助餐了","人嘴真是灵性了，昨天刚说蓝鲸伏天不算热，今儿就被打脸......","hot_02_01.jpg","hot_02_02.jpg","hot_02_03.jpg","hot_02_04.jpg",3.5);
INSERT INTO menu_index_HotTopic VALUES(NULL,"avatar_03.jpg","滋滋d美味","3","早餐","大米戚风蛋糕，用大米粉代替低粉，口感细腻，我放了两勺......","hot_03_01.jpg","hot_03_02.jpg","hot_03_03.jpg","hot_03_04.jpg",4.0);
INSERT INTO menu_index_HotTopic VALUES(NULL,"avatar_04.jpg","江南布衣","4","吃午餐了","盐水虾，毛豆，菇烧丝瓜，西红柿蛋汤","hot_04_01.jpg","hot_04_02.jpg","hot_04_03.jpg","",3.5);
INSERT INTO menu_index_HotTopic VALUES(NULL,"avatar_05.jpg","小燕子","5","午餐"," 排骨炖腐竹、韭菜炒豆干、山药莲子猪骨汤。","hot_05_01.jpg","hot_05_02.jpg","hot_05_03.jpg","",3.5);
INSERT INTO menu_index_HotTopic VALUES(NULL,"avatar_06.jpg","悦语赞歌","2","","早餐的刺猡包子和小主的午餐便当","hot_06_01.jpg","hot_06_02.jpg","hot_06_03.jpg","",3.5);

DROP TABLE IF EXISTS menu_index_log;
CREATE TABLE menu_index_log(
lid INT PRIMARY KEY AUTO_INCREMENT,
img_url VARCHAR(128),
title VARCHAR(64),
u VARCHAR(32) ,
content VARCHAR(200)
);
INSERT INTO menu_index_log VALUES(NULL,"log_01.jpg","小葱炒鸡蛋","Qiuyue0815","主料：鸡蛋2个、香葱1棵。烹调调料：菜油适量、玉米淀粉2+大匙、精盐1/2小匙、胡椒粉1/2小匙、花椒粉1/2小匙、芝麻油1/2大匙。");
INSERT INTO menu_index_log VALUES(NULL,"log_02.jpg","咖喱菜花牛肉片","rosejyy2000","主料：牛肉约150克、菜花约250克、香葱1棵。辅料：姜丝1大匙、蒜茸1大匙。腌肉调料：生抽1大匙、红糖1/4小匙、白兰地1大匙、白胡椒1/3小匙、小苏打1/4小匙、玉米淀粉1小匙、菜油1大匙。上锅调料：咖喱块约8克、精盐1/3小匙、胡椒粉1/3小匙、红糖1/2小匙、生抽1大匙、米酒1/2大匙。");
INSERT INTO menu_index_log VALUES(NULL,"log_03.jpg","椒盐排骨","rosejyy2000","主料：排骨450克。辅料：红椒1只、蒜头2瓣、香葱1棵。腌肉调料：精盐1/3小匙、生抽1大匙、白糖1/3小匙、胡椒粉1/2小匙、清水2大匙、蛋白1/2大匙、玉米淀粉2大匙、米酒1大匙。烹调调料：菜油适量、玉米淀粉2+大匙、精盐1/2小匙、胡椒粉1/2小匙、花椒粉1/2小匙、芝麻油1/2大匙。");
INSERT INTO menu_index_log VALUES(NULL,"log_04.jpg","红枣焖三杯鸡","rosejyy2000","主料：鸡块约500克。辅料：大红枣6枚，姜片约20片，蒜头约6~8粒，红葱头1枚，香菜数棵。腌鸡调料：红糖粉2大匙，生抽1大匙，精盐1/4小匙，米酒1大匙。炒鸡调料：麻油1/4杯，酱油2大匙，蠔油1大匙，红糖粉1大匙，米酒3大匙，熟芝麻适量。");
INSERT INTO menu_index_log VALUES(NULL,"log_05.jpg","红焖猪脚","rosejyy2000","主料：猪手脚约600克。辅料：香葱2根、姜片8片、八角2颗、陈皮2块、桂皮2块、香叶2块。调料：冰糖碎2大匙、生抽3大匙、老抽1大匙、料酒2大匙、胡椒粉1/2小匙、红糖粉1/2大匙、精盐1/4小匙、麦芽糖1大匙。");
INSERT INTO menu_index_log VALUES(NULL,"log_06.jpg","黄瓜蒜叶炒牛肉","rosejyy2000","主料：牛肉约100克、大蒜苗约200克、黄瓜1条。辅料：蒜末1大匙、姜末1大匙、干葱1/2大匙。腌肉调料：生抽1大匙、胡椒粉1/4小匙、白兰地1大匙、小苏打1/4小匙、玉米淀粉1小匙、菜油1大匙。炒制调料：家制剁椒1大匙、红糖粉1/2小匙、生抽1大匙、胡椒粉1/3小匙、白兰地1大匙。");
INSERT INTO menu_index_log VALUES(NULL,"log_07.jpg","肉末小土豆","rosejyy2000","主料：小土豆约450克、肉末约100克。辅料：葱白粒1棵量、葱叶1棵量、蒜末1大匙、姜末1大匙、辣椒圈1只量、小红椒切粒2只。调料：豆瓣酱1大满匙、生抽2大匙、红糖1/2大匙、胡椒粉1/2小匙、白兰地1大匙、生粉1小匙。");
INSERT INTO menu_index_log VALUES(NULL,"log_08.jpg","清甜柿子无花果饼","Qiuyue0815","主料：面粉250克、柿子2个。辅料：无花果35克适量");
INSERT INTO menu_index_log VALUES(NULL,"log_09.jpg","木耳竹笋焖鸡","rosejyy2000","主料：鸡块约500克、罐头笋约150克、水发木耳1碗。辅料：姜片约6片。腌鸡调料：生抽2大匙、老抽1/2大匙、红糖粉1小匙、胡椒粉1/3小匙、料酒1大匙、玉米淀粉1/2大匙。焖鸡调料：红糖粉2+1/2大匙、生抽2大匙、老抽1大匙、精盐1/2小匙、料酒1大匙、胡椒粉1/3小匙。");
INSERT INTO menu_index_log VALUES(NULL,"log_10.jpg","牛肉末梅菜焖黄豆","rosejyy2000","主料：黄豆2/3杯、梅菜1扎、牛肉末约100克。调料：姜末1大匙、蒜末1匙、辣椒碎1/2大匙、生抽2大匙、精盐1/3小匙、红糖粉1大匙、胡椒粉1/2小匙。");
INSERT INTO menu_index_log VALUES(NULL,"log_11.jpg","甜酸柠汁鸡翅","rosejyy2000","主料：鸡翅8块，柠檬1枚。腌渍调料：精盐1/4小匙、胡椒粉1/4小匙、白兰地1小匙、玉米淀粉1/2大匙。碗汁调料：新鲜柠檬汁1+1/2大匙，白糖2大匙、清水4大匙、生粉1/2大匙、柠檬皮丝1把。");
INSERT INTO menu_index_log VALUES(NULL,"log_12.jpg","茄汁鹰咀豆","rosejyy2000","主料：鹰咀豆约300克、热狗2条。辅料：大番茄1个、姜末1/2大匙、蒜末1/2大匙、干葱碎1/2大匙、香菜2条。调料：茄汁2大匙、番茄沙司约1/2杯、生抽2大匙、红糖3+大匙、精盐1/2小匙、胡椒粉1/3小匙、生粉1/2大匙。");
INSERT INTO menu_index_log VALUES(NULL,"log_13.jpg","鱼香冰冻鱼","rosejyy2000","主料：冰冻罗郭鱼1尾。辅料：姜末1大匙、蒜末1大匙、葱花2大匙、菜椒0.5个。调料：精盐1小匙、玉米淀粉1大匙、生抽1.5大匙、白糖1.5大匙、浙醋1.5大匙、胡椒粉0.3小匙、辣椒油1大匙、生粉0.5大匙。");
INSERT INTO menu_index_log VALUES(NULL,"log_14.jpg","香葱土豆饼","rosejyy2000","主料：中筋面粉3/4杯、盒装土豆屑1+1/4杯、香葱1棵。调料：黄油或猪油1/4杯、清水3/4杯、胡椒粉1/3小匙、精盐1/2小匙、菜油或花生油适量。");
INSERT INTO menu_index_log VALUES(NULL,"log_15.jpg","香辣蔬菜铺烤鱼","rosejyy2000","主料：冰冻鱼1条、五花肉75克、西葫芦1枚、芹菜3瓣。辅料：红菜椒1只、黄菜椒1只、青椒1只、姜末1大匙、蒜末1大匙、水发冬菇4朵。调料：精盐约1/4小匙、黑椒粉1/4小匙，豆瓣酱1大满匙、红糖粉1/2大匙、白胡椒粉1/3小匙、料酒1大匙、生粉1/2大匙、麻油1/2大匙。");
INSERT INTO menu_index_log VALUES(NULL,"log_16.jpg","烤鱼","尚食之文","材料：鱼片200g、土豆270g、黄瓜30g、柠檬30g。调料：盐适量、白胡椒粉适量、姜粉适量、白朗姆酒1大勺、黄油1大勺、青酱适量、沙拉酱适量。");
INSERT INTO menu_index_log VALUES(NULL,"log_17.jpg","椰菜蛋饼","rosejyy2000","主料：椰菜约400克，红萝卜丝约1/2杯。辅料：鸡蛋2枚、玉米淀粉2大匙、面粉2大匙。调料：精盐2/3小匙、胡椒粉1/2小匙、白糖1/2小匙、蛋黄酱适量。");
INSERT INTO menu_index_log VALUES(NULL,"log_18.jpg","蔓越莓南瓜玉米面发糕","漂亮马婆","主料：南瓜200克、玉米粉100克、面粉100克、蔓越莓50克、白糖10克、牛奶50克、发酵粉3克。");
INSERT INTO menu_index_log VALUES(NULL,"log_19.jpg","新鲜柠汁鸡块","rosejyy2000","主料：鸡腿肉400克，新鲜柠檬1枚。腌肉调料：精盐1/3小匙、白胡椒粉1/3小匙、白兰地1/2大匙、蛋白1只量、玉米淀粉1.5大匙、菜油1大匙。芡汁调料：鲜榨柠汁1.5大匙，白糖1.75大匙、精盐1/8小匙、生粉1/2大匙、麻油1小匙。");
INSERT INTO menu_index_log VALUES(NULL,"log_20.jpg","鲜花饼","尚食之文","材料：水油皮：中筋粉：120g、水50ml、猪油35g、糖粉10g。油酥：低筋粉: 120g、猪油55g。玫瑰酱:150g、熟花生碎50g、食用红色素1g");
/*轮播图 图片表*/
CREATE TABLE index_img(
  img_url  VARCHAR(32)
);
INSERT INTO index_img VALUES("1.jpg");
INSERT INTO index_img VALUES("2.jpg");
INSERT INTO index_img VALUES("3.jpg");
INSERT INTO index_img VALUES("4.jpg");
/*用户信息表*/
CREATE TABLE user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd VARCHAR(32),
  email VARCHAR(32)
)

