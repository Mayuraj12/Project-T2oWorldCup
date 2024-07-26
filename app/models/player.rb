class Player < ApplicationRecord
  belongs_to :team
  belongs_to :match

  before_destroy :player_captain
  after_save :player_count_update
  after_update :not_more_than_one_captain

  default_scope {where(is_active: true)}
  scope :by_role, ->(role) { where(role: role) }

  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :position, presence: true
  validates :team_id, presence: true
  validates :role, presence: true, inclusion: { in: ['allrounder', 'bowler', 'batsman'] }
  validates :is_captain, inclusion: { in: [true, false] }
  validates :is_active, inclusion: { in: [true, false] }
  
  def player_captain
    if self.is_captain? 
      puts "Player can't be deleted!"
    end
  end

  def player_count_update
    
  end
 
  def not_more_than_one_captain
    Rails.logger.info "Team should not have more than one Captain!"
  end
  
end