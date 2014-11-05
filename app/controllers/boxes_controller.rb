class BoxesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @box = Box.new(box_params)

    @box.save
    redirect_to @box
  end

  def show
    @box = Box.find(params[:id])
  end

  private
    def box_params
      params.require(:box).permit(:title1,
                                  :url1,
                                  :title2,
                                  :url2,
                                  :title3,
                                  :url3)
    end
end
