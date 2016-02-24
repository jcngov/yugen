class Image < ActiveRecord::Base
  belongs_to :post

  has_attached_file :postpicture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :postpicture, content_type: /\Aimage\/.*\Z/
end
