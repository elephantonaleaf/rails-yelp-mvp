class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content
  validates :rating, :content, presence: true, inclusion: { :in [1, 2, 3, 4, 5], allow_nil: false }

end
