class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :ticker_symbol
      t.string :company_name
      t.integer :price

      t.timestamps null: false
    end
  end
end
