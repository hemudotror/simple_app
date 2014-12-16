require 'spec_helper'
require "rails/all"
require 'rails_helper'


describe "Static pages" do

  describe "Home page" do
    it "have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Hemanth | Home")
    end
  end

  describe "Help page" do
    it "have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Hemanth | Help")
    end
  end

  describe "About page" do
    it "have the content About Us" do
      visit "/static_pages/about"
      expect(page).to have_content('About Us')
    end

    it "have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Hemanth | About Us")
    end
  end

end
