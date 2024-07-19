class Player < ApplicationRecord
  belongs_to :team

  validates :name, presence: :true
  validates :age, presence: :true, type: :integer
  validates :position, presence: :true,type: :text
  validates :team, presence: :true
  validates :role, presence: :true
  validates :is_captain, presence: :true,type: :boolean
  validates :is_active, presence: :true, type: :boolean
  validates :description, type: :text
end
