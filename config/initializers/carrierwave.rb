CarrierWave.configure do |config|

    config.storage = :file
    config.cache_storage = :file

    case Rails.env
    when 'production'
        config.asset_host = 'https://isaatsu-api.com'
    else
        config.asset_host = "http://localhost:3011"
    end
end