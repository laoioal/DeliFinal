댓글 관련 테이블
CREATE TABLE reboard(
	rbno NUMBER(6)
		CONSTRAINT RBRD_NO_PK PRIMARY KEY,
	upno NUMBER(6),
    brdno NUMBER(4)
        CONSTRAINT RBRD_BRDNO_NN NOT NULL
        CONSTRAINT RBRD_BRDNO_FK REFERENCES board(bno),
	rbmno NUMBER(4)
		CONSTRAINT RBRD_MNO_FK REFERENCES member(mno)
		CONSTRAINT RBRD_MNO_NN NOT NULL,
    body VARCHAR2(200 CHAR)
        CONSTRAINT RBRD_BODY_NN NOT NULL,
    wdate DATE DEFAULT sysdate
        CONSTRAINT RBRD_DATE_NN NOT NULL,
    isshow CHAR(1) DEFAULT 'Y'
        CONSTRAINT RBRD_SHOW_CK CHECK(isshow IN('Y','N'))
        CONSTRAINT RBRD_SHOW_NN NOT NULL
    );
    
    
    
INSERT INTO
    reboard(rbno, brdno, rbmno, body)
VALUES(
    (SELECT NVL(MAX(rbno) + 1, 1) FROM reboard),
    19, 1001, '저도 먹고싶네요'
);

INSERT INTO
    reboard(rbno, brdno, rbmno, body)
VALUES(
    (SELECT NVL(MAX(rbno) + 1, 1) FROM reboard),
    19, 1003, '시간 좀만 늦춰주세요 ㅠㅠ'
);

INSERT INTO
    reboard(rbno, upno, brdno, rbmno, body)
VALUES(
    (SELECT NVL(MAX(rbno) + 1, 1) FROM reboard),
    1, 19, 1004, '콜??'
);

INSERT INTO
    reboard(rbno, upno, brdno, rbmno, body)
VALUES(
    (SELECT NVL(MAX(rbno) + 1, 1) FROM reboard),
    3, 19, 1001, '결제가시죠'
);

INSERT INTO
    reboard(rbno, upno, brdno, rbmno, body)
VALUES(
    (SELECT NVL(MAX(rbno) + 1, 1) FROM reboard),
    1, 19, 1005, '왜 안드세요?'
);
commit;