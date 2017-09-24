class TwitterController < ApplicationController
  def create
    current_user.tokens
                .first_or_create(access_token: request.env['omniauth.auth'].credentials.token,
                                 access_secret: request.env['omniauth.auth'].credentials.secret,
                                 network: 'T')
    redirect_to root_url + 'social_media#!/post'
  end
end
