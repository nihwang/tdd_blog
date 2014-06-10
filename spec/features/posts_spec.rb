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
			visit new_post_path
			expect(page).to have_content "Title"
		end
	end

	context "create a post" do
		it "redirects to a post page if succesful" do
			visit new_post_path
			fill_in "Title", :with => "Hello"
			fill_in "Body", :with => "What's the weather like today"
			click_on "Create Post"
			expect(page).to have_content "Hello"
		end
	end

	context "edit a post" do
		it "redirects to the post page if successful" do
			visit edit_post_path(post)
			fill_in "Title", :with => "hello"
			click_on "Edit Post"
			expect(page).to have_content "hello"
		end
	end
end