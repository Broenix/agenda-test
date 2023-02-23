class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works do |t|
      t.string :name
      t.integer :year
      t.string :image_url
      t.string :creator

      t.timestamps
    end
  end
end
