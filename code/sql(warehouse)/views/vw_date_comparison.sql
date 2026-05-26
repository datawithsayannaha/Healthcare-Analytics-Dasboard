-- Auto Generated (Do not modify) 930CB6C98620E85D547200C3183308932E1A6C3151BAA7F9FB53CB9AE7E7D1FB
CREATE VIEW vw_date_comparison AS
SELECT 
    YEAR(p.registration_date) AS reg_year,
    DATENAME(MONTH, p.registration_date) AS month_name,
    MONTH(p.registration_date) AS month_number,
    COUNT(DISTINCT p.patient_id) AS registered_patients,
    COUNT(DISTINCT a.appointment_id) AS total_appointments,
    COUNT(DISTINCT l.lab_test_id) AS total_lab_tests
FROM dim_patient p
LEFT JOIN fact_appointments a ON p.patient_id = a.patient_id
LEFT JOIN fact_lab_tests l ON a.appointment_id = l.appointment_id
GROUP BY 
    YEAR(p.registration_date),
    DATENAME(MONTH, p.registration_date),
    MONTH(p.registration_date);