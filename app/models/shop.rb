class Shop < ApplicationRecord
  extend FriendlyId
  friendly_id :itemname, use: :slugged

  has_attached_file :itempicture, default_url: "/images/:style/missing.png"

  #validates_attachment_content_type :postpicture, content_type: /\Aimage\/.*\Z/
  validates_attachment :itempicture, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
