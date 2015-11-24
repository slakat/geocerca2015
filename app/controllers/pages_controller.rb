class PagesController < ApplicationController

  def home

  end

  def geocerca
    @polygons = Polygon.new
  end

  def coordinates
    @items = Coordinate.all
  end

  def polygons

    @polygons = Polygon.new(polygons_params)
    respond_to do |format|
      if @polygons.save
        @result = true
        format.js
      else
        @result = false
        format.js
      end
    end
  end

  def polygons_params
    params.require(:polygon).permit(:coordinates)
  end
end
