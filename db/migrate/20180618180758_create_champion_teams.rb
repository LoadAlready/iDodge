class CreateChampionTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :champion_teams do |t|
      t.integer :chamion_id
      t.integer :team_id

      t.timestamps
    end
  end
end
