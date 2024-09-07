- Created a Snowflake account
  - Created a database named “home_assignment” and schema named “dbo”

-	Python was already installed.

-	On Visual Studio Code (VS Code), downloaded the dbt extension.
    -	Installed dbt in relation to snowflake (on terminal)
        - Command: Pip install dbt-snowflake

-	Created “.dbt” folder in home directory (this is the folder where profiles.yml will be created)

-	Created a folder to save the models that would be created. (Named dbt_banxware_assignment)

-	Navigated to that folder and initialized dbt:
    -	Command: dbt init
        -	Entered details with relation to snowflake account.

-	Opened the folder on VS Code

-	Opened the terminal:
    -	Verified the connection between dbt and snowflake:
        -	Command: dbt debug

-	Used “dbt seed” to ingest the tables into snowflake
    -	Sales.csv as raw_sales_data
    -	Customers.csv as raw_customer_data

-	Opened a worksheet to perform the requested data transformation:
    -	Used the keyword “extract” to get the year, month and day.
        -	Extract(year from order_date)   [did the same for month and day]

    -	Used the keyword “sum” to calculate the total sales for each order.
        -	Sum(quantity * price)

      -	Added a condition stating “order_status = Completed” as we will only consider those rows as completed orders. (This will ignore the “Pending” and “Cancelled” orders)

-	In VS Code:
    -	Created a file under “model” (named it “transformed_sales.sql”)
    -	Copied paste the sql query from snowflake worksheet into this file and save the model
    -	Executed the created dbt model:
        -	Command: dbt run
            -	This model can be verified by running “select * from table_name” in the snowflake worksheet.

-	Repeated the above step for the remaining 4 problems.
    - Added a folder "queries" with 4 separate .sql files that contains the solutions to each of the problem statements.  

