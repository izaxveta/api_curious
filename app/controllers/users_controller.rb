class UsersController < ApplicationController
  def show
    @github_user = GitHubUser.new(current_user)
  end
end