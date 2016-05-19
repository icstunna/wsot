class PositionsController < ApplicationController
  def index
    @positions = Position.all
  end

  def new
  end

  def create
  end
end
