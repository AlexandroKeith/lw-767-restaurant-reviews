class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :rating, presence: true
  validates :rating, inclusion: { in: (1..5) }
end
