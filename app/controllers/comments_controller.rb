class CommentsController < ApplicationController

  def create
    @comments = Comment.new
    @comments.user_id = current_user.id
    @comments.post_id = params[:p_id]
    @c_id = @comments.post_id
    @comments.content = params[:comments_content]
    @comments.save
    redirect_to "/posts/post/#{@c_id}"
  end

  def update
  end

  def realUpdate
    @comments = Comment.find(params[:c_id])
    @posts.content = params[:comments_update]
    @posts.save
    redirect_to "/posts/post/#{@c_id}"
  end

  def destroy
  end

end
