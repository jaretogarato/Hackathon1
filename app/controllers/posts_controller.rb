class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def show

  end

  def new
    @post = current_user.posts.new 
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to user_posts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

  def post_params
    params.require(:post).permit(:content, :title)
  end

  
end
