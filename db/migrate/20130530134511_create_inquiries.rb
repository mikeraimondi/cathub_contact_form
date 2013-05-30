class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :email
      t.string :subject
      t.text :description
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
