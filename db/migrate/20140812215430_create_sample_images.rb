class CreateSampleImages < ActiveRecord::Migration
  def change
    create_table :sample_images do |t|
      t.string :name

      t.timestamps
    end
  end
end
