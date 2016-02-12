require "faker"

5.times do
  GameMaster.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: Faker::Internet.password)
end

5.times do
    Game.create(name: Faker::Book.title, description: Faker::Hipster.sentence, city: Faker::Address.city, state: Faker::Address.state, game_master: GameMaster.find((rand(4) + 1)))
end

5.times do
  Party.create()
end