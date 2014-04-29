class LoginController < ApplicationController
  def main
  	#do stuff here
  	if request.post? then
  		#check for existing model and
  		if !params[:user].nil? then 
  			@u = params[:user]
  		else
  			@u = nil
  		end
  		redirect_to '/'
  	end
  end
end
