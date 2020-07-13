class MapController < ApplicationController
  def index
    @polygons = Polygon.all
  end
end
