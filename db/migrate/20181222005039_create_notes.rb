class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :name
      t.string :markup
      t.boolean :is_mobile_friendly
      t.string :timestamps

      t.timestamps
    end
  end
end
