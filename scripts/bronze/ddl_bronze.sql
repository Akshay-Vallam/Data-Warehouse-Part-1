-- Drop table if exists and create a new table for bronze.crm_cust_info
DO $$ 
BEGIN
    IF EXISTS (SELECT 1 FROM pg_tables WHERE schemaname = 'bronze' AND tablename = 'crm_cust_info') THEN
        EXECUTE 'DROP TABLE bronze.crm_cust_info';
    END IF;
END $$;

CREATE TABLE bronze.crm_cust_info (
    cst_id              INT,
    cst_key             VARCHAR(50),
    cst_firstname       VARCHAR(50),
    cst_lastname        VARCHAR(50),
    cst_marital_status  VARCHAR(50),
    cst_gndr            VARCHAR(50),
    cst_create_date     DATE
);

-- Drop table if exists and create a new table for bronze.crm_prd_info
DO $$ 
BEGIN
    IF EXISTS (SELECT 1 FROM pg_tables WHERE schemaname = 'bronze' AND tablename = 'crm_prd_info') THEN
        EXECUTE 'DROP TABLE bronze.crm_prd_info';
    END IF;
END $$;

CREATE TABLE bronze.crm_prd_info (
    prd_id       INT,
    prd_key      VARCHAR(50),
    prd_nm       VARCHAR(50),
    prd_cost     INT,
    prd_line     VARCHAR(50),
    prd_start_dt TIMESTAMP,
    prd_end_dt   TIMESTAMP
);

-- Drop table if exists and create a new table for bronze.crm_sales_details
DO $$ 
BEGIN
    IF EXISTS (SELECT 1 FROM pg_tables WHERE schemaname = 'bronze' AND tablename = 'crm_sales_details') THEN
        EXECUTE 'DROP TABLE bronze.crm_sales_details';
    END IF;
END $$;

CREATE TABLE bronze.crm_sales_details (
    sls_ord_num  VARCHAR(50),
    sls_prd_key  VARCHAR(50),
    sls_cust_id  INT,
    sls_order_dt INT,
    sls_ship_dt  INT,
    sls_due_dt   INT,
    sls_sales    INT,
    sls_quantity INT,
    sls_price    INT
);

-- Drop table if exists and create a new table for bronze.erp_loc_a101
DO $$ 
BEGIN
    IF EXISTS (SELECT 1 FROM pg_tables WHERE schemaname = 'bronze' AND tablename = 'erp_loc_a101') THEN
        EXECUTE 'DROP TABLE bronze.erp_loc_a101';
    END IF;
END $$;

CREATE TABLE bronze.erp_loc_a101 (
    cid    VARCHAR(50),
    cntry  VARCHAR(50)
);

-- Drop table if exists and create a new table for bronze.erp_cust_az12
DO $$ 
BEGIN
    IF EXISTS (SELECT 1 FROM pg_tables WHERE schemaname = 'bronze' AND tablename = 'erp_cust_az12') THEN
        EXECUTE 'DROP TABLE bronze.erp_cust_az12';
    END IF;
END $$;

CREATE TABLE bronze.erp_cust_az12 (
    cid    VARCHAR(50),
    bdate  DATE,
    gen    VARCHAR(50)
);

-- Drop table if exists and create a new table for bronze.erp_px_cat_g1v2
DO $$ 
BEGIN
    IF EXISTS (SELECT 1 FROM pg_tables WHERE schemaname = 'bronze' AND tablename = 'erp_px_cat_g1v2') THEN
        EXECUTE 'DROP TABLE bronze.erp_px_cat_g1v2';
    END IF;
END $$;

CREATE TABLE bronze.erp_px_cat_g1v2 (
    id           VARCHAR(50),
    cat          VARCHAR(50),
    subcat       VARCHAR(50),
    maintenance  VARCHAR(50)
);
