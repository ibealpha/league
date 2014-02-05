class UserTeamsController < ApplicationController

	def new 
		@user_team = UserTeam.new
	end

	def create
		@user_team = current_user.user_teams.new(user_team_params)
		if @user_team.save
			flash[:success] = "New Team Created"
			redirect_to @user_team
		else
			render 'new'
		end
	end

	def index
		#@user_teams = UserTeam.all
		@user_teams = current_user.user_teams
	end

	def show
		@user_team = UserTeam.find(params[:id])
	end

	def destroy
		@user_team = UserTeam.find(params[:id])
		@user_team.destroy
		redirect_to user_teams_path
	end

	private

		def user_team_params
			params.require(:user_team).permit(:name)
		end


end
