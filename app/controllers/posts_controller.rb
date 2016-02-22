class PostsController < ApplicationController
  def index
    if params[:current_user_id]
      @posts = current_user.posts
    else
      @posts = Post.all
    end
  end

  def new
    @user = current_user
    @post = Post.new
  end

  def create
    @user = current_user
    @post = @user.posts.new(post_params)
    if @post.save
      redirect_to user_posts_path(current_user)
    else
      render :new
    end
  end

private
  def post_params
    params.require(:post).permit(:title, :location, :traveled_on, :description, :pros, :cons, :tips_and_tricks)
  end

end

