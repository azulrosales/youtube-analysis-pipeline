# AWS-Powered YouTube Data System: From Data Collection to Visualization

This pipeline was built using Amazon Web Services (AWS) technologies for the purpose of managing and analyzing YouTube data. 

## Overview

The pipeline starts by storing raw YouTube data in Amazon S3. AWS Glue is then used for data cataloging and ETL, making the data easily discoverable and ready for analysis. Amazon Athena, a serverless, interactive query service is utilized for querying the cataloged data using standard SQL. The queried data is then visualized using Amazon QuickSight, a fast and easy-to-use business intelligence service. Automation of the pipeline is achieved using AWS Lambda which can trigger specific events such as new data being added to S3, thus refreshing the cataloged data in Glue and the queried data in Athena. 

The pipeline is designed to be highly scalable, able to handle a large number of requests and large amounts of data, making it an efficient and cost-effective solution for gaining valuable insights from YouTube data.

## AWS Technologies Used
S3, Glue, Lambda, CloudWatch, Athena, QuickSight.

## Architecture Diagram
![image](https://user-images.githubusercontent.com/88837594/212792802-b45fa449-8206-4d7a-a69b-7bffb647b853.png)

**Dashboard created using QuickSight:**
![image](https://user-images.githubusercontent.com/88837594/212791517-7788a93f-c224-4919-9a52-87d9b5adede5.png)

## Dataset Used
This Kaggle dataset contains statistics (CSV files) on daily popular YouTube videos over the course of many months. There are up to 200 trending videos published every day for many locations. The data for each region is in its own file. The video title, channel title, publication time, tags, views, likes and dislikes, description, and comment count are among the items included in the data. A category_id field, which differs by area, is also included in the JSON file linked to the region.

Dataset available [here](https://www.kaggle.com/datasets/datasnaek/youtube-new).
