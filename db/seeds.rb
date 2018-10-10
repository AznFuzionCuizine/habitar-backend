
# Create 3 test users

user1 = User.create(email:'jerome@email.com', password:'jeromerrr')
user2 = User.create(email:'christian@boss.com', password:'theboss')
# Create test habits

Habit.create(user_id: user1.id, habit_name: 'Being Chill', child: 'Daquan', streak_count: 1, habitar: 2, reward: 'Ice cream', completed: false, habit_description: 'Do not cry for 2 hours in a row', reminder_time: '08:30:00', phone:0, opt_in:false)

Habit.create(user_id: user1.id, habit_name: 'Kicking butt', child: 'Daquan', streak_count: 0, habitar: 1, reward: 'a unicorn', completed: false, habit_description: 'finishing habitar project', reminder_time: '17:30:00', phone:0, opt_in:false)

Habit.create(user_id: user2.id, habit_name: 'Kicking butt', child: 'Daquan', streak_count: 3, habitar: 1, reward: 'a unicorn', completed: false, habit_description: 'finishing habitar project', reminder_time: '17:30:00', phone:0, opt_in:false)
