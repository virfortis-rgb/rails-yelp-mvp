class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: categories, allow_nil: false }
end
