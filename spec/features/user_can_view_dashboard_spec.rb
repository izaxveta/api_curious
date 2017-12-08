require 'rails_helper'

RSpec.feature 'User can view dashboard' do
  describe 'as an unauthorized user' do
    it 'user can log in' do
      omniauth_stub

      visit '/'

      click_on "Login"

      expect(current_path).to eq(dashboard_path)
      expect(page).to have_content("Followers")
      expect(page).to have_content("Sign Out")
      expect(page).to have_content("Popular Repositories")
      expect(page).to have_content("izaxveta")
    end
  end

  # describe 'as an authorized user' do
    # QUESTIONABLE
  #   it 'and see their profile' do
  #     user = {nickname: "izaxveta",
  #             name: "Elizabeth Jimenez",
  #             email: nil,
  #             provider: "github",
  #             token: ENV['TOKEN'],
  #             uid: "27023122",
  #             image_url: "https://avatars2.githubusercontent.com/u/27023122?v=4"}

  #     allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

  #     visit '/dashboard'

  #     within('.nav') do
  #       expect(page).to have_link("Overview")
  #       expect(page).to have_link("Repositories")
  #       expect(page).to have_link("Stars")
  #       expect(page).to have_link("Followers")
  #       expect(page).to have_link("Following")
  #     end

  #     within('.profile') do
  #       expect(page).to have_content("")
  #       expect(page).to have_content("")
  #     end

  #     within('.profile-nav') do
  #       expect(page).to have_content("")
  #       expect(page).to have_content("")
  #     end
    # end
  # end
end