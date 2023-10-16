class Group < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true

  belongs_to :user
  has_many :group_expenses
  has_many :expenses, through: :group_expenses
end
