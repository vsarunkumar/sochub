Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FB_ID'], ENV['FB_SECRET']
  provider :twitter, ENV["TWITTER_KEY"], ENV["TWITTER_SECRET"]
  provider :linkedin, ENV["LINKEDIN_KEY"], ENV["LINKEDIN_SECRET"]
end