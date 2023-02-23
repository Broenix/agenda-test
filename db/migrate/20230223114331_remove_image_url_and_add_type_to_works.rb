class RemoveImageUrlAndAddTypeToWorks < ActiveRecord::Migration[6.1]
  def change
    remove_column :works, :image_url, :string
    add_column :works, :type, :string
  end
end

