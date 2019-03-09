class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.artist :belongs_to
      t.list :belongs_to

      t.timestamps
    end
  end
end
