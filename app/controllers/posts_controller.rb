class PostsController < ApplicationController
  def index
    if params[:user_id]
      @posts = current_user.posts
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

  def show
    @user = current_user
    @post = Post.find(params[:id])
  end

  def edit
    @user = current_user
    @post = Post.find(params[:id])
  end

  def update
    @user = current_user
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to user_posts_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @user = current_user
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to user_posts_path(current_user)
  end

private
  def post_params
    params.require(:post).permit(:title, :location, :traveled_on, :description, :pros, :cons, :tips_and_tricks)
  end

end

