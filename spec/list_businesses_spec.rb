require 'rails_helper'

feature 'User can see a list of businesses' do
  scenario 'user visits index page' do
    visit businesses_path
  end
end
