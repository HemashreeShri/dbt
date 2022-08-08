{{ config(
    pre_hook=[
      "ALTER TABLE VWE2.PUBLIC.PREMIUM_CUSTOMER_RESULT ADD MEMBERSHIP_PLAN VARCHAR"
    ],
    post_hook=[
      "update  VWE2.PUBLIC.PREMIUM_CUSTOMER_RESULT  set MEMBERSHIP_PLAN =
                case 
                when MEMBERSHIP_STATUS = 'Active' and TENURE_IN_MONTHS >=36 then 'Gold'
                when MEMBERSHIP_STATUS = 'Active' and TENURE_IN_MONTHS >=19 And TENURE_IN_MONTHS <36 then 'Silver'
                when  MEMBERSHIP_STATUS = 'Active' and TENURE_IN_MONTHS <=18 then 'Bronze'
                end"
    ]
) }}

select * from VWE2.PUBLIC.ORDER_TABLE

