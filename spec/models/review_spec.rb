require 'rails_helper'

describe Review, type: :model do
  describe 'associations' do
    it { should belong_to(:business) }
  end
end
