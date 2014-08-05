require 'rails_helper'

RSpec.describe "phone_n_umbers/index", :type => :view do
  before(:each) do
    assign(:phone_n_umbers, [
      PhoneNUmber.create!(
        :number => "Number",
        :person_id => 1
      ),
      PhoneNUmber.create!(
        :number => "Number",
        :person_id => 1
      )
    ])
  end

  it "renders a list of phone_n_umbers" do
    render
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
