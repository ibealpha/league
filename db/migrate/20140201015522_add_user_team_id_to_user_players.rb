class AddUserTeamIdToUserPlayers < ActiveRecord::Migration
  def change
  	add_column :user_players, :user_team_id, :integer
  end
end
