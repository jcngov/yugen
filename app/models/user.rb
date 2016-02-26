class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :password, length: { minimum: 6 }

  has_attached_file :profilepicture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :profilepicture, content_type: /\Aimage\/.*\Z/

end
