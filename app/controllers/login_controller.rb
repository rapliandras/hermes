class LoginController < ApplicationController
  def main
  	#do stuff here
  	if request.post? then
  		#check for existing model and
  		@u = params[:user]
  		redirect_to '/'
  	end
  end
end
