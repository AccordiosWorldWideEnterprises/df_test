class AddFileToSampleImages < ActiveRecord::Migration
  def change
    add_column :sample_images, :file_uid, :string
    add_column :sample_images, :file_name, :string
  end
end
