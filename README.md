## Copy data from Datalake to Data Warehouse, Create table and query data in Data Warehouse.




## Diagram
<img src="https://github.com/Jira-saki/S3-Redshift/blob/main/s3-redshift.drawio.png">

## Introduction & Goals

- Load Raw Data  to Data lake
- Use Redshift Cluster to get data to query


## The Data Set
[tickit](https://github.com/Jira-saki/S3-Redshift/tree/main/data/tickit) .txt data set


## Used Tools
- **Amazon S3, AWS Redshift**
  
  
## Pipelines
- Load file into S3 bucket.
    - Create *output folder* as target inside the same bucket.
- Create Redshift cluster and Database in Redshift.
    - Create table for each entities  
    - load data from bucket onto tables
- Query redshift cluster to find 
    - total sales in specific calender date
    - top 10 buyers by quantity
    - events in the 99.9 percentile in terms of all time gross sales




## Follow Me On
https://www.linkedin.com/in/jirasak-pakdeeto-900665214/
