# homework

1.

```html
1) T
2) F 1은 N의 데이터를 역참조한다. 역참조는 간접참조라고 한다.
3) T
4) F 외래키의 값은 반드시 부모 테이블의 PK 일 필요는 없다.
다만 유일한 값(UNIQUE) 이어야한다.
```

2.

```html
컬럼 이름  -  answer_id
테이블 이름 - articles_comment
```

3.

```html
question
```

4.

```html
3)
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

