class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :token
      t.string :avatar

      t.timestamps
    end
  end
end
