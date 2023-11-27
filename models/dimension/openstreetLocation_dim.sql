with openstreet_location as (
    SELECT DISTINCT
    Object_ID as location_dim_id,
    Approved_On_Street,
    Approved_From_Street,
    Approved_To_Street,
    Borough_Name
   
    FROM cis-4400-dw-proj.OpenStreetLocations.OpenStreetLocationsT
)
select * from openstreet_location