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