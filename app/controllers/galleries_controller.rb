class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
  end
  
  def show
    @galleries = Gallery.find(params[:id])
  end
end
