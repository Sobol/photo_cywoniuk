class Admin::GalleriesController < Admin::AdminController
  def index
    @galleries = Gallery.all
  end

  def show
    @galleries = Gallery.find(params[:id])
  end

  def new
    @galleries = Gallery.new
  end

  def edit
    @galleries = Gallery.find(params[:id])
  end

  def create
    @galleries = Gallery.new(params[:news])
    if @galleries.save
      redirect_to(admin_galleries_path(@galleries))
    else
      render :action => :new
    end
  end

  def update
    @galleries = Gallery.find(params[:id])

    if @galleries.update_attributes(params[:news])
      redirect_to(admin_galleries_path(@galleries), :notice => "Gallery was successfully updated.")
    else
      render :action => :edit
    end
  end

  def destroy
    @galleries = Gallery.find(params[:id])
    @galleries.destroy
    redirect_to(admin_galleries_index_path)
  end

  private

  def page
    params[:page] || 1
  end
end
