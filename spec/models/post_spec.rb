require 'spec_helper'

describe Post do
	
	context "attribute" do
		it {should have_db_column(:title)}
		it {should have_db_column(:body)}
	end
end