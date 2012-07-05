require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  
  describe "Home page" do

    it "should have the H1 tag 'Sample App Home'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text=> 'Sample App Home')
    end
    
    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
   end
  
  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text=> 'Help')
    end
    
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text=> "#{base_title} | Help")
    end    
  end
  
  describe "About page" do
  
    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text=> 'About')
    end
    
    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text=> "#{base_title} | About")
    end    
   end
   
  describe "Contact Us page" do
  
    it "should have the H1 tag with 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text=> 'Contact Us')
    end
    
    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text=> "#{base_title} | Contact Us")
    end
  end    
   
end
