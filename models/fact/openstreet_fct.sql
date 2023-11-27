with all_openstreetrequests as(
    select * from{{ ref('openstreetData_dim')}}
),
request as (
    select = from{{ ref('openstreetRequest_dim') }}
),
location as (
    select = from{{ ref('openstreetLocation_dim') }}
),
dates as (
    select = from{{ ref('openstreetDate_dim') }}
),

join_tbl as(
    select  openstreetRequest.request_id,
            openstreetLocation.location_id,
            dates.date_dim_id as date_id,
    from all_openstreetrequests
    left join request on all_openstreetrequests.request = request.request
    
);
