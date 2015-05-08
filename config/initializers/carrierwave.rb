CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],
      :aws_secret_access_key  => ENV['AWS_SECRET_KEY'],
      :region                 => ENV['AWS_REGION'],
      :path_style             => true,
  }

  config.fog_public     = true
  config.fog_attributes = {'Cache-Control' => 'public, max-age=86400'}

  case Rails.env
    when 'production'
      config.fog_directory = 'bonsainikki.pro'
      # config.asset_host = 'https://assets/bonsainikki.com'
      config.cache_storage = :fog #キャッシュの場所をS3に変更
      config.cache_dir = "#{Rails.root}/tmp/uploads" #for Heroku
    # when 'staging'
    #   config.fog_directory = 'stg.example.com'
    #   config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/stg.example.com'
    when 'development'
      config.fog_directory = 'bonsainikki.dev'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/bonsainikki.dev'
    # when 'test'
    #   config.fog_directory = 'test.example.com'
    #   config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/test.example.com'
  end
end