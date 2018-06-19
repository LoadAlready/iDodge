class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :op_stats_link
      t.integer :team_id

      t.timestamps
    end
  end
end
