class Dose < ApplicationRecord
  belongs_to :cocktail, dependent: :destroy
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
end

# A dose must have a description, a cocktail and an ingredient,
# and [cocktail, ingredient] couples should be unique.

# A dose belongs to an ingredient
# A dose belongs to a cocktail
# When you delete a cocktail,
# you should delete associated doses (but not the ingredients as they can be linked to other cocktails).

 # validates_associated
