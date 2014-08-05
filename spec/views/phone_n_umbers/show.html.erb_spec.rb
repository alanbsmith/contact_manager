require 'rails_helper'

RSpec.describe "phone_n_umbers/show", :type => :view do
  before(:each) do
    @phone_n_umber = assign(:phone_n_umber, PhoneNUmber.create!(
      :number => "Number",
      :person_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Number/)
    expect(rendered).to match(/1/)
  end
end
