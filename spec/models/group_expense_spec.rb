require 'rails_helper'

RSpec.describe GroupExpense, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      group_expense = build(:group_expense)
      expect(group_expense).to be_valid
    end

    it 'is not valid without a group' do
      group_expense = build(:group_expense, group: nil)
      expect(group_expense).to_not be_valid
    end

    it 'is not valid without an expense' do
      group_expense = build(:group_expense, expense: nil)
      expect(group_expense).to_not be_valid
    end
  end

  describe 'associations' do
    it 'belongs to a group' do
      association = described_class.reflect_on_association(:group)
      expect(association.macro).to eq(:belongs_to)
    end

    it 'belongs to an expense' do
      association = described_class.reflect_on_association(:expense)
      expect(association.macro).to eq(:belongs_to)
    end
  end
end
