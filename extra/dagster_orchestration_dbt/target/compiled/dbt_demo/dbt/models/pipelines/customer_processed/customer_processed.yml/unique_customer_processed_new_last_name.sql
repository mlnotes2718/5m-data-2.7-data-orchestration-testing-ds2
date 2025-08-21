
    
    

with dbt_test__target as (

  select new_last_name as unique_field
  from `sctp-dsai-ds2`.`jaffle_demo_dag`.`customer_processed`
  where new_last_name is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


