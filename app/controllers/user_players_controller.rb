class UserPlayersController < ApplicationController

	def new
		@user_player = UserPlayer.new
		@players = Player.all
	end

	def create
		@user_player = current_user.user_teams.user_players.new(user_player_params)
		if @user_player.save
			flash[:success] = "Player Added To Team"
			redirct_to @user_team
		else
			render 'new'
		end
	end


	private

		def user_player_params
			params.require(:user_player).permit(:name, :team, :role)
		end

end
