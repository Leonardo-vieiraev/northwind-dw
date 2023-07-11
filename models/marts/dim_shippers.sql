with
    erp_shippers as (
        select
            id_transportadora,
            nome_transportadora,
            telefone_transportadora
        from {{ ref('stg_erp_shippers') }}
    )

select * 
from erp_shippers