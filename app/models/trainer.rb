class Trainer < ApplicationRecord

  extend FriendlyId
  friendly_id :trainername, use: :slugged

  has_attached_file :trainerpicture, default_url: "/images/:style/missing.png"

  #validates_attachment_content_type :postpicture, content_type: /\Aimage\/.*\Z/
  validates_attachment :trainerpicture, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
