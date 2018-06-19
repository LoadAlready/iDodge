class CreateChampionProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :champion_properties do |t|
      t.integer :champion_id
      t.integer :attribute_id

      t.timestamps
    end
  end
end
