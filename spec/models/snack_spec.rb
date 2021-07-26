require 'rails_helper'
RSpec.describe Snack, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
  end

  describe 'relationships' do
    it { should have_many(:snack_machines) }
    it { should have_many(:machines).through(:snack_machines) }
  end

  # before :each do
  # end

  # describe 'class methods' do
  #   describe '.' do
  #   end
  # end
  #
  # describe 'instance methods' do
  #   describe '#' do
  #   end
  # end
end
