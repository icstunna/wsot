class StocksController < ApplicationController

  def index
    @stocks = Stock.all
  end

  def new
    @stock = Stock.new
  end

  def create
    Stock.create(stock_params)
    redirect_to stocks_url
  end

  private

  def stock_params #scary internet people
    params.require(:stock).permit(:ticker_symbol, :company_name, :price)
  end
end
