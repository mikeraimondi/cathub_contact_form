require 'spec_helper'

feature "Contact CatHub staff" do

# I must specify a valid email address
# I must specify a subject
# I must specify a description
# I must specify a first name
# I must specify a last name
  scenario "submitting a form with all fields filled in" do
    expected_inquiry_count = Inquiry.count + 1
    visit '/inquiries/new'
    fill_in 'email', with: 'foo@bar.com'
    fill_in 'subject', with: 'Halp!'
    fill_in 'description', with: 'How is babby formed?'
    fill_in 'first name', with: 'Timmy'
    fill_in 'last name', with: 'Tables'
    click_button 'Submit'
    expect(Inquiry.count).to eql(expected_inquiry_count)
  end
end
