class StreamsController < ApplicationController
  before_action :set_owner, only: [:new, :create]
  before_action :set_stream, only: [:show, :edit, :update, :destroy]

  def index
    @streams = Stream.all
  end

  def show
    #before_action set_stream already performs the action necessary
    #to show the page of a single stream

    # show in cocktails project needed 'set_owner' for redirection purposes
    # should I still include that here?
    # I don't think I'd need to....
  end

  #only the owner will be able to make a new stream
  def new
    @stream = Stream.new
    #set_owner is here so we can get the info for owner_id
  end

  #only the owner will be able to edit a stream
  def edit
    #before_action set_stream already performs the action necessary
    #to show the page of a single stream
    #which I assume from there I can edit this single instance of a stream
  end

  #only the owner will be able to create a new stream
  def create
    #set_owner is here so we can get the info for owner_id
    Stream.create(stream_params)#owner_id part of the augment too?

    redirect_to stream_path

    # create in cocktails project needed 'set_owner' for redirection purposes
    # should I still include that here?
    # I don't think I'd need to....
  end

 #only the owner will be able to update a stream
  def update
    @stream.update(stream_params)

    redirect_to stream_path
    # update in cocktails project needed 'set_owner' for redirection purposes
    # should I still include that here?
    # I don't think I'd need to....
  end

 #only the owner will be able to destroy a stream
  def destroy
    @stream.destroy
    # destroy in cocktails project needed 'set_owner' for redirection purposes
    # should I still include that here?
    # I don't think I'd need to....
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
