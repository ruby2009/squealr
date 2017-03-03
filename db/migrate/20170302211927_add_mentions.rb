class AddMentions < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :mentionees, :integer, :default => 0
    add_column :users, :mentioners_count, :integer, :default => 0
  end
end
