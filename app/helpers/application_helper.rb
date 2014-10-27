module ApplicationHelper
  def hi5(phone, name, message)
    account_sid = "ACb4e1f1194a5932c251e20aed391154f0"
    auth_token = "f47f7f675281fcaebf3b9f8f1788b9ac"
    client = Twilio::REST::Client.new account_sid, auth_token

    from = "+16464959475" # Your Twilio number

    friends = {
    phone => "#{name}",
    }
    friends.each do |key, value|
      client.account.messages.create(
      :from => from,
      :to => key,
      :body => "#{message}"
      )
      puts "Sent message to #{name}"
    end
  end
end
