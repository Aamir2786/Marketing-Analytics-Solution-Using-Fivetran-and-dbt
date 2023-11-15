with activity as (

    select
        activity_timestamp,
        lead_id,
        campaign_id,
        email_send_id
    from {{ ref('stg_marketo_activity_open_email') }}

)

select * from activity