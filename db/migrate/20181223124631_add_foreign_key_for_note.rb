class AddForeignKeyForNote < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :note_id, :string, foreign_key: true
  end
end
