require 'httparty'
require 'pp'

class Markit
  include HTTParty
  base_uri 'http://dev.markitondemand.com/Api/v2/Quote'\

  def self.for(term)
    get("", query: {symbol: term})
  end
end

pp Markit.for('NFLX')