CREATE TABLE users (
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  age INTEGER NOT NULL,
  country TEXT NOT NULL,
  phone TEXT NOT NULL,
  balance INTEGER NOT NULL
);

--특정 데이터 조회하기
SELECT first_name, age
FROM users;

SELECT rowid, first_name
FROM users;

--전체 데이터 조회하기
SELECT * FROM users;

--이름과 나이를 나이가 어린 순서대로 조회하기
SELECT first_name, age 
FROM users
ORDER BY age ASC; --ASC 안써도됨. default이기때문.

--이름과 나이를 나이가 많은 순서대로 조회하기
SELECT first_name, age 
FROM users
ORDER BY age DESC;

--이름, 나이, 계좌 잔고를 나이 어린순으로
--나이가 같으면 잔고 많은 순으로 정렬
SELECT first_name, age, balance FROM users
ORDER BY age ASC, balance DESC;

----------------------------

SELECT country FROM users;
--중복된행 제거하고 조회하기
SELECT DISTINCT country FROM users;
--중복된행 제거하고 글자순 정렬
SELECT DISTINCT country FROM users
ORDER BY country;

--이름 과 지역 중복 없이 모든 이름과 지역 조회
--@각 컬럼의 중복을 따로 계산하는 것이 아니라 두 컬럼을 하나의 집합으로 보고 중복을 제거
SELECT DISTINCT first_name, country FROM users;

SELECT DISTINCT first_name, country FROM users
ORDER BY country;

-- 나이가 30살 이상인 사람들의 이름, 나이, 계좌 잔고 조회하기
SELECT first_name, age, balance FROM users
WHERE age >= 30;

-- 나이가 30살 이상, 계좌 잔고 50만 초과인 사람들의 이름, 나이, 계좌 잔고 
SELECT first_name, age, balance FROM users
WHERE age >= 30 AND balance > 500000;

--이름에 호 포함되는 사람 검색
SELECT first_name, last_name FROM users
WHERE first_name LIKE '%호%';

--이름에 준으로 끝나는 사람 조회
SELECT first_name, last_name FROM users
WHERE first_name LIKE '%준';

--서울 지역 전화버호를 가진 사람들의 이름과 번호 조회
SELECT first_name, phone FROM users
WHERE phone LIKE '02-%';

-- 20대인 사람 조회
SELECT first_name, age FROM users
WHERE age LIKE '2_';

--전화번호 중간 4자리 51시작하는사람 조회
SELECT first_name, phone FROM users
WHERE phone LIKE '%-51__-%';

--경기도 혹은 강원도에 사는 사람 조회
SELECT first_name, country FROM users
WHERE country IN ('경기도','강원도');

SELECT first_name, country FROM users
WHERE country = '경기도' OR country = '강원도';

--경기도 강원도에 살지 않는 사람 조회
SELECT first_name, country FROM users
WHERE country NOT IN ('경기도','강원도');

-- 나이가 20살 이상, 30살 이하인 사람들의 이름과 나이 조회
SELECT first_name, age FROM users
WHERE age BETWEEN 20 AND 30;

-- 나이가 20살 이상, 30살 이하인 아닌 사람들의 이름과 나이 조회
SELECT first_name, age FROM users
WHERE age NOT BETWEEN 20 AND 30;

SELECT first_name, age FROM users
WHERE age < 20 OR age > 30;

-- 최대 조회 개수 제한 LIMIT
SELECT rowid, first_name FROM users LIMIT 10;

--계좌 잔고가 많은 상위 10 명 조회
SELECT first_name, balance FROM users
ORDER BY balance DESC LIMIT 10;

--OFFSET 중간 번호 부터 가져 올수 있다.age

--11번째 부터 20번째 데이터의 rowid와 이름 조회
SELECT rowid, first_name FROM users
LIMIT 10 OFFSET 10;

--GROUP BY

SELECT country, COUNT(*) FROM users
GROUP BY country;

--users 테이블 전체 행수 조회
SELECT COUNT(*) FROM users;

--30살 이상인 사람들의 평균 나이
SELECT AVG(age) FROM users WHERE age >= 30;

----------------------------------
--CREATE
CREATE TABLE classmates (
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  address TEXT NOT NULL
);
-- INSERT INTO table_name

---단일행 삽입하기
--1
INSERT INTO classmates (name, age, address)
VALUES ('홍길동', 23, '서울');

--2
INSERT INTO classmates
VALUES ('홍길동',23,'서울');

insert into classmates
values(address='seoul',age=20,name='홍길동');

insert into classmates(address,age,name)
values('seoul', 20, '홍길동');

---------------
--워크샵

--1)
CREATE TABLE countries (
  room_num TEXT NOT NULL,
  check_in TEXT NOT NULL,
  check_out TEXT NOT NULL,
  grade TEXT NOT NULL,
  price INTEGER NOT NULL
);



--2)
INSERT INTO countries
VALUES
 ('B203','2019-12-31','2020-01-03','suite',900),
 ('1102','2020-01-04','2020-01-08','suite',850),
 ('303','2020-01-01','2020-01-03','deluxe',500),
 ('807','2020-01-04','2020-01-07','superior',300);

--3)
ALTER TABLE countries RENAME TO hotels;

--4)
SELECT room_num, price FROM hotels
ORDER BY price DESC LIMIT 2;

--5)
SELECT grade, COUNT(*) DESC FROM hotels
GROUP BY grade 
ORDER BY COUNT(*) DESC;

--6)
SELECT * FROM hotels
WHERE room_num LIKE 'B%' 
  OR grade = 'deluxe';

--7)
SELECT * FROM hotels
WHERE room_num NOT LIKE 'B%' 
  AND check_in = '2020-01-04'
ORDER BY price;