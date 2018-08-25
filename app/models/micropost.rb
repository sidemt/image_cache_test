class Micropost < ApplicationRecord
  default_scope -> { order(id: :asc) }
  validates :content, presence: true, length: { maximum: 140 }
end
