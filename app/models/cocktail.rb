class Cocktail < ApplicationRecord
  has_many :ingredients, :through => :doses, dependent: :destroy
  has_many :doses
  validates :name, presence: true, uniqueness: true
end
