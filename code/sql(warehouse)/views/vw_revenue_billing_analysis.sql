-- Auto Generated (Do not modify) 3694EB3ED4A1624565CD0DD89850FB5066304E383AE64CA1111BB15F79566D26
CREATE VIEW vw_revenue_billing_analysis AS

SELECT
    bill_id,
    appointment_id,
    patient_id,
    hospital_id,
    billing_date,
    consultation_fee,
    medicine_cost,
    lab_test_cost,
    room_charge,
    payment_method,
    payment_status,
    total_amount,

    CASE
        WHEN total_amount >= 5000
        THEN 'High Revenue'

        WHEN total_amount BETWEEN 2000 AND 4999
        THEN 'Medium Revenue'

        ELSE 'Low Revenue'
    END AS revenue_category,

    -- Pending Revenue Flag
    CASE
        WHEN payment_status = 'Pending'
        THEN total_amount
        ELSE 0
    END AS pending_revenue

FROM fact_billing;