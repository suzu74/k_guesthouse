require 'rails_helper'

describe BasicPagesController, type: :controller do
  describe 'GET #index' do
    before { get :home }
    it 'レスポンスの成功' do
      expect(response).to be_successful
    end
  end
end