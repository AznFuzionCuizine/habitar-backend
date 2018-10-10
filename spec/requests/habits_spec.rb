require 'rails_helper'

describe "Habits API" do
  before(:all) do
    load "#{Rails.root}/db/seeds.rb"
  end

  # Tests the #index method of the habits controller
  it "gets a list of all the Habits" do
    get '/users/1/habits'
    expect(response).to be_success
  end

  it "gets the right number of habits" do
    get '/users/1/habits'
    json = JSON.parse(response.body)
    expect(json.length).to eq 2
  end

  # Tests the #show method of HabitsController
  it "shows a single habit that belongs to a particular user" do
    get '/users/1/habits/1'
    json = JSON.parse(response.body)
    expect(json['child']).to eq('Daquan')
  end

end
