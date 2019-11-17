class CreateTanks < ActiveRecord::Migration[5.2]
  def change
    create_table :tanks do |t|
      t.string :external_id
      t.references :product, foreign_key: true
      t.references :location, foreign_key: true
      t.integer :capacity
      t.integer :bottom
      t.boolean :manifolded

      t.timestamps
    end
  end
end
