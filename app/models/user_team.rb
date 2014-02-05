class UserTeam < ActiveRecord::Base
	#attr_accessible :name
	belongs_to :user
	has_many :user_players
	validates :name, presence: true
end
