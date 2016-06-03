class Position < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :stock

  def value
    quantity * open_price
  end

  def current_value
    quantity * stock.current_price
  end

  def profit_loss
    short ? -(current_value - value) : current_value - value
  end
end
