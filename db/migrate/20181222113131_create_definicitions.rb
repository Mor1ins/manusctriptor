class CreateDefinicitions < ActiveRecord::Migration[5.0]
  def change
    create_table :definicitions do |t|
      t.string :name
      t.string :body
      t.string :timestamps

      t.timestamps
    end
  end
end
