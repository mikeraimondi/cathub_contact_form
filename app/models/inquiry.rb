class Inquiry < ActiveRecord::Base
  validates_presence_of :email
  validates_presence_of :subject
  validates_presence_of :description
  validates_presence_of :first_name
  validates_presence_of :last_name

  validates_format_of :email, with: /@/

  attr_accessible :description, :email, :first_name, :last_name, :subject
end
