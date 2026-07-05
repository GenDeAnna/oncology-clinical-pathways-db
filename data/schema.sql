-- Create a table to map oncology diagnoses (ICD-10)
CREATE TABLE Diagnosis_Codes (
    diagnosis_id INT PRIMARY KEY AUTO_INCREMENT,
    icd10_code VARCHAR(10) NOT NULL UNIQUE,
    disease_site VARCHAR(100) NOT NULL
);

-- Create a table to track multi-variable pathology biomarkers
CREATE TABLE Pathology_Biomarkers (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    icd10_code VARCHAR(10),
    er_status VARCHAR(10),      -- e.g., 'Positive', 'Negative'
    pr_status VARCHAR(10),      -- e.g., 'Positive', 'Negative'
    her2_status VARCHAR(10),    -- e.g., 'Amplified', 'Non-Amplified'
    FOREIGN KEY (icd10_code) REFERENCES Diagnosis_Codes(icd10_code)
);

-- Create a master rules engine table mimicking localized NCCN frameworks
CREATE TABLE NCCN_Rules (
    rule_id INT PRIMARY KEY AUTO_INCREMENT,
    icd10_code VARCHAR(10),
    er_status VARCHAR(10),
    pr_status VARCHAR(10),
    her2_status VARCHAR(10),
    recommended_regimen VARCHAR(255),
    pre_auth_flag BOOLEAN DEFAULT FALSE
);
