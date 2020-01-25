class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title, :text, presence: true
end
