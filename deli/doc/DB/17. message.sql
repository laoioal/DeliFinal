CREATE TABLE message (
    msno NUMBER(4)
        CONSTRAINT MESSAGE_MSNO_PK PRIMARY KEY,
    writerno NUMBER(4)
        CONSTRAINT MESSAGE_WTNO_NN NOT NULL
        CONSTRAINT MESSAGE_WTNO_FK REFERENCES member(mno),
    myno NUMBER(4)
        CONSTRAINT MESSAGE_MYNO_NN NOT NULL
        CONSTRAINT MESSAGE_MYNO_FK REFERENCES member(mno),
    mstitle VARCHAR2(30 CHAR)
        CONSTRAINT MESSAGE_MSTITLE_NN NOT NULL,
    msbody VARCHAR2(4000)
        CONSTRAINT MESSAGE_MSBODY_NN NOT NULL,
    wdate DATE DEFAULT sysdate
        CONSTRAINT MESSAGE_WDATE_NN NOT NULL,
    mscheck CHAR(1) DEFAULT 'N'
        CONSTRAINT MESSAGE_CHECK_NN NOT NULL,
    rdate DATE,
    isshow CHAR(1) DEFAULT 'Y'
        CONSTRAINT MESSAGE_ISSHOW_NOT NULL
        CONSTRAINT MESSAGE_ISSHOW_CK CHECK(isshow IN('Y', 'N'))
);

INSERT INTO
    message(msno, writerno, myno, mstitle, msbody)
VALUES(
    (SELECT NVL(MAX(msno) + 1, 1) FROM message),
    1001, 1006, '제니야', '제니야 우리 족발시켜먹을래?'
);


INSERT INTO
    message(msno, writerno, myno, mstitle, msbody)
VALUES(
    (SELECT NVL(MAX(msno) + 1, 1) FROM message),
    1003, 1006, '제니님', '드시고 싶으신 메뉴 있으신가요??'
);

INSERT INTO
    message(msno, writerno, myno, mstitle, msbody, wdate)
VALUES(
    (SELECT NVL(MAX(msno) + 1, 1) FROM message),
    1002, 1006, '오늘은 뭐 안시켜드세요?', '시간 맞으시면 같이 시켜먹을래요???', '2022/07/26'
);

INSERT INTO
    message(msno, writerno, myno, mstitle, msbody, wdate)
VALUES(
    (SELECT NVL(MAX(msno) + 1, 1) FROM message),
    1002, 1006, '왜왜왜왜왜', '왜 제 쪽지에 답 안해주세요 왜왜', '2022/07/27'
);