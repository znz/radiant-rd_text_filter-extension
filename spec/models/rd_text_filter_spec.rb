require File.dirname(__FILE__) + '/../spec_helper'

h1_test = '<h1><a name="label-0" id="label-0">Test</a></h1><!-- RDLabel: "Test" -->'

describe RdTextFilter do
  it "should be named RD" do
    RdTextFilter.filter_name.should == "RD"
  end

  it "should filter text according to RD rules" do
    RdTextFilter.filter('= Test').should == h1_test
  end
end

describe "<r:rd>" do
  dataset :pages

  it "should filter its contents with RD" do
    pages(:home).should render("<r:rd>= Test</r:rd>").as(h1_test)
  end
end
