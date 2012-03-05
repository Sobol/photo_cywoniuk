class AddFieldsToGallery < ActiveRecord::Migration
  def self.up
    change_table :galleries do |t|
      t.has_attached_file :photo
      t.text :title
      t.text :description
    end
  end
  
  def self.down
    drop_attached_file :users, :avatar
  end
end
