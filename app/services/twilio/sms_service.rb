module Twilio
  class SmsService
    TWILIO_ACCOUNT_SID = ENV['TWILIO_ACCOUNT_SID']
    TWILIO_AUTH_TOKEN = ENV['TWILIO_AUTH_TOKEN']

    def initialize

    end

    def call
      client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)

      from = ENV['TWILIO_FROM_NUMBER']
      to = ENV['MY_MOBILE_NUMBER']
      
      client.messages.create(
      from: from,
      to: to,
      body: "Hey friend!"
      )
    end
  end
end
