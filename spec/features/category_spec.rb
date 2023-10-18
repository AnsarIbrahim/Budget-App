require 'rails_helper'

RSpec.describe 'Categories', type: :feature do
  before(:each) do
    DatabaseCleaner.clean
  end

  before(:each) do
    user = FactoryBot.create(:user)
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'password123'
    click_button 'Log in'
    sleep(1)
  end

  it 'displays the list of categories on the index page' do
    group = FactoryBot.create(:group, name: 'Test Category', user: User.last)
    visit categories_path
    expect(page).to have_content('Most recent')
    expect(page).to have_content('Most ancient')
    expect(page).to have_content('Gift credit')
    expect(page).to have_content(group.name)
  end

  it 'allows a user to create a new category' do
    visit new_category_path
    fill_in 'Name', with: 'New Category'
    select 'Food', from: 'Icon'
    click_button 'Save'
    sleep(1)
    expect(page).to have_content('Most recent')
    expect(page).to have_content('Most ancient')
    expect(page).to have_content('Gift credit')
  end

  it 'allows a user to go back to the index page' do
    visit new_category_path
    click_link 'Back'
    expect(page).to have_current_path(categories_path)
  end
end
