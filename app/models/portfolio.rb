class Portfolio < ActiveRecord::Base
  has_many :positions
  has_many :stocks, :through => :positions
end
