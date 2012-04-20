class CreateEstudios < ActiveRecord::Migration
  def self.up
    create_table :estudios do |t|
      t.integer :id
      t.string :nombre
      t.date :fecha
      t.string :audio_file_name
      t.string :audio_content_type
      t.integer :audio_file_size
      t.datetime :audio_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :estudios
  end
end


