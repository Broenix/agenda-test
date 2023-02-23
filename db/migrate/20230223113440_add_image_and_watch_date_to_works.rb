class AddImageAndWatchDateToWorks < ActiveRecord::Migration[7.0]
  def change
    add_column :works, :image, :string
    add_column :works, :watch_date, :date
  end
end
