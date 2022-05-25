require 'rails_helper'

RSpec.describe 'Log in session', type: :feature do
  before :each do
    User.create(password: '123456', email: 'reem@gmail.com')
    visit new_user_session_path
  end

  describe 'Log in users' do
    it 'I can see the username and password inputs and the Submit button.' do
      expect(page).to have_content('Sign up')
      expect(page).to have_content('Forgot your password?')
    end

    it 'When I click the submit button without filling
   in the username and the password, I get a detailed error.' do
      click_button 'Log in'
      expect(page).to have_content('Invalid Email or password')
    end

    it 'when I click the submit button after filling in the
    username and the password with incorrect data, I get a detailed error.' do
      fill_in 'Email', with: 'reem@gmail.com'
      click_button 'Log in'
      expect(page).to have_content('Invalid Email or password.')
    end
  end
end
