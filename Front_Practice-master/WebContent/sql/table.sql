--Table ����
drop table client;
drop table admin;
drop table product;
drop table product_order;
drop table review;
drop table mtm;

delete from product;

select * from client;
select * from admin;
select * from product;
select * from product_order;
select * from review;
select * from mtm;

--Table ����
create table client(
id      varchar2(15)  not null primary key, --PK
pw 	    varchar2(20)  not null,
name    varchar2(10)  not null,
email   varchar2(30)  not null,
address varchar2(100) not null,
Phone   varchar2(20)  not null
);


create table admin(
admin_id   varchar2(15) not null primary key, --PK
admin_name varchar2(10) not null,
admin_pw   varchar2(20) not null
);


create table product(
pNum        number       not null primary key, --PK
pName       varchar2(30) not null,
pPrice      number       not null,
pImg        varchar2(100), --��ǰ �̹��� �ּ�
pShortInfo  varchar2(200), --��ǰ ��������
pDetailInfo varchar2(4000), --��ǰ �󼼼���
pCategory   varchar2(10) --��ǰ ī�װ���+��ȣ
);


create table product_order(
pNum      number        references product(pNum), --FK : product(pNum)
id        varchar2(15)  references client(id), --FK : client(id)
oNum      number        not null primary key, --PK
oPrice    number        not null, --��ǰ ���� x ���� (�� ����)
cnt       number        default 1 not null, --��ǰ ����
oName     varchar2(10)  not null, --�޴»�� �̸�
oAddress  varchar2(100) not null, --�޴»�� �ּ�
oPhone    varchar2(20) --�޴»�� ����ó
oDate     TimeStamp     default sysdate not null, --�ֹ�����
);


create table review(
pNum       number       references product(pNum), --FK : product(pNum)
id         varchar2(15) references client(id), --FK : client(id)
oNum       number       references product_order(oNum), --FK : product_order(oNum)
rNum       number       not null primary key, --PK
content    varchar2(1000),
rImg       varchar2(100),
rDate      TimeStamp    default sysdate not null --���� �ۼ���
);


create table mtm(
id      varchar2(15)   references client(id), --FK : client(id)
mNum    number         not null primary key, --1:1���� ��ȣ
title   varchar2(100)  not null,
content varchar2(4000) not null,
reply   varchar2(4000), --�亯
mDate   TimeStamp      default sysdate not null --1:1���Ǳ� �ۼ���
);


--Sequence ����
drop sequence pNum_seq;
drop sequence oNum_seq;
drop sequence rNum_seq;
drop sequence mNum_seq;

--Sequence ����
create sequence pNum_seq start with 1 increment by 1;
create sequence oNum_seq start with 1 increment by 1;
create sequence rNum_seq start with 1 increment by 1;
create sequence mNum_seq start with 1 increment by 1;