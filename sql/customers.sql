--------------------------------------------------------
--  �ļ��Ѵ��� - ������-һ��-12-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CUSTOMERS" 
   (	"ID" NUMBER(11,0), 
	"AID" NUMBER(11,0), 
	"ID_NUMBER" VARCHAR2(255 BYTE), 
	"NAME" VARCHAR2(255 BYTE), 
	"PHONE_NUMBER" VARCHAR2(255 BYTE), 
	"GENDER" VARCHAR2(255 BYTE), 
	"RENT_CAR" VARCHAR2(255 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 

   COMMENT ON COLUMN "SYSTEM"."CUSTOMERS"."AID" IS '�˺�id';
 
   COMMENT ON COLUMN "SYSTEM"."CUSTOMERS"."ID_NUMBER" IS '����֤����';
 
   COMMENT ON COLUMN "SYSTEM"."CUSTOMERS"."NAME" IS '����';
 
   COMMENT ON COLUMN "SYSTEM"."CUSTOMERS"."PHONE_NUMBER" IS '�绰';
 
   COMMENT ON COLUMN "SYSTEM"."CUSTOMERS"."GENDER" IS '�Ա�';
 
   COMMENT ON COLUMN "SYSTEM"."CUSTOMERS"."RENT_CAR" IS '�����⳵';
REM INSERTING into SYSTEM.CUSTOMERS
SET DEFINE OFF;
Insert into SYSTEM.CUSTOMERS (ID,AID,ID_NUMBER,NAME,PHONE_NUMBER,GENDER,RENT_CAR) values (1,2,'4509234234234234','������','133555678787','Ů','�⳵��B 2a343');
Insert into SYSTEM.CUSTOMERS (ID,AID,ID_NUMBER,NAME,PHONE_NUMBER,GENDER,RENT_CAR) values (23,22,'45095555666667','vbvb','133555678234','��','��');
--------------------------------------------------------
--  DDL for Index CUSTOMERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."CUSTOMERS_PK" ON "SYSTEM"."CUSTOMERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger CUSTOMERS_ID_AUTO
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "SYSTEM"."CUSTOMERS_ID_AUTO" 
   before insert on "SYSTEM"."CUSTOMERS" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID" is null then 
         select ID_AUTO.nextval into :NEW."ID" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "SYSTEM"."CUSTOMERS_ID_AUTO" ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CUSTOMERS" ADD CONSTRAINT "CUSTOMERS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
 
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "SYSTEM"."CUSTOMERS" MODIFY ("AID" NOT NULL ENABLE);