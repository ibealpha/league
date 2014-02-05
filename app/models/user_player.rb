class UserPlayer < ActiveRecord::Base
	#attr_accessible :name, :team, :role, :user_team_id
	belongs_to :user_team
	validates :name, presence: true
	validates :team, presence: true
	validates :role, presence: true, inclusion: { in: %w(Top Jungle Mid ADC Support) }
end
