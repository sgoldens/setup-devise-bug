require 'rails_helper'

feature 'Users signs in' do
  scenario 'with valid credentials' do

    visit new_users_session_path

    fill_in 'Email', with: users.email
    fill_in 'Password', with: users.password
    click_button 'Log in'

    expect(page).to have_text 'Signed in successfully.'
    expect(page).to have_link 'Sign Out'
    expect(page).to have_current_path root_path
  end

  scenario 'with invalid credentials' do

    visit new_users_session_path

    fill_in 'Email', with: users.email
    fill_in 'Password', with: users.password
    click_button 'Log in'

    expect(page).to have_text 'Invalid Email or password.'
    expect(page).to have_no_link 'Sign Out'
  end
end
