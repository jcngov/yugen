class Post < ActiveRecord::Base
  belongs_to :user
  has_many :images, dependent: :destroy
  has_and_belongs_to_many :locations
end
