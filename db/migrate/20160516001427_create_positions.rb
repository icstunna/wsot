class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.boolean :short, default: false
      t.boolean :open, default: true
      t.integer :open_price, null: false
      t.integer :close_price
      t.integer :current_price
      t.integer :quantity
      t.integer :value
      t.belongs_to :portfolio, index: true
      t.belongs_to :stock, index: true

      t.timestamps null: false
    end
  end
end
