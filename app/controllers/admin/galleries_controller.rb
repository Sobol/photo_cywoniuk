class Admin::GalleriesController < Admin::AdminController
  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find(params[:id])
    @images = @gallery.gallery_images.order("created_at ASC")
    @image = GalleryImage.new
  end

  def new
    @gallery = Gallery.new
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def create
    @gallery = Gallery.new(params[:gallery])
    if @gallery.save
      redirect_to(admin_galleries_path)
    else
      render :action => :new
    end
  end

  def update
    @gallery = Gallery.find(params[:id])

    if @gallery.update_attributes(params[:gallery])
      redirect_to(admin_gallery_path(@gallery))
    else
      render :action => :edit
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    redirect_to(admin_galleries_path)
  end
end
