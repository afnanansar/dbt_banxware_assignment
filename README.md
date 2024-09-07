- Clone the repository.
- Ensure that profiles.yml has been configured to establish a connection to snowflake.
  - Verify connection to snowflake:
     `dbt debug` 
- Once connection has been established. Open terminal:
  -  Execute command: `dbt run`
  -  Test command: `dbt test`
  -  Extra:
      - Build documentation:
          - `dbt docs generate`
          - `dbt docs serve`
 
