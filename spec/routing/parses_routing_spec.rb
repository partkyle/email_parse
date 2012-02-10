require "spec_helper"

describe ParsesController do
  describe "routing" do

    it "routes to #index" do
      get("/parses").should route_to("parses#index")
    end

    it "routes to #new" do
      get("/parses/new").should route_to("parses#new")
    end

    it "routes to #show" do
      get("/parses/1").should route_to("parses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/parses/1/edit").should route_to("parses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/parses").should route_to("parses#create")
    end

    it "routes to #update" do
      put("/parses/1").should route_to("parses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/parses/1").should route_to("parses#destroy", :id => "1")
    end

  end
end
