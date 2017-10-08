CREATE TABLE FD_ADMIN.PS_TXN
(
    ID              NUMBER(20,0) NOT NULL ENABLE,
    PARENTID        NUMBER(20,0),
    COLLID          NUMBER(20,0),
    CONTENT         BLOB,
    CREATION_DATE   DATE DEFAULT SYSDATE,
    CONSTRAINT "PS_TXN_PK" PRIMARY KEY (COLLID, ID)
);
  
CREATE SEQUENCE FD_ADMIN.PS_TXN_SEQ MINVALUE 1 MAXVALUE 2140000000 INCREMENT BY 50 START WITH 1 CACHE 1000 NOORDER NOCYCLE;

GRANT ALL PRIVILEGES ON FD_ADMIN.PS_TXN TO FD_ADMIN;
GRANT ALL PRIVILEGES ON FD_ADMIN.PS_TXN_SEQ TO FD_ADMIN;


-- If creating in different schema, then use Public Synonyms
--CREATE OR REPLACE PUBLIC SYNONYM PS_TXN FOR FD_ADMIN.PS_TXN;
--CREATE OR REPLACE PUBLIC SYNONYM PS_TXN_SEQ FOR FD_ADMIN.PS_TXN_SEQ;
commit;
exit