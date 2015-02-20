class AddCategoryToPlaces < ActiveRecord::Migration
  def change
    add_reference :places, :category, index: true
    add_foreign_key :places, :categories
  end
end
