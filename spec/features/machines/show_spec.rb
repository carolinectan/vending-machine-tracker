require 'rails_helper'

RSpec.describe 'machines show page' do
  before :each do
    @owner = Owner.create!(name: 'John')

    @machine = @owner.machines.create!(location: 'Perimeter Mall')

    @snack1 = Snack.create!(name: 'Snickers', price: 1.00)
    @snack2 = Snack.create!(name: 'Poptart', price: 2.50)
    @snack3 = Snack.create!(name: 'Honey Bun', price: 1.75)

    @vending_machine1 = @machine.snacks << @snack1
    @vending_machine2 = @machine.snacks << @snack2
    @vending_machine3 = @machine.snacks << @snack3
  end

  it 'can list all of the snacks associated with a vending machine and their price' do
    visit "/machines/#{@machine.id}"

    expect(page).to have_content(@snack1.name)
    expect(page).to have_content(@snack1.price)
    expect(page).to have_content(@snack2.name)
    expect(page).to have_content(@snack2.price)
    expect(page).to have_content(@snack3.name)
    expect(page).to have_content(@snack3.price)
  end
end
