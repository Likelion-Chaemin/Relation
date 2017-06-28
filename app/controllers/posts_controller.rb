class PostsController < ApplicationController

# Create
  def new
  end

  def create
    @posts = Post.new
    @posts.title = params[:title]
    @posts.content = params[:content]
    @posts.save
    redirect_to '/'
  end

# Read
  def index
    @posts = Post.all
  end

  def post
    @posts = Post.find(params[:p_id])
    # routes에서도 params 를 가져올 수 있다. 위의 경우 주소창에 있는 id를 params로 가져온 것.
  end

# Update
  def update
    @posts = Post.find(params[:p_id])
  end

  def realUpdate
    @posts = Post.find(params[:p_id])
    @posts.title = params[:updatetitle]
    @posts.content = params[:updatecontent]
    @posts.save
    redirect_to "/posts/post/#{@posts.id}"
  end

# destroy
  def destroy
    @posts = Post.find(params[:p_id])
    @posts.destroy
    redirect_to "/"
  end
end
