class SessionsController < ApplicationController
	def create
		u= User.find_by(email: params[:email])
		if u && u.authenticate(params[:password])
			session[:user_id] = u.id
			redirect_to ideas_path
		else
			flash[:errors] = ["Wrong combination"]
			redirect_to back

		end
	end

	def destroy
	end

end
