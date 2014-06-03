require 'spec_helper'

describe PostsController do

	context "#index" do
		it "is successful" do
			get :index
			expect(response).to be_success
		end

		it "should assign posts to all Post.all" do
			get :index
			expect(assigns(:posts)).to eq Post.all
		end
	end

	context "#new" do
		it "is successful" do
			get :new
			expect(response).to be_success
		end

	end

end