with 
    erp_products as (  
        select *
        from {{ ref('stg_erp_products') }}
    ),
    erp_categories as (  
        select *
        from {{ ref('stg_erp_categories') }}
    ),
    erp_suppliers as (
        
        select *
        from {{ ref('stg_erp_suppliers') }}
    ),
    join_tabelas as (
        select 
            erp_products.id_produto,
            erp_products.id_fornecedor,						
            erp_products.id_categoria,				
            erp_products.nome_produto,									
            erp_products.quantidade_por_unidade,						
            erp_products.preco_por_unidade,						
            erp_products.unidades_em_estoque,						
            erp_products.unidades_por_ordem,						
            erp_products.nivel_reabastecimento,
            erp_products.is_descontinuado,
            --erp_categories.id_categoria,						
            erp_categories.nome_categoria,					
            erp_categories.descricao_categoria,	
            --erp_suppliers.id_fornecedor,						
            erp_suppliers.nome_compania,					
            erp_suppliers.nome_contato, 	
        	erp_suppliers.endereco,
            erp_suppliers.cidade,
            erp_suppliers.regiao,
            erp_suppliers.cep,
            erp_suppliers.pais     
        from erp_products
        left join erp_categories on erp_products.id_categoria = erp_categories.id_categoria
        left join erp_suppliers on erp_products.id_fornecedor = erp_suppliers.id_fornecedor
    )
    select * 
    from join_tabelas

    
    