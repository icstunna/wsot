class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :ticker
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :short, default: false

      t.timestamps null: false
    end
  end
end
