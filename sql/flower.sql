SET NAMES UTF8;
DROP DATABASE IF EXISTS flower;
CREATE DATABASE flower CHARSET=UTF8;
USE flower;
#创建用户表fl_user
CREATE TABLE fl_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,  
	uname VARCHAR(32),
	upwd VARCHAR(32),
	phone VARCHAR(16) NOT NULL UNIQUE,
	email VARCHAR(64),
	user_name VARCHAR(32),
	avater VARCHAR(128),
	gender int
);

#插入用户表的信息
INSERT INTO fl_user values
(null,'li','123456',12345678459,'1354344554@qq.com','xiaoli',null,1),
(null,'hu','123456789',16457894564,'1398756754@qq.com','xiaodong',null,0),
(null,'die','134146',1245634139,'13986548754@qq.com','xiaoxiao',null,1),
(null,'sousu','987654',1264681655,'16548301754@qq.com','xiaopan',null,0),
(null,'panhu','984554',1287479655,'16548797874@qq.com','xiaoxi',null,1);

#创建首页轮播图片表
CREATE TABLE fl_index_banner(
    kid INT PRIMARY KEY AUTO_INCREMENT,  #编号
    img VARCHAR(128),                    #图片路径
    title VARCHAR(64),                   #图片描述
    href VARCHAR(128)                    #图片连接
);

#插入轮播表的信息
INSERT INTO fl_index_banner VALUES
    (NULL,"img/ff.jpg","轮播图片1","allthing.html"),
    (NULL,"img/y.jpg","轮播图片2","allthing.html"),
    (NULL,"img/banner7.jpg","轮播图片3","allthing.html"),
    (NULL,"img/banner8.jpg","轮播图片4","allthing.html");

#创建购物车表
CREATE TABLE flower_cart(
    cid INT PRIMARY KEY AUTO_INCREMENT,                 #编号
    uid    INT,                                     #用户编号
    fid INT,                                      #商品编号
    count INT,                                            #购买数量
    is_checked BOOLEAN                                  #是否已勾选，确定购买
);

INSERT INTO flower_cart VALUES
    (null,1,1,2,true),
    (null,1,2,2,true),
    (null,1,3,2,true);




#创建商品信息表
CREATE TABLE flower_mes(
     fid int primary key AUTO_INCREMENT,         #编号
     href VARCHAR(128),
     src VARCHAR(128),
     price DECIMAL(10),                           #价格
     NAME VARCHAR(32),                           #商品名称
     shelf_time  BIGINT,                          #上架时间
     sale_count  int,                           #已售出的数量
     is_onsale BOOLEAN                           #是否促销中
);

#插入商品信息表数据
INSERT INTO flower_mes VALUES
    (null,"shopping-details-001.html","img/product/001.jpg",2200,"植物花卉001",1500016547889,2968,true),
    (null,"shopping-details-002.html","img/product/002.jpg",5600,"植物花卉002",1500016547889,2768,false),
    (null,"shopping-details-003.html","img/product/003.jpg",5400,"植物花卉003",1500016547889,2668,false),
    (null,"shopping-details-004.html","img/product/004.jpg",5700,"植物花卉004",1500016547889,2268,true),
    (null,"shopping-details-005.html","img/product/005.jpg",6000,"植物花卉005",1500016547889,2568,true),
    (null,"shopping-details-006.html","img/product/006.jpg",5700,"植物花卉006",1500016547889,2068,false),
    (null,"shopping-details-007.html","img/product/007.jpg",5300,"植物花卉007",1500016547889,2868,true),
    (null,"shopping-details-008.html","img/product/008.jpg",5600,"植物花卉008",1500016547889,2468,true),
    (null,"shopping-details-009.html","img/product/product4.jpg",4000,"香水百合009",1500016547889,2468,true),
    (null,"shopping-details-010.html","img/product/product3.jpg",7000,"香槟玫瑰010",1500016547889,2468,true),
    (null,"shopping-details-011.html","img/product/product2.jpg",6300,"娜粉玫瑰011",1500016547889,2468,true),
    (null,"shopping-details-012.html","img/product/product1.jpg",14000,"白玫瑰012",1500016547889,2468,true),
    (null,"shopping-details-013.html","img/product/product8.jpg",11000,"蓝玫瑰013",1500016547889,2468,true),
    (null,"shopping-details-014.html","img/product/product7.jpg",6000,"郁金香014",1500016547889,2468,true),
    (null,"shopping-details-015.html","img/product/product6.jpg",9500,"紫玫瑰015",1500016547889,2468,true),
    (null,"shopping-details-016.html","img/product/product5.jpg",5000,"红玫瑰016",1500016547889,2468,true),
    (null,"shopping-details-017.html","img/product/product12.jpg",3400,"商务鲜花017",1500016547889,2468,true),
    (null,"shopping-details-018.html","img/product/product11.jpg",2000,"商务鲜花018",1500016547889,2468,true),
    (null,"shopping-details-019.html","img/product/product10.jpg",5000,"商务鲜花019",1500016547889,2468,true),
    (null,"shopping-details-020.html","img/product/product9.jpg",3600,"开业花篮020",1500016547889,2468,true);

