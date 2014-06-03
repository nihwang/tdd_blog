require 'spec_helper'

describe "Posts" do
	
	let!(:post) {FactoryGirl.create(:post)}
	
	context "Homepage" do
		it "should list all the posts" do
			visit root_path
			expect(page).to have_content post.title
		end
	end
end