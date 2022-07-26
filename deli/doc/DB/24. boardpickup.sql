CREATE TABLE boardpickup(
    bpno number(4)
        CONSTRAINT BP_BPNO_PK PRIMARY KEY
        CONSTRAINT BP_BPNO_NN NOT NULL,
    bno number(4)
        CONSTRAINT BP_BNO_FK REFERENCES board(bno)
        CONSTRAINT BP_BNO_NN NOT NULL,
    placeName VARCHAR2(4000)
        CONSTRAINT BP_PLACENAME_NN NOT NULL,
    parea VARCHAR2(4000)
        CONSTRAINT BP_PAREA_NN NOT NULL
);

INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    1, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    2, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    3, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    4, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    5, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    6, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    7, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    8, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    9, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    10, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    11, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    12, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    13, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    14, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    15, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    16, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    17, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    18, '약수역', '서울 중구 다산로 지하 122'
);
INSERT INTO
    boardpickup(bpno, bno, placename, parea)
VALUES(
    (SELECT NVL(max(bpno) + 1, 1) FROM boardpickup),
    19, '약수역', '서울 중구 다산로 지하 122'
);

commit;