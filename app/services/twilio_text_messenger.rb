class TwilioTextMessenger
  attr_accessor :message

  def initialize(message, phone)
    @message = message
    @phone = phone
  end

  def call
    account_sid = ENV['SID']
    auth_token = ENV['AUTH_TOKEN']

    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.messages.create({
      body: @message,
      to: @phone,
      from: "+19495776250"
      })
  end
end
