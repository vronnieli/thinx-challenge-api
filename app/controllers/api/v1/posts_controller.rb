module Api
	module V1
		class PostsController < ApplicationController

			skip_before_action :authenticate

      def index
		    render json: Post.all, include: '**'
		  end

      def create
        post = Post.new(title: post_params[:title], content: post_params[:content], user_id: current_user.id)
				data = Paperclip.io_adapters.for(post_params[:image])
				post.image = data
        if post.save
          render json: post
        else
          render json: post.errors, status: 500
        end
      end

			def update
				data = Paperclip.io_adapters.for(post_params[:image])
				post = Post.find(post_params[:id])
				post.update(title: post_params[:title], content: post_params[:content], image: data)
				if post.errors.any?
					render json: post.errors, status: 500
				else
					render json: Post.all, include: '**'
				end
			end

      private

      def post_params
        params.require(:post).permit(:title, :content, :image, :id)
      end

    end
  end
end
