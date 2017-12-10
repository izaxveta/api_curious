class GitHubService
  def initialize(user)
    @user = user
  end

  def get_profile
    get_json("/users/#{user.nickname}")
  end

  def get_starred_repositories
    get_json("/users/#{user.nickname}/starred")
  end

  def get_user_repositories
    get_json("users/#{user.nickname}/repos")
  end

  private

  attr_reader :user

    def get_json(url)
      response = connection.get(url)
      JSON.parse(response.body, symbolize_headers: true)
    end

    def connection
      @connection ||= Faraday.new(url: 'https://api.github.com') do |faraday|
        faraday.headers['Authorization'] = "token #{user.token}"
        faraday.adapter Faraday.default_adapter
      end
    end
end