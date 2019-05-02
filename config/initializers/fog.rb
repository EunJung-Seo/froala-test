CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAQS7GXHETRMUHZDQY',       # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',             # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'may-froala-images'            # required
end