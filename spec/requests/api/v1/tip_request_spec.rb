require 'rails_helper'

RSpec.describe 'Tip submission endpoint' do
  context 'happy path' do
    it 'saves a new tip to the tip db table' do
      user = User.create!(email: 'user@email.com', id: 1)
      tip = Tip.create!(uid: 123456789, location: 'Denver, CO', description: 'Test tip form', user_id: 1, created_at: 'Wednesday, September 21, 2022')

      tip_params = { uid: 123456789, location: 'Denver, CO', description: 'Test tip form', user_id: 1, created_at: 'Wednesday, September 21, 2022' }
      
      post "/api/v1/users/#{user.id}/tips/new"

      new_tip = Tip.last

      expect(response.status).to eq(201)
      expect(new_tip.uid).to eq(123456789)
      expect(new_tip.location).to eq('Denver, CO')
      expect(new_tip.description).to eq('Test tip form')
      expect(new_tip.user_id).to eq(1)
      expect(new_tip.created_at.strftime("%A, %B %d, %Y")).to eq("Wednesday, September 21, 2022")
    end
  end
end
