require 'rails_helper'

describe SituationsController do
  describe "GET index" do
    let (:situation) { instance_double(Situation) }

    before do
      allow(Situation).to receive(:all) { [situation] }
      allow(controller).to receive(:current_user) { instance_double(User, admin?: false) }
      # allow(controller).to receive(:authenticate_admin!) { true }
      allow(controller).to receive(:authenticate_user!) { true }
    end

    context "logged in user is not an admin" do
      before do
        allow(controller).to receive(:current_user) { instance_double(User, admin?: false) }
      end

    end

    context "logged in admin" do
      before do
        allow(controller).to receive(:current_user) { instance_double(User, admin?: true) }
      end
      it "assigns @situations" do
        get :index
        expect(assigns(:situations)).to eq([situation])
      end

      it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end
    end


  end
end
