 module ApplicationHelper
  def hi5(phone, name, message)
    account_sid = ENV["TWILIO_API_ID"]
    auth_token = ENV["TWILIO_API_KEY"]
    client = Twilio::REST::Client.new account_sid, auth_token

    from = ENV["TWILIO_PHONE_NUMBER"] # Your Twilio number

    friends = {
    phone => "#{name}",
    }
    friends.each do |key, value|
      client.account.messages.create(
      :from => from,
      :to => key,
      :body => "#{name} has just sent you a Hi 5ive for " + "#{message}"
      )
      puts "Sent message to #{name}"
    end
  end
end
