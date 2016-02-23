class PostsController < ApplicationController
  def index
    @posts = current_user.posts
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @image = Image.new
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

