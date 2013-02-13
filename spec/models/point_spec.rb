require 'spec_helper'

describe Point do
  it "has a valid factory" do
    FactoryGirl.create(:point).should be_valid
  end

  it "must have a section" do
    FactoryGirl.build(:point, section: nil).should_not be_valid
  end

  it "must have a body" do
    FactoryGirl.build(:point, body: nil).should_not be_valid
  end

  it "must not have ordering less than 0" do
    FactoryGirl.build(:point, ordering: -1).should_not be_valid
  end
  
  context "ordered scope" do
    it "should return ordered points" do
      5.times { FactoryGirl.create(:point) }
      points = Point.ordered
      last = -1
      points.each do |point|
        point.ordering.should be > last
        last = point.ordering
      end
    end
  end
end
