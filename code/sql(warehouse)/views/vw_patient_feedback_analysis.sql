-- Auto Generated (Do not modify) F47A0969B8DE8285A307984028FFFB2E7B302208CA8A126DAF06568ECE1A5BC0
CREATE VIEW vw_patient_feedback_analysis AS

SELECT
    feedback_id,
    appointment_id,
    patient_id,
    hospital_id,
    rating,
    feedback_comment,
    feedback_date,

    CASE
        WHEN rating >= 4
        THEN 'Positive Feedback'

        WHEN rating = 3
        THEN 'Neutral Feedback'

        ELSE 'Negative Feedback'
    END AS feedback_category,

    CASE
        WHEN rating <= 2
        THEN 1
        ELSE 0
    END AS complaint_flag,

    CASE
        WHEN rating = 1
        THEN 'High Complaint'

        WHEN rating = 2
        THEN 'Medium Complaint'

        ELSE 'Low Complaint'
    END AS complaint_severity

FROM fact_patient_feedback;