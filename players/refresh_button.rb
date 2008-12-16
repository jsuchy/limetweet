require "twitter"

module RefreshButton
  
  def self.extended(prop)
  end
  
  def button_pressed(e)
    refresh_tweets
  end
  
  private #################################################
  
  def refresh_tweets
    @@tweets_text = ""
    
    twit.timeline(:friends).each do |s|
      @@tweets_text << "#{s.user.name} #{s.text} \n"
    end
    
    update_tweets
  end
  
  def update_tweets
    tweets = scene.find('tweets')
    tweets.text = @@tweets_text
  end
  
  def twit
    return Twitter::Base.new("your_username", "your_password")
  end
  
end