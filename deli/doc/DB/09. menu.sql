--delivery
CREATE TABLE menu(
    mno NUMBER(4)
        CONSTRAINT MN_MNO_PK PRIMARY KEY,
    rno NUMBER(6)
        CONSTRAINT MN_RNO_FK REFERENCES restaurant(restno)
        CONSTRAINT MN_RNO_NN NOT NULL,
    mname VARCHAR2(20CHAR)
        CONSTRAINT MN_MNAME_NN NOT NULL,
    mprice NUMBER(6)
        CONSTRAINT MN_PR_NN NOT NULL,
    mintro VARCHAR2(60 CHAR)
        CONSTRAINT MN_INTRO_NN NOT NULL,
    mimg NUMBER(4)
        CONSTRAINT MN_IMG_FK REFERENCES menuimg(mino)
        CONSTRAINT MN_IMG_NN NOT NULL,
    isshow CHAR(1) DEFAULT 'Y'
        CONSTRAINT MN_SHOW_CK CHECK (isshow IN('Y','N'))
        CONSTRAINT MN_SHOW_NN NOT NULL
);

INSERT INTO
    menu(mno, rno, mname, mintro, mimg, mprice)
VALUES(
    (SELECT NVL(MAX(mno) +1, 1) FROM menu),
    1, '짜장면', '둘이 먹다가 하나가 죽어도 모르는 짜장면!', 1001, 6000
);

INSERT INTO
    menu(mno, rno, mname, mintro, mimg, mprice)
VALUES(
    (SELECT NVL(MAX(mno) +1, 1) FROM menu),
    1, '짬뽕', '둘이 먹다가 하나가 죽어도 모르는 짬뽕!', 1002, 6000
);

INSERT INTO
    menu(mno, rno, mname, mintro, mimg, mprice)
VALUES(
    (SELECT NVL(MAX(mno) +1, 1) FROM menu),
    2, '짜장면', '둘이 먹다가 하나가 죽어도 모르는 짜장면!', 1001, 6000
);

INSERT INTO
    menu(mno, rno, mname, mintro, mimg, mprice)
VALUES(
    (SELECT NVL(MAX(mno) +1, 1) FROM menu),
    2, '짬뽕', '둘이 먹다가 하나가 죽어도 모르는 짬뽕!', 1002, 6000
);

INSERT INTO
    menu(mno, rno, mname, mintro, mimg, mprice)
VALUES(
    (SELECT NVL(MAX(mno) +1, 1) FROM menu),
    3, '짜장면', '둘이 먹다가 하나가 죽어도 모르는 짜장면!', 1001, 6000
);

INSERT INTO
    menu(mno, rno, mname, mintro, mimg, mprice)
VALUES(
    (SELECT NVL(MAX(mno) +1, 1) FROM menu),
    3, '짬뽕', '둘이 먹다가 하나가 죽어도 모르는 짬뽕!', 1002, 6000
);

INSERT INTO
    menu(mno, rno, mname, mintro, mimg, mprice)
VALUES(
    (SELECT NVL(MAX(mno) +1, 1) FROM menu),
    4, '짜장면', '둘이 먹다가 하나가 죽어도 모르는 짜장면!', 1001, 6000
);

INSERT INTO
    menu(mno, rno, mname, mintro, mimg, mprice)
VALUES(
    (SELECT NVL(MAX(mno) +1, 1) FROM menu),
    4, '짬뽕', '둘이 먹다가 하나가 죽어도 모르는 짬뽕!', 1002, 6000
);

INSERT INTO 
    MENU(mno, rno, mname, mprice, mintro,mimg)    
VALUES(
    (SELECT NVL(MAX(mno) +1, 1) FROM menu),
    200, '삼겹살', 12000, '이것은 삼겹살인가 목살인가 그만큼 담백하고 맛있는 삼겹살', 1021
);

INSERT INTO 
    MENU(mno, rno, mname, mprice, mintro,mimg)    
VALUES(
    (SELECT NVL(MAX(mno) +1, 1) FROM menu),
    200, '갈비', 12000, '양념이 싹 베인 양념갈비 이거 안 먹어보면 후회할지도?', 1022
);

commit;
