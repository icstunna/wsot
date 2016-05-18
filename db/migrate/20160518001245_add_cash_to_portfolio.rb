class AddCashToPortfolio < ActiveRecord::Migration
  def change
    add_column :cash, :portfolio, :integer
  end
end
