SELECT * FROM NOTICE;

INSERT INTO NOTICE VALUES(4, 'JDBC4�� �����ΰ�?', 'newlec', 'aaa', SYSDATE, 12,'');
INSERT INTO NOTICE VALUES(5, 'JDBC5�� �����ΰ�?', 'newlec', 'aaa', SYSDATE, 13,'');
INSERT INTO NOTICE VALUES(6, 'JDBC6�� �����ΰ�?', 'newlec', 'aaa', SYSDATE, 14,'');

DELETE NOTICE WHERE ID = '3';


COMMIT;