class GalleryImage < ActiveRecord::Base
  
  attr_accessible :gallery, :image, :title, :description, :gallery_id
  
  validates_presence_of :gallery_id
  
  belongs_to :gallery, :class_name => "Gallery"
  
  has_attached_file :image, 
                    :styles => { 
                      :thumb => "114x72>",
                      :medium => "920x360>" }
end
