require_relative '../../../../lib/auth'

module Api
	module V1
		class SessionsController < ApplicationController

      skip_before_action :authenticate

			def create
		    user = User.find_by(username: credentials_params[:username])
		    if user.authenticate(credentials_params[:password])
		      jwt = Auth.issue({id: user.id})
          render json: {jwt: jwt}
			  end
		  end

		  private

	    def credentials_params
	      params.require(:credentials).permit(:username, :password)
	    end

		end
	end
end
