
  
    

    create or replace table `sctp-dsai-ds2`.`jaffle_demo_dag`.`customer_processed`
      
    
    

    OPTIONS()
    as (
      with source as (
    select * from `sctp-dsai-ds2`.`jaffle_demo_dag`.`customers`

),

processing as (

    select
        customer_id as new_customer_id,
        last_name as new_last_name

    from source

)

select * from processing
    );
  