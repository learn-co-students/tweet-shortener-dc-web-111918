require "pry"
# Write your code here
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "Four" => "4",
    "be" => "b",
    "Be" => "B",
    "you" => "u",
    "You" => "U",
    "at" => "@",
    "and" => "&"
  }
end


moo = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"


def word_substituter(tweet)
  new_tweet = []
  tweet.split.collect do |word_in_tweet|
    if dictionary.keys.include?(word_in_tweet)
      word_in_tweet = dictionary[word_in_tweet]
      new_tweet << word_in_tweet
    else
      word_in_tweet
      new_tweet << word_in_tweet
    end
  end
  new_tweet = new_tweet.join(" ")
  return new_tweet
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end

end


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)
    tweet = tweet[0...137]+"..."
  else
    word_substituter(tweet)
  end
end
