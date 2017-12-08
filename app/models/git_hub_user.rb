class GitHubUser
  extend Forwardable
  def_delegators :@user, :image_url, :name, :nickname, :token
  def initialize(user)
    @user = user
  end

  def profile
    github.get_profile
  end

  def repositories
    github.get_repositories
  end

  private

  def github
    GitHubService.new(@user)
  end
end