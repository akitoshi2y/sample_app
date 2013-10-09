require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	#base_title = "Ruby on Rails Tutorial Sample App"
  describe "Home page" do

		before { visit root_path }
    it "should have the h1 'Sample App'" do
      #visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    end

		it "should have the base title" do
			#visit root_path
			page.should have_selector('title',
																:text => "Ruby on Rails Tutorial Sample App")
		end

		it "should have the custom page title" do
			#visit root_path
			page.should_not have_selector('title', :text => '| Home')
		end

  end
	describe "Help page" do
    it "should have the h1 content 'Help'" do
			visit help_path
			page.should have_selector('h1', :text => 'Help')
		end

	end

	describe "About page" do
		it "should have the h1 content 'About Us'" do
			visit about_path
			page.should have_selector('h1', :text => 'About')
		end

	end

	describe "Contact page" do
		it "should have the h1 content 'Contact'" do
			visit contact_path
			page.should have_selector('h1', text: 'Contact')
		end

		it "should have the title 'Contact'" do
			visit contact_path
			page.should have_selector('title',
																text: "Ruby on Rails Tutorial Sample App | Contact")
		end

	end
end
