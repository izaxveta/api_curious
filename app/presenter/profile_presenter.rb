class ProfilePresenter
  def initialize(user)
    @user = user
  end

  def display_name
    profile['name'].titleize
  end

  def display_nickname
    profile['login']
  end

  def display_bio
    profile['bio']
  end

  def display_organizations

  end

  def display_repo_count
    profile['public_repos']
  end

  def display_star_count
    starred.count
  end

  def display_followers_count
    profile['followers']
  end

  def display_following_count
    profile['following']
  end

  def display_user_repositories
    repositories
  end

  def overview_url
    profile['html_url']
  end

  def repo_url
    profile['repos_url']
  end

  def starred_url
    profile['starred_url']
  end

  def followers_url
    profile['followers_url']
  end

  def following_url
    profile['following_url']
  end

  def organizations_url
    profile['organizations_url']
  end

  def display_repo_updated_date(date)
    date.split("T")[0]
  end

  private

    attr_reader :user

    def github_user
      @github_user ||= GitHubUser.new(user)
    end

    def profile
      @profile ||= github_user.profile
    end

    def starred
      @starred_repos ||= github_user.starred_repos
    end

    def repositories
      @repos ||= github_user.user_repositories
    end
end