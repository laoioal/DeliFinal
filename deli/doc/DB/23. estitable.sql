-- estitable
    CREATE TABLE estitable(
    etbno NUMBER(4)
        CONSTRAINT ETB_BNO_FK REFERENCES board(bno)
        CONSTRAINT ETB_BNO_NN NOT NULL,
    etida VARCHAR2(10 CHAR)
        CONSTRAINT ETB_IDA_NN NOT NULL
        CONSTRAINT ETB_IDA_FK REFERENCES member(id),
    etidb VARCHAR2(10 CHAR)
        CONSTRAINT ETB_IDB_NN NOT NULL
        CONSTRAINT ETB_IDB_FK REFERENCES member(id),
    isshow CHAR(1) DEFAULT 'Y'
        CONSTRAINT ETB_SHOW_NN NOT NULL
        CONSTRAINT ETB_SHOW_CK CHECK(isshow IN('Y','N'))
);

INSERT ALL
    WHEN
        abno = 13 AND aid != 'jennie' THEN
    INTO
        estitable
    VALUES(
        13, 'jennie', aid, isshow
    )
SELECT * FROM regimem