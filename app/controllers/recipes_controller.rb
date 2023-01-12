class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
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

  def destroy
    @recipe.destroy
    redirect_to recipe_path, status: :see_other
  end

  private

  def recipe_params
    params.require(:report).permit(:date, :doctor_name)
  end
end
