# homework

1.

```html
1) 관계형 데이터베이스에서 구조와 제약조건에 관련한 전반적인 명세를 기술한 것
스키마

2) 열과 행의 모델을 사용해 조직된 데이터 요소들의 집합
테이블

3) 고유한 데이터 형식이 지정되는 열
컬럼

4) 단일 구조  데이터 항목을 가리키는 행
레코드

5) 각 행의 고유 값
기본키
```

2.

```html
1) CREATE
```

3.

```html
관계형 데이터 베이스를 만들고 업데이트하고 관리하는 데 사용하는 프로그램
SQLite, MySQL, Oracle
```

4.

```html
3)
```

5.

```html
%는 %위치에 0개이상의 문자가 올수 있음을 의미한다.
_는 _위치에 단일 1개 문자가 있음을 의미한다.
```

 

# workshop

```sqlite
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
```

