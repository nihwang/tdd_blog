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

		it "assigns @post to the Post found by id" do
			get :new
			expect(assigns(:post)).to be_a_new Post
		end
	end

	context "#create" do
		it "creates with valid attributes" do
			expect {
				post :create, :post => FactoryGirl.attributes_for(:post)
			}.to change { Post.count }.by(1)
			expect(response).to be_redirect
		end
	end

	context "#show" do
		let(:post) { FactoryGirl.create :post }
		it "is successful" do
			get :show, :id => post.id
			expect(response).to be_success
		end
	end

end