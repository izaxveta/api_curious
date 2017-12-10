class GitHubUser
  extend Forwardable
  def_delegators :@user, :image_url, :name, :nickname, :token

  def initialize(user)
    @user = user
  end

  def profile
    github.get_profile
  end

  def starred_repos
    github.get_starred_repositories
  end

  def user_repositories
    github.get_user_repositories
  end
  private

  attr_reader :user

    def github
      @github ||= GitHubService.new(user)
    end
end