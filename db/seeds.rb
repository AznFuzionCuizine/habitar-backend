
# Create 3 test users

user1 = User.create(email:'jerome@email.com', password:'jeromerrr')

# Create test habits

Habit.create(user_id: user1.id, habit_name: 'Being Chill', child: 'Daquan', streak_count: 3, habitar: 3, reward: 'Ice cream', completed: false, habit_description: 'Do not cry for 2 hours in a row', reminder_time: '08:30:00')

Habit.create(user_id: user1.id, habit_name: 'Kicking butt', child: 'Daquan', streak_count: 3, habitar: 7, reward: 'a unicorn', completed: true, habit_description: 'finishing habitar project', reminder_time: '08:30:00')
