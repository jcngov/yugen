class Location < ActiveRecord::Base
  has_and_belongs_to_many :posts

  def to_s
    " #{self.city}, #{self.country} | #{self.continent}"
  end

end
