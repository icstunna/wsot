class Portfolio < ActiveRecord::Base
  has_many :positions, dependent: :destroy
  has_many :stocks, :through => :positions
end
