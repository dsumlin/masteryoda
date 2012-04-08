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
        
        image_tag("ezlogo.png", :alt => "dennissumlin.com", :class => "round")
        
        end
    
    
end
