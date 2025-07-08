🏠 **Zuma Real Estate Agency - Data Pipeline**

This project delivers a full data engineering workflow for property listings and metadata extracted from raw real estate datasets. Built using PostgreSQL and Python, it handles schema creation, data cleaning, dimensional modeling, and robust ETL inserts, while managing complex data types and database constraints.

📌 **Project Overview**

  This project builds and populates the Zuma Agency database from scratch, covering:

    ✅ PostgreSQL schema design and table creation
  
    ✅ Data transformation and cleaning with pandas
  
    ✅ Dimensional model: facts + dimensions
  
    ✅ Automated data loading with Python

⚙️ **Technologies Used**

    ⏺ PostgreSQL: Relational Database Design 

    ⏺ Python (pandas, json): Data Cleaning and ETL 

    ⏺ SQL (DDL, DML): Schema and Insert Statements 

🔄 **Full ETL Workflow**

  1. Data Preparation and Cleaning:
     
    • Loaded raw real estate data using pandas
    • Cleaned and casted columns like bedrooms, bathrooms, squareFootage
    • Serialized JSON fields (e.g. features) using json.dumps()
    • Removed outliers to prevent type mismatches during inserts • Standardized null and invalid entries

  2. Dimensional Model Creation:

    Created the following tables:
    • location_dim
    • features_dim
    • owner_dim
    • property_fact

  3. Insert Logic and Error Handling:

    • Used SQL INSERT INTO statements with placeholder and cursor execution.
    • Casted boolean values to fix PostgreSQL mismatches.
    • Implemented ON CONFLICT DO NOTHING to prevent insert duplication
    • Debugged numerous runtime errors: type mismatch, column count mismatch, datatype coercion, etc.

  📄 **Results & Final Verification**

    ✅ Cleaned and structured real estate dataset.
  
    ✅ All dimensional tables populated without conflict.
  
    ✅ Fact table normalized and aligned to schema.
  
    ✅ PostgreSQL queries return joined data across dimensions.

    ✅ Database schema scalable for analytics and future integrations.

  📝 Notes

    ⏺ Used SERIAL IDs for automatic dimension key generation

    ⏺ Foreign key IDs (features_id, location_id, and owner_id) were automatically matched based on the dimension table values

    ⏺ Used Python to format data as proper True/False before inserting into the database
