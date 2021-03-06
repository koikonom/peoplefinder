require 'rails_helper'

RSpec.describe MembershipsController, type: :controller do
  before do
    mock_logged_in_user
  end

  describe 'DELETE destroy' do
    let(:membership) { create(:membership) }

    it 'deletes the record' do
      delete :destroy, id: membership.to_param, referer: people_path
      expect {
        Membership.find(membership.id)
      }.to raise_error(ActiveRecord::RecordNotFound)
    end

    it 'redirects to the referer' do
      delete :destroy, id: membership.to_param, referer: people_path
      expect(response).to redirect_to(people_path)
    end
  end
end
