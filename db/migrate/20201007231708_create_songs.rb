class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.sting :title
      t.string :artist_name
      t.integer :release_year
      t.boolean :released
      t.string :genre

      t.timestamps null: false
    end
  end
end
