require 'rails_helper'

RSpec.describe 'Home' do
  describe 'GET /root' do
    it 'works! (now write some real specs)' do
      get root_path
      expect(response).to have_http_status(:ok)
    end
  end
end
