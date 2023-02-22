class CreateTvShows < ActiveRecord::Migration[7.0]
  def change
    create_table :tv_shows do |t|
      t.string :name
      t.string :image
      t.integer :year

      t.timestamps
    end
  end
end
