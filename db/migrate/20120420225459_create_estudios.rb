class CreateEstudios < ActiveRecord::Migration
  def self.up
    create_table :estudios do |t|
      t.integer :id
      t.string :nombre
      t.date :fecha
      t.string :audio_url

      t.timestamps
    end
  end

  def self.down
    drop_table :estudios
  end
end


