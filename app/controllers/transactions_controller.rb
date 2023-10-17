class TransactionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category, only: %i[index new]

  def index
    @transactions = @category.expenses.where(author: current_user)
    @total_amount = calculate_total_amount(@transactions)
  end

  def new
    @transaction = @category.expenses.new
  end

  def create
    @transaction = Expense.new(transaction_params)
    @transaction.author_id = current_user.id
    @category = Group.find(params[:expense][:category_id]) # Retrieve the category based on the form input
    @transaction.groups << @category # Assign the category to the transaction

    if @transaction.save
      redirect_to category_transactions_path(@category)
    else
      render :new
    end
  end

  private

  def transaction_params
    params.require(:expense).permit(:name, :amount) # Update to permit category_id
  end

  def calculate_total_amount(transactions)
    transactions.sum(&:amount)
  end

  def set_category
    @category = Group.find(params[:category_id])
  end
end
