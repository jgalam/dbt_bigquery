WITH openstreet_Request AS (
  SELECT DISTINCT
    Object_ID as request_id,
    Organization_Name,
    Status_Type

  FROM cis-4400-dw-proj.OpenStreetLocations.OpenStreetLocationsT
)
SELECT * FROM openstreet_Request