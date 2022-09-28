Welcome to LOAD_FAKE project.

This project moves data from an external stage into corresponding tables. The purpose is to load fake data in Snowflake to allow for other Snowflake dbt tests to be completed. 

Instructions:
1. Run the Jupyter Notebook fake_data_generator to create customers and orders parquet files
2. Run command **aws s3 cp customers.parquet.gzip s3://snowflake-tdsynnex**
3. Run command **aws s3 cp orders.parquet.gzip s3://snowflake-tdsynnex**
4. run this dbt project to load the data into tables

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
# dbt-tutorial
