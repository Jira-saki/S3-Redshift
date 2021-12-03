# Copy data from Datalake to Data Warehouse

ELT - Extract Load Transform pipeline in a single datalake location on AWS platform.


# Diagram


## Introduction & Goals

- Load Raw Data  to Data lake
- Use Redshift Cluster to get data to query


## The Data Set
tickit .txt data set


## Used Tools
- **Amazon S3, AWS Redshift**
  
  
  # Pipelines
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