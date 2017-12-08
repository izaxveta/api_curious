class UsersController < ApplicationController
  def show
    @github_user = GitHubUser.new(current_user)
    @user_profile = @github_user.profile
    @repos = @github_user.repositories


#code along presenters/decorators
    @user_repo_presenter = UserRepoPresenter.new(current_user)

    def display_user_repos
      user_repo_service.user_repos.map do |repo|
        display_titlelized_repo_name(repo.name)
      end
    end

    <% @user_repo_presenter.display_user_starred.each do |repo| %>
      <%= @user_repo_presenter.display_titlelized_repo_name(repo.name) %>
    <% end %>
  end
end