USE jsp2;

CREATE TABLE board
(
    number   INT PRIMARY KEY AUTO_INCREMENT,
    title    VARCHAR(50)   NOT NULL,
    content  VARCHAR(5000) NOT NULL,
    writer   VARCHAR(50)   NOT NULL,
    inserted DATETIME      NOT NULL DEFAULT NOW()
)