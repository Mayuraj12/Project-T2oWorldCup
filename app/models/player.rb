class Player < ApplicationRecord
  belongs_to :team

  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :position, presence: true
  validates :team_id, presence: true
  validates :role, presence: true, inclusion: { in: ['allrounder', 'bowler', 'batsman'] }
  validates :is_captain, inclusion: { in: [true, false] }
  validates :is_active, inclusion: { in: [true, false] }
end