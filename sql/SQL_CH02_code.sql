-- 2.1. ������ ��Ģ 
-- �ǽ����� ������ ��Ģ ������ 
-- ��ü ���Ἲ ���� 
-- 01 �ڵ�
CREATE TABLE emp (
    empno varchar(8) NOT NULL, -- �����ȣ
    ename varchar(40) NOT NULL, -- �̸�
    hire_date varchar(8) NOT NULL, -- �Ի�����
    rrn varchar(13) NOT NULL, -- �ֹε�Ϲ�ȣ
    mobile varchar(13), -- �̵���ȭ��ȣ
    status varchar(1) NOT NULL default 'C', -- ��������
    CONSTRAINT EMP_EMPNO_PK PRIMARY KEY (empno),
    CONSTRAINT EMP_RRN_UK UNIQUE (rrn, hire_date),
    CONSTRAINT EMP_MOBILE_UK UNIQUE (mobile)
);

-- 02 �ڵ�
INSERT INTO emp(empno, ename, hire_date, rrn, mobile, status)
VALUES('101', '�̼���', '20770302', 'XXXXX10001', '010-1021-302', 'P');

INSERT INTO emp(empno, ename, hire_date, rrn, mobile)
VALUES('201', '������', '20750507', 'YYYYY11101', '010-2007-104');

INSERT INTO emp(empno, ename, hire_date, rrn, mobile)
VALUES('202', '���', '20750507', 'AAAAA10008', '010-3989-199');

INSERT INTO emp(empno, ename, hire_date, rrn, mobile)
VALUES('401', '������', '20770103', 'BBBBB20009', '010-2323-104');

INSERT INTO emp(empno, ename, hire_date, rrn, mobile)
VALUES('402', '�ϰ���', '20760103', 'CCCCC10010', '010-5678-104');

INSERT INTO emp(empno, ename, hire_date, rrn, mobile)
VALUES('501', '�����', '20770901', 'EEEEE10011', '010-2020-104');

SELECT empno AS �����ȣ, ename AS �̸�, hire_date AS �Ի�����, rrn AS �ֹε�Ϲ�ȣ,
       mobile AS �̵���ȭ��ȣ, status AS ��������
FROM emp;

-- 03 �ڵ�
INSERT INTO emp(empno, ename, hire_date, rrn, mobile)
VALUES('501', '������', '20771224', 'YYYYY', '010-2012-1515');

-- 04 �ڵ�
INSERT INTO emp(empno, ename, hire_date, rrn, mobile)
VALUES('502', '������', '20771224', 'YYYYY', '010-2012-1515');

-- 05 �ڵ�
SELECT *
FROM emp;

-- 06 �ڵ�
INSERT INTO emp(empno, ename, hire_date, rrn)
VALUES('601', '�庸��', '20771224', 'YYYYY');

-- 07 �ڵ�
INSERT INTO emp(empno, ename, hire_date, rrn)
VALUES('601', '�庸��', '20771224', 'CCCCC');

-- 08 �ڵ�
SELECT *
FROM emp;

-- 09 �ڵ�
INSERT INTO emp(empno, ename, hire_date, rrn, mobile)
VALUES('801', '�̼���', '20780303', 'XXXXX10001', '010-1021-302');

-- 10 �ڵ�
INSERT INTO emp(empno, ename, hire_date, rrn)
VALUES('801', '�̼���', '20780303', 'XXXXX10001');

-- 11 �ڵ�
SELECT *
FROM emp;

-- 12 �ڵ�
UPDATE emp
SET mobile = '010-8088-808'
WHERE empno = '801';

-- ���� ���Ἲ ����: �ܷ�Ű
-- 01 �ڵ�
-- ȸ��T ���̺� ����
CREATE TABLE ȸ��T (
    ȸ���ȣ int NOT NULL AUTO_INCREMENT,
    ȸ��� varchar(50) NOT NULL,
    â���� varchar(20) NOT NULL,
    â���� varchar(10),
    �ּ� varchar(200),
    CONSTRAINT ȸ��_PK PRIMARY KEY (ȸ���ȣ)
);

