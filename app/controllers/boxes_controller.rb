class BoxesController < ApplicationController
  def index
  end

  def new
  end

  def create
    render plain: params[:box].inspect
  end
end
