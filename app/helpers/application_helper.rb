module ApplicationHelper



    def title 
        base_title = "Our Journal"
        if @title.nil?
            base_title
            else
            "#{base_title} | #{@title}"
        end
    end
    
    def logo
        
        image_tag("shoeLogo2.jpg", :alt => "dennissumlin.com", :class => "round")
        
        end
    
    
end
