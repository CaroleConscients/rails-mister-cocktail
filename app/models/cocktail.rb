class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
end

# A cocktail must have a name, and names should be unique
# A cocktail has many doses
# A cocktail has many ingredients through doses
