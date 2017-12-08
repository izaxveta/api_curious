class GitHubService
  def initialize(user)
    @conn = Faraday.new(url: "https://api.github.com") do |faraday|
      faraday.headers['Authorization'] = "token #{user.token}"
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_repositories
    get_json('/user/repos')
  end

  private
    attr_reader :conn

    def get_json(url)
      response = conn.get(url)
      JSON.parse(response.body, symbolize_headers: true)
    end
end