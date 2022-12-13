-- Inserção de registros na tabela Vendedores.
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