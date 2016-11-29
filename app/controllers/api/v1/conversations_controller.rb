module Api
	module V1
		class ConversationsController < ApplicationController

      def index
		    render json: Conversation.all
		  end

    end
  end
end
