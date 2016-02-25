class UsersController < ApplicationController

def index
  @users = User.all
end

def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    session[:current_user_id] = @user.id
    flash[:notice] = "You Successfully Signed Up"
    redirect_to home_path
  else
    render :new
  end
end

def show
  @user = User.find(params[:id])
end

def edit
  @user = current_user
end

def update
  @user = current_user
  if @user.update_attributes(user_params)
    redirect_to user_path
  else
    render :edit
  end
end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :sex, :born_on, :email, :profilepicture, :password, :password_confirmation)
  end

end
