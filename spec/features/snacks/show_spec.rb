require 'rails_helper'

RSpec.describe '' do
  before :each do
    @snack1 = Snack.create!(name: 'Snickers', price: 1.00)
    @snack2 = Snack.create!(name: 'Poptart', price: 3.00)
    @snack3 = Snack.create!(name: 'Honey Bun', price: 1.00)
  end

  it 'can list the name and price of a snack' do
    visit "/snacks/#{@snack1.id}"

    expect(page).to have_content(@snack1.name)
    expect(page).to have_content(@snack1.price)
  end

  it 'can list locations with vending machines that carry that snack'
  it 'can display the average price for snacks in those vending machines'
  it 'can display a count of the different kinds of items in that vending machine'
end
