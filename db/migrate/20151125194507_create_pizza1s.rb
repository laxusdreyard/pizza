class CreatePizza1s < ActiveRecord::Migration
  def change
    create_table :pizza1s do |t|
      t.string :nombre
      t.string :tamano
      t.integer :precio

      t.timestamps null: false
    end
  end
end
