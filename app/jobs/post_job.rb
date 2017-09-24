class PostJob
  include Sidekiq::Worker

  def perform(post_id)
    post = Post.find(post_id)
    Twitter::PublishPost.fetch(post)
  end
end
