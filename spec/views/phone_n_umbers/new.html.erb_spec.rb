require 'rails_helper'

RSpec.describe "phone_n_umbers/new", :type => :view do
  before(:each) do
    assign(:phone_n_umber, PhoneNUmber.new(
      :number => "MyString",
      :person_id => 1
    ))
  end

  it "renders new phone_n_umber form" do
    render

    assert_select "form[action=?][method=?]", phone_n_umbers_path, "post" do

      assert_select "input#phone_n_umber_number[name=?]", "phone_n_umber[number]"

      assert_select "input#phone_n_umber_person_id[name=?]", "phone_n_umber[person_id]"
    end
  end
end
