class HomeController < ApplicationController
	def index
		if user_signed_in?
			#render 'social_media/index'
			redirect_to social_media_path
		end

	end
end