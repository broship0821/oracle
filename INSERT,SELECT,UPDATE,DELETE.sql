--SELECT ������ �˻�
SELECT ID USER_ID, PWD, NAME FROM MEMBER;
SELECT ID "user id", PWD FROM MEMBER;
-- �� ������ �߰��ϰų� �ҹ��ڷ� ǥ���ϰ� ������ ""�� ���α�

--INSERT ������ ����
INSERT INTO MEMBER(ID, PWD) VALUES('newlec', '111');
INSERT INTO MEMBER(ID, PWD) VALUES('dragon', '111');
INSERT INTO MEMBER(ID, PWD) VALUES('test', '111');
--�� ���� ���� NULL�� ��

--UPDATE
UPDATE MEMBER SET PWD='333', NAME='�տ���'
WHERE ID='dragon';

--DELETE
DELETE MEMBER WHERE ID='test';

COMMIT;

INSERT INTO NOTICE VALUES(7, 'JDBC7�� �����ΰ�?', 'newlec', 'aaa', SYSDATE, 1,'');
SELECT * FROM NOTICE;
ROLLBACK;