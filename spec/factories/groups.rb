FactoryBot.define do
  factory :group do
    name { 'Sample Group' }
    icon { '<i class="fas fa-users"></i>' }
    association :user, factory: :user
  end
end
