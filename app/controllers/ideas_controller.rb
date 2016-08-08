class IdeasController < ApplicationController
  def index
  	@user = User.find(session[:user_id])
  	@ideas = Idea.join_users
   
  end

  def create
  	u = User.find(session[:user_id])
  	i = u.ideas.new(idea_params)
  	
  	flash[:errors] = i.errors.full_messages unless i.save
  	redirect_to :back

  end

  def destroy
    i = Idea.find(params[:id]).destroy
    redirect_to :back
  end


  private
  def idea_params
  	params.require(:idea).permit(:content)
  end
end

