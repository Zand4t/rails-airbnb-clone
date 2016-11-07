class CreateStreams < ActiveRecord::Migration[5.0]
  def change
    create_table :streams do |t|
      t.string :name
      t.string :description
      t.references :owner, foreign_key: true


      t.timestamps
    end
  end
end
