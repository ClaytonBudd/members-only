class PostsController < ApplicationController
  before_action :require_login

  def new
  end

  def create
  end

  def index
  end

  private

  def require_login
    unless logged_in?
      flash[:error] = "You must be signed in to make a post"
      redirect_to new_login_url
    end
  end
end
