class RemoveUsers < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :comments, :users

    drop_table :users
  end
end
