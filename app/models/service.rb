class Service < ApplicationRecord
  extend FriendlyId
  friendly_id :servicename, use: :slugged

  has_attached_file :servicepicture, default_url: "/images/:style/missing.png"

  #validates_attachment_content_type :postpicture, content_type: /\Aimage\/.*\Z/
  validates_attachment :servicepicture, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
