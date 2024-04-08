4.1. ������ ó�� ǥ�ؾ�: SQL 
-- 01 �ڵ�
CREATE TABLE person (
    personid INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INT,
    birthdate DATE,
    gender CHAR(1),
    legalname VARCHAR(255),
    height INT,
    shoesize INT,
    PRIMARY KEY (personid)
);

-- 03 �ڵ�
DESC person;

-- 04 �ڵ� 
DROP TABLE person;


4.4. ������ ���۾� 
-- INSERT �� 
-- �� 
INSERT INTO person (personid, name, age, birthdate, gender, legalname, height, shoesize)
VALUES (1,'������',29,'1993-05-16','2','������',162,225);
-- ��
INSERT INTO person
VALUES (1,'������',29,'1993-05-16','2','������',162,225);

-- ��
INSERT INTO person (name, age, birthdate, gender)
VALUES ('������',28,'1996-09-12','1');
-- ��
INSERT INTO person (name, age, birthdate, gender, legalname, height, shoesize)
VALUES ('����',28,'1996-01-26','2', NULL, NULL, NULL);

INSERT INTO person (personid, name, age, birthdate, gender, legalname, height, shoesize)
VALUES (4, '�̹���', 24, '2000-12-28', '1', NULL, 173, 270),
(5, '����', 27, '1997-02-11', '2', '��ä��', 168, 240),
(6, '����', 29, '1995-01-03', '2', '������', 162, 235);

-- UPDATE �� 
UPDATE person
SET height = 163,
shoesize = 235
WHERE personid = 3;

UPDATE person
SET height = 175
WHERE gender = 1;

UPDATE person
SET height = 163,
    shoesize = 235;

-- DELETE �� 
DELETE FROM person
WHERE personid = 4;

DELETE FROM person;

-- �ǽ��� ���̺�� ������ 
-- ȸ��(corp) ���̺� �����ϱ�
CREATE TABLE corp (
    corpid INT NOT NULL AUTO_INCREMENT,
    corpname VARCHAR(80) NOT NULL,
    ceo VARCHAR(40) NOT NULL,
    estdate DATE,
    location VARCHAR(200),
    PRIMARY KEY (corpid)
);

INSERT INTO corp (corpid, corpname, ceo, estdate, location)
VALUES 
(1, '�ѹٴ�', '�Ѽ���', '2022-06-29',  '����� ������ ������� 103�� 17'),
(2, '����', '�ο���', '2016-11-07', '������ ������ �氭�� 2007'),
(3, 'û����', '�����', '2004-11-24', '���󳲵� �ϵ��� �嵵'),
(4, '������', '��ν�', '2023-08-09', '����� �߱� ȸ���� 1��'),
(5, '�۷θ�', '�̾�ȭ', '2018-07-07', '����� ���α� ȿ�ڷ� 12');

-- �ι�(person) ���̺� �����ϱ�
CREATE TABLE person (
    personid INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(40) NOT NULL,
    job VARCHAR(60),
    birthdate DATE,
    gender CHAR(1),
    nickname VARCHAR(40),
    height INT,
    weight INT,
    followers INT,
    agencyid INT,
    PRIMARY KEY (personid),
    CONSTRAINT FK_agency FOREIGN KEY (agencyid) REFERENCES corp(corpid)
);

INSERT INTO person (name, job, birthdate, gender, nickname, height, weight, followers, agencyid)
VALUES
('�庸��', '����', '1993-05-16', '1', '�ؽ�', 168, 65, NULL, 3),
('���ֿ�', '������', '1970-11-29', '1', '������', 175, 82, NULL, 4),
('�����', '�л�', '1996-01-26', '1', '����', 181, 94, NULL, 4),
('����', '��ȣ��', '1983-10-14', '1', NULL, 178, 70, NULL, 1),
('������', '�ǻ�', '1987-04-06', '1', NULL, 183, 73, 2413000, 2),
('������', '�ǻ�', '1988-05-06', '2', '����_����', 174, 50, 15270000, 2),
('�쿵��', '��ȣ��', '1992-09-04', '2', '����_��', 163, 45, 3426000, 1),
('����ä', '������', '1991-05-06', '2', NULL, 168, 48, 1304000, NULL),
('�����', '�л�', '1996-04-02', '2', '�������', 167, 47, 6650000, 4),
('����', '�뿪��', '1978-03-12', '1', '������', 177, 67, 1650000, NULL),
('������', '�ǻ�', '1988-05-06', '1', '�𳭵�', 187, 74, 13530000, 2);
