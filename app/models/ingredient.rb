class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniqueness: true, presence: true

end

# An ingredient must have a name, and names should be unique
# An ingredient has many doses
# You can't delete an ingredient if it used by at least one cocktail.

