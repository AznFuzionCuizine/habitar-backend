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

  def text
    puts ENV['SID']
    puts ENV['AUTH_TOKEN']

    message = "Hello! Newest test from Twilio" 
    phone = "+19492912504"

    # params that will be passed is habit id
    # user param to find user by user_id (Habit.find(user_id))
    # message = "You have created a new habit: #{Habit.last}. We'll send you reminders at #{Habit.last.reminder_time}"

    TwilioTextMessenger.new(message, phone).call
  end

  private
  def text_message_params
   params.require(:text).permit(:message)
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
