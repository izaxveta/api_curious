class GitHubUsersController < ApplicationController
  def show
    @profile = ProfilePresenter.new(current_user)
  end
end