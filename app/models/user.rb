class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, length: { minimum: 6 }

end
