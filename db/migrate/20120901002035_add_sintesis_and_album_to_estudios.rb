class AddSintesisAndAlbumToEstudios < ActiveRecord::Migration
  def self.up
    add_column :estudios, :sintesis, :text
    add_column :estudios, :album, :string
  end

  def self.down
    remove_column :estudios, :album
    remove_column :estudios, :sintesis
  end
end
