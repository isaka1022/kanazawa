class Spot < ActiveRecord::Base
  has_attached_file :picture, styles: {medium: "300x300#", thunm:"100x100#"}
  validates_attachment_content_type :picture, content_type: ["image/jpg", "image/jpeg", "image/png"]
end
