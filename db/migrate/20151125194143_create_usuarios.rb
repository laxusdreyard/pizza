class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido1
      t.date :edad
      t.integer :telefono
      t.string :direccion

      t.timestamps null: false
    end
  end
end
