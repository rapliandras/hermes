class SignupController < ApplicationController
	def main
	end

	def addToDb
		user = User.new(username: username) #hope, this syntax is right
	end
end
