--7.16
CREATE TABLE MEMBER
(
    ID VARCHAR2(50),
    PWD NVARCHAR2(50),
    NAME NVARCHAR2(50),
    GENDER NCHAR(2), -- 남성 OR 여성 utf8
    AGE NUMBER(3),
    BIRTHDAY CHAR(10), -- 2020-07-15 총 10글자
    PHONE CHAR(13), -- 010-1234-1234 총 13글자
    REGDATE DATE
);

INSERT INTO MEMBER(GENDER) VALUES('남성');

SELECT LENGTHB(GENDER) FROM MEMBER; --GENDER 글자수 알아보기

DROP TABLE MEMBER;

SELECT LENGTH('ABC') FROM DUAL; -- 문자 개수 세는 방법
SELECT LENGTHB('ㅋㅋㅋ') FROM DUAL; -- 문자 바이트수 알고 싶다, 한글은 한글자당 3바이트

--7.17
ALTER TABLE MEMBER MODIFY ID NVARCHAR2(50);

ALTER TABLE MEMBER DROP COLUMN AGE;

ALTER TABLE MEMBER ADD EMAIL VARCHAR2(200);


--7.18
INSERT INTO MEMBER(ID, PWD) VALUES('gudqo1995', '1111');
INSERT INTO MEMBER(ID, PWD) VALUES('dragon', '1111');

SELECT id "USER ID", name, pwd FROM MEMBER;

UPDATE MEMBER SET PWD='333', NAME='손오공' WHERE ID = 'dragon';

INSERT INTO MEMBER(ID, PWD) VALUES('test', '1111');

DELETE MEMBER WHERE ID='test';


--7.26 연산자
SELECT HIT+1 HIT FROM NOTICE;

INSERT INTO NOTICE(ID, HIT) VALUES(1234, 5);
INSERT INTO NOTICE(ID, HIT) VALUES(5678, 7);
INSERT INTO NOTICE(ID, HIT) VALUES(1111, 12);

SELECT 1+'3' FROM DUAL; --DUAL은 의미없는 테이블, SELECT에선 FROM이 꼭 있어야 하기 때문에 의미없는 테이블 DUAL하면 결과만 보여줌
--프로그래밍 언어와 다르게 + 연산자는 숫자만 더해줌, 그래서 위 결과는 4
-- 문자열 더할려면 || 연산자 사용
SELECT 1||'3' FROM DUAL;

SELECT * FROM NOTICE;
INSERT INTO NOTICE(WRITER_ID, ID) VALUES('CAKE', 4444);
SELECT WRITER_ID||'('||ID||')' WRITER_ID FROM NOTICE;

INSERT INTO NOTICE(WRITER_ID, CONTENT) VALUES('NEWLECT', 'CCCCC');
SELECT CONTENT FROM NOTICE WHERE WRITER_ID = 'NEWLECT';
SELECT CONTENT FROM NOTICE WHERE HIT > 3;
SELECT WRITER_ID FROM NOTICE WHERE CONTENT IS NOT NULL;

SELECT ID FROM NOTICE WHERE HIT = 3 OR HIT = 4 OR HIT = 5; --이것도 가능 하지만 연속적으로 있는 범위는 BETWEEN 연산자 사용하는게 좋음
SELECT ID FROM NOTICE WHERE HIT BETWEEN 3 AND 5;

SELECT ID FROM NOTICE WHERE HIT IN(5, 7); --범위가 떨어져 있을때는 IN 연산자 사용
SELECT ID FROM NOTICE WHERE HIT NOT IN(5, 7);

SELECT CONTENT, WRITER_ID FROM NOTICE WHERE WRITER_ID LIKE '%N';
SELECT CONTENT, WRITER_ID FROM NOTICE WHERE WRITER_ID LIKE '______'; -- _는 한글자만 가능
SELECT * FROM MEMBER WHERE NAME NOT LIKE '박%';
SELECT * FROM MEMBER WHERE NAME NOT LIKE '%도%';
COMMIT;

--7.27
--정규식을 사용한 패턴 비교
DELETE NOTICE;
SELECT * FROM NOTICE WHERE TITLE LIKE '%010%';
INSERT INTO NOTICE(ID, TITLE, WRITER_ID, CONTENT, HIT) VALUES(1, '내 전화번호 010-1234-1234', 'APPLE', 'AAA', 3);
INSERT INTO NOTICE(ID, TITLE, WRITER_ID, CONTENT, HIT) VALUES(2, 'JAVA 공부하자', 'BANANA', 'BBB', 5);
INSERT INTO NOTICE(ID, TITLE, WRITER_ID, CONTENT, HIT) VALUES(3, 'JAVASCRIPT', 'MELON', 'CCC', 7);
INSERT INTO NOTICE(ID, TITLE, WRITER_ID, CONTENT, HIT) VALUES(6, '중국번호: 133-123-1234', 'bat', 'fff', 4);
--아래와 같은 번호들을 정규식을 써서 검색하기
--131-2102-7399
--132-1234-1234
--133-123-1234
--[]: 한글자, 안에는 OR
--\d: [0-9], 0~9의 임의의 숫자
--{}: {}앞에 있는게 {}안에있는 숫자만큼 반복된다

--13[123]-\d\d\d\d-\d\d\d\d
--13[1-3]-\d{3,4}-\d{4}
SELECT * FROM NOTICE WHERE REGEXP_LIKE(TITLE, '13[1-3]-\d{3,4}-\d{4}');

--ROWNUM
SELECT ROWNUM NUM, NOTICE.* FROM NOTICE;
SELECT * FROM (SELECT ROWNUM NUM, NOTICE.* FROM NOTICE) --괄호 안에 먼저 실행, 그 결과를 다시 검색
WHERE NUM BETWEEN 5 AND 10;

--DISTINCT
SELECT DISTINCT AGE FROM MEMBER;
COMMIT;