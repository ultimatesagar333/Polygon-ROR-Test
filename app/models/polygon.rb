class Polygon
  include Mongoid::Document
  include Mongoid::Timestamps
  field :coordinates, type: String
  field :type, type: String
end
