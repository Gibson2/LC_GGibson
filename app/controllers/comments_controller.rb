class CommentsController < ApplicationController
  load_and_authorize_resource

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save!
      redirect_to @post,
      notice: "Se Guardo el comentario"
    else
      redirect_to @post,
      alert: "No se Guardo el comentario"
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:comment)
    end
end