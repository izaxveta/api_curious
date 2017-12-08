class GitHubService
  def initialize(current_user)
    @current_user = current_user
  end

  def user_starred_repos
    get_json("/users/#{current_user.nickname}/starred")
  end

  def get_profile
    get_json('/user')
  end

  def get_repositories
    get_json('/user/repos')
  end

  private
    attr_reader :current_user

    def get_json(url)
      response = connection.get(url)
      JSON.parse(response.body, symbolize_headers: true)
    end

    def connection
      @connection ||= Faraday.new(url: "https://api.github.com") do |faraday|
        faraday.headers['Authorization'] = "token #{current_user.token}"
        faraday.adapter Faraday.default_adapter
      end
    end
end