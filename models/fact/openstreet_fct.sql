with all_openstreetrequests as(
    select * from{{ ref('openstreetData_dim')}}
),
location as (
    select = from{{ ref('openstreetLocation_dim') }}
),
request as (
    select = from{{ ref('openstreetRequest_dim') }}
),
dates as (
    select = from{{ ref('openstreetDate_dim') }}
),
join_tbl as(
    select  openstreetLocation.location_dim_id,
            openstreetRequest.request_dim_id,
            dates.date_dim_id as date_dim_id,
    from all_openstreetrequests

)
