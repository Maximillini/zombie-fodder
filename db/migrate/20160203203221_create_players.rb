class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :dexterity
      t.integer :vitality
      t.integer :logic
      t.integer :willpower
      t.integer :charisma
      t.integer :empathy
      t.integer :phys_stress
      t.integer :ment_stress
      t.integer :soc_stress
      
    end
  end
end
