class BoxesController < ApplicationController
  def index
  end

  def new
  end

  def create
    render plain: params[:box].inspect
  def show
    @box = Box.find(params[:id])
  end
end
