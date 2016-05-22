class RemoveCurrentPriceAndValueFromPosition < ActiveRecord::Migration
  def change
    remove_column :positions, :current_price
    remove_column :positions, :value
  end
end
