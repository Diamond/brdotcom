require 'spec_helper'

describe Section do
  context "Valid Factory" do
    subject { FactoryGirl.create(:section) }
    it { should be_valid }
  end

  it "is invalid without a title" do
    FactoryGirl.build(:section, title: nil).should_not be_valid
  end

  it "has a unique title" do
    FactoryGirl.create(:section, title: "Test")
    FactoryGirl.build(:section, title: "Test").should_not be_valid
  end

  it "cannot have ordering less than 0" do
    FactoryGirl.build(:section, ordering: -1).should_not be_valid
  end
end
