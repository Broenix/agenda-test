class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :image
      t.integer :year
      t.string :director

      t.timestamps
    end
  end
end
