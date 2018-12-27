class SessionsController < ApplicationController

	def new

	end

	def create
		return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
		session[:username] = params[:name]
		redirect_to '/'
	end

	def destroy
		session.delete :username

		redirect_to '/login'
	end

end
