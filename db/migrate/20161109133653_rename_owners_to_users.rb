class RenameOwnersToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :streams, :owners

    rename_table :owners, :users

    add_column :users, :owner, :boolean

    rename_column :streams, :owner_id, :user_id

    add_foreign_key :streams, :users
  end
end
