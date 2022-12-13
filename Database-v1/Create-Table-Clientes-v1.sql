-- Exclusão da tabela Clientes.
DROP TABLE "SYSTEM"."TB_CLIENTES" CASCADE CONSTRAINTS;

-- Criação da tabela Clientes.
CREATE TABLE "SYSTEM"."TB_CLIENTES" (
    "NR_CPF"             VARCHAR2(11 BYTE),
    "NM_NOME_CLIENTE"    VARCHAR2(150 BYTE),
    "NR_CEP"             VARCHAR2(8 BYTE),
    "NM_LOGRADOURO"      VARCHAR2(300 BYTE),
    "NR_NUMERO"          NUMBER(5, 0),
    "NM_COMPLEMENTO"     VARCHAR2(300 BYTE),
    "NM_BAIRRO"          VARCHAR2(150 BYTE),
    "NM_CIDADE"          VARCHAR2(150 BYTE),
    "NM_ESTADO"          VARCHAR2(2 BYTE),
    "DT_NASCIMENTO"      DATE,
    "NR_IDADE"           NUMBER(*, 0),
    "NM_SEXO"            VARCHAR2(1 BYTE),
    "NR_LIMETE_CREDITO"  NUMBER(15, 2),
    "NR_VOLUME_COMPRA"   NUMBER,
    "NR_PRIMEIRA_COMPRA" NUMBER(1, 0)
);

-- Inserção de registros na tabela Clientes.
INSERT INTO system.tb_clientes (
    nr_cpf,
    nm_nome_cliente,
    nr_cep,
    nm_logradouro,
    nr_numero,
    nm_complemento,
    nm_bairro,
    nm_cidade,
    nm_estado,
    dt_nascimento,
    nr_idade,
    nm_sexo,
    nr_limete_credito,
    nr_volume_compra,
    nr_primeira_compra
) VALUES (
    '11601872677',
    'Webert Martins de Freitas',
    '36051520',
    'Rua Teodorico de Assis',
    '14',
    'Apartamento 201',
    'Manoel Honório',
    'Juiz de Fora',
    'MG',
    TO_DATE('16/10/91', 'DD/MM/RR'),
    '31',
    'M',
    '200000',
    '5000',
    '0'
);

COMMIT;

-- Criação dos índices na tabela Clientes.
CREATE UNIQUE INDEX "SYSTEM"."PK_TB_CLIENTES" ON
    "SYSTEM"."TB_CLIENTES" (
        "NR_CPF"
    )
        PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE "SYSTEM";

-- Criação das chaves primárias na tabela Clientes.
ALTER TABLE "SYSTEM"."TB_CLIENTES"
    ADD CONSTRAINT "PK_TB_CLIENTES" PRIMARY KEY ( "NR_CPF" )
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE "SYSTEM"
    ENABLE;