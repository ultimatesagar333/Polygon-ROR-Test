class PolygonController < ApplicationController
  def new
  end

  def create
    polygon             = Polygon.new(geometry_params)
    polygon.coordinates = JSON.parse(params[:geometry][:coordinates]).first.to_s
    polygon.save!

    @polygons = Polygon.all

    respond_to do |format|
      format.js
    end
  end

  private

  def geometry_params
    params.require(:geometry).permit(:type)
  end
end
