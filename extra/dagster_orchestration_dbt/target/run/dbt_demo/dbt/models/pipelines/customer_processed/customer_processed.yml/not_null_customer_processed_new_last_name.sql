
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select new_last_name
from `sctp-dsai-ds2`.`jaffle_demo_dag`.`customer_processed`
where new_last_name is null



  
  
      
    ) dbt_internal_test