class CommentsController < ApplicationController


  # Create Comments
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  # Destroy Comments
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end


  # Comments Params
  private def comment_params
    params.require(:comment).permit(:username, :body)
  end

end
