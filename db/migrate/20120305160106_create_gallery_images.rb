class CreateGalleryImages < ActiveRecord::Migration
  def self.up
    create_table :gallery_images do |t|
      t.integer :gallery_id, :null => false, :references => :galleries
      t.has_attached_file :image
      t.text :title
      t.text :description
      t.timestamps
    end
    add_index :gallery_images, :gallery_id
  end
  
  def self.down
    drop_table :gallery_images
  end
end
