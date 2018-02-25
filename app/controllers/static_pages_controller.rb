class StaticPagesController < ApplicationController

	def home
		@user_id = params[:user_id]
		@images = @user_id.blank? ? flickr.photos.getRecent(extras: :url_m) : flickr.people.getPhotos(user_id: @user_id, extras: :url_m)
	end

end
