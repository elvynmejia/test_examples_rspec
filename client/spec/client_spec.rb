require 'spec_helper'

describe Client do
	before :each do 
		@client = Client.new(:connect, :disconnect, :server_address)
	end 

	describe "#new" do 
		it "takes three parameters and returns a Client object" do
			@client.should be_an_instance_of Client
		end
	end

	[ :connect, :disconnect, :server_address ].each do |method|
		it "should respond to #{method}" do
			@client.should respond_to(method)	
		end
	end 

	#this is already being tested above
	describe "#connect" do
		it "should return a connection object" do	
			@client.connect.should eql? "connect"	
		end
	  
	end

end 