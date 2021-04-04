Aws.config.update({
  region: 'us-east-2',
  credentials: Aws::Credentials.new('access_key', 'secret_key_with_plus'),
});


S3_BUCKET =  Aws::S3::Resource.new(
              credentials: Aws::Credentials.new('access_key',  'secret_key_with_plus'),
              region: 'us-east-2',
            )
