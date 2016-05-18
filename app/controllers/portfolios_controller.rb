class PortfoliosController < ApplicationController
  before_action :authenticate_user!

  def index
    @portfolios = Portfolio.all
  end

  def new
  end

  def create
    p params[:portfolio]
  end

  def edit
  end

  def destroy
  end
end
