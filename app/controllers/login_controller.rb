class LoginController < ApplicationController
  def main
  	#do stuff here
  	if request.post? then
  		#check for existing model and
  		@params = params
  		redirect_to '/'
  	end
  end
end
