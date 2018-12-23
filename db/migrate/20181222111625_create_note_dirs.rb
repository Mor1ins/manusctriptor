class CreateNoteDirs < ActiveRecord::Migration[5.0]
  def change
    create_table :note_dirs do |t|
      t.string :name
      t.string :timestamps

      t.timestamps
    end
  end
end
