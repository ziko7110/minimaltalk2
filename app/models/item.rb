class Item < ApplicationRecord
  validates :title, :text, presence: true
end
