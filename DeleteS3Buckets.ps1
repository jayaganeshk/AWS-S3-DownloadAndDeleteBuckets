$s3Buckets = @(
    'a202909-s3-crr-monitor-logbucket-c9bkb5trlkk5',
    'a202909-s3-crr-monitor-logbucket-dcmpn1detkt4',
    'a202909-s3-crr-monitor-logbucket-pwxtdlptxvdq',
    'artifacts-cf-sam',
    'aws-crr-logbucket-rk21g8xfj670',
    'cf-templates-1tfopju741m2-ap-south-1',
    'cf-templates-1tfopju741m2-ca-central-1',
    'cf-templates-1tfopju741m2-us-east-1',
    'codepipeline-ap-south-1-182717366087',
    'codepipeline-us-east-1-142445851658',
    'crystalcars',
    'deepontechnology',
    'deonte.in',
    'jay-s3-crr-monitor',
    'jay-s3-crr-monitor-logbucket-1m3xl62ro31f2',
    'jay-s3-crr-monitor-logbucket-1s4s3hmu6vqdg',
    'jayaganesh',
    'jayaganesh-test',
    'nuc-test-code',
    'optus-flutter',
    'praat-files',
    's3-crr-logbucket-qdmd3b2xo1q2',
    's3-crr-monitor-logbucket-1rkoo8ls6yard',
    's3-crr-monitor-logbucket-1uzrsfp8rps8m',
    's3-crr-monitor-logbucket-dz59prvpqo7h',
    'topcoder-skillbuilder-powerbi-40032970',
    'virtual-quee-status',
    'virtual-queue-admin',
    'virtual-queue-registration',
    'virtualqueueregistration-vue-main-ppc'    
)

foreach ($s3Bucket in $s3Buckets) {
    Write-Host "Emptying $s3Bucket"
    aws s3 rb s3://$s3Bucket --force  
}