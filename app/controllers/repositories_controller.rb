class RepositoriesController < ApplicationController
  def index
    @user_repos = ProfilePresenter.new(current_user)
  end
end