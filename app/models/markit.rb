require 'httparty'
require 'pp'

class Markit
  include HTTParty
  base_uri 'http://dev.markitondemand.com/Api/v2/Quote'

  def initialize(term)
    @options = { query: {symbol: term}}
  end

  def quote
    self.class.get("", @options)
  end
end