require 'rails_helper'

RSpec.describe "PhoneNUmbers", :type => :request do
  describe "GET /phone_n_umbers" do
    it "works! (now write some real specs)" do
      get phone_n_umbers_path
      expect(response.status).to be(200)
    end
  end
end