#创建花店商品图片表
 CREATE TABLE flower_mes_photo(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    mes_photo_id INT,
    superlarge  VARCHAR(128),       #超大图片路径
    large VARCHAR(128),             #大图片路径
    middle VARCHAR(128),           #中图片路径
    small VARCHAR(128)            #小图片路径
 );

#插入花店商品图片表的数据
INSERT INTO flower_mes_photo VALUES
    (null,1,"img/product/001_large.jpg","img/product/001.jpg","img/product/001_1.jpg","img/product/001_2.jpg"),
    (null,2,"img/product/002_large.jpg","img/product/002.jpg","img/product/002_1.jpg","img/product/002_2.jpg"),
    (null,3,"img/product/003_large.jpg","img/product/003.jpg","img/product/003_1.jpg","img/product/003_2.jpg"),
    (null,4,"img/product/004_large.jpg","img/product/004.jpg","img/product/004_1.jpg","img/product/004_2.jpg"),
    (null,5,"img/product/005_large.jpg","img/product/005.jpg","img/product/005_1.jpg","img/product/005_2.jpg"),
    (null,6,"img/product/006_large.jpg","img/product/006.jpg","img/product/006_1.jpg","img/product/006_2.jpg"),
    (null,7,"img/product/007_large.jpg","img/product/007.jpg","img/product/007_1.jpg","img/product/007_2.jpg"),
    (null,8,"img/product/008_large.jpg","img/product/008.jpg","img/product/008_1.jpg","img/product/008_2.jpg"),
    (null,9,"img/product/product4_large.jpg","img/product/product4.jpg","img/product/product4_1.jpg","img/product/product4_2.jpg"),
    (null,10,"img/product/product3_large.jpg","img/product/product3.jpg","img/product/product3_1.jpg","img/product/product3_2.jpg"),
    (null,11,"img/product/product2_large.jpg","img/product/product2.jpg","img/product/product2_1.jpg","img/product/product2_2.jpg"),
    (null,12,"img/product/product1_large.jpg","img/product/product1.jpg","img/product/product1_1.jpg","img/product/product1_2.jpg"),
    (null,13,"img/product/product8_large.jpg","img/product/product8.jpg","img/product/product8_1.jpg","img/product/product8_2.jpg"),
    (null,14,"img/product/product7_large.jpg","img/product/product7.jpg","img/product/product7_1.jpg","img/product/product7_2.jpg"),
    (null,15,"img/product/product6_large.jpg","img/product/product6.jpg","img/product/product6_1.jpg","img/product/product6_2.jpg"),
    (null,16,"img/product/product5_large.jpg","img/product/product5.jpg","img/product/product5_1.jpg","img/product/product5_2.jpg"),
    (null,17,"img/product/product12_large.jpg","img/product/product12.jpg","img/product/product12_1.jpg","img/product/product12_2.jpg"),
    (null,18,"img/product/product11_large.jpg","img/product/product11.jpg","img/product/product11_1.jpg","img/product/product11_2.jpg"),
    (null,19,"img/product/product10_large.jpg","img/product/product10.jpg","img/product/product10_1.jpg","img/product/product10_2.jpg"),
    (null,20,"img/product/product9_large.jpg","img/product/product9.jpg","img/product/product9_1.jpg","img/product/product9_2.jpg");



