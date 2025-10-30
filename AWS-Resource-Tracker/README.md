# AWS Resource Tracker

This shell script generates a daily report of AWS resources in use by the organization.

Organizations move to cloud (AWS or Azure) mainly for 2 reasons:

- ***Manageability*** – Owning servers means building data centers, handling patches, updates, & requiring a dedicated systems team.
- ***Cost-effectiveness*** – Cloud uses a pay-as-you-go model, unlike physical infrastructure, which incurs costs whether used or not.

An organization called example.com is using AWS resources like EC2, S3, Lambda, & IAM. The goal is to generate a daily report (e.g., at 6 PM) that lists:


## Overview

The script collects information about the following AWS resources:
- EC2 instances
- S3 buckets
- Lambda functions
- IAM users

## How it works

1. The script is executed daily using a cron job at 8 PM.
2. It collects data from AWS using the AWS CLI.
3. The output is saved in a text file for review.

---
Open Crontab: crontab -e

Add the following line: 0 20 * * * /full/path/to/your/script.sh

| Field        | Value | Meaning                  |
| ------------ | ----- | ------------------------ |
| Minute       | 0     | At minute 0              |
| Hour         | 20    | At 8 PM (24-hour format) |
| Day of Month | *     | Every day                |
| Month        | *     | Every month              |
| Day of Week  | *     | Every day of the week    |



`>>` appends the output to resourceTracker file.

jq is a JSON processor used to filter the output to just the EC2 instance data.
