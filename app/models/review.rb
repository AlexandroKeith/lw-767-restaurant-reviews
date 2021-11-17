class Review < ApplicationRecord
  belongs_to :restaurant

  validates :text, presence: true
end
