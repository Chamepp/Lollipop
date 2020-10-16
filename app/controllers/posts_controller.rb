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
    @post = Post.new
  end


  # Create Post
  def create

    @post = Post.new(post_params)

    # Err Handeling
    if @post.save
      redirect_to @post

      else
      render :new

  end

  # Private Params
  private def post_params

    params.require(:post).permit(:title, :body)

  end


end

  end
