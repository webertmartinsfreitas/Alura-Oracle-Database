-- Exclusão da tabela Vendedores.
DROP TABLE "SYSTEM"."TB_VENDEDORES" CASCADE CONSTRAINTS;

-- Criação da tabela Vendedores.
CREATE TABLE "SYSTEM"."TB_VENDEDORES" (
    "NR_MATRICULA_VENDEDOR"  NVARCHAR2(5),
    "NM_VENDEDOR"            NVARCHAR2(100),
    "DT_ADMISSAO_VENDEDOR"   DATE,
    "NR_PERCENTUAL_COMISSAO" NUMBER
);

-- Inserção de registros na tabela Clientes.
INSERT INTO system.tb_vendedores (
    nr_matricula_vendedor,
    nm_vendedor,
    dt_admissao_vendedor,
    nr_percentual_comissao
) VALUES (
    '00233',
    'Joao Geraldo da Fonseca',
    TO_DATE('01/12/15', 'DD/MM/RR'),
    '0,18'
);

INSERT INTO system.tb_vendedores (
    nr_matricula_vendedor,
    nm_vendedor,
    dt_admissao_vendedor,
    nr_percentual_comissao
) VALUES (
    '00400',
    'Maria do Rosario',
    TO_DATE('23/07/12', 'DD/MM/RR'),
    '0,18'
);

INSERT INTO system.tb_vendedores (
    nr_matricula_vendedor,
    nm_vendedor,
    dt_admissao_vendedor,
    nr_percentual_comissao
) VALUES (
    '00810',
    'Marcia Almeida',
    TO_DATE('14/12/16', 'DD/MM/RR'),
    '0,18'
);

INSERT INTO system.tb_vendedores (
    nr_matricula_vendedor,
    nm_vendedor,
    dt_admissao_vendedor,
    nr_percentual_comissao
) VALUES (
    '00414',
    'Carlos Moreira',
    TO_DATE('13/11/15', 'DD/MM/RR'),
    '0,18'
);

INSERT INTO system.tb_vendedores (
    nr_matricula_vendedor,
    nm_vendedor,
    dt_admissao_vendedor,
    nr_percentual_comissao
) VALUES (
    '00934',
    'Juvenildo Martins',
    TO_DATE('09/03/10', 'DD/MM/RR'),
    '0,2'
);

COMMIT;

-- Criação dos índices na tabela Vendedores.
CREATE UNIQUE INDEX "SYSTEM"."PK_TB_VENDEDORES" ON
    "SYSTEM"."TB_VENDEDORES" (
        "NR_MATRICULA_VENDEDOR"
    )
        PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE "SYSTEM";

-- Criação das chaves primárias na tabela Vendedores.
ALTER TABLE "SYSTEM"."TB_VENDEDORES"
    ADD CONSTRAINT "PK_TB_VENDEDORES" PRIMARY KEY ( "NR_MATRICULA_VENDEDOR" )
        USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
            STORAGE ( INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT )
        TABLESPACE "SYSTEM"
    ENABLE;