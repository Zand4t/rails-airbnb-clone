class TagsController < ApplicationController

  before_action :set_tag, only: [:create :edit, :update, :destroy]

  def index
   @tags = Tag.all
  end

  def new # GET /tag/new
    @tag = Tag.new
  end

  def create # POST /tag
    @tag = Tag.new(tag_params)
    @tag.save
  end

  # def edit # GET /tag/:id/edit
  # end

  def update # PATCH /tag/:id
    @tag.update(params[:tag])
  end

  def destroy # DELETE /tag/:id
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:name)
  end

end
