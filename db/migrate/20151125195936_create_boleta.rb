class CreateBoleta < ActiveRecord::Migration
  def change
    create_table :boleta do |t|
      t.references :pizza1, index: true, foreign_key: true
      t.references :ingrediente, index: true, foreign_key: true
      t.references :usuario, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
