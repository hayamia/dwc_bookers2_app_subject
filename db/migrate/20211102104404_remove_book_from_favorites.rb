class RemoveBookFromFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :book, :integer
  end
end
