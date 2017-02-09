class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient,
    message: "should have once per ingredient" }, presence: true
 end
