# require 'csv'
class Match < ApplicationRecord
  has_many :players, inverse_of: :match, dependent: :destroy
  accepts_nested_attributes_for :players, allow_destroy: true
  has_many :teams
  
  
  before_save :date_cannot_be_in_the_past
  after_commit :match_creation

  scope :upcoming, -> { where('date >= ?', Date.today) }
  scope :date, ->{where(date: true)}

  validates :date, presence: true, numericality: { greater_than: 2000 }
  validates :location, presence: true
  validates :home_team_id, presence: true, uniqueness: :true
  validates :away_team_id, presence: true, uniqueness: :true

  def date_cannot_be_in_the_past
    errors.add(:date, "can't be in the past") if date.present? && date < Date.today
  end


  def match_creation
    Rails.logger.info "Match is created!"
  end
  # def self.import_from_csv(file_path)
  #   CSV.foreach(file_path, headers: true) do |row|
  #     Match.create!(
  #       date: row['date'],
  #       location: row['location'],
  #       team1_id: row['team1_id'],
  #       team2_id: row['team2_id'],
  #       score_team1: row['score_team1'],
  #       score_team2: row['score_team2']
  #     )
  #   end
  # rescue StandardError => e
  #   Rails.logger.error "Failed to import CSV: #{e.message}"
  # end

  
    
end
