class Item < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title, :text, presence: true
  has_many :comments 

  def self.search(search)
    return Item.all unless search
    Item.where('title LIKE(?)', "%#{search}%")
  end

end
