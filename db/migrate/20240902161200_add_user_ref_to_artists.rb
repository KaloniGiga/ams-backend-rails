class AddUserRefToArtists < ActiveRecord::Migration[7.2]
  def change
    add_reference :artists, :user, foreign_key: true, index: { unique: true }, null: true
  end
end
