backdrop do
  
  doing :id => "doing", :rounded_corner_radius => 20 do
    
    status do
      status_bar :id => "status" do
        what_are_you_doing :text => "What are you doing?"
        character_count :text => "140"
      end
    
      current_status :id => "current_status", :players => "text_area", :width => "100%"

      update_button :text => "Update", :players => "button"
    end
    
    tweets :id => "tweets", :text => "Click Refresh to load tweets..."

  end
  
  refresh_button :text => "Refresh", :players => "button"
end
