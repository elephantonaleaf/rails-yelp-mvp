class Restaurant < ApplicationRecord
    validates :name, uniqueness: true
    validates :address, :name, presence: true
    validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
end
