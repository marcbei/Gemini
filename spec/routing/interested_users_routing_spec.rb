require "spec_helper"

describe InterestedUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/interested_users").should route_to("interested_users#index")
    end

    it "routes to #new" do
      get("/interested_users/new").should route_to("interested_users#new")
    end

    it "routes to #show" do
      get("/interested_users/1").should route_to("interested_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/interested_users/1/edit").should route_to("interested_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/interested_users").should route_to("interested_users#create")
    end

    it "routes to #update" do
      put("/interested_users/1").should route_to("interested_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/interested_users/1").should route_to("interested_users#destroy", :id => "1")
    end

  end
end