-- ��Ƽ��ƮT ���̺� ����
CREATE TABLE ��Ƽ��ƮT (
    ��Ƽ��Ʈ��ȣ int NOT NULL AUTO_INCREMENT,
    ��Ƽ��Ʈ varchar(50) NOT NULL,
    Ÿ�� varchar(10) NOT NULL,
    �Ҽ�ȸ���ȣ int,
    CONSTRAINT ��Ƽ��Ʈ_PK PRIMARY KEY (��Ƽ��Ʈ��ȣ),
    CONSTRAINT ��Ƽ��Ʈ_�Ҽ�ȸ���ȣ_FK FOREIGN KEY (�Ҽ�ȸ���ȣ) REFERENCES ȸ��T (ȸ���ȣ)
);

-- 02 �ڵ�
INSERT INTO ȸ��T(ȸ���, â����, â����, �ּ�)
VALUES('EDAM Entertainment', '������', '2019-12-10', '����� ������ ������� 103�� 17');

INSERT INTO ȸ��T(ȸ���, â����, â����, �ּ�)
VALUES('�������������θ�Ʈ', '������', '1998-02-24', '����� ������ ������� 1�� 3');

INSERT INTO ȸ��T(ȸ���, â����, â����, �ּ�)
VALUES('����Ʈ����', '�����', '2005-02-24', '����� ��걸 �Ѱ���� 42');

INSERT INTO ȸ��T(ȸ���, â����, â����, �ּ�)
VALUES('JYP ENT', '������', '1996-04-25', '����� ������ ������� 205');

INSERT INTO ȸ��T(ȸ���, â����, â����, �ּ�)
VALUES('������', '�̼���', '1995-02-04', '����� ������ �սʸ��� 83-21');

SELECT ȸ���ȣ, ȸ���, â����, â����, �ּ�
FROM ȸ��T;

-- 03 �ڵ�
INSERT INTO ��Ƽ��ƮT (��Ƽ��Ʈ, Ÿ��, �Ҽ�ȸ���ȣ)
VALUES('������', '�ַ�', 1);

INSERT INTO ��Ƽ��ƮT (��Ƽ��Ʈ, Ÿ��, �Ҽ�ȸ���ȣ)
VALUES('AKMU', '�׷�', 2);

INSERT INTO ��Ƽ��ƮT (��Ƽ��Ʈ, Ÿ��, �Ҽ�ȸ���ȣ)
VALUES('��ź�ҳ��', '�׷�', 3);

INSERT INTO ��Ƽ��ƮT (��Ƽ��Ʈ, Ÿ��, �Ҽ�ȸ���ȣ)
VALUES('����ũ', '�׷�', 2);

INSERT INTO ��Ƽ��ƮT (��Ƽ��Ʈ, Ÿ��, �Ҽ�ȸ���ȣ)
VALUES('ITZY', '�׷�', 4);

INSERT INTO ��Ƽ��ƮT (��Ƽ��Ʈ, Ÿ��, �Ҽ�ȸ���ȣ)
VALUES('���座��', '�׷�', 5);

INSERT INTO ��Ƽ��ƮT (��Ƽ��Ʈ, Ÿ��, �Ҽ�ȸ���ȣ)
VALUES('����', '�ַ�', 5);

INSERT INTO ��Ƽ��ƮT (��Ƽ��Ʈ, Ÿ��, �Ҽ�ȸ���ȣ)
VALUES('2PM', '�׷�', 4);

SELECT ��Ƽ��Ʈ, Ÿ��, �Ҽ�ȸ���ȣ
FROM ��Ƽ��ƮT;

