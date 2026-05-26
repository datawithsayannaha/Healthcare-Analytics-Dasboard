-- Auto Generated (Do not modify) 8AD7BCA4B180DA9A7F5F50685BC9CC1F07A5CF2BE42F50B491B04BD7BA4191D8
CREATE VIEW vw_lab_test_analysis AS

SELECT
    lab_test_id,
    appointment_id,
    patient_id,
    doctor_id,
    test_name,
    test_date,
    test_result,
    test_cost,
    report_delivery_days,
    critical_flag,

    CASE
        WHEN critical_flag = 1
        THEN 'Critical Test'
        ELSE 'Normal Test'
    END AS critical_test_category,

    CASE
        WHEN report_delivery_days <= 2
        THEN 'Fast Delivery'

        WHEN report_delivery_days BETWEEN 3 AND 5
        THEN 'Medium Delivery'

        ELSE 'Slow Delivery'
    END AS delivery_category

FROM fact_lab_tests;