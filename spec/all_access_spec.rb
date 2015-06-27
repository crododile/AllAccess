require 'minitest/autorun'
require_relative './spec_helper.rb'

describe AllAccess do
  before do
    class NoAccessor
      include AllAccess
      def initialize
        @test = "testy"
      end
    end
    
    @testObject = NoAccessor.new
  end

  describe "set instance variables set in initializer" do
    it "creates readers" do
      @testObject.test.must_equal "testy"
    end
    describe "writing" do
      it "can write a string" do
        @testObject.test = "toosty"
        @testObject.test.must_equal "toosty"
      end
      
      it "can write a number" do
        @testObject.test = 50
        @testObject.test.must_equal 50
      end
      
      it "can write a method result" do
        @testObject.test = ["a"] << 10
        @testObject.test.must_equal ["a",10]
      end
    end
  end

end