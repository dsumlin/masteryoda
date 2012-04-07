require 'spec_helper'

describe PagesController do

render_views

    before(:each) do
        @base_title = "Dennis On Ruby On Rails"
        end
    
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    
    it	"should have the right title" do 
    get 'home'
    response.should have_selector("title", :content => "#{@base_title} | Home")
    end
  end
  
  it "should have a non-blank space" do
  
  get 'home'
  response.body.should_not =~ /<body>\s*<\/body>/
  
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    
     get 'contact'
    response.should have_selector("title", :content => "#{@base_title} | Contact")
  
    
  end
  
  
  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
    
     get 'about'
    response.should have_selector("title", :content => "#{@base_title} | About")
  
    
  end
    
    
    describe "GET 'help'" do
        it "returns http success" do
            get 'help'
            response.should be_success
        end
        
        get 'about'
        response.should have_selector("title", :content => "#{@base_title} | help")
        
        
    end

end

