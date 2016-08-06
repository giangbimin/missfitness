class Post < ApplicationRecord

  extend FriendlyId
  friendly_id :postname, use: :slugged

  has_attached_file :postpicture, default_url: "/images/:style/missing.png"

  #validates_attachment_content_type :postpicture, content_type: /\Aimage\/.*\Z/
  validates_attachment :postpicture, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end

