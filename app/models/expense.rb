class Expense < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :group_expenses
  has_many :groups, through: :group_expenses
end
