require 'test_helper'


describe "layoutlinks" do
    
    it "should have a Home page at '/'" do
        get '/'
        response.should have_selector('title', :content => "Home")
        end
    
    it "should have a Contact page at '/contact'" do
        get '/contact'
        response.should have_selector('title', :content => "Contact")
    end

    it "should have a Contact page at '/about'" do
        get '/about'
        response.should have_selector('title', :content => "About")
    end
    
    it "should have a Contact page at '/help'" do
        get '/help'
        response.should have_selector('title', :content => "Help")
    end
    
    it "should have a Contact page at '/signup'" do
        get '/signup'
        response.should have_selector('title', :content => "Sign up")
    end
    
    it "should have a Contact page at '/signup'" do
        visit root_path
        response.should have_selector('title', :content => "Home")
        click_link "About"
        response.should have_selector('title', :content => "About")
        click_link "Contact"
        response.should have_selector('title', :content => "Contact")
        click_link "Home"
        response.should have_selector('title', :content => "Home")
        click_link "Become a member now!"
        response.should have_selector('title', :content => "Sign up")
        
    end
    
end

    





class LayoutLinksTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end
