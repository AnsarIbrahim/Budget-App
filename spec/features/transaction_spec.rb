require 'rails_helper'

RSpec.describe 'Transactions', type: :feature do
  before(:each) do
    DatabaseCleaner.clean
  end

  before(:each) do
    user = FactoryBot.create(:user)
    login_as(user, scope: :user)
  end

  describe 'index action' do
    it 'displays the transactions for a category' do
      category = FactoryBot.create(:group, user: User.last, name: 'Test Category')
      transaction = FactoryBot.create(:expense, name: 'Test Expense', author: User.last, amount: 100)
      category.expenses << transaction

      visit category_transactions_path(category)

      expect(page).to have_content('Most recent')
      expect(page).to have_content('Most ancient')
      expect(page).to have_content('Gift credit')
      expect(page).to have_content('Test Category')
      expect(page).to have_content('Total Amount: $100.00')
      expect(page).to have_content('Test Expense')
      expect(page).to have_content(transaction.created_at.strftime('%d %b %Y'))
      expect(page).to have_content('$100.00')
      expect(page).to have_link('Add a new transaction', href: new_category_transaction_path(category))
      expect(page).to have_link('Go back to Category', href: categories_path)
    end
  end

  describe 'new action' do
    it 'allows a user to create a new transaction' do
      category = FactoryBot.create(:group, user: User.last, name: 'Test Category')
      visit new_category_transaction_path(category)

      expect(page).to have_content('New Transaction')
      fill_in 'Name', with: 'New Transaction'
      fill_in 'Amount', with: 50
      select 'Test Category', from: 'Category'
      click_button 'Save Transaction'

      expect(page).to have_content('New Transaction')
    end
  end
end
