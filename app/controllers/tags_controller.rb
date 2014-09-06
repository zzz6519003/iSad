class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    render :text => "sdf"
  end
end
