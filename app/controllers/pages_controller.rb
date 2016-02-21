class PagesController < ApplicationController
  def enter
  end

  def about
  end

  def home
    @user = User.new
  end
end
