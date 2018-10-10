class AddPhoneToHabits < ActiveRecord::Migration[5.2]
  def change
    add_column :habits, :phone, :integer
    add_column :habits, :opt_in, :boolean
  end
end
