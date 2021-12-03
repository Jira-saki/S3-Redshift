 
 Load data into tables:
 
 copy users from 's3://<your Bucket name>/tickit/allusers_pipe.txt'
 credentials 'aws_iam_role=<your iam-role-arn>'
 delimiter '|' region '<your aws-region>';
 
 copy venue from 's3://<your Bucket name>/tickit/venue_pipe.txt'
 credentials 'aws_iam_role=<your iam-role-arn>'
 delimiter '|' region '<your aws-region>';
 
 copy category from 's3://<your Bucket name>/tickit/category_pipe.txt'
 credentials 'aws_iam_role=<your iam-role-arn>'
 delimiter '|' region '<your aws-region>';
 
 copy date from 's3://<your Bucket name>/tickit/date2008_pipe.txt'
 credentials 'aws_iam_role=<your iam-role-arn>'
 delimiter '|' region '<your aws-region>';
 
 copy event from 's3://<your Bucket name>/tickit/allevents_pipe.txt'
 credentials 'aws_iam_role=<your iam-role-arn>'
 delimiter '|' timeformat 'YYYY-MM-DD HH:MI:SS' region '<your aws-region>';
 
 copy listing from 's3://<your Bucket name>/tickit/listings_pipe.txt'
 credentials 'aws_iam_role=<your iam-role-arn>'
 delimiter '|' region '<your aws-region>';
 
 copy sales from 's3://<your Bucket name>/tickit/sales_tab.txt'
 credentials 'aws_iam_role=<your iam-role-arn>'
 delimiter '\t' timeformat 'MM/DD/YYYY HH:MI:SS' region '<your aws-region>';
 