class PostsController < ApplicationController
  PER_PAGE = 10

  def index
    @posts = Post.page(params[:page]).per(PER_PAGE).order(id: :desc)
  end

  def create
    Post.create!(post_params)
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
