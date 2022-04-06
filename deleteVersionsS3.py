#!/usr/bin/env python
import boto3

buckets = [
    "aws-amplify-test-jayg",
    "aws-cloudtrail-logs-685841753691-387dec4d",
    "aws-cloudtrail-logs-685841753691-8e0ddc2d",
    "aws-cloudtrail-logs-685841753691-e7a6fc42",
    "aws-test-account-logs-testpolicy",
    "cf-templates-1x5ajeqcxhric-ap-south-1",
    "cf-templates-1x5ajeqcxhric-ap-southeast-1",
    "cf-templates-1x5ajeqcxhric-us-east-1",
    "cloud9-685841753691-sam-deployments-us-east-1",
    "config-bucket-685841753691",
    "covid-app-emergency",
    "jayg-cft-infrastructure-files",
    "jayg-google-keep-data",
    "jayg-public-cfts",
    "jayg-sam",
    "old-pct-site",
    "pct-site",
    "s3bucketstaticstack-websitebucket-n04t67rkehcj",
    "thenuthatchers",
    "virtualqueue-amplifycode-dev",
    "virtualqueueregistration-vue-main",
]

for bucket in buckets:
    print("Deleting bucket: " + bucket)
    s3 = boto3.resource("s3")
    bucket = s3.Bucket(bucket)
    bucket.object_versions.delete()

    bucket.delete()
