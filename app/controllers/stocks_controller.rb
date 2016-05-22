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

  def edit
    find_models
  end

  def update
    find_models
    @stock.update_attributes(stock_params)
    redirect_to stocks_url
  end

  private

  def find_models
    @stock = Stock.find(params[:id])
  end

  def stock_params #scary internet people
    params.require(:stock).permit(:ticker_symbol, :company_name, :price)
  end
end
