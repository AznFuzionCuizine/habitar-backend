# Habitar
Hatching good habits. Create habits and track them, and if you keep it up, you may even get a reward.

This is the backend API for our decoupled app, to view it in action, [try it](http://habitar-backend.herokuapp.com) on Heroku

For the front end, visit [Habitar-Frontend](https://github.com/habitar/habitar-frontend)

Written with Ruby on Rails, using devise for authentication and twilio for SMS notifications

## Installation
### Prerequisites
* Ruby version: **2.5.1**
* Rails version: **5.2.1**

# Installation
Make sure you have the correct version of Ruby (2.5.1)
```
ruby -v
```
If you need to update, use a ruby version management solution to install the correct version (example given for rvm, rbenv is fairly similar)
```
rvm install 2.5.1
rvm use 2.5.1
```
Install the latest version of Bundler
```
gem install bundler
```
Use bundler to install the rest of the dependencies
```
bundle install
```
Set up the Database
```
rails db:create
rails db:migrate
```
Start the server
```
rails s
```

# Usage
## API endpoints
### User requests
All user requests are made in the JSON format:
```
{
  "user":{
    "email":"<username>",
    "password":"<password>"
  }
}
```
* User registration:
POST to `<hostname>/users/`
* User login
POST to `/users/sign_in`
## Habit endpoints
* Fetch all habits (for the specified user)
GET to `<hostname>/users/:user_id/habits`
* Fetch a single habit
GET to `<hostname>/users/:user_id/habits/:habit_id`
Create and Edit Habit requests should be made in the format:
```
{"habit":
  {"user_id": "user_id (int)",
  "habit_name": "habit name (string)",
  "child": "child name (string)",
  "streak_count": "0 (int)",
  "habitar": "habitar (int)",
  "reward": "reward (string)",
  "power_reward": "power reward (string)"
  "completed": "false (boolean)",
  "power_streak": "false (boolean)"
  "habit_description": "habit description(string)",
  "opt_in": "opt_in (boolean)",
  "phone":"phone number (9 digit int)"
  "reminder_time": "time (UTC time)"
  }
}
```
* Create Habits
POST to `<hostname>/users/:user_id/habits`
* Edit Habit
PATCH to `<hostname>/users/:user_id/habits/:habit_id`
* Remove Habit
DELETE to `<hostname>/users/:user_id/habits/:habit_id`
# habitar-backend
