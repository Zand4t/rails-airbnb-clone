class CommentsController < ApplicationController
  before_action :set_stream

  def index
  end

  #create
  def new
    @comment = Comment.new
  end

  #edit? Or nah?
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.stream = @stream
    @comment.save
    redirect_to stream_path(@stream)
  end

   def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to stream_path(@stream)
  end


  private

  def set_stream
    @stream = Stream.find(params[:stream_id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def comment_params
    params.require(:comment).permit(:content, :stream_id, :user_id)
  end

end
