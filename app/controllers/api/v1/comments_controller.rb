module Api
	module V1
		class CommentsController < ApplicationController

      def create
        comment = Comment.new(comment_params)
        if comment.save
          render json: comment
        else
          render json: comment.errors, status: 500
        end
      end

      private

      def comment_params
        params.require(:comment).permit(:comment_text, :post_id, :user_id, :parent_comment_id)
      end

    end
  end
end