#创建导航条信息表
CREATE TABLE fl_navbar_item(
    nid INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(16),
    url VARCHAR(128),
    title VARCHAR(32),
    parent INT   #设置二级菜单
);

#创建收货信息表
CREATE TABLE fl_receiver_address(
      aid INT PRIMARY KEY AUTO_INCREMENT,
      uid INT,                #用户编号
      receiver VARCHAR(16),       #接收人姓名
      address VARCHAR(128),       #收货详细地址
      cellphone VARCHAR(16),      #手机号码
      is_default BOOLEAN          #是否为当前用户的默认收货地址
);

insert into fl_receiver_address values(
	null,
	1,
	'li',
	'广州市越秀区小北花圈1',
	'12345678459',
	0
);
insert into fl_receiver_address values(
	null,
	1,
	'li1',
	'广州市越秀区小北花圈2',
	'12345678459',
	0
);insert into fl_receiver_address values(
	null,
	1,
	'li3',
	'广州市越秀区小北花圈3',
	'12345678459',
	0
);insert into fl_receiver_address values(
	null,
	1,
	'li4',
	'广州市越秀区小北花圈4',
	'12345678459',
	0
);

#创建首页商品信息表
CREATE TABLE fl_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  price DECIMAL(10),
  href VARCHAR(128),
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT
);

#创建首页今日上新商品表
CREATE TABLE fl_index_update_product(
    pid   INT PRIMARY KEY AUTO_INCREMENT,
    href VARCHAR(128),
    src  VARCHAR(128),
    name  VARCHAR(128),
    price DECIMAL(10)
);

#插入首页今日上新商品表数据
INSERT INTO fl_index_update_product VALUES
    (null,"shopping-details-004.html","img/004.jpg","植物花卉004",5700),
    (null,"shopping-details-003.html","img/p.jpg","植物花卉003",5400),
    (null,"shopping-details-002.html","img/w.jpg","植物花卉002",5600),
    (null,"shopping-details-001.html","img/q.jpg","植物花卉001",2200);

#创建首页装点家园商品表
CREATE TABLE fl_index_decorate_product(
      pid   INT PRIMARY KEY AUTO_INCREMENT,
      href VARCHAR(128),
      src  VARCHAR(128),
      name  VARCHAR(128),
      price DECIMAL(10)
);

#插入首页装点家园商品表数据
INSERT INTO fl_index_decorate_product VALUES
    (null,"shopping-details-008.html","img/o.jpg","植物花卉008",5600),
    (null,"shopping-details-007.html","img/l.jpg","植物花卉007",5300),
    (null,"shopping-details-006.html","img/h.jpg","植物花卉006",5700),
    (null,"shopping-details-005.html","img/z.jpg","植物花卉005",6000);

/*订单列表*/
CREATE TABLE f_user_list(
	lid INT PRIMARY KEY AUTO_INCREMENT,
	uid INT NOT NULL, /*订单所属用户*/
	lDate BIGINT NOT NULL,/*订单生成时间*/
	aid INT NOT NULL, /*订单收货地址*/
	pay_method INT NOT NULL,/*订单支付方式*/
	totalprice DECIMAL(7,2) NOT NULL,/*订单总金额*/
	common varchar(128) DEFAULT '',
	lstate INT DEFAULT 0 NOT NULL /*订单状态 0未付款 1已付款等待发货 2已发货等待收货 3 交易完成 -1 订单已取消*/
);
