require 'spec_helper'

describe Inquiry do
  let(:valid_inquiry) { FactoryGirl.build(:inquiry) }

  it "validates presence of email" do
    invalid_inquiry = valid_inquiry.dup
    invalid_inquiry.email = ""
    expect(invalid_inquiry).to_not be_valid
  end

  it "validates presence of subject" do
    invalid_inquiry = valid_inquiry.dup
    invalid_inquiry.subject = ""
    expect(invalid_inquiry).to_not be_valid
  end

  it "validates presence of description" do
    invalid_inquiry = valid_inquiry.dup
    invalid_inquiry.description = ""
    expect(invalid_inquiry).to_not be_valid
  end

  it "validates presence of first name" do
    invalid_inquiry = valid_inquiry.dup
    invalid_inquiry.first_name = ""
    expect(invalid_inquiry).to_not be_valid
  end

  it "validates presence of last name" do
    invalid_inquiry = valid_inquiry.dup
    invalid_inquiry.last_name = ""
    expect(invalid_inquiry).to_not be_valid
  end

  it "validates format of email" do
    invalid_inquiry = valid_inquiry.dup
    invalid_inquiry.email = "notvalidatall"
    expect(invalid_inquiry).to_not be_valid
  end
end
