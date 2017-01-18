require 'rails_helper'

feature 'Game ' do
  context 'User can choose their city to start an adventure' do
    scenario 'it should show the form to choose cities' do
      sign_up('Asuka', 'test@email', 'password')
      expect(page).to have_content('Choose city')
      select 'London', from: 'cities'
      expect(page).to have_content 'Jack the Ripper'
    end
  end
end