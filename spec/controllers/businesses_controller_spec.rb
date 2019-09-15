require 'rails_helper'

describe BusinessesController, type: :controller do
  describe 'GET #index' do
    it 'should set @businesses' do
      business = Fabricate(:business)
      get :index
      expect(assigns(:businesses)).to_not be_nil
      expect(assigns(:businesses)).to match_array [business]
    end
  end
  describe 'POST #create' do
    it 'should assign @business' do
      business = Fabricate.attributes_for(:business)
      post :create, params: { business: business }
      expect(response).to redirect_to businesses_path
    end

    context 'invalid form' do
      it 'should re-render form' do
        business = Fabricate.attributes_for(:business)
        business[:name] = nil
        post :create, params: { business: business }
        expect(response).to render_template :new
      end
    end
  end
end
