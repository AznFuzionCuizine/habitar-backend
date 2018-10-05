require 'rails_helper'

describe "Habits API" do
  before(:all) do
    load "#{Rails.root}/db/seeds.rb"
  end
  it "gets a list of all the Habits" do
    get '/users/1/habits'
    expect(response).to be_successful
  end
  it "gets the right number of habits" do
    get '/users/1/habits'
    json=JSON.parse(response.body)
    expect(json.length).to eq 2
  end
  it "can create a new habit" do
      testparams= {"habit":{"user_id":"1","habit_name":"something habit","child":"something child","streak_count":0,"habitar":0,"reward":"something cool","completed":false,"habit_description":"something something","reminder_time":"2000-01-01T08:30:00.000Z"}}

      get '/users/1/habits'
      json=JSON.parse(response.body)
      expect(json.length).to eq 2
      post '/users/1/habits', :params =>testparams
      get '/users/1/habits'
      json=JSON.parse(response.body)
      expect(json.length).to eq 3
  end
end
