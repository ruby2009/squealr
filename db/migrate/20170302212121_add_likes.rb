class AddLikes < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :likees_count, :integer, :default => 0
    add_column :users, :likers_count, :integer, :default => 0
  end
end
