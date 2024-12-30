require "rails_helper"

RSpec.describe WishersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/wishers").to route_to("wishers#index")
    end

    it "routes to #new" do
      expect(get: "/wishers/new").to route_to("wishers#new")
    end

    it "routes to #show" do
      expect(get: "/wishers/1").to route_to("wishers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/wishers/1/edit").to route_to("wishers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/wishers").to route_to("wishers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/wishers/1").to route_to("wishers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/wishers/1").to route_to("wishers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/wishers/1").to route_to("wishers#destroy", id: "1")
    end
  end
end
