class AddUserIdToUserTeams < ActiveRecord::Migration
	def change
		add_column :user_teams, :user_id, :integer
	end
end
