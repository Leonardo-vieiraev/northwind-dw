with
    erp_customers as (
        select
            id_cliente,				
            nome_compania_cliente,				
            nome_contato_cliente,				
            titulo_contato_cliente,					
            endereco_cliente,			
            cidade_cliente,			
            regiao_cliente,			
            cep_cliente,				
            pais_cliente,		
            telefone_cliente
        from {{ ref('stg_erp_customers') }}
    )

select * 
from erp_customers