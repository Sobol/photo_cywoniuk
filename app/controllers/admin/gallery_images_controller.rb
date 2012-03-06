class Admin::GalleryImagesController < Admin::AdminController
  def show
    @image = GalleryImage.find(params[:id])
  end

  def edit
    @image = GalleryImage.find(params[:id])
  end

  def create
    @image = GalleryImage.new(params[:gallery_image])
    if @image.save
      redirect_to(admin_gallery_path(@image.gallery_id))
    else
      render :action => :new
    end
  end

  def update
    @image = GalleryImage.find(params[:id])

    if @image.update_attributes(params[:gallery_image])
      redirect_to(admin_gallery_image_path(@image))
    else
      render :action => :edit
    end
  end

  def destroy
    @image = GalleryImage.find(params[:id])
    @image.destroy
    redirect_to(admin_gallery_path(params[:gallery_id]))
  end

end
