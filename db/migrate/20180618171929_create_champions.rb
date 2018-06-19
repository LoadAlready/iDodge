class CreateChampions < ActiveRecord::Migration[5.2]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :lol_id
      t.string :lol_title
      t.string :lol_namekey
      t.string :op_url
      t.string :lol_picture_url
      t.string :win_percentage
      t.string :pick_percentage
      t.integer :category_id

      t.timestamps
    end
  end
end
