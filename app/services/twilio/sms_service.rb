module Twilio
  class SmsService
    TWILIO_ACCOUNT_SID = ENV['TWILIO_ACCOUNT_SID']
    TWILIO_AUTH_TOKEN = ENV['TWILIO_AUTH_TOKEN']

    def initialize(body:, phone_number:)
      @body = body
      @phone_number = phone_number
    end

    def call
      client = Twilio::REST::Client.new(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)
      
      client.messages.create(
      from: ENV['TWILIO_FROM_NUMBER'],
      to: to(@phone_number),
      body: @body
      )
    end

    private

    def to(phone_number)
      return ENV['MY_MOBILE_NUMBER'] if Rails.env.development?
      phone_number
    end
  end
end
