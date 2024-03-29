class BoxesController < ApplicationController
  def index
    @boxes = Box.all
  end

  def new
    @box = Box.new
  end

  def create
    @box = Box.new(box_params)

    @box.save
    redirect_to @box
  end

  def show
    @box = Box.find(params[:id])
  end

  def edit
    @box = Box.find(params[:id])
  end

  def update
    @box = Box.find(params[:id])

    if @box.update(box_params)
      redirect_to @box
    else
      render 'edit'
    end
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
