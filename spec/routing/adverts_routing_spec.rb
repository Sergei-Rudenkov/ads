require "spec_helper"

describe AdvertsController do
  describe "routing" do

    it "routes to #index" do
      get("/adverts").should route_to("adverts#index")
    end

    it "routes to #new" do
      get("/adverts/new").should route_to("adverts#new")
    end

    it "routes to #show" do
      get("/adverts/1").should route_to("adverts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/adverts/1/edit").should route_to("adverts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/adverts").should route_to("adverts#create")
    end

    it "routes to #update" do
      put("/adverts/1").should route_to("adverts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/adverts/1").should route_to("adverts#destroy", :id => "1")
    end

  end
end
