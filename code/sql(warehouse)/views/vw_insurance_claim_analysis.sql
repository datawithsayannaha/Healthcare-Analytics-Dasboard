-- Auto Generated (Do not modify) 98A0C653DE1CF9465F3B267FECC95C0A29717E1E546AC4B06C05691BFAE95CB3
CREATE VIEW vw_insurance_claim_analysis AS

SELECT
    claim_id,
    bill_id,
    patient_id,
    insurance_provider,
    policy_type,
    claim_amount,
    approved_amount,
    claim_status,
    claim_date,
    settlement_days,

    ROUND(
        (
            approved_amount * 100.0
        ) / NULLIF(claim_amount, 0),
        2
    ) AS approval_rate,

    CASE
        WHEN claim_status = 'Rejected'
        THEN 1
        ELSE 0
    END AS rejected_claim_flag,

    CASE
        WHEN claim_status = 'Pending'
        THEN 1
        ELSE 0
    END AS pending_claim_flag,

    CASE
        WHEN settlement_days <= 7
        THEN 'Fast Settlement'

        WHEN settlement_days BETWEEN 8 AND 15
        THEN 'Medium Settlement'

        ELSE 'Slow Settlement'
    END AS settlement_category

FROM fact_insurance_claims;