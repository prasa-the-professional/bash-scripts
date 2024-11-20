## Test connectivity with AWS
     $ aws sts get-caller-identity 

    {
    "UserId": "*************",

    "Account": "*************",

    "Arn": "arn:aws:iam::*********:user/clfc02"
    }


## LIST BUCKETS

    $ aws s3 ls
    
    2024-11-20 10:53:31 aws-clfc02-first
    2024-11-20 11:31:10 clfc02-second-testdummy


## CONTENT INSIDE THE BUCKET

    $ aws s3 ls s3://<bucket_name>

    2024-11-20 10:55:56     116285 4341451.jpg
    2024-11-20 10:55:54    7112269 775766.jpg


## MOVE OBJECTS FROM ONE BUCKET TO THE ANOTHER BUCKET
    $ aws s3 mv s3://<path of the file that had to be moved> s3://<destination bucket directory>

    aws s3 mv s3://aws-clfc02-first/775766.jpg s3://clfc02-second-testdummy   ✔  5s  11:33:31 ▓▒░
    move: s3://aws-clfc02-first/775766.jpg to s3://clfc02-second-testdummy/775766.jpg


## TO LIST ALL THE CHILD CONTENT INSIDE OF THE BUCKET 

    $ aws s3 ls s3://<bucket_name>  --recursive 
