class Player < ActiveRecord::Base
	validates :name, presence: true
	validates :team, presence: true
	validates :role, presence: true, inclusion: { in: %w(Top Jungle Mid ADC Support) }
end
