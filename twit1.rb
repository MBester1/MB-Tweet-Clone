
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
user2 = User.new("Tony_Danza01", "whodaboss!")


# @u1_tweets = Array["I just had the best cup of coffee", "What a lovely day!", "I'm quitting social media for a month!"]

def send_tweet
  puts "What's happening?"
  return gets.chomp()

end

def receive_tweet(tweet)
    @user1.tweets << tweet
end

input = send_tweet()
receive_tweet(input)
puts @user1.tweets


puts ("Anything new to add " + @user1.username + "?")
  reply =  gets.chomp()
while reply != "n"
  input = send_tweet()
  receive_tweet(input)
  puts @user1.tweets
  puts ("Anything new to add " + @user1.username + "?")
  reply =  gets.chomp()
end

  puts ("See you later. Stay safe!")
