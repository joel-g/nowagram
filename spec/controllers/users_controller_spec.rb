require 'rails_helper'

describe UsersController do
  context "#new" do
    before(:each) { get :new }
    it 'responds with status 200' do
      expect(response.status).to eq 200
    end
    it 'renders the new view' do
      expect(response).to render_template :new
    end
  end

  context "#create" do
    context "valid user info" do
      before(:each) { post :create, params: {user: { name: "Ash Ketchum", username: "Pikachu", password: "password" } } }
      it 'responds with status 302 with valid user info' do
        expect(response.status).to eq 302
      end
      it 'redirect to index' do
        expect(response).to redirect_to root_path
      end
    end
    context "invalid user info" do
      before(:each) { post :create, params: {user: { username: "Alakazam", password: "" } } }
      it 'responds with status 400' do
        expect(response.status).to eq 400
      end
      it 'renders the login page' do
        expect(response).to render_template :new
      end
    end
  end
end
