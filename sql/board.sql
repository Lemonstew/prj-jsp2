USE jsp2;

CREATE TABLE board
(
    number   INT PRIMARY KEY AUTO_INCREMENT,
    title    VARCHAR(50)   NOT NULL,
    content  VARCHAR(5000) NOT NULL,
    writer   VARCHAR(50)   NOT NULL,
    inserted DATETIME      NOT NULL DEFAULT NOW()
);

SELECT b.number,
       b.title,
       b.content,
       b.writer,
       b.inserted,
       m.nick_name
FROM board b
         JOIN member m
              ON b.writer = m.nick_name
WHERE b.number = 3;

DELETE
FROM board
WHERE number = 2;

INSERT INTO board
    (number, title, content, writer, inserted)
VALUES (1, '듄 아라키스 전쟁', '사고싶다', '레몬찌개', '2024-10-30 09:34:07'),
       (2, '듄 봉기', '이것도 사고싶다', '레몬찌개', '2024-10-30 09:38:04');

SELECT number id,
       title,
       writer,
       inserted
FROM board;