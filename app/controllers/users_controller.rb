class UsersController < ApplicationController

	def index #first index to show

	end

	def new
		@user = User.new #create new user
	end

	def show #show for user

	end

	def create # to create something
		@user = User.new(params[:user])  #create user
		if @user.save #if cansave
			#Do something
		else
			render 'new' #if can't save show new
		end
	end

	def edit # for edit something

	end

	def update # for update something

	end

	def destroy # for destroy something

	end

end
