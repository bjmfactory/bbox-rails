class LinksController < ApplicationController

def new
end

def create
  @link = Link.new(link_params)

  @link.save
  redirect_to links_path
end


def index
  @links = Link.all
end


private
  def link_params
    params.require(:link).permit(:title, :url)
  end
end
