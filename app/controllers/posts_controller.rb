class PostsController < ApplicationController

  # Home Posts
  def index

  end

  # Show Posts
  def show
    @post = Post.find(params[:id])
  end

  # All Posts
  def showall
    @post = Post.all
  end

  # New Post
  def new

  end


  # Create Post
  def create

    @post = Post.new(post_params)
    @post.save
    redirect_to @post

  end

  # Private Params
  private def post_params

    params.require(:post).permit(:title, :body)

  end


end
