class StreamsController < ApplicationController
  before_action :set_stream, only: [:show, :update, :destroy]

  def index
    @streams = Stream.all
  end

  def show
      @new_comment = Comment.new
      @stream_tag = StreamTag.new
      @tags = Tag.all
  end

  def new
    #if :owner?
      @stream = Stream.new
    #else
     # redirect_to streams_path
    #end

    # check if the owner_id boolean == true
    # if not, reject method
  end

  def edit
    # if current_user.owner?
      @stream = Stream.find(params[:id])
    # else
    #  redirect_to streams_path
    # end
    # check if the owner_id boolean == true
    # if not, reject method
  end

  def create
    # if current_user.owner?
      @stream = Stream.new(stream_params)#owner_id part of the augment too?
      @stream.user = current_user
      if @stream.save
        redirect_to stream_path(@stream)
      else
        render :new
      end
    # else
      # redirect_to streams_path
    # end
  end

  def update
    @stream.update(stream_params)
    redirect_to stream_path
  end

  def destroy
    #if current_user.owner?
      @stream.destroy
      redirect_to streams_path
    # else
    #  redirect_to streams_path
    #end
    # check if the owner_id boolean == true
    # if not, reject method
  end


  private

  def set_stream
    @stream = Stream.find(params[:id])
  end

  def stream_params
    params.require(:stream).permit(:name, :link, :description, :comments)
    # this prevents users from inserting new db columns into the db
    # so we define what columns DO exist/are approved
  end

end
