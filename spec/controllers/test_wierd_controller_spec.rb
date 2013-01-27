require 'spec_helper'

describe TestWierdController do
	it 'capybara' do
		visit ("/")
		save_and_open_page
	end
end
