class Gallery < ActiveRecord::Base
  attr_accessible :photo, :title, :description
    
  has_many :gallery_images, :dependent => :destroy, :class_name => "GalleryImage", :foreign_key => "gallery_id"

  has_attached_file :photo,
                    :storage => :s3,
                    :s3_credentials => {:access_key_id => ENV['S3_KEY'],
                                        :secret_access_key => ENV['S3_SECRET']},
                    :bucket => "photocywoniuk",
                    :path => ":class/:id/:basename/:style.:extension",
                    :s3_headers => { :cache_control => "max-age=#{364.days.to_i}" },
                    :s3_permissions => :public_read,
                    :styles => { 
                      :medium => "300x200!" }
end
