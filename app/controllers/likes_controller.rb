class LikesController < ApplicationController
	def create
		idea = Idea.find(params[:id])
		current_vote = idea.vote
		new_vote = current_vote + 1
		idea.update(vote: new_vote)
		Like.create(user_id: session[:user_id], idea_id: params[:id])
		redirect_to :back
	end

end
