class HabitsController < ApplicationController
  def index
    habits = Habit.where(user_id: params[:user_id]).limit(nil)
    render json: habits
  end

  def show
    habit = Habit.find_by(id: params[:id])
    render json: habit
  end

  def create
    habit = Habit.create(habit_params)
    render json: habit
  end

  def update
    habit = Habit.find_by(id: params[:id])
    habit.update(habit_params)
    render json:habit
  end

  def destroy
    habit = Habit.find_by(id: params[:id]).destroy
    render json: habit
  end

  def habit_params
    params.require(:habit).permit(:user_id,:habit_name,:child,:streak_count,:habitar,:reward,:habit_description,:reminder_time,:completed)
  end
end
