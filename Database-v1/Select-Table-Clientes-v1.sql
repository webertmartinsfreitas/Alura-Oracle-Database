-- Seleção dos registros na tabela Clientes.
SELECT
    nr_cpf             AS "Nº CPF",
    nm_nome_cliente    AS "Nome do Cliente",
    nr_cep             AS "CEP",
    nm_logradouro      AS "Logradouro",
    nr_numero          AS "Nº",
    nm_complemento     AS "Complemento",
    nm_bairro          AS "Bairro",
    nm_cidade          AS "Cidade",
    nm_estado          AS "Estado",
    dt_nascimento      AS "Data de Nascimento",
    nr_idade           AS "Idade",
    nm_sexo            AS "Sexo",
    nr_limete_credito  AS "R$ Limite de Crédito",
    nr_volume_compra   AS "R$ Volume de Compra",
    nr_primeira_compra AS "Primeira Compra?"
FROM
    tb_clientes
ORDER BY
    nm_nome_cliente ASC;