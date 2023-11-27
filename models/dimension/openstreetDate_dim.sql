WITH openstreet_Date AS (
  SELECT
    Object_ID as date_dim_id,
    apprStartD,
    apprEndDat,

  FROM cis-4400-dw-proj.OpenStreetLocations.OpenStreetLocationsT

SELECT * FROM openstreet_Date