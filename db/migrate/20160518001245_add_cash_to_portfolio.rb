class AddCashToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :cash, :integer
  end
end
