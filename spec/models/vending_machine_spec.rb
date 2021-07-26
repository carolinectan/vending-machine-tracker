require 'rails_helper'
RSpec.describe VendingMachine, type: :model do
  describe 'relationships' do
    it { should belong_to(:snack) }
    it { should belong_to(:machine) }
    end

  # describe 'validations' do
  #   it { should validate_presence_of(:) }
  # end

  # before :each do
  # end

  # describe 'class methods' do
  #   describe '.' do
  #   end
  # end

  # describe 'instance methods' do
  #   describe '#' do
  #   end
  # end
end
