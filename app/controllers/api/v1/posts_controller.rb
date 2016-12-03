module Api
	module V1
		class PostsController < ApplicationController

      def index
		    render json: Post.all, include: '**'
		  end

      # def show
			# 	post = Post.find(params[:id])
			# 	comments = post.where(post.parent_comment_id = nil)
			# 	binding.pry
      #   render json: post, include: :comments
      # end
			#
      # def create
      #   post = Post.new(post_params)
      #   if post.save
      #     render json: post
      #   else
      #     render json: post.errors, status: 500
      #   end
      # end

      private

      # def post_params
      #   params.require(:post).permit(:title, :content, )
      # end

    end
  end
end
