class Location < ActiveRecord::Base
  has_and_belongs_to_many :posts

  def to_s
    "Continent: #{self.continent} / Region: #{self.region}"
  end
end
