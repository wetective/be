require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do
    it { should have_many(:tips) }
  end

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should have_secure_password }

    it { should validate_uniqueness_of(:email) }
  end
end
