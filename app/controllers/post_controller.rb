class PostController < ApplicationController
  def create
    social_post = current_user.posts
                              .create(message: params[:post],
                                      scheduled_at: Time.now,
                                      network: 'T')
    job_id = PostJob.perform_async(social_post.id)
    social_post.update_attributes(job_id: job_id)
    render json: { status: 200 }
  end
end
