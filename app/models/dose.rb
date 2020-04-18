class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recette

  validates :recette, uniqueness: { scope: :ingredient }
end
