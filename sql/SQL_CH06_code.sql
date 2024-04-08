-- 6.2. JOIN���� ������ �����ϱ� 

-- USING ��
-- actors ���̺� �����ϱ�

CREATE TABLE actors (
    actorid INT NOT NULL,
    name VARCHAR(40) NOT NULL,
    titlerole VARCHAR(60),
    corpid INT,
    PRIMARY KEY (actorid),
    CONSTRAINT FK_corp FOREIGN KEY (corpid) REFERENCES corp(corpid)
);

INSERT INTO actors (actorid, name, titlerole, corpid)
VALUES 
(4, '����', '��ȣ��', 1),
(7, '�쿵��', '��ȣ��', 1),
(5, '������', '�ǻ�', 2),
(6, '������', '�ǻ�', 2),
(11, '������', '�ǻ�', 2),
(1, '�庸��', '����', 3);


-- emp ���̺� �����ϱ�
CREATE TABLE emp (
  empid int PRIMARY KEY,
  ename varchar(45) NOT NULL,
  title varchar(45) ,
  mgrid varchar(45) 
) COMMENT='������̺�';

INSERT INTO emp (empid, ename, title, mgrid) VALUES ('101', '���', '����', '102');
INSERT INTO emp (empid, ename, title) VALUES ('102', '������', '����');
INSERT INTO emp (empid, ename, title, mgrid) VALUES ('103', '�ϰ���', '����', '102');
INSERT INTO emp (empid, ename, title, mgrid) VALUES ('104', '�����', '����', '101');
INSERT INTO emp (empid, ename, title, mgrid) VALUES ('105', '��ä��', '����', '102');

-- 6.5. ChatGPT�� �̿��� SQL JOIN �ǽ� 
-- 01 ����
�Ʒ� �������� SQL JOIN ���������� 5�� ����� ��.
�� MySQL�� SQL ��ɾ �����ϱ� ������ �л��Դϴ�.
�� Sakila DB�� ���̺��� �̿��մϴ�.
�� JOIN�ϴ� ���̺��� ������ �ϳ� �Ǵ� �� ���� �մϴ�.
�� ���������� ��� �������� ������� ���� �����Դϴ�.
�� �ѱ�� ����մϴ�.

-- 04 ���� 
�Ʒ� �������� SQL ���������� 5�� ����� ��.
�� MySQL�� SQL ��ɾ �����ϱ� ������ �л��Դϴ�.
�� Sakila DB�� ���̺��� �̿��մϴ�.
�� ���������� �����ϴ� �����Դϴ�.
�� �ѱ�� ����մϴ�.