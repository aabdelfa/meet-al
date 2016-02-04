class Upload < ActiveRecord::Base
  scope :sorted, -> { order(created_at: :desc) }

  has_attached_file :image, styles: { large: "500x500>", medium: "300x300>", thumb: "101x101#" }
  
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
