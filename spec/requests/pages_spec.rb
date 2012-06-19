require 'spec_helper'

describe "Pages" do

  describe "Home" do

    it "should have the h1 'Gemini'" do
      visit root_path
      page.should have_selector('h1', :text => 'Gemini')
    end

	it "should have the title 'Home'" do
		visit root_path
	  	page.should have_selector('title', :text => "Gemini Project | Home")
	end
   end

  describe "About Us" do

    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end
	it "should have the title 'About'" do
		visit about_path
	  	page.should have_selector('title', :text => "Gemini Project | About")
	end
   end
end