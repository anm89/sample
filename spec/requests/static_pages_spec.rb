require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Home Page should have correct content and title" do
    before { visit root_path }

    it { should have_content('Sample App')}
    it { should have_title('Mah Ruby App')}
    it { should_not have_title('home')}
  end

  describe "Help page should have correct content and title " do
    before { visit help_path}

    it { should have_content('Help')}
    it { should have_title("Help")}
  end

  describe "About page should have correct content and title" do
    before { visit about_path}

    it { should have_content('About')}
    it { should have_title('About')}
  end

  describe "Contact page should have correct content and title" do
    before { visit contact_path}

    it { should have_content('Contact')}
    it { should have_title('Contact')}
  end

end