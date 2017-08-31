class TwitterController < ApplicationController
  def create
    current_user.tokens
                .create(access_token: request.env['omniauth.auth'].credentials.token,
                        network: 'T')
  end
end