-- 04 �ڵ�
INSERT INTO ��Ƽ��ƮT (��Ƽ��Ʈ, Ÿ��, �Ҽ�ȸ���ȣ)
VALUES('�̹���', '�ַ�', 6);

-- 05 �ڵ�
INSERT INTO ��Ƽ��ƮT (��Ƽ��Ʈ, Ÿ��)
VALUES('�̹���','�ַ�');

SELECT ��Ƽ��Ʈ, Ÿ��, �Ҽ�ȸ���ȣ
FROM ��Ƽ��ƮT;

-- 06 �ڵ�
INSERT INTO ȸ��T(ȸ���, â����, â����, �ּ�)
VALUES('���÷��̿������θ�Ʈ', '�ӵ���', '2020-04-20', '����� ������ �е��� 7�� 29');

SELECT ȸ���ȣ, ȸ���, â����, â����, �ּ�
FROM ȸ��T;

-- 07 �ڵ�
UPDATE ��Ƽ��ƮT
SET �Ҽ�ȸ���ȣ = 6
WHERE ��Ƽ��Ʈ= '�̹���';

SELECT *
FROM ��Ƽ��ƮT;

-- 08 �ڵ�
DELETE FROM ȸ��T
WHERE ȸ���ȣ = 1;

-- 09 �ڵ�
INSERT INTO ȸ��T(ȸ���, â����, â����, �ּ�)
VALUES('���̺�', '�����', '2005-02-05', '����� ��걸 �Ѱ���� 42');

SELECT *
FROM ȸ��T;

-- 10 �ڵ�
DELETE FROM ȸ��T
WHERE ȸ���ȣ = 7;

SELECT *
FROM ȸ��T;

-- �ǹ� ���Ἲ ����: CHECK
-- 01 �ڵ�
CREATE TABLE �ι�T (
    �ι���ȣ int NOT NULL AUTO_INCREMENT,
    �̸� varchar(255) NOT NULL,
    ���� int CHECK (���� BETWEEN 0 AND 150), -- 0 <= ���� <= 150 ����
    ������� date,
    ���� char(1) CHECK (���� IN ('1','2')), -- ������ 1 �Ǵ� 2
    �ٸ��̸� varchar(255),
    CONSTRAINT �ι�T_PK PRIMARY KEY (�ι���ȣ)
);

-- 02 �ڵ�
INSERT INTO �ι�T (�̸�, ����, �������, ����, �ٸ��̸�)
VALUES ('������', 31, '1993-05-16', '2', '������');

INSERT INTO �ι�T (�̸�, ����, �������, ����)
VALUES ('������', 28, '1996-09-12', '1');

INSERT INTO �ι�T (�̸�, ����, �������, ����, �ٸ��̸�)
VALUES ('����', 28, '1996-01-26', '2', '������');

INSERT INTO �ι�T (�̸�, ����, �������, ����)
VALUES ('�̹���', 24, '2000-12-28', '1');

INSERT INTO �ι�T (�̸�, ����, �������, ����, �ٸ��̸�)
VALUES ('����', 27, '1997-02-11', '2', '���翵');

INSERT INTO �ι�T (�̸�, ����, �������, ����, �ٸ��̸�)
VALUES ('����', 29, '1995-01-03', '2', '������');

INSERT INTO �ι�T (�̸�, ����, �������, ����, �ٸ��̸�)
VALUES ('����', 27, '1997-09-01', '1', '������');

INSERT INTO �ι�T (�̸�, ����, �������, ����)
VALUES ('�̼���', 25, '1999-05-04', '2');

INSERT INTO �ι�T (�̸�, ����, �������, ����, �ٸ��̸�)
VALUES ('����', 29, '1995-10-13', '1', '������');

INSERT INTO �ι�T (�̸�, ����, �������, ����, �ٸ��̸�)
VALUES ('����', 27, '1997-03-27', '2', '�󸮻縶���');

SELECT *
FROM �ι�T;
