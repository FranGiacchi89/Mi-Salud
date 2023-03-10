class RecipesController < ApplicationController
  before_action :find_recipe, only: %i[show edit destroy update]
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
      redirect_to recipes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipes_path
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path, status: :see_other
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:date, :doctor_name, :photo)
  end
end
