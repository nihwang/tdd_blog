require 'spec_helper'

describe Post do
	
	context "attribute" do
		it {should have_db_column(:title)}
		it {should have_db_column(:body)}
	end

	context "validations" do
		it {should validate_presence_of(:title)}
		it {should validate_presence_of(:body)}
	end
end