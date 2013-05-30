FactoryGirl.define do
  factory :inquiry do
    email       "foo@bar.com"
    subject     "blah"
    description "blahblah"
    first_name  "lorem"
    last_name   "ipsum"
  end
end 
