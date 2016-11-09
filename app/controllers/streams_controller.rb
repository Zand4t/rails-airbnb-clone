class StreamsController < ApplicationController
  before_action :set_owner, only: [:new, :create]
  before_action :set_stream, only: [:show, :update, :destroy]

  def index
    @streams = Stream.all
  end

  def show

  end

  def new
    if :owner?
      @stream = Stream.new
    else
      redirect_to streams_path
    end
    # check if the owner_id boolean == true
    # if not, reject method
  end

  def edit
    if :owner?
      @stream = Stream.find(params[:id])
    else
      redirect_to streams_path
    end
    # check if the owner_id boolean == true
    # if not, reject method
  end

  def create
    if :owner?
      Stream.create(stream_params)#owner_id part of the augment too?
      redirect_to stream_path
    else
      redirect_to streams_path
    end
    # check if the owner_id boolean == true
    # if not, reject method
  end

  def update
    @stream.update(stream_params)
    redirect_to stream_path

    # check if the owner_id boolean == true
    # if not, reject method
  end

  def destroy
    if :owner?
      @stream.destroy
      redirect_to streams_path
    else
      redirect_to streams_path
    end
    # check if the owner_id boolean == true
    # if not, reject method
  end


  private

  def set_owner
    @owner = Owner.find(params[:owner_id])
  end

  def set_stream
    @stream = Stream.find(params[:id])
  end

  def stream_params
    params.require(:stream).permit(:name, :link, :description)
    # this prevents users from inserting new db columns into the db
    # so we define what columns DO exist/are approved
  end

end
