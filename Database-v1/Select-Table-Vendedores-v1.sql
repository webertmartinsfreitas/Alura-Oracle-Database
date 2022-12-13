-- Seleção dos registros na tabela Vendedores.
SELECT
    nr_matricula_vendedor  AS "Nº Matrícula",
    nm_vendedor            AS "Nome do Vendedor",
    dt_admissao_vendedor   AS "Data da Admissão",
    nr_percentual_comissao AS "Comissão (%)"
FROM
    tb_vendedores
ORDER BY
    nm_vendedor ASC