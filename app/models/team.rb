class Team < ApplicationRecord
  has_many :players
  has_many :matches

  scope :country, ->{where(country: true)}
  scope :foundation, ->{where(foundation: true)}
  
  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
  validates :founded, presence: true, numericality: { greater_than: 1901 }
end