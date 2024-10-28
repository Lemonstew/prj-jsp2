USE board3game;

DROP TABLE IF EXISTS AgitBoardGame;

CREATE TABLE AgitBoardGame
(
    Number     INT PRIMARY KEY AUTO_INCREMENT,
    GameName   VARCHAR(255) CHARACTER SET utf8 DEFAULT NULL UNIQUE,
    Expansions VARCHAR(10) CHARACTER SET utf8  DEFAULT NULL,
    AvgRaiting DEC(4, 2) NOT NULL,
    Weight     DEC(4, 2) NOT NULL,
    Price      VARCHAR(10) CHARACTER SET utf8  DEFAULT NULL
);

INSERT INTO AgitBoardGame (Number, GameName, Expansions, AvgRaiting, Weight, Price)
VALUES ('1', 'Obsession', 'O', 8.1, 3.10, '180,000'),
       ('2', 'Lorenzo Il Magnifico', 'O', 7.8, 3.30, '30,000'),
       ('3', 'Gaia Project', 'O', 8.4, 4.40, '99,000')

