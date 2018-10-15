class HabitsController < ApplicationController

  def index
    habits = Habit.where(user_id: params[:user_id]).limit(nil)
    render json: habits
  end

  def show
    habit = Habit.find_by(id: params[:id])
	puts params[:id]
	puts habit
    render json: habit
  end

  def create
    puts habit_params
    habit = Habit.create(habit_params)
    render json: habit
    #
    # if habit.opt_in == true && habit.phone != nil
    #   puts ENV['SID']
    #   puts ENV['AUTH_TOKEN']
    #
    #   message = "Hello from Habitar! You opted in for reminders for your habit. Don't forget to help #{habit.child} with #{habit.habit_name} at #{habit.reminder_time.strftime('%l:%M %p')}."
    #
    #   phone = "+1#{habit.phone}"
    #
    #   TwilioTextMessenger.new(message, phone).call
    #   return message
    end
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
    params.require(:habit).permit(:user_id,:habit_name,:child,:streak_count,:habitar,:reward,:habit_description,:reminder_time,:completed,:phone,:opt_in, :power_streak,:power_reward)
  end

  private
  def text_message_params
    params.require(:text).permit(:message)
  end

end
