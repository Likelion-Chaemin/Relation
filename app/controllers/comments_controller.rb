class CommentsController < ApplicationController

  def create
    @comments = Comment.new
    @comments.user_id = current_user.id
    @comments.post_id = params[:post_id]
    @comments.content = params[:comments_content]
    @comments.save
    redirect_to "/posts/post/#{params[:post_id]}"
  end

  def update
    @comments = Comment.find(params[:c_id])
  end

  def realUpdate
    @comments = Comment.find(params[:c_id])
    @comments.content = params[:comments_update]
    @comments.save
    redirect_to "/posts/post/#{@comments.post_id}"
  end

  def destroy
    @comments = Comment.find(params[:c_id])
    @comments.destroy
    redirect_to "/posts/post/#{@comments.post_id}"
  end

end
