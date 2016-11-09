class OwnerStreamsController < ApplicationController

### This needs to be reworked now that onwer_id isn't a thing in the stream table!!! ###

  before_action :set_owner

  def index
    @streams = Stream.all
  end

  def show
    @stream = Stream.find(params[:owner_id])
    # @stream = Stream.find(params[:owner_id])?
  end

  private

  def set_owner
    @owner = Owner.find(params[:owner_id])
  end

  # def stream_params
  #  params.require(:stream).permit(:name, :link) #description? Double check if this is 'required' or just the columns to be filled
  # end

end
