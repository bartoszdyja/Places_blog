class CommentsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	def new
		@comment = Comment.new
		@place = Place.find(params[:place_id])
	end

	def create
	@place = Place.find(params[:place_id])
	@comment = @place.comments.create(comment_params)
	@comment.user_id = current_user.id
	@comment.save
	redirect_to @place
	end

private
	
	def comment_params
		params.require(:comment).permit(:user_id, :body, :place_id)
	end

end
