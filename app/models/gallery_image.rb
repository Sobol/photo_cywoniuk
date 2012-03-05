class GalleryImage < ActiveRecord::Base
  
  attr_accessible :gallery, :photo, :title, :description  
  
  validates_presence_of :gallery_id
  
  belongs_to :gallery, :class_name => "Gallery"
  
  has_attached_file :photo, 
                    :styles => { 
                      :thumb => "114x72>",
                      :medium => "920x360>" }
end
