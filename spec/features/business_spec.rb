require 'rails_helper'

feature 'Managing Businesses' do
  scenario 'user sees a list of businesses' do
    visit businesses_path
    chilis = Fabricate(:business, name: "Chili's")
    tropical_smoothie = Fabricate(:business, name: "Tropical Smoothie")
    visit businesses_path
    expect(page).to have_css('.results')
    expect(page).to have_content(chilis.name)
    expect(page).to have_content(tropical_smoothie.name)
  end

  scenario 'user can add a business' do
    details = Fabricate.attributes_for(:business)
    visit businesses_path
    click_link 'Add a Business'
    fill_in 'Name', with: details[:name]
    fill_in 'Main Phone Number', with: details[:telephone]
    fill_in 'Street', with: '555 Main Street'
    fill_in 'City', with: 'Chicago'
    fill_in 'State', with: 'IL'
    fill_in 'ZIP Code', with: '60007'
    click_button 'Submit'
    expect(page).to have_content details[:name]
    expect(page).to have_content 'Business added'
  end
end
