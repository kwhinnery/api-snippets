# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

# Get your Account Sid and Auth Token from https://www.twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
workspace_sid = 'WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
taskqueue_sid = 'WQXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'

capability = Twilio::JWT::TaskQueueCapability.new(account_sid, auth_token,
                                                  workspace_sid, taskqueue_sid)
capability.allow_fetch_subresources
capability.allow_updates

token = capability.generate_token

# By default, tokens are good for one hour.
# Override this default timeout by specifiying a new value (in seconds).
# For example, to generate a token good for 8 hours:
token = capability.generate_token(28800) # 60 * 60 * 8

puts token
