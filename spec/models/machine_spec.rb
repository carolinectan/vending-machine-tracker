require 'rails_helper'

RSpec.describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
  end

  describe 'relationships' do
    it { should belong_to :owner }

    it { should have_many(:vending_machines) }
    it { should have_many(:snacks).through(:vending_machines) }
  end
end
