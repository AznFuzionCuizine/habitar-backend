class AddColumnsToHabit < ActiveRecord::Migration[5.2]
  def change
    add_column :habits, :habit_name, :text
    add_column :habits, :child, :text
    add_column :habits, :streak_count, :smallint
    add_column :habits, :habitar, :smallint
    add_column :habits, :reward, :text
    add_column :habits, :completed, :boolean
    add_column :habits, :habit_description, :text
    add_column :habits, :reminder_time, :time
  end
end
