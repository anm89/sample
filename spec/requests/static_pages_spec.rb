require 'spec_helper'

describe "Static pages" do

  describe "Home Page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Mah Ruby App")
    end

    it "should have a custom title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Mah Ruby App | Help")
    end
  end

  describe "About page" do

    it "should have content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("Mah Ruby App | About")
    end
  end
end