class CreateUserPlayers < ActiveRecord::Migration
  def change
    create_table :user_players do |t|
      t.string :name
      t.string :team
      t.string :role

      t.timestamps
    end
  end
end
