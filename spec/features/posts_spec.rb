require 'spec_helper'

describe "Posts" do
	
	let!(:post) {FactoryGirl.create(:post)}

	context "Homepage" do
		it "should list all the posts" do
			visit root_path
			expect(page).to have_content post.title
		end

		it "should redirect to create a new post page" do
			visit root_path
			click_on "Create Post"
			expect(page).to have_content "Create a New Post"
		end
	end

	context "Create Post Page" do
		it "should have a new post form" do
			
		end
	end
end