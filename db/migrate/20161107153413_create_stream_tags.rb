class CreateStreamTags < ActiveRecord::Migration[5.0]
  def change
    create_table :stream_tags do |t|
      t.references :tag, foreign_key: true
      t.references :stream, foreign_key: true

      t.timestamps
    end
  end
end
