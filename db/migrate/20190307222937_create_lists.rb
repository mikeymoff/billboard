class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.integer :rank_num
      t.string :song_name
      t.string :artist

      t.timestamps
    end
  end
end
