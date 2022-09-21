require 'rails_helper'

RSpec.describe 'Tip submission endpoint' do
  context 'happy path' do
    it 'saves a new tip to the tip db table' do
      user = User.create!(email: 'user@email.com', id: 1)
      tip = Tip.create!(uid: 123456789, location: 'Denver, CO', date: '2014-12-01', time: 'c01:29:18', description: 'Test tip form', user_id: 1)
      
      tip_params = { uid: '123456789', location: 'Denver, CO', date: '9-19-22', time: 'current_time', description: 'Test tip form', user_id: '1' }.to_json
      
      post "/users/#{user.id}/tips/new", params: { params: tip_params }

      new_tip = Tip.last

      expect(response.status).to eq(201)
      expect(new_tip.uid).to eq(123456789)
      expect(new_tip.location).to eq('Denver, CO')
      expect(new_tip.date).to eq('2014-12-01 00:00:00.000000000 +0000')
      # expect(new_tip.time).to eq('2014-12-01 00:00:00.000000000 +0000')
      expect(new_tip.description).to eq('Test tip form')
      expect(new_tip.user_id).to eq('1')
    end
  end
end