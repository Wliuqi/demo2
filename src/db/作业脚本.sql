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


INSERT INTO mytable.article_commt (id, au_id, ar_id, commt, commt_time) VALUES (1, 1, 1, 'java����õ�����', '2019-06-01');
INSERT INTO mytable.article_commt (id, au_id, ar_id, commt, commt_time) VALUES (2, 2, 1, 'java����õ�����', '2019-06-01');
INSERT INTO mytable.article_commt (id, au_id, ar_id, commt, commt_time) VALUES (3, 2, 2, 'Java����õ�����', '2019-06-01');
INSERT INTO mytable.article_commt (id, au_id, ar_id, commt, commt_time) VALUES (4, 3, 3, 'java����õ�����', '2019-06-01');


INSERT INTO mytable.author (id, name, sex, birthday, address, phone) VALUES (1, 'jack', '��', '1994-01-01', '���ϳ�ɳ', '13778901234');
INSERT INTO mytable.author (id, name, sex, birthday, address, phone) VALUES (2, 'rose', 'Ů', '1994-02-01', '���Ϻ���', '17756781234');
INSERT INTO mytable.author (id, name, sex, birthday, address, phone) VALUES (3, 'jones', '��', '1995-01-01', '������̶', '18676542345');
INSERT INTO mytable.author (id, name, sex, birthday, address, phone) VALUES (4, 'james', 'Ů', '1996-01-02', '��������', '13654356785');


INSERT INTO mytable.article (id, title, content, publish_time, au_id) VALUES (1, '����Ա����������', '����һ������', '2019-01-01', 1);
INSERT INTO mytable.article (id, title, content, publish_time, au_id) VALUES (2, '����Ĺ淶��', '����һ������', '2019-02-01', 1);
INSERT INTO mytable.article (id, title, content, publish_time, au_id) VALUES (3, 'java����ǿ������', '����һ�δ���', '2019-03-01', 2);
INSERT INTO mytable.article (id, title, content, publish_time, au_id) VALUES (4, '���Ǿ�������ʲô', '����һ������', '2019-04-01', 2);
INSERT INTO mytable.article (id, title, content, publish_time, au_id) VALUES (5, '�������������', '����һ������', '2019-05-01', 3);