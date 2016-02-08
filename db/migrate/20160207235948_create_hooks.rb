class CreateHooks < ActiveRecord::Migration
  def change
    create_table :hooks do |t|
      t.text :description
      t.boolean :used
      t.references :game

      t.timestamps null: false
    end
  end
end
