class HomeController < ApplicationController

  def index
  	@post = Post.new
    @activities = PublicActivity::Activity.order("created_at desc").page(params[:page])
  end
  
end
