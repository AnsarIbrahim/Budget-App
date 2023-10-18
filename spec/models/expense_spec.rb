require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      expense = build(:expense)
      expect(expense).to be_valid
    end

    it 'is not valid without a name' do
      expense = build(:expense, name: nil)
      expect(expense).to_not be_valid
    end

    it 'is not valid without an amount' do
      expense = build(:expense, amount: nil)
      expect(expense).to_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs to an author (user)' do
      association = described_class.reflect_on_association(:author)
      expect(association.macro).to eq(:belongs_to)
    end

    it 'can belong to multiple groups' do
      association = described_class.reflect_on_association(:groups)
      expect(association.macro).to eq(:has_many)
    end
  end
end
