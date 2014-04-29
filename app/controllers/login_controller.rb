class LoginController < ApplicationController
  def main
  	#do stuff here
  	if request.post? then
  		if params[:user][:username] && params[:user][:password] then
  			username = params[:user][:username]
    		password = params[:user][:password]
    		user = find_by_username(username)
  			#if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
  			if user && user.password == password
  				#do nothing here
  			else
  				user = nil
  			end
  		end

  		#redirect_to '/'
  	end
  end
end