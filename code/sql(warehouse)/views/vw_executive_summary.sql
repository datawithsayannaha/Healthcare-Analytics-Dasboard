-- Auto Generated (Do not modify) BCAA1319A34BD9A313F7980A9380CBC3BA08AF7C56D61B70F0DE23118A948205
CREATE VIEW vw_executive_summary AS
SELECT

    (
        SELECT COUNT(DISTINCT patient_id)
        FROM fact_appointments
    ) AS total_patients,


    (
        SELECT COUNT(appointment_id)
        FROM fact_appointments
    ) AS total_appointments,

    (
        SELECT COUNT(appointment_id)
        FROM fact_appointments
        WHERE status = 'Completed'
    ) AS completed_appointments,

    (
        SELECT ROUND(
            AVG(CAST(waiting_time_minutes AS FLOAT)),
            2
        )
        FROM fact_appointments
    ) AS average_waiting_time,


    (
        SELECT ROUND(
            SUM(total_amount),
            2
        )
        FROM fact_billing
    ) AS total_revenue,

    (
        SELECT ROUND(
            SUM(total_amount),
            2
        )
        FROM fact_billing
        WHERE payment_status = 'Pending'
    ) AS pending_revenue,


    (
        SELECT ROUND(
            AVG(CAST(rating AS FLOAT)),
            2
        )
        FROM fact_patient_feedback
    ) AS average_rating,


    (
        SELECT ROUND(
            (
                SUM(approved_amount) * 100.0
            ) / NULLIF(SUM(claim_amount), 0),
            2
        )
        FROM fact_insurance_claims
    ) AS insurance_approval_rate;