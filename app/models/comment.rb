class Comment < ApplicationRecord
  validates :comment,:comment_nickname,  presence: true
  belongs_to :item
end
