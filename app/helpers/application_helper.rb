module ApplicationHelper



    def title 
        base_title = "Dennis On Ruby On Rails"
        if @title.nil?
            base_title
            else
            "#{base_title} | #{@title}"
        end
    end
    
    def logo
        
        image_tag("banner.jpg", :alt => "dennissumlin.com", :class => "round")
        
        end
    
    
end
