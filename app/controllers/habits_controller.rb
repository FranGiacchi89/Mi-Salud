class HabitsController < ApplicationController
  def index
    @habits = current_user.habits
  end

  def new
    @habit = Habit.new
  end

  def create
    @habit = Habit.new(habit_params)
    @habit.user = current_user
    if @habit.save
      redirect_to habit_path
    else
      render :new
    end
  end

  def update
    @habit.update(habit_params)
    redirect_to habit_path(@habit)
  end

  private

  def habit_params
    params.require(:report).permit(:habit_type, :quantity, :frequency)
  end
end
