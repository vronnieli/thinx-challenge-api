module Api
	module V1
		class MessagesController < ApplicationController

      def create
        message = Message.new(message_params)
        message.user_id = current_user.id
        if message.save
          render json: message
        else
          render json: message.errors, status: 500
        end
      end

      private

      def message_params
        params.require(:message).permit(:content, :conversation_id)
      end

    end
  end
end
