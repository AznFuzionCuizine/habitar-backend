class HabitsController < ApplicationController

  def index
    habits = Habit.where(user_id: params[:user_id]).limit(nil)
    render json: habits
  end

  def show
    habit = Habit.find_by(id: params[:id])
    render json: habit
  end

end
