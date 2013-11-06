Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_PROVIDER_KEY'], ENV['FACEBOOK_PROVIDER_SECRET']
end
