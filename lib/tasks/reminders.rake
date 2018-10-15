require 'dotenv'

namespace :reminders do
  desc "send a reminder from specified habit"
  task :send,[:var]=> :environment do |task,args|
    index = args.var.to_i
    puts "running reminder on #{index}"
    habit=Habit.find(index)
    # habits=Habit.where(opt_in:true)
    # habits.each do |habit|
      puts "running reminder at #{habit.reminder_time.strftime('%l:%M %p')}"

      account_sid= "AC8384c630c922df216a1f9f0164ca73f5"
      auth_token = "270b269c8c1e2c9096d3ca842b445b0f"

      client = Twilio::REST::Client.new account_sid, auth_token
      message= client.messages.create({
      body: "Hello from Habitar! You opted in for reminders for your habit. Don't forget to help #{habit.child} with #{habit.habit_name} at #{habit.reminder_time.strftime('%l:%M %p')}.",
      to:"+1#{habit.phone}",
      from:"+19495776250"
      })
      # TwilioTextMessenger.new(message, phone).call
    # end
  end

end
