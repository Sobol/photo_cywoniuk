class GalleryImage < ActiveRecord::Base
  
  attr_accessible :gallery, :image, :title, :description, :gallery_id
  
  validates_presence_of :gallery_id
  
  belongs_to :gallery, :class_name => "Gallery"
  
  has_attached_file :image,
                    :storage => :s3,
                    :s3_credentials => {:access_key_id => ENV['S3_KEY'],
                                        :secret_access_key => ENV['S3_SECRET']},
                    :bucket => "photocywoniuk",
                    :path => ":class/:id/:basename/:style.:extension",
                    :s3_headers => { :cache_control => "max-age=#{364.days.to_i}" },
                    :s3_permissions => :public_read,
                    :styles => { 
                      :thumb => "114x72#",
                      :medium => "920x360#" }
end
