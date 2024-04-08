# 6.2. JOIN으로 데이터 결합하기 

## USING 절
> actors 테이블 생성하기
### 01 코드
```sql
CREATE TABLE actors (
    actorid INT NOT NULL,
    name VARCHAR(40) NOT NULL,
    titlerole VARCHAR(60),
    corpid INT,
    PRIMARY KEY (actorid),
    CONSTRAINT FK_corp FOREIGN KEY (corpid) REFERENCES corp(corpid)
);
```
### 02 코드
```sql
INSERT INTO actors (actorid, name, titlerole, corpid)
VALUES 
(4, '정명석', '변호사', 1),
(7, '우영우', '변호사', 1),
(5, '강동주', '의사', 2),
(6, '차은재', '의사', 2),
(11, '서우진', '의사', 2),
(1, '장보고', '군인', 3);
```

> emp 테이블 생성하기
### 03 코드
```sql
CREATE TABLE emp (
  empid int PRIMARY KEY,
  ename varchar(45) NOT NULL,
  title varchar(45) ,
  mgrid varchar(45) 
) COMMENT='사원테이블';
```
### 04 코드
```sql
INSERT INTO emp (empid, ename, title, mgrid) VALUES ('101', '양규', '부장', '102');
INSERT INTO emp (empid, ename, title) VALUES ('102', '강감찬', '사장');
INSERT INTO emp (empid, ename, title, mgrid) VALUES ('103', '하공진', '부장', '102');
INSERT INTO emp (empid, ename, title, mgrid) VALUES ('104', '김숙흥', '과장', '101');
INSERT INTO emp (empid, ename, title, mgrid) VALUES ('105', '지채문', '부장', '102');
```

# 6.5. ChatGPT를 이용한 SQL JOIN 실습 

> 01 질문
```txt
아래 내용으로 SQL JOIN 연습문제를 5개 만들어 줘.
■ MySQL로 SQL 명령어를 공부하기 시작한 학생입니다.
■ Sakila DB의 테이블을 이용합니다.
■ JOIN하는 테이블의 개수는 하나 또는 두 개로 합니다.
■ 서브쿼리는 어느 절에서도 사용하지 않은 문장입니다.
■ 한국어를 사용합니다.
```
> 02 질문 
```txt
아래 내용으로 SQL 연습문제를 5개 만들어 줘.
■ MySQL로 SQL 명령어를 공부하기 시작한 학생입니다.
■ Sakila DB의 테이블을 이용합니다.
■ 서브쿼리를 포함하는 문장입니다.
■ 한국어를 사용합니다.
```