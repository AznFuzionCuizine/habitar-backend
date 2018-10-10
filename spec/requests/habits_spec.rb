require 'rails_helper'

describe "Habits API" do
  before(:all) do
    load "#{Rails.root}/db/seeds.rb"
  end

  # Tests the #index method of the habits controller
  it "gets a list of all the Habits" do
    get '/users/1/habits'
    expect(response).to be_successful
  end

  it "gets the right number of habits" do
    get '/users/1/habits'
    json = JSON.parse(response.body)
    expect(json.length).to eq 2
  end
  it "can get a single habit"do
      get '/users/1/habits/1'
      json=JSON.parse(response.body)
      # puts json
      expect(json["child"]).to eq "Daquan"
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
  it "can edit a habit" do
      testparams= {"habit":{"user_id":"1","habit_name":"something habit","child":"something child","streak_count":0,"habitar":0,"reward":"something cool","completed":false,"habit_description":"something something","reminder_time":"2000-01-01T08:30:00.000Z"}}

      get '/users/1/habits/1'
      json=JSON.parse(response.body)
      expect(json["child"]).to eq "Daquan"
      patch '/users/1/habits/1', :params =>testparams
      get '/users/1/habits/1'
      json=JSON.parse(response.body)
      expect(json["child"]).to eq "something child"
  end
  it "can delete a habit" do
      get '/users/1/habits'
      json=JSON.parse(response.body)
      expect(json.length).to eq 2
      delete '/users/1/habits/1'
      get '/users/1/habits'
      json=JSON.parse(response.body)
      expect(json.length).to eq 1
  end
end
