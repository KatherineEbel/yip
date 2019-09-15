require 'rails_helper'

describe Business, type: :model do
  describe 'associations' do
    it { should have_many(:reviews) }
  end

  it { should have_db_index(:address) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:telephone) }
  it { should validate_presence_of(:address) }
end
