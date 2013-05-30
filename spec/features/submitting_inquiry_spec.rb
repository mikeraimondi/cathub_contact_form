require 'spec_helper'

feature "Contact CatHub staff" do
  background do
    visit new_inquiry_path
    fill_in 'Email', with: 'foo@bar.com'
    fill_in 'Subject', with: 'Halp!'
    fill_in 'Description', with: 'How is babby formed?'
    fill_in 'First name', with: 'Timmy'
    fill_in 'Last name', with: 'Tables'
  end

  # I must specify a subject
  # I must specify a description
  # I must specify a last name
  scenario "submitting a form with all fields filled in" do
    expected_inquiry_count = Inquiry.count + 1
    click_button 'Create Inquiry'
    expect(Inquiry.count).to eql(expected_inquiry_count)
  end

  # I must specify a first name
  scenario "submitting a form with the first name omitted" do
    expected_inquiry_count = Inquiry.count
    fill_in 'First name', with: ''
    click_button 'Create Inquiry'
    expect(Inquiry.count).to eql(expected_inquiry_count)
  end

  # I must specify a valid email address
  scenario "submitting a form with an invalid email" do
    expected_inquiry_count = Inquiry.count
    fill_in 'Email', with: 'thisisntanemailaddress'
    click_button 'Create Inquiry'
    expect(Inquiry.count).to eql(expected_inquiry_count)
  end
end
