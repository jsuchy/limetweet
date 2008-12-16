require "twitter"

module UpdateButton
  
  def self.extended(prop)
  end
  
  def button_pressed(e)
    text = status_text
    clear_status
    result = twit.post(text)
  end
  
  private #################################################
  
  def status_text
    current_status = scene.find('current_status')
    return current_status.text
  end
  
  def clear_status
    current_status = scene.find('current_status')
    current_status.text = ""
  end
  
  def twit
    return Twitter::Base.new("your_login", "your_password")
  end
  
end