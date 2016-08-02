class UsersController < ApplicationController
  def index
  end

  def create
  	u= User.new(user_params)
  	if u.save
  		session[:user_id] =u.id
  		redirect_to ideas_path
  	else
  		flash[:errors]=u.errors.full_messages
  		redirect_to:back
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:name, :alias, :email, :password, :password_confirmation)
  end

end
