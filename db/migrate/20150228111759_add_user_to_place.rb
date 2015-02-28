class AddUserToPlace < ActiveRecord::Migration
  def change
    add_reference :places, :user, index: true
    add_foreign_key :places, :users
  end
end
