require 'spec_helper'

	describe "StaticPages" do
		subject { page }
	#	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
		shared_examples_for "all static pages" do
			it { should have_selector('h1', text: heading) }
	    	it { should have_title(full_title(page_title)) }

		end
		describe "Home page" do
			  
			before { visit root_path }
			let(:heading)    { 'Sample App' }
		    let(:page_title) { '' }

		    it_should_behave_like "all static pages"
		    it { should_not have_title('| Home') }
#			 it { should have_content('Sample App') }
#			 it { should have_title(full_title(page_title)) }
#			 it { should_not have_title('| Home') }
		end

	    describe "Help page" do

		    before { visit help_path }
		    let(:heading)    { 'Help' }
		    let(:page_title) { '' }

		    it_should_behave_like "all static pages"
		    it { should have_content('Help') }
#		    it { should have_title(full_title('Help')) }
		end

		describe "About page" do

			before { visit about_path }
			let(:heading)    { 'About Us' }
		    let(:page_title) { '' }
		    it_should_behave_like "all static pages"		    
		    it { should have_content('About Us') }
#		    it { should have_title(full_title('About Us')) }
		    
		end

		describe "Contact page" do

			before { visit contact_path }
			let(:heading)    { 'Contact' }
		    let(:page_title) { '' }	
		    it_should_behave_like "all static pages"		
		    it { should have_content('Contact') }
#		    it { should have_selector('h1', text: 'Contact') }
#		    it { should have_title(full_title('Contact')) }		    
	    
		end
end


#require 'spec_helper'

#describe "Static pages" do
#  .
#  .
#  .
#  it "should have the right links on the layout" do
#    visit root_path
#    click_link "About"
#    expect(page).to have_title(full_title('About Us'))
#    click_link "Help"
#    expect(page).to # заполнить expect(page).to have_title(full_title('Help')
#    click_link "Contact"
#    expect(page).to # заполнить expect(page).to have_title(full_title('Contact')
#    click_link "Home"
#    click_link "Sign up now!"
#    expect(page).to # заполнить  expect(page).to have_title(full_title('Sign up now!')
#    click_link "sample app"
#    expect(page).to # заполнить  expect(page).to have_content('Sample App')
#  end
#end
