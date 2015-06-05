require 'spec_helper'

#Our Book objects will just store a title, author, and category. 
describe Book do
	
	#run this code before each test
	before :each do 
		@book = Book.new("Title", "Author", :category)
	end 

	#test in instance method
	describe "#new" do
		it "takes three parameters and returns a Book object" do 
			@book.should be_an_instance_of Book
		end 
	end 

	#attr_accessor :title, :author, :category shall make the folloing tests to pass
	describe "#title" do
		it "returns the correct title" do 
			@book.title.should eql "Title"
		end 
	end 

	describe "#author" do 
		it "returns the correct author" do 
			@book.author.should eql	"Author"
		end 
	end 

	describe "#category" do 
		it "returns the correct category" do 
			@book.category.should eql 	:category
		end 
	end 
end 


