module Api
  class CoordinatesController < ApplicationController
    skip_before_filter :authenticate

  def insert
    #/insertar?lat=33299869&lon=70989&idbici=30&estado=inside&h=700
    @coordinate = Coordinate.create!(latitude: params[:lat],longitude: params[:lon], elevation: params[:h],state: params[:estado],bike: params[:idbici])
    render json: [@coordinate.latitude,@coordinate.longitude, @coordinate.elevation, @coordinate.state]
  end

  def actual
    @coordinate = Coordinate.last
    render json: [@coordinate.latitude,@coordinate.longitude, @coordinate.elevation, @coordinate.state]
  end

  def polygons
    @polygon = Polygon.last
    render json: @polygon.coordinates
  end
end
end