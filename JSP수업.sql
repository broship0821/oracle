create table PERSON (
NUM number primary key not null,
NAME varchar2(10) not null,
BIRTH date,
TEL varchar2(20) not null
);
insert into PERSON
    values(1, 'ȫ�浿', '18-08-27', '010-1111-2222');
insert into PERSON
    values(2, '�̼���', sysdate, '010-2222-3333');
insert into PERSON
    values(3, '������', '20-04-13', '010-3333-4444');
insert into PERSON
    values(4, '�Ӳ���', sysdate, '011-5555-6666');
    
select * from PERSON;
select NUM, NAME from PERSON;
select * from PERSON where NAME='�Ӳ���';
select * from PERSON where NAME like '��%' and NUM=2;
select * from PERSON where NAME like '%��%';

commit;

create table "MEMBER" (
    "NUM" number primary key,
    "ID" varchar2(20) unique,
    "PW" varchar2(20),
    "NAME" varchar2(10),
    "REGDATE" date
);
--������ ����
create sequence "MEMBER_SEQ"
start with 1
increment by 1
maxvalue 99999
nocache
nocycle
noorder;
--system �������� �̰� ���������ߵ�
alter user c##scott default tablespace USERS quota unlimited on USERS;

select * from "MEMBER";