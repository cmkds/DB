
CREATE TABLE zoo (
  name TEXT NOT NULL,
  eat TEXT NOT NULL,
  weight INT NOT NULL,
  height INT,
  age INT
);

-- 1) 데이터 입력 순서가 틀렸다.
INSERT INTO zoo VALUES 
('gorilla', 'omnivore', 180, 210, 5);

-- 2) 로우 아이디가 중복 됐다.
INSERT INTO zoo (rowid, name, eat, weight, age) VALUES
(10,'dolphin', 'carnivore', 210, 3),
(11, 'alligator', 'carnivore', 250, 50);

-- 3) weight 가 NOT NULL 속성이라 weight를 추가해줘야한다.
INSERT INTO zoo (name, eat, age, weight) VALUES
('dolphin', 'carnivore', 3, 250);
