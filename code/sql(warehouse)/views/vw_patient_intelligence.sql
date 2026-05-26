-- Auto Generated (Do not modify) E50A81E3BBE863345F49F2C1366B092BF742D0E9F9136BD8AA04AD8C9CFC5591


CREATE VIEW vw_patient_intelligence AS

SELECT
    p.patient_id,
    p.patient_name,
    p.gender,
    p.age,
    p.age_group,
    p.city,
    p.state,
    p.registration_date,

    COUNT(DISTINCT a.appointment_id) AS total_appointments,

    CASE 
        WHEN COUNT(DISTINCT a.appointment_id) BETWEEN 1 AND 7
            THEN 'New Patient'

        WHEN COUNT(DISTINCT a.appointment_id) BETWEEN 8 AND 9
            THEN 'Regular Patient'

        WHEN COUNT(DISTINCT a.appointment_id) BETWEEN 10 AND 13
            THEN 'Frequent Patient'

        ELSE 'Chronic Repeat Patient'
    END AS patient_type,

    ROUND(
        AVG(
            CAST(a.waiting_time_minutes AS FLOAT)
        ),
        2
    ) AS average_waiting_time,

    CASE
        WHEN AVG(a.waiting_time_minutes) >= 120
            THEN 'High Waiting'
        ELSE 'Normal Waiting'
    END AS waiting_category

FROM dim_patient p

LEFT JOIN fact_appointments a
ON p.patient_id = a.patient_id

GROUP BY
    p.patient_id,
    p.patient_name,
    p.gender,
    p.age,
    p.age_group,
    p.city,
    p.state,
    p.registration_date;