class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ability

  def set_ability
    @ability = Ability.new(current_user)
  end

  def index
    @categories = Group.where(user_id: current_user.id) || []
  end

  def new
    @category = Group.new
  end

  def create
    @category = Group.new(category_params)
    @category.user_id = current_user.id
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:group).permit(:name, :icon)
  end
end
