# Write your code here.
def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end #if
  end.join(" ") #collect
end #method

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end #each
end #method

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    return tweet
  end #if
end #method

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    return selective_tweet_shortener(tweet)[0..136] + "..."
  else
    return tweet
  end #if
end #method
