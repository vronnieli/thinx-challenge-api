module Api
	module V1
		class UsersController < ApplicationController

      def index
		    render json: User.all
		  end

      def create
		    # binding.pry
		    user = User.new(user_params)
		    if user.save
		      render json: user
		    else
		      render json: user.errors, status: 500
		    end
		  end

		  private

		  def user_params
		  	params.require(:user).permit(:username, :password)
		  end

    end
  end
end
