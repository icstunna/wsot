class Stock < ActiveRecord::Base
  has_many :positions, dependent: :destroy
  has_many :portfolios, :through => :positions

  def current_price
    previous_day = DateTime.now - 1
    if updated_at > previous_day
      return price
    else
      new_price = Markit.new(self.ticker_symbol).quote['StockQuote']['LastPrice'].to_i
      self.price = new_price
      self.save
      return price
    end
  end
end
