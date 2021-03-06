require 'spec_helper'

describe "StaticPages" do
  let(:base_title) {"Ruby on Rails | "}
  describe "Home Page" do
    it "Should have content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end
    it "should have right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "#{base_title}Home")
    end
  end
  
 describe "Help Page" do
   it "Should have 'Help page' content" do 
     visit "/static_pages/help"
     page.should have_selector('h1', :text => 'help page')
   end  
   it "should have right title" do
     visit '/static_pages/help'
     page.should have_selector('title', :text => "#{base_title}Help")
   end
 end
 
 describe "About Page" do
   it "Should have 'About US' in its content" do
     visit "/static_pages/about"
     page.should have_selector('h1', :text => 'About Us')
   end   
   it "should have right title" do
     visit '/static_pages/about'
     page.should have_selector('title', :text => "#{base_title}About")
   end
 end
 
 describe "Contact" do
   it "Should have 'Contact' in its content" do 
     visit '/static_pages/contact'
     page.should have_selector('h1', :text => "Contact Us")
   end
   
   it "Should have the right title" do
     visit '/static_pages/contact' 
     page.should have_selector('title', :text => "Ruby on Rails | Contact Us")
   end
   
 end
  
end













