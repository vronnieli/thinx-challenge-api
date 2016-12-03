module Api
	module V1
		class ConversationsController < ApplicationController

      def index
		    render json: Conversation.all
		  end

			def create
				conversation = Conversation.new
				conversation.users << User.find(params[:conversation][:user_id])
				# also add current_user
				if conversation.save
					render json: conversation
				else
					render json: conversation.errors, status: 500
				end
			end

			private

			def conversation_params
				params.require(:conversation).permit(:user_id)
			end

    end
  end
end
