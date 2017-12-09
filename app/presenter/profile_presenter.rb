class ProfilePresenter
  def initialize(user)
    @user = user
  end

  def display_name
    git_hub_user.name.upcase
  end

  private

  attr_reader :user

  def git_hub_user
    @git_hub_user ||= GitHubUser.new(user)
  end

end