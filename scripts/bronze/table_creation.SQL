/*
---------------------------------------------------------------
Create bronze table
---------------------------------------------------------------

Purpose:

This scripts create a several tables in bronze database

Warning:

Before creating table or running any scripts proceed with caution and ensure you have proper backups.
*/



USE bronze;


CREATE TABLE IF NOT EXISTS bronze.crm_customer_info (
    customer_id              INT,
	customer_key             NVARCHAR(50),
	customer_firstname       NVARCHAR(50),
    customer_lastname        NVARCHAR(50),
    customer_marital_status  NVARCHAR(50),
    customer_gender          NVARCHAR(50),
    customer_create_date     DATE
);

CREATE TABLE IF NOT EXISTS bronze.crm_product_info (
    product_id       INT,
    product_key      NVARCHAR(50),
    product_nm       NVARCHAR(50),
    product_cost     INT,
    product_line     NVARCHAR(50),
    product_start_date DATETIME,
    product_end_date   DATETIME
);

CREATE TABLE IF NOT EXISTS bronze.crm_sales_details (
    sales_ord_num  NVARCHAR(50),
    sales_prd_key  NVARCHAR(50),
    sales_cust_id  INT,
    sales_order_dt INT,
    sales_ship_dt  INT,
    sales_due_dt   INT,
    sales_sales    INT,
    sales_quantity INT,
    sales_price    INT
);

CREATE TABLE IF NOT EXISTS bronze.erp_location (
    cid    NVARCHAR(50),
    country  NVARCHAR(50)
);

CREATE TABLE IF NOT EXISTS bronze.erp_customer (
    cid    NVARCHAR(50),
    bdate  DATE,
    gender    NVARCHAR(50)
);

CREATE TABLE IF NOT EXISTS bronze.erp_category (
    id           NVARCHAR(50),
    cat          NVARCHAR(50),
    subcat       NVARCHAR(50),
    maintenance  NVARCHAR(50)
);
