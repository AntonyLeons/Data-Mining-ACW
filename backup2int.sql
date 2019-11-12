-- Table: public."Data_table"

-- DROP TABLE public."Data_table";

CREATE TABLE public."Data_table"
(
    "Random" character varying COLLATE pg_catalog."default",
    "Id" integer,
    "Indication" character varying COLLATE pg_catalog."default",
    "Diabetes" character varying COLLATE pg_catalog."default",
    "IHD" character varying COLLATE pg_catalog."default",
    "Hypertension" character varying COLLATE pg_catalog."default",
    "Arrhythmia" character varying COLLATE pg_catalog."default",
    "History" character varying COLLATE pg_catalog."default",
    "IPSI" numeric,
    "Contra" numeric,
    label character varying COLLATE pg_catalog."default",
    "Key" bigint NOT NULL DEFAULT nextval('"Data_table_Key_seq"'::regclass),
    CONSTRAINT "Data_table_pkey" PRIMARY KEY ("Key")
)

TABLESPACE pg_default;

ALTER TABLE public."Data_table"
    OWNER to postgres;

GRANT ALL ON TABLE public."Data_table" TO api;

GRANT ALL ON TABLE public."Data_table" TO postgres;

COPY "Data_table"("Random", "Id", "Indication", "Diabetes", "IHD", "Hypertension", "Arrhythmia", "History", "IPSI", "Contra", label)
FROM 'C:\Users\anton\Documents\GitHub\Data-Mining-ACW\600092_data.csv' DELIMITER ',' CSV HEADER;