CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJODOQCI6MKUQ3BDA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'imagebucket-skidmark'                          # required
end