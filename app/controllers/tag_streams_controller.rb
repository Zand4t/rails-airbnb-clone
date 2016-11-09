class TagStreamsController < ApplicationController
  before_action :set_tag

  def index
    @streams = Stream.all
  end

  def show
    @stream = Stream.find(params[:tag_id])
    # @stream = Stream.find(params[@tag])?
  end

  private

  def set_tag
    @tag = Tag.find(params[:tag_id])
  end

  def stream_params
    params.require(:stream).permit(:name, :link) #description? Double check if this is 'required' or just the columns to be filled
  end

end
