module Twitter
  class PublishPost
    attr_reader :post, :message, :user, :token

    def self.fetch(post)
      new(post).fetch
    end

    def initialize(post)
      @post = post
      @message = post.message
      @user = post.user
      @token = user.tokens.where(network: 'T').first
    end

    def fetch
      post_id = publish_post
      post.publish_id = post_id
      post.save
    end

    def publish_post
      resp = client.update(message)
      resp.id
    end

    def client
      Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV['TWITTER_KEY']
        config.consumer_secret     = ENV['TWITTER_SECRET']
        config.access_token        = token.access_token
        config.access_token_secret = token.access_secret
      end
    end
  end
end
