-- auto-generated definition
create table article_commt
(
  id         int auto_increment
    primary key,
  au_id      int           not null,
  ar_id      int           not null,
  commt      varchar(1000) not null,
  commt_time date          not null
);



-- auto-generated definition
create table author
(
  id       int auto_increment
    primary key,
  name     varchar(100) not null,
  sex      varchar(2)   not null,
  birthday date         null,
  address  varchar(100) null,
  phone    varchar(11)  null
)
  comment '			';


-- auto-generated definition
create table article
(
  id           int auto_increment
    primary key,
  title        varchar(200)  not null,
  content      varchar(4000) not null,
  publish_time date          not null,
  au_id        int           not null
);


INSERT INTO mytable.article_commt (id, au_id, ar_id, commt, commt_time) VALUES (1, 1, 1, 'java是最好的语言', '2019-06-01');
INSERT INTO mytable.article_commt (id, au_id, ar_id, commt, commt_time) VALUES (2, 2, 1, 'java是最好的语言', '2019-06-01');
INSERT INTO mytable.article_commt (id, au_id, ar_id, commt, commt_time) VALUES (3, 2, 2, 'Java是最好的语言', '2019-06-01');
INSERT INTO mytable.article_commt (id, au_id, ar_id, commt, commt_time) VALUES (4, 3, 3, 'java是最好的语言', '2019-06-01');


INSERT INTO mytable.author (id, name, sex, birthday, address, phone) VALUES (1, 'jack', '男', '1994-01-01', '湖南长沙', '13778901234');
INSERT INTO mytable.author (id, name, sex, birthday, address, phone) VALUES (2, 'rose', '女', '1994-02-01', '湖南衡阳', '17756781234');
INSERT INTO mytable.author (id, name, sex, birthday, address, phone) VALUES (3, 'jones', '男', '1995-01-01', '湖南湘潭', '18676542345');
INSERT INTO mytable.author (id, name, sex, birthday, address, phone) VALUES (4, 'james', '女', '1996-01-02', '湖南株洲', '13654356785');


INSERT INTO mytable.article (id, title, content, publish_time, au_id) VALUES (1, '论演员的自我修养', '这是一个标题', '2019-01-01', 1);
INSERT INTO mytable.article (id, title, content, publish_time, au_id) VALUES (2, '编码的规范性', '这是一个内容', '2019-02-01', 1);
INSERT INTO mytable.article (id, title, content, publish_time, au_id) VALUES (3, 'java究竟强在哪里', '这是一段代码', '2019-03-01', 2);
INSERT INTO mytable.article (id, title, content, publish_time, au_id) VALUES (4, '我们究竟在敲什么', '这是一段内容', '2019-04-01', 2);
INSERT INTO mytable.article (id, title, content, publish_time, au_id) VALUES (5, '编程能力的养成', '这是一段内容', '2019-05-01', 3);