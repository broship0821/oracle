SELECT NULL + 3 FROM DUAL;

SELECT AGE + 3 FROM MEMBER;
--���� AGE Į���� NULL�̸� 0���� �ٲ��
SELECT NVL(AGE, 0) + 3 FROM MEMBER;
--���ϰ�� 0���� ġȯ, ���� �ƴҰ�� AGE/10���
SELECT NVL2(AGE, AGE/10, 0) + 3 FROM MEMBER;
--��� HIT�� ����ϵ� ���� 3�̸� NULL������ ����ϱ�
SELECT NULLIF(HIT, 3) FROM NOTICE;

--DECODE: ID�� 2�� 222��, 1�̸� 111��, �������� 999�� �ٲ㼭 ���
SELECT * FROM NOTICE;
SELECT DECODE(ID,
2, 222,
1, 111,
999) FROM NOTICE;