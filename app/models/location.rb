class Location < ActiveRecord::Base
  has_and_belongs_to_many :posts

  def to_s
    "#{self.continent} | #{self.country} | #{self.region} | City: #{self.city}"
  end

end
