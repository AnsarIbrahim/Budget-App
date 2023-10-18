FactoryBot.define do
  factory :expense do
    name { 'Sample Expense' }
    amount { 100.00 }
    association :author, factory: :user
  end
end
