-- Auto Generated (Do not modify) 3BDF699DA27D325DBC6680C5F42C4A0DDFDB8A37CFF9940351EBF12D5AFA7084
CREATE VIEW vw_hospital_operations AS

SELECT
    h.hospital_id,
    h.hospital_name,
    h.city,
    h.state,
    h.hospital_type,
    h.bed_capacity,
    h.icu_beds,
    h.emergency_available,

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
            WHEN a.status = 'Cancelled'
            THEN 1
            ELSE 0
        END
    ) AS cancelled_appointments,

    SUM(
        CASE
            WHEN a.status = 'No Show'
            THEN 1
            ELSE 0
        END
    ) AS no_show_appointments,

    ROUND(
        AVG(
            CAST(a.waiting_time_minutes AS FLOAT)
        ),
        2
    ) AS average_waiting_time

FROM dim_hospital h

LEFT JOIN fact_appointments a
ON h.hospital_id = a.hospital_id

GROUP BY

    h.hospital_id,
    h.hospital_name,
    h.city,
    h.state,
    h.hospital_type,
    h.bed_capacity,
    h.icu_beds,
    h.emergency_available;