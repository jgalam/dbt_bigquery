/*
location_dim_id
borough
approonstreet
apprfromstreet
Maybe figure out how to put streets together?
apprtostreet
NOTE STREET QUESTION FROM DENIS

*/


with openstreet_location as (
    SELECT DISTINCT
    Object_ID as location_dim_id,
    Approved_On_Street,
    Approved_From_Street,
    Approved_To_Street,
    Borough_Name
   
    FROM raw.jaffle_shop.orders
)
select * from openstreet_location