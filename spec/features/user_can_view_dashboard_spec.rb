require 'rails_helper'

RSpec.feature 'User can view dashboard' do
  scenario 'as an authorized user' do
    it 'and see user profile' do


      repository_count = user.repositories.count
      stars = user.stars.count
      followers = user.followers.count
      following = user.following.count

      within('.nav') do
        expect(page).to have_link("Overview")
        expect(page).to have_link("Repositories")
        expect(page).to have_link("Stars")
        expect(page).to have_link("Followers")
        expect(page).to have_link("Following")
      end

      within('.profile') do
        expect(page).to have_content("")
        expect(page).to have_content("")
      end

      within('.profile-nav') do
        expect(page).to have_content("")
        expect(page).to have_content("")
      end
    end
  end
end


# Authenticate with my github account

# show
# View basic information about my account (profile pic, number of starred repos, followers, following)
# View a summary feed of my recent activity (recent commits)

# index
# View a summary feed of recent activity from users whom I follow
# View a list of organizations I’m a member of
# View a list of my repositories