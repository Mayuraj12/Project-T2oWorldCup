class RemoveColumnfromMatches < ActiveRecord::Migration[7.1]
  def change
    remove_column :matches, :team1_id, :integer
    remove_column :matches, :team2_id, :integer
    remove_column :matches, :score_team1, :integer
    remove_column :matches, :score_team2, :integer
  end
end
