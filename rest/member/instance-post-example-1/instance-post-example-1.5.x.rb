# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

# Get your Account Sid and Auth Token from https://www.twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'

# Initialize Twilio Client
@client = Twilio::REST::Client.new(account_sid, auth_token)

@member = @client.account.queues('QU5ef8732a3c49700934481addd5ce1659')
                 .members('Front').fetch
@member.update(
  url: 'http://demo.twilio.com/docs/voice.xml',
  method: 'POST'
)

puts @member.wait_time
