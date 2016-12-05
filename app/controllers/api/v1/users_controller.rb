require_relative '../../../../lib/auth'

module Api
	module V1
		class UsersController < ApplicationController

      skip_before_action :authenticate, :only => [:create]

      def index
		    render json: User.all
		  end

      def create
		    user = User.new(user_params)
		    if user.save
          user.authenticate(user_params[:password])
          jwt = Auth.issue({id: user.id})
          session[:user_id] = user.id
		      render json: {jwt: jwt}
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
