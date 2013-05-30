require 'spec_helper'

feature "Contact CatHub staff" do

# I must specify a valid email address
# I must specify a subject
# I must specify a description
# I must specify a first name
# I must specify a last name
  scenario "submitting a form with all fields filled in" do
    expected_inquiry_count = Inquiry.count + 1
    visit new_inquiry_path
    fill_in 'Email', with: 'foo@bar.com'
    fill_in 'Subject', with: 'Halp!'
    fill_in 'Description', with: 'How is babby formed?'
    fill_in 'First name', with: 'Timmy'
    fill_in 'Last name', with: 'Tables'
    click_button 'Create Inquiry'
    expect(Inquiry.count).to eql(expected_inquiry_count)
  end
end
