class Ingredient < ApplicationRecord
  has_many :doses, dependent: :destroy

  has_many :recettes, through: :doses
  validates :name, presence: true, uniqueness: true
end
