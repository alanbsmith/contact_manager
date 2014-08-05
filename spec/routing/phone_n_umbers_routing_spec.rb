require "rails_helper"

RSpec.describe PhoneNUmbersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/phone_n_umbers").to route_to("phone_n_umbers#index")
    end

    it "routes to #new" do
      expect(:get => "/phone_n_umbers/new").to route_to("phone_n_umbers#new")
    end

    it "routes to #show" do
      expect(:get => "/phone_n_umbers/1").to route_to("phone_n_umbers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/phone_n_umbers/1/edit").to route_to("phone_n_umbers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/phone_n_umbers").to route_to("phone_n_umbers#create")
    end

    it "routes to #update" do
      expect(:put => "/phone_n_umbers/1").to route_to("phone_n_umbers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/phone_n_umbers/1").to route_to("phone_n_umbers#destroy", :id => "1")
    end

  end
end
