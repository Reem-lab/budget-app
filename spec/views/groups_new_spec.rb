require 'rails_helper'

RSpec.describe 'categories new', type: :feature do
  describe 'new' do
    before(:each) do
      User.destroy_all
      @u1 = User.new(name: 'Mary', password: '111111', email: 'u@u')
      @u1.save
      visit new_user_session_path
      fill_in 'Email', with: 'u@u'
      fill_in 'password', with: '111111'
      click_button 'Log in'
      click_button 'Add new Category'
      visit new_group_path
    end
    # it 'shoud show the add new category page' do
    #   expect(page).to have_content('ADD CATEGORY')
    # end
    # it 'should show the button for add category' do
    #   expect(page).to have_content('Add category')
    # end
  end
end
