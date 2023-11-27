/*
location_dim_id
borough
approonstreet
apprfromstreet
Maybe figure out how to put streets together?
apprtostreet
NOTE STREET QUESTION FROM DENIS


{{ref('OpenStreetLocations')}}

*/


with openstreet_location as (
    SELECT DISTINCT
    Approved_On_Street,
    Approved_From_Street,
    Approved_To_Street,
    Borough_Name
   
    FROM raw.OpenStreetLocations.OpenStreetLocationsT
)
select * from openstreet_location