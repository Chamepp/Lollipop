class CommentsController < ApplicationController


  # Create Comments
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end


  # Comments Params
  def comment_params
    params.require(:comment).permit(:username, :body)
  end

end
