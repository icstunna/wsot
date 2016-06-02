class PortfoliosController < ApplicationController
  before_action :authenticate_user!

  def index
    # Markit.new('TSLA')
    @portfolios = Portfolio.all
  end

  def show
    find_models
    @positions = Position.where(portfolio_id: params[:id])
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    Portfolio.create(portfolio_params)
    redirect_to portfolios_url
  end

  def destroy
    find_models
    @portfolio.destroy
    redirect_to portfolios_url
  end

  private

  def portfolio_params #scary internet people
    params.require(:portfolio).permit(:title, :cash)
  end

  def find_models
    @portfolio = Portfolio.find(params[:id])
  end
end
