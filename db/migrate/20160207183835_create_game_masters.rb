class CreateGameMasters < ActiveRecord::Migration
  def change
    create_table :game_masters do |t|
      t.string :username
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
