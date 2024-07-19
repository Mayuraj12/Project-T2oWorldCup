class Team < ApplicationRecord
  has_many :players, foreign_key: "reference_id"

  validates :name, presence: :true, uniqueness: :true 
  validates :country, presence: :true
  validates :founded, presence: :true
end
