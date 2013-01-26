#!/usr/bin/env ruby

require 'twitter'
require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key       = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret    = ENV["TWITTER_CONSUMER_SECRET"]
  config.oauth_token        = ENV["TWITTER_OAUTH_TOKEN"]
  config.oauth_token_secret = ENV["TWITTER_OAUTH_TOKEN_SECRET"]
  config.auth_method        = :oauth
end

TweetStream::Client.new.follow(497617437) do |status|
  
end