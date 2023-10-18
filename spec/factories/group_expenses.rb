FactoryBot.define do
  factory :group_expense do
    association :group, factory: :group
    association :expense, factory: :expense
  end
end
