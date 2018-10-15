class AddPowerStreakToHabits < ActiveRecord::Migration[5.2]
  def change
      add_column :habits, :power_streak, :boolean
	  add_column :habits, :power_reward, :text
  end
end
