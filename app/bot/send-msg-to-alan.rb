require "facebook/messenger"
include Facebook::Messenger
require 'json'
Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])


# message.id          # => 'mid.1457764197618:41d102a3e1ae206a38'
# message.sender      # => { 'id' => '1008372609250235' }
# message.sent_at     # => 2016-04-22 21:30:36 +0200
# message.text        # => 'Hello, bot!'



def send_to_alan(message)
  puts "sending message to Alan: :"+ message.to_s
  Bot.deliver({
    recipient: {
      id: '1108018545987778'
    },
    message: {
      text: message.to_s
    }
  }, access_token: ENV['ACCESS_TOKEN'])
end
send_to_alan("first message")
