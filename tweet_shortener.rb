require "pry"

def dictionary
  key = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end 

def word_substituter(tweet)
  dictionary
  tweet = tweet.split
  tweet.collect do |i|
    if dictionary.key? ("#{i}")
      "#{dictionary[i]}"
    else
      i
    end 
  end
  tweet.join(" ")
end 