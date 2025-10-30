#!/bin/bash

##########################
# Author: Pooja
# Date: 08/08/2025
#
# Version: v1
#
# This script will report AWS resource usage.
##########################

set -x  # Enables debug mode - prints commands before executing

# Define output file
OUTPUT_FILE="resourceTracker"

# Print list of S3 buckets
echo "Printing list of S3 buckets..." >> $OUTPUT_FILE
aws s3 ls >> $OUTPUT_FILE

# Print list of EC2 instances
echo "Printing list of EC2 instances..." >> $OUTPUT_FILE
aws ec2 describe-instances | jq '.Reservations[].Instances[]' >> $OUTPUT_FILE

# Print list of Lambda functions
echo "Printing list of Lambda functions..." >> $OUTPUT_FILE
aws lambda list-functions >> $OUTPUT_FILE

# Print list of IAM users
echo "Printing list of IAM users..." >> $OUTPUT_FILE
aws iam list-users >> $OUTPUT_FILE