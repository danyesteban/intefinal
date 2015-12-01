class CreateAutomotoras < ActiveRecord::Migration
  def change
    create_table :automotoras do |t|
      t.string :codigo
      t.string :marca
      t.integer :precio
      t.string :modelo
      t.string :color
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
