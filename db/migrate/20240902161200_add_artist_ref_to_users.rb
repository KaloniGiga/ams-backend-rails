class AddArtistRefToUsers < ActiveRecord::Migration[7.2]
  def change
    add_reference :users, :artist, foreign_key: true, index: { unique: true }, null: true
  end
end
