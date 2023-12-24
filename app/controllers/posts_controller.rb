class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @user = current_user
    @post = Post.new(post_params)
    @post.user = @user
    if @post.save
      flash[:notice] = "Post saved!"
      redirect_to posts_path
    else
      flash.now[:alert] = "Post not saved!"
      render "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
