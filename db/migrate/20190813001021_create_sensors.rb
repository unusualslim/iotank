class CreateSensors < ActiveRecord::Migration[5.2]
  def change
    create_table :sensors do |t|
      t.string :external_id
      t.string :description
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
