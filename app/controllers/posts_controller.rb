class PostsController < ApplicationController

  # Home Posts
  def index

    @title = 'Index'

  end

  # New Post
  def new
    @new = 'we show new things'
  end

  # Show Posts
  def show

  end

  # Create Post
  def create
    render plain: params[:post].inspect
  end


end
