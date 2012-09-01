class AddFileSizeToEstudio < ActiveRecord::Migration
  def self.up
    add_column :estudios, :file_size, :string
  end

  def self.down
    remove_column :estudios, :file_size
  end
end
