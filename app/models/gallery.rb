class Gallery < ActiveRecord::Base
  attr_accessible :photo, :title, :description
    
  has_many :gallery_images, :dependent => :destroy, :class_name => "GalleryImage", :foreign_key => "gallery_id"

  has_attached_file :photo, 
                    :styles => { 
                      :medium => "300x200#" }
end
