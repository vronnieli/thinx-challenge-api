module Api
	module V1
		class ConversationsController < ApplicationController

      def index
				conversations = Conversation.joins(:users).where("users.id": current_user.id)
		    render json: conversations
		  end

			def create
				conversation = Conversation.new
				conversation.users << current_user
				conversation.users << User.find(params[:conversation][:user_id])
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
