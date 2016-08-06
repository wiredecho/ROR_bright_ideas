class LikesController < ApplicationController
	def create
		Like.create[user_id: session[:user_id], idea_id: params[:id])
	end

end
