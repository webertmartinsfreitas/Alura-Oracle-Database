-- Seleção dos registros na tabela Produtos.
SELECT
    cd_produto     AS "SKU",
    nm_produto     AS "Nome do Produto",
    nm_embalagem   AS "Embalagem",
    nm_tamanho     AS "Tamanho",
    nm_sabor       AS "Sabor",
    nr_preco_lista AS "Preço de Tabela"
FROM
    tb_produtos
ORDER BY
    nm_produto ASC