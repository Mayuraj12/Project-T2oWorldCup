class Team < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
  validates :founded, presence: true, numericality: { greater_than: 1901 }
end