--게시판 만들기
create table BOARD(
    NUM number(7,0) not null enable,
    WRITER varchar2(12) not null enable,
    EMAIL varchar2(30) not null enable,
    SUBJECT varchar2(50) not null enable,
    PASS varchar2(10) not null enable,
    READCOUNT NUMBER(5,0) default 0 not null enable,
    REF number(5,0) default 0 not null enable,
    STEP number(3,0) default 0 not null enable,
    DEPTH number(3,0) default 0 not null enable,
    REGDATE timestamp(6)  default sysdate not null enable,
    CONTENT varchar2(4000) not null enable,
    IP varchar2(20) not null enable,
    constraint BOARD_PK primary key (NUM) enable
);

create sequence board_seq
start with 1
increment by 1
nomaxvalue
nocache
nocycle;