require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:valid_attributes) {
  	{
  		name: "Valid Game",
  		description: "This is a valid game",
  		city: "Chicago",
  		state: "Illinois",

  	}
  }
  context "validations" do
  	let(:game) { Game.new(valid_attributes) }
  	it "requires a description" do
  	  expect(game).to validate_presence_of(:description)
  	end
  end
end
