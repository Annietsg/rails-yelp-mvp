
class Restaurant < ApplicationRecord

  #  Association
  has_many  :reviews, dependent: :destroy

  # Validation
  validates :address, presence: {message: "Il manque une adresse"}
  validates :name, uniqueness: true, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
end


end
