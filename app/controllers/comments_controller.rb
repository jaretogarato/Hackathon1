class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
  end

  def new
  end

  def create
    @comment = Comment.new
    if @comment.save
      redirect_to user_comments
    else
      render 'err'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @comment.destroy
    redirect_to user_comments([:user_id])
  end
end
