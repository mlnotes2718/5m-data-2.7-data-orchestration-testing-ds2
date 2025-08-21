
  
    

    create or replace table `sctp-dsai-ds2`.`jaffle_demo_dag`.`customers`
      
    
    

    OPTIONS()
    as (
      with source as (
    select * from `sctp-dsai-ds2`.`jaffle_demo_dag`.`raw_customers`

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from renamed
    );
  