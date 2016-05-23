class Portfolio < ActiveRecord::Base
  has_many :positions, dependent: :destroy
  has_many :stocks, :through => :positions

  def available_cash
    tradeable_cash = cash
    self.positions.each do |position|
      tradeable_cash = tradeable_cash - position.value
    end
    tradeable_cash
  end
end
