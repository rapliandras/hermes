class LoginController < ApplicationController
  def main
  	#do stuff here
  	if request.post? then
  		if params[:user][:username] && params[:user][:password] then
  			username = params[:user][:username]
    		password = params[:user][:password]
    		user = User.where(username: username).first #if it exists in db
    		@vv= user
  			#if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
  			if user && password == password then
  				#do nothing here
  			else
  				user = nil
  				#flash does not work for some reason. this line is of right syntax though
  				flash[:notice] = "aas"
  			end
  		end

  		#redirect_to '/'
  	end
  end
end