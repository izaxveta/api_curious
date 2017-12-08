class UsersController < ApplicationController
  def show
    @github_user = GitHubUser.new(current_user)
    @user_profile = @github_user.profile
    @repos = @github_user.repositories
  end
end