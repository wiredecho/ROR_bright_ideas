class LikesController < ApplicationController
	def create
		like = Like.find_by(user_id: session[:user_id], idea_id: params[:id])
		if like
			flash[:errors] = ["You have liked this already"]
		else
			idea = Idea.find(params[:id])
			current_vote = idea.vote
			new_vote = current_vote + 1
			idea.update(vote: new_vote)
			Like.create(user_id: session[:user_id], idea_id: params[:id])
		end
		redirect_to :back
	end

end
