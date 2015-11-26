class CreateIngredientes < ActiveRecord::Migration
  def change
    create_table :ingredientes do |t|
      t.string :nombre
      t.integer :valor
      t.references :pizza1, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
