# Oncology Clinical Pathways Database (`oncology-clinical-pathways-db`)

## Executive Overview
Behind every line item of a multi-million dollar federal grant or healthcare initiative, there is a face, a community, and a narrative waiting to be told. As a healthcare professional with an academic foundation in cultural anthropology, I learned early on that the most successful systems translate complex human and clinical variables into structured, actionable realities.

This repository addresses a critical gap in modern healthcare informatics: the transition from clinical intent to digital automation. While Electronic Health Record (EHR) modules handle basic order execution seamlessly, they routinely fail to dynamically interpret fragmented, raw laboratory datasets to predict care choices at the point of care. This project builds an automated backend logic engine and relational SQL database explicitly engineered to parse raw clinical biomarker arrays and dynamically generate rule-based oncology treatment regimens aligned with NCCN guidelines. 

In essence, this system acts as an automated matchmaker between a patient's unique biological fingerprint and the global standard of oncology care.

## 🛠️ Tech Stack & Architecture
- **Database Architecture:** A relational SQL database structure defining oncology diagnostic criteria (ICD-10), multi-variable pathology biomarker arrays, and automated protocol sets.
- **Logic Engine:** An algorithmic Python script utilizing conditional branching logic (`if/elif/else`) to traverse clinical parameters and automate protocol mapping.
- **User Interface Simulation:** A Python-native Streamlit web-application engine (`ui/app.py`) built to replicate point-of-care user interaction, text parameter selections, and real-time conditional treatment rendering.
- **Interoperability Framework:** Standardized database schemas engineered for machine-readable integration with clinical data pipelines (e.g., Epic Beacon, Aria) via simulated workflows.

## Database Schema Blueprint
The backend logic utilizes three interconnected relational tables built on clean key-mappings to ensure fast, low-overhead querying:
1. `Diagnosis_Codes`: Maps and tracks structured oncology identifiers (ICD-10 keys).
2. `Pathology_Biomarkers`: Stores patient biomarker profiles (such as ER/PR status, HER2 amplification, and genetic variants).
3. `NCCN_Rules`: Functions as an updateable, scalable clinical rules matrix matching biomarker intersections to evidence-based pharmaceutical regimens without requiring system-wide software code re-builds.

## Future Scalability & Interoperability
Unlike fixed enterprise workflows, this lightweight data model decouples clinical logical rules from execution code. This structural separation allows localized entities to:
- Overlay insurance payer parameters and step-therapy drugs to mitigate downstream financial denials before an entry is signed.
- Update clinical guidelines dynamically by modifying single rows in a reference table rather than initiating a major database overhaul.
- Readily ingest raw lab text outputs via future parsing APIs, reducing manual entry errors and drastically optimizing the patient "time-to-treatment" workflow.
