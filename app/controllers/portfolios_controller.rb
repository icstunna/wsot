class PortfoliosController < ApplicationController
  before_action :authenticate_user!

  def index
    @portfolios = Portfolio.all
  end

  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    Portfolio.create(portfolio_params)
    redirect_to :portfolios
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy
    redirect_to :portfolios
  end

  private

  def portfolio_params #scary internet people
    params.require(:portfolio).permit(:title, :cash)
  end
end
