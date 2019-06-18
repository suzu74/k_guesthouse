require 'rails_helper'

describe UsersController, type: :controller do
  describe 'GET #index' do
    before { get :new }
    
    it 'レスポンスの成功' do
      expect(response).to be_successful
    end


  end
end