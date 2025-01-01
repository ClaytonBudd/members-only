class PostsController < ApplicationController
  before_action :authenticate_user!, only[:new, :create]

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to @index
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @posts = Post.all
  end

  private
    def post_params
      params.require(:article).permit(:[title, :body])
    end

end
