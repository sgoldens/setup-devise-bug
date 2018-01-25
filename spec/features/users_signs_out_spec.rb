require 'rails_helper'

feature 'Users signs out' do
  scenario 'users signed in' do

    sign_in users

    visit root_path

    click_link 'Sign Out'

    expect(page).to have_text 'Signed out successfully.'
    expect(page).to have_no_link 'Sign Out'
    expect(page).to have_current_path root_path
  end
end
