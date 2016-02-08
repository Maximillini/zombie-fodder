class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :state
      t.text :bookmark
      t.references :game_master

      t.timestamps null: false
    end
  end
end
