require 'rails_helper'

RSpec.describe Group, type: :model do
  it 'is valid with valid attributes' do
    group = build(:group)
    expect(group).to be_valid
  end

  it 'is not valid without a name' do
    group = build(:group, name: nil)
    expect(group).to_not be_valid
  end

  it 'is not vaild without an icon' do
    group = build(:group, icon: nil)
    expect(group).to_not be_valid
  end

  it 'is valid with a unique name' do
    create(:group, name: 'Sample Group')
    new_group = build(:group, name: 'Unique Group')
    expect(new_group).to be_valid
  end
end
