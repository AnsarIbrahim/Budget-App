require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = build(:user)
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user = build(:user, name: nil)
    expect(user).to_not be_valid
  end

  it ' is valid with valid email' do
    user = build(:user, email: 'john@example.com')
    expect(user).to be_valid
  end

  it 'is not valid without an email' do
    user = build(:user, email: nil)
    expect(user).to_not be_valid
  end

  it 'is valid with a password longer than 6 characters' do
    user = build(:user, password: 'password123')
    expect(user).to be_valid
  end

  it 'is not valid without a password' do
    user = build(:user, password: nil)
    expect(user).to_not be_valid
  end

  it 'is valid with a password confirmation' do
    user = build(:user, password: 'password123', password_confirmation: 'password123')
    expect(user).to be_valid
  end

  it 'is not valid with a password shorter than 6 characters' do
    user = build(:user, password: 'pass', password_confirmation: 'pass')
    expect(user).to_not be_valid
  end
end
