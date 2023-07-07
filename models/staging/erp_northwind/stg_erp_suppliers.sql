with 
     source_suppliers as (
        select
            cast(supplier_id as int) as id_fornecedor,						
            cast(company_name as string) as nome_compania,					
            cast(contact_name as string) as nome_contato, 	 
        	cast(address as string) as endereco,
            cast(city as string) as cidade,
            cast(region as string) as regiao,
            cast(postal_code as string) as cep,
            cast(country as string) as pais         		
        from {{ source('erp', 'suppliers') }}
    )
    
select * 
from source_suppliers