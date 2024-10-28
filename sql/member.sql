USE jsp2;

CREATE TABLE member
(
    id          VARCHAR(50) PRIMARY KEY,
    password    VARCHAR(32) NOT NULL,
    nick_name   VARCHAR(15) NOT NULL UNIQUE,
    description VARCHAR(1000)        DEFAULT NULL,
    inserted    DATETIME    NOT NULL DEFAULT NOW()
);

INSERT INTO member
    (id, password, nick_name)
VALUES ('김태민', '0530', '짝태'),
       ('신형철', '1107', '백자형철'),
       ('김영웅', '0703', '웅덩이')