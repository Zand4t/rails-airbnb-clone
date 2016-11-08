class AddLinkToStream < ActiveRecord::Migration[5.0]
  def change
    add_column :streams, :link, :string
  end
end
