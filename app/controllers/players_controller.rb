class PlayersController < ApplicationController

	def new
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)
		if @player.save
			flash[:success] = "Player Added"
			redirect_to @player
		else
			render 'new'
		end
	end

	def show
		@player = Player.find(params[:id])
	end

	def index
		@players = Player.all
	end

	def destroy
		@player = Player.find(params[:id])
		@player.destroy
		redirect_to players_path
	end
	

	private

		def player_params
			params.require(:player).permit(:name, :team, :role)
		end

end
