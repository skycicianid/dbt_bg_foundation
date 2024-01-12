Welcome to your new dbt project!

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


### Example profile.ymp

dbt_bg_foundation:
  outputs:
    dev:
      dataset: <GCP_DATASET>
      job_execution_timeout_seconds: 300
      job_retries: 1
      location: EU
      method: oauth
      priority: interactive
      project: <GCP_PROJECT>
      threads: 2
      type: bigquery
  target: dev
