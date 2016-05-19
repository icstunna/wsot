class PositionsController < ApplicationController
  def index
    @positions = Position.all
  end

  def new
    find_models
    @position = Position.new
  end

  def create
    find_models
    @position = Position.new(position_params)
    @position.portfolio = @portfolio
    @position.save
    redirect_to portfolio_url(params[:portfolio_id])
  end

  private

  def find_models
    @portfolio = Portfolio.find(params[:portfolio_id])
  end

  def position_params
    params.require(:position).permit(:short, :open_price, :close_price, :current_price, :quantity, :stock_id)
  end
end
