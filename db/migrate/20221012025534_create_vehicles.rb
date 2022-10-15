class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :marca
      t.string :modelo
      t.string :año
      t.string :tipo
      t.decimal :precio
      t.string :estado
      t.references :dealership, null: false, foreign_key: true

      t.timestamps
    end
  end
end
