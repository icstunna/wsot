class Stock < ActiveRecord::Base
  has_many :positions, dependent: :destroy
  has_many :portfolios, :through => :positions
end
