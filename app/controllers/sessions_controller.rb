class SessionsController < ApplicationController

def new
end

def create
  user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to home_path, notice:"Logged in"
    else
      flash.now.alert = "Invalid login credentials"
      render :new
    end
end

def destroy
  session[:current_user_id] = nil
  redirect_to root_path, notice: "Logged Out"
end

end
