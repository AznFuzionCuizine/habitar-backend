require 'twilio-ruby'
require 'dotenv'
Dotenv.load('.env')


account_sid = ENV['SID']
auth_token = ENV['AUTH_TOKEN']


# account_sid = "AC8384c630c922df216a1f9f0164ca73f5"
# auth_token = "270b269c8c1e2c9096d3ca842b445b0f"

puts account_sid
puts auth_token


@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.messages.create(
  body: "Hellow from Ruby",
  to: "+19492912504",
  from: "+19495776250"
)

puts message.sid
