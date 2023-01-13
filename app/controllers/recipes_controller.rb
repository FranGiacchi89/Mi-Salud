class RecipesController < ApplicationController
  before_action :find_recipe, only: %i[show edit destroy]
  def index
    @recipes = current_user.recipes
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to recipe_path
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @recipe.destroy
    redirect_to recipe_path, status: :see_other
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:report).permit(:date, :doctor_name)
  end
end
