class PagesController < ApplicationController
  def home
  end

  def coordinates
    @items = Coordinate.all.limit(40)
  end
end
