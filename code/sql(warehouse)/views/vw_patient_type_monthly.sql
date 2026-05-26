-- Auto Generated (Do not modify) 348A67601DB6CB2AD00FC4E395C874ED55466258590CD5B2EEAC7CCE71DC6459
CREATE VIEW vw_patient_type_monthly AS
SELECT 
    a.appointment_id,
    a.patient_id,
    a.appointment_date,
    vi.patient_type
FROM fact_appointments a
JOIN vw_patient_intelligence vi 
ON a.patient_id = vi.patient_id;