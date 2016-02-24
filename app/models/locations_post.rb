class LocationsPost < ActiveRecord::Base
  belongs_to :location
  belongs_to :post
end
