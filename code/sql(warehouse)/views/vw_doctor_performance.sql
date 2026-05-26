-- Auto Generated (Do not modify) 45C97C882DEDD81C9AD8F24F2409B9F97316432EAFA6F27D9275D38C1C83A771
CREATE VIEW vw_doctor_performance AS

SELECT
    d.doctor_id,
    d.doctor_name,
    d.gender,
    d.experience_years,
    d.shift_type,
    d.employment_type,


    COUNT(a.appointment_id) AS total_appointments,
    SUM(
        CASE
            WHEN a.status = 'Completed'
            THEN 1
            ELSE 0
        END
    ) AS completed_appointments,

    SUM(
        CASE
            WHEN a.status = 'No Show'
            THEN 1
            ELSE 0
        END
    ) AS no_show_appointments,

    ROUND(
        AVG(
            CAST(a.consultation_duration_minutes AS FLOAT)
        ),
        2
    ) AS average_consultation_duration,

    ROUND(
        SUM(
            CAST(b.total_amount AS FLOAT)
        ),
        2
    ) AS total_revenue_generated,

    CASE
        WHEN COUNT(a.appointment_id) >= 100
        THEN 'High Utilization'

        WHEN COUNT(a.appointment_id) BETWEEN 50 AND 99
        THEN 'Medium Utilization'

        ELSE 'Low Utilization'
    END AS doctor_utilization

FROM dim_doctor d

LEFT JOIN fact_appointments a
ON d.doctor_id = a.doctor_id

LEFT JOIN fact_billing b
ON a.appointment_id = b.appointment_id

GROUP BY

    d.doctor_id,
    d.doctor_name,
    d.gender,
    d.experience_years,
    d.shift_type,
    d.employment_type;