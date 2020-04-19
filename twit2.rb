
class User
  attr_accessor :username, :password, :tweets
    def initialize(username, password)
    @username = username
    @password = password
    @tweets = []
    end
  def assign_tweet(received)
    @tweets << received
  end
end

@user1 = User.new("MBester", "falafel1")
#user2 = User.new("Tony_Danza01", "whodaboss!")

def send_tweet
  puts "What's happening?"
  return gets()
end

def receive_tweet(tweet)
  File.open("Tweets.json", "a") do |file|
    @user1.tweets << tweet
    file.write(tweet)
  end
end

def view_tweets
  File.open("Tweets.json", "r") do |file|
  puts file.read
  end
end

#----------------------------------------------

puts "Hey " + @user1.username
input = send_tweet()
receive_tweet(input)

reply = ()
while reply != 3
  puts ("What would you like to do next?")
  puts ("1 - Send another tweet")
  puts ("2 - See all your tweets")
  puts ("3 - Get outta here")
  reply =  gets.chomp()
  if reply == "1"
    input = send_tweet()
    receive_tweet(input)
  elsif  reply == "2"
    view_tweets()
  else reply = 3
  end
end

puts ("See you later. Stay safe!")
