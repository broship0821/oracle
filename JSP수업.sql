create table PERSON (
NUM number primary key not null,
NAME varchar2(10) not null,
BIRTH date,
TEL varchar2(20) not null
);
insert into PERSON
    values(1, '홍길동', '18-08-27', '010-1111-2222');
insert into PERSON
    values(2, '이순신', sysdate, '010-2222-3333');
insert into PERSON
    values(3, '강감찬', '20-04-13', '010-3333-4444');
insert into PERSON
    values(4, '임꺽정', sysdate, '011-5555-6666');
    
select * from PERSON;
select NUM, NAME from PERSON;
select * from PERSON where NAME='임꺽정';
select * from PERSON where NAME like '이%' and NUM=2;
select * from PERSON where NAME like '%감%';

commit;

create table "MEMBER" (
    "NUM" number primary key,
    "ID" varchar2(20) unique,
    "PW" varchar2(20),
    "NAME" varchar2(10),
    "REGDATE" date
);
--시퀀스 생성
create sequence "MEMBER_SEQ"
start with 1
increment by 1
maxvalue 99999
nocache
nocycle
noorder;
--system 계정으로 이거 실행시켜줘야됨
alter user c##scott default tablespace USERS quota unlimited on USERS;

select * from "MEMBER";