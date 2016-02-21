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
    session[:user_id] = @user.id
    flash[:notice] = "You Successfully Signed Up"
    redirect_to home_path
  else
    render :new
  end
end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :sex, :born_on, :email, :password, :password_confirmation)
  end

end
