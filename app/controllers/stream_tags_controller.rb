class StreamTagsController < ApplicationController

  def new
    @stream = Stream.find(params[:stream_id])
    @tags = Tag.all
  end

  def create

    @stream = Stream.find(params[:stream_id])
    @stream_tag = StreamTag.new(stream_tag_params)
    @stream_tag.stream = @stream
    @stream_tag.save
    redirect_to stream_path(@stream)

  end

  private

  def stream_tag_params
    params.require(:stream_tag).permit(:tag_id)
  end

end

