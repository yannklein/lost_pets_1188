class Pet < ApplicationRecord
  SPECIES = ["dog", "cat", "reptile", "pig", "bird", "hamster"]
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
