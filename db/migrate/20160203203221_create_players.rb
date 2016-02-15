class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :dexterity, default: 1
      t.integer :vitality, default: 1
      t.integer :logic, default: 1
      t.integer :willpower, default: 1
      t.integer :charisma, default: 1
      t.integer :empathy, default: 1
      t.integer :phys_stress, default: 0
      t.integer :ment_stress, default: 0
      t.integer :soc_stress, default: 0
      t.string :pos_features
      t.string :neg_features
      t.string :equipment
      t.references :game
      
      t.timestamps null: false
    end
  end
end
