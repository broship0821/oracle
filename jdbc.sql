SELECT * FROM NOTICE;

INSERT INTO NOTICE VALUES(1, 'JDBC�� �����ΰ�?', 'newlec', 'aaa', SYSDATE, 0,'');
INSERT INTO NOTICE VALUES(2, 'JDBC2�� �����ΰ�?', 'newlec', 'aaa', SYSDATE, 0,'');
INSERT INTO NOTICE VALUES(3, 'JDBC3�� �����ΰ�?', 'newlec', 'aaa', SYSDATE, 0,'');

DELETE NOTICE WHERE ID = '3';


COMMIT;